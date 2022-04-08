contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor8;
uint32 stor9;
address stor9;
uint256 stor9;
mapping of uint256 userInfo;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1]
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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function strategyInfo() payable {
    return stor8, address(stor9)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function defineStrategy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor8 = arg1
    address(stor9) = arg2
}

function executeStrategy() payable {
    require ext_code.size(address(stor9))
    call address(stor9).0xd389800f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function totalShares() payable {
    require ext_code.size(address(stor9))
    staticcall address(stor9).0x44a3955e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getBuyBackRate() payable {
    require ext_code.size(address(stor9))
    staticcall address(stor9).0x178a8d07 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getPerformanceFee() payable {
    require ext_code.size(address(stor9))
    staticcall address(stor9).0x85f02dd6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function totalStakedWantTokens() payable {
    require ext_code.size(address(stor9))
    staticcall address(stor9).0x42da4eb3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function getEntranceFee() payable {
    require ext_code.size(address(stor9))
    staticcall address(stor9).0x1334903f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor9))
    staticcall address(stor9).0xee50dc34 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    else:
        return 0
}

function getWithdrawFee() payable {
    require ext_code.size(address(stor9))
    staticcall address(stor9).0x68f54162 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor9))
    staticcall address(stor9).0x67057b6c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    else:
        return 0
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

function stakedWantTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor9))
    staticcall address(stor9).0x44a3955e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor9))
    staticcall address(stor9).0x42da4eb3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not userInfo[address(arg1)]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * userInfo[address(arg1)] / userInfo[address(arg1)] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] * userInfo[address(arg1)] / ext_call.return_data[0])
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
    if arg2 > userInfo[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    userInfo[address(msg.sender)] -= arg2
    if arg2 + userInfo[address(arg1)] < userInfo[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[address(arg1)] += arg2
    return 1
}

function inCaseTokensGetStuck(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
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
    if arg3 > userInfo[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    userInfo[address(arg1)] -= arg3
    if arg3 + userInfo[arg2] < userInfo[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[arg2] += arg3
    return 1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(stor8):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        call stor8 with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            require ext_code.size(stor8)
            staticcall stor8.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(stor9)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if not ext_code.size(stor8):
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg1 + ext_call.return_data[0]) >> 32
            call stor8 with:
               funct uint32(stor9)
                 gas gas_remaining wei
                args Mask(224, 32, arg1 + ext_call.return_data[0]) << 224, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
            else:
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
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
            require ext_code.size(stor8)
            staticcall stor8.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(stor9)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(stor8):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg1 + ext_call.return_data[0]) >> 32
            mem[ceil32(return_data.size) + 521 len 0] = 0
            call stor8 with:
               funct uint32(stor9)
                 gas gas_remaining wei
                args Mask(224, 32, arg1 + ext_call.return_data[0]) << 224, mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
            else:
                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 489]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 568 len 22]
        require ext_code.size(address(stor9))
        call address(stor9).0x47e7ef24 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + userInfo[msg.sender] < userInfo[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[msg.sender] += ext_call.return_data[0]
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if ext_call.return_data[0] + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += ext_call.return_data[0]
        if ext_call.return_data[0] + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], 0, msg.sender);
    emit Deposit(arg1, msg.sender);
    stor1 = 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(address(stor9))
    staticcall address(stor9).0x42da4eb3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor9))
    staticcall address(stor9).0x44a3955e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userInfo[msg.sender]:
        revert with 0, 'user.shares is 0'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'sharesTotal is 0'
    if not userInfo[msg.sender]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if arg1 <= 0 / ext_call.return_data[0]:
            if not arg1:
                emit Withdraw(arg1, msg.sender);
            else:
                require ext_code.size(address(stor9))
                call address(stor9).0xf3fef3a3 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[msg.sender]:
                    userInfo[msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                    if not ext_code.size(stor8):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg1:
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                        mem[480 len 4] = 0
                        call stor8 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 490 len 31]
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 455 len 30],
                                        mem[ceil32(return_data.size) + 515 len 2]
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, 0);
                        emit Withdraw(arg1, msg.sender);
                    else:
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        mem[480 len 4] = 0
                        call stor8 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 490 len 31]
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 455 len 30],
                                        mem[ceil32(return_data.size) + 515 len 2]
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, 0);
                        emit Withdraw(ext_call.return_data[0], msg.sender);
                else:
                    userInfo[msg.sender] = 0
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(stor8):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg1:
                        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        call stor8 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 391 len 30],
                                        mem[ceil32(return_data.size) + 451 len 2]
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, 0);
                        emit Withdraw(arg1, msg.sender);
                    else:
                        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        mem[416 len 4] = 0
                        call stor8 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 391 len 30],
                                        mem[ceil32(return_data.size) + 451 len 2]
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, 0);
                        emit Withdraw(ext_call.return_data[0], msg.sender);
        else:
            if not 0 / ext_call.return_data[0]:
                emit Withdraw((0 / ext_call.return_data[0]), msg.sender);
            else:
                require ext_code.size(address(stor9))
                call address(stor9).0xf3fef3a3 with:
                     gas gas_remaining wei
                    args msg.sender, 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[msg.sender]:
                    userInfo[msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                    if not ext_code.size(stor8):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                        mem[480 len 4] = 0
                        call stor8 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 490 len 31]
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 455 len 30],
                                        mem[ceil32(return_data.size) + 515 len 2]
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, 0);
                        emit Withdraw((0 / ext_call.return_data[0]), msg.sender);
                    else:
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        mem[480 len 4] = 0
                        call stor8 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 490 len 31]
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 455 len 30],
                                        mem[ceil32(return_data.size) + 515 len 2]
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, 0);
                        emit Withdraw(ext_call.return_data[0], msg.sender);
                else:
                    userInfo[msg.sender] = 0
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(stor8):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] < 0 / ext_call.return_data[0]:
                        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        mem[416 len 4] = 0
                        call stor8 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 391 len 30],
                                        mem[ceil32(return_data.size) + 451 len 2]
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, 0);
                        emit Withdraw(ext_call.return_data[0], msg.sender);
                    else:
                        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call stor8 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 391 len 30],
                                        mem[ceil32(return_data.size) + 451 len 2]
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, 0);
                        emit Withdraw((0 / ext_call.return_data[0]), msg.sender);
    else:
        if ext_call.return_data[0] * userInfo[msg.sender] / userInfo[msg.sender] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if arg1 <= ext_call.return_data[0] * userInfo[msg.sender] / ext_call.return_data[0]:
            if not arg1:
                emit Withdraw(arg1, msg.sender);
            else:
                require ext_code.size(address(stor9))
                call address(stor9).0xf3fef3a3 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[msg.sender]:
                    userInfo[msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                    if not ext_code.size(stor8):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg1:
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                        mem[480 len 4] = 0
                        call stor8 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 490 len 31]
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 455 len 30],
                                        mem[ceil32(return_data.size) + 515 len 2]
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, 0);
                        emit Withdraw(arg1, msg.sender);
                    else:
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        mem[480 len 4] = 0
                        call stor8 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 490 len 31]
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 455 len 30],
                                        mem[ceil32(return_data.size) + 515 len 2]
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, 0);
                        emit Withdraw(ext_call.return_data[0], msg.sender);
                else:
                    userInfo[msg.sender] = 0
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(stor8):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg1:
                        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call stor8 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 391 len 30],
                                        mem[ceil32(return_data.size) + 451 len 2]
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, 0);
                        emit Withdraw(arg1, msg.sender);
                    else:
                        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call stor8 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 391 len 30],
                                        mem[ceil32(return_data.size) + 451 len 2]
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, 0);
                        emit Withdraw(ext_call.return_data[0], msg.sender);
        else:
            if not ext_call.return_data[0] * userInfo[msg.sender] / ext_call.return_data[0]:
                emit Withdraw((ext_call.return_data[0] * userInfo[msg.sender] / ext_call.return_data[0]), msg.sender);
            else:
                require ext_code.size(address(stor9))
                call address(stor9).0xf3fef3a3 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] * userInfo[msg.sender] / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[msg.sender]:
                    userInfo[msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                    if not ext_code.size(stor8):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] < ext_call.return_data[0] * userInfo[msg.sender] / ext_call.return_data[0]:
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        mem[480 len 4] = 0
                        call stor8 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 490 len 31]
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 455 len 30],
                                        mem[ceil32(return_data.size) + 515 len 2]
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, 0);
                        emit Withdraw(ext_call.return_data[0], msg.sender);
                    else:
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] * userInfo[msg.sender] / ext_call.return_data[0]) >> 32
                        mem[480 len 4] = 0
                        mem[452 len 0] = 0
                        call stor8 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] * userInfo[msg.sender] / ext_call.return_data[0]) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 490 len 31]
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 455 len 30],
                                        mem[ceil32(return_data.size) + 515 len 2]
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, 0);
                        emit Withdraw((ext_call.return_data[0] * userInfo[msg.sender] / ext_call.return_data[0]), msg.sender);
                else:
                    userInfo[msg.sender] = 0
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(stor8):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= ext_call.return_data[0] * userInfo[msg.sender] / ext_call.return_data[0]:
                        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] * userInfo[msg.sender] / ext_call.return_data[0]) >> 32
                        mem[416 len 4] = 0
                        call stor8 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] * userInfo[msg.sender] / ext_call.return_data[0]) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 391 len 30],
                                        mem[ceil32(return_data.size) + 451 len 2]
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, 0);
                        emit Withdraw((ext_call.return_data[0] * userInfo[msg.sender] / ext_call.return_data[0]), msg.sender);
                    else:
                        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call stor8 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 391 len 30],
                                        mem[ceil32(return_data.size) + 451 len 2]
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, 0);
                        emit Withdraw(ext_call.return_data[0], msg.sender);
    stor1 = 1
}



}
