contract main {




// =====================  Runtime code  =====================


const max = 10000


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor5;
address tokenAddress; offset 8
uint256 min;
address governanceAddress;
address timelockAddress;
uint32 stor9;
address controllerAddress;
uint256 stor9;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function governance() payable {
    return governanceAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function timelock() payable {
    return timelockAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function controller() payable {
    return address(controllerAddress)
}

function min() payable {
    return min
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setTimelock(address arg1) payable {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    timelockAddress = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    address(controllerAddress) = arg1
}

function setMin(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x736e756d657261746f722063616e6e6f742062652067726561746572207468616e2064656e6f6d696e61746f,
                    mem[208 len 20]
    min = arg1
}

function balance() payable {
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
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

function available() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_call.return_data[0]
    if ext_call.return_data[0] * min / ext_call.return_data[0] != min:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * min / 10000)
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
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
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
                    0x7245524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getRatio() payable {
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (0 / totalSupply)
    else:
        if 2 * ext_call.return_data[0]:
            if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return (2 * 10^18 * ext_call.return_data[0] / totalSupply)
    revert
}

function harvest(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if arg1 == tokenAddress:
        revert with 0, 'token'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor9)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor9):
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
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
                    0x7245524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
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
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function earn() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), 0
        call tokenAddress with:
           funct uint32(stor9)
             gas gas_remaining wei
            args 0, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        require ext_code.size(address(controllerAddress))
        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor5, 0
    else:
        require ext_call.return_data[0]
        if ext_call.return_data[0] * min / ext_call.return_data[0] != min:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, ext_call.return_data[0] * min / 10000) >> 32
        mem[388 len 0] = 0
        call tokenAddress with:
           funct uint32(stor9)
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] * min / 10000) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        require ext_code.size(address(controllerAddress))
        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor5, ext_call.return_data[0] * min / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_code.size(tokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call tokenAddress with:
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
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not totalSupply:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, 0, msg.sender);
    else:
        if 2 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * ext_call.return_data[0]
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply + (0 / 2 * ext_call.return_data[0]) < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += 0 / 2 * ext_call.return_data[0]
        if balanceOf[address(msg.sender)] + (0 / 2 * ext_call.return_data[0]) < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
        emit Transfer((0 / 2 * ext_call.return_data[0]), 0, msg.sender);
}

function depositAll() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_code.size(tokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0 len 28]
    mem[416 len 4] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not totalSupply:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, 0, msg.sender);
    else:
        if 2 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * ext_call.return_data[0]
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply + (0 / 2 * ext_call.return_data[0]) < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += 0 / 2 * ext_call.return_data[0]
        if balanceOf[address(msg.sender)] + (0 / 2 * ext_call.return_data[0]) < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
        emit Transfer((0 / 2 * ext_call.return_data[0]), 0, msg.sender);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not msg.sender:
            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 0 / totalSupply:
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
            mem[548 len 0] = 0
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, 0 / totalSupply) << 224, mem[548 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[516]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 595 len 22]
        else:
            if ext_call.return_data[0] > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(controllerAddress))
            call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor5, (0 / totalSupply) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] >= 0 / totalSupply:
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
            else:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[676 len 0] = 0
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[676 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[644]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 723 len 22]
    else:
        require 2 * ext_call.return_data[0]
        if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / 2 * ext_call.return_data[0] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not msg.sender:
            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[548 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[516]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 595 len 22]
        else:
            if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(controllerAddress))
            call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor5, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                mem[676 len 0] = 0
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[676 len 4]
            else:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[676 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[644]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 723 len 22]
}

function withdrawAll() payable {
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not msg.sender:
            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
        balanceOf[address(msg.sender)] = 0
        if balanceOf[address(msg.sender)] > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 0 / totalSupply:
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, 0 / totalSupply) << 224, mem[548 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[516]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 595 len 22]
        else:
            if ext_call.return_data[0] > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(controllerAddress))
            call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor5, (0 / totalSupply) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] >= 0 / totalSupply:
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
            else:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[676 len 0] = 0
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[676 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[644]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 723 len 22]
    else:
        require 2 * ext_call.return_data[0]
        if (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / 2 * ext_call.return_data[0] != balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not msg.sender:
            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
        balanceOf[address(msg.sender)] = 0
        if balanceOf[address(msg.sender)] > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[548 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[516]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 595 len 22]
        else:
            if ext_call.return_data[0] > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(controllerAddress))
            call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor5, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[676 len 4]
            else:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[676 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[644]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 723 len 22]
}



}
