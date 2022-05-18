contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor5;
address uniswapAddress; offset 8
address stableAddress;
address governanceAddress;
address strategistAddress;
mapping of uint8 stor9;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function strategist() payable {
    return strategistAddress
}

function stable() payable {
    return stableAddress
}

function uniswap() payable {
    return uniswapAddress
}

function decimals() payable {
    return decimals
}

function governance() payable {
    return governanceAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function addAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == governanceAddress
    stor9[address(arg1)] = 1
}

function revokeAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == governanceAddress
    stor9[address(arg1)] = 0
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == governanceAddress
    require arg1
    governanceAddress = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == governanceAddress
    require arg1
    strategistAddress = arg1
}

function sub_9265a7d5(?) payable {
    require msg.sender == governanceAddress
    require ext_code.size(stableAddress)
    call stableAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_397352ab(?) payable {
    require msg.sender == governanceAddress
    require ext_code.size(stableAddress)
    call stableAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function setNewRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == governanceAddress
    require ext_code.size(stableAddress)
    call stableAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uniswapAddress = arg1
    require msg.sender == governanceAddress
    require ext_code.size(stableAddress)
    call stableAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_462fa37c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == governanceAddress
    if not address(arg1):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[100] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg1)):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(address(arg1)):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
        call address(arg1).mem[ceil32(return_data.size) + 196 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function leave(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor9[msg.sender]
    if arg1:
        require ext_code.size(stableAddress)
        staticcall stableAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.sender:
                revert with 0, 'ERC20: burn from the zero address'
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            34,
                            0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 226 len 30] >> 16,
                            0
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            require ext_code.size(stableAddress)
            call stableAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0 / totalSupply
        else:
            if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.sender:
                revert with 0, 'ERC20: burn from the zero address'
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            34,
                            0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 226 len 30] >> 16,
                            0
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            require ext_code.size(stableAddress)
            call stableAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] * arg1 / totalSupply
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor9[msg.sender]
    require ext_code.size(stableAddress)
    staticcall stableAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stableAddress)
    call stableAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not totalSupply:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if arg1 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        emit Transfer(arg1, 0, msg.sender);
    else:
        if not ext_call.return_data[0]:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if arg1 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
        else:
            if not arg1:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (totalSupply * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / ext_call.return_data[0]
                if (totalSupply * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
                emit Transfer((totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender);
}

function sub_2adee6c7(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require msg.sender == strategistAddress
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(address(arg3))
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(address(arg1))
    call address(arg1).unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = uniswapAddress
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 128] = address(arg2)
    mem[(6 * ceil32(return_data.size)) + 160] = stableAddress
    if block.timestamp + 1800 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 228] = 1
    mem[(6 * ceil32(return_data.size)) + 260] = 160
    mem[(6 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 388
    t = (6 * ceil32(return_data.size)) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 292] = this.address
    mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 1800
    require ext_code.size(uniswapAddress)
    call uniswapAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 1800
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307()
    require return_data.size >= mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32
}

function sub_8c797fa3(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require msg.sender == strategistAddress
    require block.number >= arg4
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(address(arg3))
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(address(arg1))
    call address(arg1).unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = uniswapAddress
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 128] = address(arg2)
    mem[(6 * ceil32(return_data.size)) + 160] = stableAddress
    if block.timestamp + 1800 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 228] = 1
    mem[(6 * ceil32(return_data.size)) + 260] = 160
    mem[(6 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 388
    t = (6 * ceil32(return_data.size)) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 292] = this.address
    mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 1800
    require ext_code.size(uniswapAddress)
    call uniswapAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 1800
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307()
    require return_data.size >= mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32
}

function sub_73cebd11(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require msg.sender == strategistAddress
    require block.timestamp >= arg4
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(address(arg3))
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(address(arg1))
    call address(arg1).unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = uniswapAddress
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 128] = address(arg2)
    mem[(6 * ceil32(return_data.size)) + 160] = stableAddress
    if block.timestamp + 1800 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 228] = 1
    mem[(6 * ceil32(return_data.size)) + 260] = 160
    mem[(6 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 388
    t = (6 * ceil32(return_data.size)) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 292] = this.address
    mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 1800
    require ext_code.size(uniswapAddress)
    call uniswapAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 1800
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307()
    require return_data.size >= mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32
}

function sub_6f8dad63(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require msg.sender == strategistAddress
    mem[100] = this.address
    require ext_code.size(stableAddress)
    staticcall stableAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stableAddress
    mem[ceil32(return_data.size) + 160] = address(arg2)
    if block.timestamp + 1800 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 228] = 1
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp + 1800
    require ext_code.size(uniswapAddress)
    call uniswapAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 1800
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _36 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223
    _37 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    require return_data.size >= _36 + (32 * _37) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _37] = mem[ceil32(return_data.size) + _36 + 224 len 32 * _37]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _57 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _58 = mem[_57]
    mem[mem[64] + 4] = address(arg1)
    mem[mem[64] + 36] = _58
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), _58
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _61 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_61] == bool(mem[_61])
    mem[mem[64] + 4] = _58
    mem[mem[64] + 36] = this.address
    require ext_code.size(address(arg1))
    call address(arg1).stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args _58, this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _65 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_65] == bool(mem[_65])
    require ext_code.size(address(arg1))
    call address(arg1).claim(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_30478bbb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require msg.sender == strategistAddress
    require ext_code.size(address(arg1))
    staticcall address(arg1).epoch() with:
            gas gas_remaining wei
    mem[96 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool(ceil32(return_data.size) + 224 <= test266151307())
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[96]
    require block.number >= ext_call.return_data[64] - arg3
    mem[ceil32(return_data.size) + 228] = this.address
    require ext_code.size(stableAddress)
    staticcall stableAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 224] = 2
    mem[(2 * ceil32(return_data.size)) + 256] = stableAddress
    mem[(2 * ceil32(return_data.size)) + 288] = address(arg2)
    if block.timestamp + 1800 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[(2 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 356] = 1
    mem[(2 * ceil32(return_data.size)) + 388] = 160
    mem[(2 * ceil32(return_data.size)) + 484] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 516
    t = (2 * ceil32(return_data.size)) + 256
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 420] = this.address
    mem[(2 * ceil32(return_data.size)) + 452] = block.timestamp + 1800
    require ext_code.size(uniswapAddress)
    call uniswapAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 516 len 64]), address(this.address), block.timestamp + 1800
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _45 = mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 320 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
    _46 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
    mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
    require return_data.size >= _45 + (32 * _46) + 32
    mem[(4 * ceil32(return_data.size)) + 352 len 32 * _46] = mem[(2 * ceil32(return_data.size)) + _45 + 352 len 32 * _46]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _66 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _67 = mem[_66]
    mem[mem[64] + 4] = address(arg1)
    mem[mem[64] + 36] = _67
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), _67
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _70 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_70] == bool(mem[_70])
    mem[mem[64] + 4] = _67
    mem[mem[64] + 36] = this.address
    require ext_code.size(address(arg1))
    call address(arg1).stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args _67, this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _74 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_74] == bool(mem[_74])
    require ext_code.size(address(arg1))
    call address(arg1).claim(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d4bdcd0c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require msg.sender == strategistAddress
    require ext_code.size(address(arg1))
    staticcall address(arg1).epoch() with:
            gas gas_remaining wei
    mem[96 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool(ceil32(return_data.size) + 224 <= test266151307())
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[96]
    require block.timestamp >= ext_call.return_data[124 len 4] - arg3
    mem[ceil32(return_data.size) + 228] = this.address
    require ext_code.size(stableAddress)
    staticcall stableAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 224] = 2
    mem[(2 * ceil32(return_data.size)) + 256] = stableAddress
    mem[(2 * ceil32(return_data.size)) + 288] = address(arg2)
    if block.timestamp + 1800 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[(2 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 356] = 1
    mem[(2 * ceil32(return_data.size)) + 388] = 160
    mem[(2 * ceil32(return_data.size)) + 484] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 516
    t = (2 * ceil32(return_data.size)) + 256
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 420] = this.address
    mem[(2 * ceil32(return_data.size)) + 452] = block.timestamp + 1800
    require ext_code.size(uniswapAddress)
    call uniswapAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 516 len 64]), address(this.address), block.timestamp + 1800
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _45 = mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 320 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
    _46 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
    mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
    require return_data.size >= _45 + (32 * _46) + 32
    mem[(4 * ceil32(return_data.size)) + 352 len 32 * _46] = mem[(2 * ceil32(return_data.size)) + _45 + 352 len 32 * _46]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _66 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _67 = mem[_66]
    mem[mem[64] + 4] = address(arg1)
    mem[mem[64] + 36] = _67
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), _67
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _70 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_70] == bool(mem[_70])
    mem[mem[64] + 4] = _67
    mem[mem[64] + 36] = this.address
    require ext_code.size(address(arg1))
    call address(arg1).stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args _67, this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _74 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_74] == bool(mem[_74])
    require ext_code.size(address(arg1))
    call address(arg1).claim(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
