contract main {




// =====================  Runtime code  =====================


const max = 10000


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint32 stor5;
address stor5;
address tokenAddress; offset 8
uint256 min;
address governanceAddress;
uint32 stor8;
address controllerAddress;
uint256 stor8;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
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

function setMin(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    min = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    address(controllerAddress) = arg1
}

function decimals() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 0
    require ext_call.return_data[0]
    if ext_call.return_data[0] * min / ext_call.return_data[0] != min:
        revert with 0, 'SafeMath: multiplication overflow'
    return (ext_call.return_data[0] * min / 10000)
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function balance() payable {
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
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

function getPricePerFullShare() payable {
    if not totalSupply:
        return 10^18
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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
                revert with 0, 'SafeMath: multiplication overflow'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return (2 * 10^18 * ext_call.return_data[0] / totalSupply)
    revert
}

function earn() payable {
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = address(controllerAddress)
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor8)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0, 0
        mem[ceil32(return_data.size) + 328] = 0
        call tokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(controllerAddress))
        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(stor5.field_0), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Earn(0, msg.sender);
    else:
        require ext_call.return_data[0]
        if ext_call.return_data[0] * min / ext_call.return_data[0] != min:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[ceil32(return_data.size) + 132] = address(controllerAddress)
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] * min / 10000
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor8)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0] * min / 10000, 0
        mem[ceil32(return_data.size) + 328] = 0
        call tokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0] * min / 10000, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0] * min / 10000, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(controllerAddress))
        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(stor5.field_0), ext_call.return_data[0] * min / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Earn((ext_call.return_data[0] * min / 10000), msg.sender);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = tokenAddress
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 164] = this.address
    mem[(4 * ceil32(return_data.size)) + 196] = arg1
    mem[(4 * ceil32(return_data.size)) + 96] = 100
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(4 * ceil32(return_data.size)) + 228] = 32
    mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(tokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[(4 * ceil32(return_data.size)) + 392] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require uint32(stor5.field_0), mem[132 len 28] == bool(uint32(stor5.field_0), mem[132 len 28])
            if not uint32(stor5.field_0), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
            if not mem[(4 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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
        if not totalSupply:
            emit Deposit(0, 0, 10^18, msg.sender);
        else:
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args tokenAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not uint255(ext_call.return_data[0]):
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                emit Deposit(0, 0, 0 / totalSupply, msg.sender);
            else:
                require 2 * ext_call.return_data[0]
                if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                emit Deposit(0, 0, 2 * 10^18 * ext_call.return_data[0] / totalSupply, msg.sender);
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
        if not totalSupply:
            emit Deposit(0 / 2 * ext_call.return_data[0], 0, 10^18, msg.sender);
        else:
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args tokenAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not uint255(ext_call.return_data[0]):
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                emit Deposit(0 / 2 * ext_call.return_data[0], 0, 0 / totalSupply, msg.sender);
            else:
                require 2 * ext_call.return_data[0]
                if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                emit Deposit(0 / 2 * ext_call.return_data[0], 0, 2 * 10^18 * ext_call.return_data[0] / totalSupply, msg.sender);
}

function depositAll() payable {
    mem[100] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = tokenAddress
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(6 * ceil32(return_data.size)) + 164] = this.address
    mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 96] = 100
    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(6 * ceil32(return_data.size)) + 228] = 32
    mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(tokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[(6 * ceil32(return_data.size)) + 392] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
            if not mem[(6 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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
        if not totalSupply:
            emit Deposit(0, 0, 10^18, msg.sender);
        else:
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args tokenAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not uint255(ext_call.return_data[0]):
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                emit Deposit(0, 0, 0 / totalSupply, msg.sender);
            else:
                require 2 * ext_call.return_data[0]
                if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                emit Deposit(0, 0, 2 * 10^18 * ext_call.return_data[0] / totalSupply, msg.sender);
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
        if not totalSupply:
            emit Deposit(0 / 2 * ext_call.return_data[0], 0, 10^18, msg.sender);
        else:
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args tokenAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not uint255(ext_call.return_data[0]):
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                emit Deposit(0 / 2 * ext_call.return_data[0], 0, 0 / totalSupply, msg.sender);
            else:
                require 2 * ext_call.return_data[0]
                if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                emit Deposit(0 / 2 * ext_call.return_data[0], 0, 2 * 10^18 * ext_call.return_data[0] / totalSupply, msg.sender);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = tokenAddress
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        mem[(2 * ceil32(return_data.size)) + 96] = 34
        mem[(2 * ceil32(return_data.size)) + 128 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        34,
                        0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 162 len 30] >> 16,
                        0
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= 0 / totalSupply:
            mem[(4 * ceil32(return_data.size)) + 228] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 260] = 0 / totalSupply
            mem[(4 * ceil32(return_data.size)) + 192] = 68
            mem[(4 * ceil32(return_data.size)) + 228 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 224 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 292] = 32
            mem[(4 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 356 len 96] = unknown_0xa9059cbb(?????), msg.sender, 0 / totalSupply, 0
            mem[(4 * ceil32(return_data.size)) + 424] = 0
            call tokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 0 / totalSupply, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 0 / totalSupply, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor5.field_0), mem[132 len 28] == bool(uint32(stor5.field_0), mem[132 len 28])
                    if not uint32(stor5.field_0), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 388] == bool(mem[(4 * ceil32(return_data.size)) + 388])
                    if not mem[(4 * ceil32(return_data.size)) + 388]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if not totalSupply:
                emit Withdraw(arg1, 0 / totalSupply, 10^18, msg.sender);
            else:
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args tokenAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint255(ext_call.return_data[0]):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    emit Withdraw(arg1, 0 / totalSupply, 0 / totalSupply, msg.sender);
                else:
                    require 2 * ext_call.return_data[0]
                    if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    emit Withdraw(arg1, 0 / totalSupply, 2 * 10^18 * ext_call.return_data[0] / totalSupply, msg.sender);
        else:
            if ext_call.return_data[0] > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(4 * ceil32(return_data.size)) + 228] = (0 / totalSupply) - ext_call.return_data[0]
            require ext_code.size(address(controllerAddress))
            call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(stor5.field_0), (0 / totalSupply) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 196] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] >= 0 / totalSupply:
                mem[(6 * ceil32(return_data.size)) + 228] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 260] = 0 / totalSupply
                mem[(6 * ceil32(return_data.size)) + 192] = 68
                mem[(6 * ceil32(return_data.size)) + 228 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(6 * ceil32(return_data.size)) + 224 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 292] = 32
                mem[(6 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 356 len 96] = unknown_0xa9059cbb(?????), msg.sender, 0 / totalSupply, 0
                mem[(6 * ceil32(return_data.size)) + 424] = 0
                call tokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 0 / totalSupply, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 0 / totalSupply, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require uint32(stor5.field_0), mem[132 len 28] == bool(uint32(stor5.field_0), mem[132 len 28])
                        if not uint32(stor5.field_0), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 388] == bool(mem[(6 * ceil32(return_data.size)) + 388])
                        if not mem[(6 * ceil32(return_data.size)) + 388]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not totalSupply:
                    emit Withdraw(arg1, 0 / totalSupply, 10^18, msg.sender);
                else:
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args tokenAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not uint255(ext_call.return_data[0]):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        emit Withdraw(arg1, 0 / totalSupply, 0 / totalSupply, msg.sender);
                    else:
                        require 2 * ext_call.return_data[0]
                        if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        emit Withdraw(arg1, 0 / totalSupply, 2 * 10^18 * ext_call.return_data[0] / totalSupply, msg.sender);
            else:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(6 * ceil32(return_data.size)) + 228] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 192] = 68
                mem[(6 * ceil32(return_data.size)) + 228 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(6 * ceil32(return_data.size)) + 224 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 292] = 32
                mem[(6 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 356 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                mem[(6 * ceil32(return_data.size)) + 424] = 0
                call tokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require uint32(stor5.field_0), mem[132 len 28] == bool(uint32(stor5.field_0), mem[132 len 28])
                        if not uint32(stor5.field_0), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 388] == bool(mem[(6 * ceil32(return_data.size)) + 388])
                        if not mem[(6 * ceil32(return_data.size)) + 388]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not totalSupply:
                    emit Withdraw(arg1, ext_call.return_data[0], 10^18, msg.sender);
                else:
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args tokenAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not uint255(ext_call.return_data[0]):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        emit Withdraw(arg1, ext_call.return_data[0], 0 / totalSupply, msg.sender);
                    else:
                        require 2 * ext_call.return_data[0]
                        if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        emit Withdraw(arg1, ext_call.return_data[0], 2 * 10^18 * ext_call.return_data[0] / totalSupply, msg.sender);
    else:
        require 2 * ext_call.return_data[0]
        if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / 2 * ext_call.return_data[0] != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        mem[(2 * ceil32(return_data.size)) + 96] = 34
        mem[(2 * ceil32(return_data.size)) + 128 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        34,
                        0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 162 len 30] >> 16,
                        0
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
            mem[(4 * ceil32(return_data.size)) + 228] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 260] = (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply
            mem[(4 * ceil32(return_data.size)) + 192] = 68
            mem[(4 * ceil32(return_data.size)) + 228 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 224 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 292] = 32
            mem[(4 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 356 len 96] = unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0
            mem[(4 * ceil32(return_data.size)) + 424] = 0
            call tokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor5.field_0), mem[132 len 28] == bool(uint32(stor5.field_0), mem[132 len 28])
                    if not uint32(stor5.field_0), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 388] == bool(mem[(4 * ceil32(return_data.size)) + 388])
                    if not mem[(4 * ceil32(return_data.size)) + 388]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if not totalSupply:
                emit Withdraw(arg1, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 10^18, msg.sender);
            else:
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args tokenAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint255(ext_call.return_data[0]):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    emit Withdraw(arg1, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0 / totalSupply, msg.sender);
                else:
                    require 2 * ext_call.return_data[0]
                    if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    emit Withdraw(arg1, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 2 * 10^18 * ext_call.return_data[0] / totalSupply, msg.sender);
        else:
            if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(4 * ceil32(return_data.size)) + 228] = ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0]
            require ext_code.size(address(controllerAddress))
            call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(stor5.field_0), ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 196] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                mem[(6 * ceil32(return_data.size)) + 228] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 260] = (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply
                mem[(6 * ceil32(return_data.size)) + 192] = 68
                mem[(6 * ceil32(return_data.size)) + 228 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(6 * ceil32(return_data.size)) + 224 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 292] = 32
                mem[(6 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 356 len 96] = unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0
                mem[(6 * ceil32(return_data.size)) + 424] = 0
                call tokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require uint32(stor5.field_0), mem[132 len 28] == bool(uint32(stor5.field_0), mem[132 len 28])
                        if not uint32(stor5.field_0), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 388] == bool(mem[(6 * ceil32(return_data.size)) + 388])
                        if not mem[(6 * ceil32(return_data.size)) + 388]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not totalSupply:
                    emit Withdraw(arg1, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 10^18, msg.sender);
                else:
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args tokenAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not uint255(ext_call.return_data[0]):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        emit Withdraw(arg1, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0 / totalSupply, msg.sender);
                    else:
                        require 2 * ext_call.return_data[0]
                        if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        emit Withdraw(arg1, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 2 * 10^18 * ext_call.return_data[0] / totalSupply, msg.sender);
            else:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(6 * ceil32(return_data.size)) + 228] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 192] = 68
                mem[(6 * ceil32(return_data.size)) + 228 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(6 * ceil32(return_data.size)) + 224 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 292] = 32
                mem[(6 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 356 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                mem[(6 * ceil32(return_data.size)) + 424] = 0
                call tokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require uint32(stor5.field_0), mem[132 len 28] == bool(uint32(stor5.field_0), mem[132 len 28])
                        if not uint32(stor5.field_0), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 388] == bool(mem[(6 * ceil32(return_data.size)) + 388])
                        if not mem[(6 * ceil32(return_data.size)) + 388]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not totalSupply:
                    emit Withdraw(arg1, ext_call.return_data[0], 10^18, msg.sender);
                else:
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args tokenAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not uint255(ext_call.return_data[0]):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        emit Withdraw(arg1, ext_call.return_data[0], 0 / totalSupply, msg.sender);
                    else:
                        require 2 * ext_call.return_data[0]
                        if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        emit Withdraw(arg1, ext_call.return_data[0], 2 * 10^18 * ext_call.return_data[0] / totalSupply, msg.sender);
}

function withdrawAll() payable {
    mem[100] = tokenAddress
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        mem[(2 * ceil32(return_data.size)) + 96] = 34
        mem[(2 * ceil32(return_data.size)) + 128 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        34,
                        0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 162 len 30] >> 16,
                        0
        balanceOf[address(msg.sender)] = 0
        if balanceOf[address(msg.sender)] > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= 0 / totalSupply:
            mem[(4 * ceil32(return_data.size)) + 228] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 260] = 0 / totalSupply
            mem[(4 * ceil32(return_data.size)) + 192] = 68
            mem[(4 * ceil32(return_data.size)) + 228 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 224 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 292] = 32
            mem[(4 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 356 len 96] = unknown_0xa9059cbb(?????), msg.sender, 0 / totalSupply, 0
            mem[(4 * ceil32(return_data.size)) + 424] = 0
            call tokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 0 / totalSupply, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 0 / totalSupply, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor5.field_0), mem[132 len 28] == bool(uint32(stor5.field_0), mem[132 len 28])
                    if not uint32(stor5.field_0), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 388] == bool(mem[(4 * ceil32(return_data.size)) + 388])
                    if not mem[(4 * ceil32(return_data.size)) + 388]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if not totalSupply:
                emit Withdraw(balanceOf[address(msg.sender)], 0 / totalSupply, 10^18, msg.sender);
            else:
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args tokenAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint255(ext_call.return_data[0]):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    emit Withdraw(balanceOf[address(msg.sender)], 0 / totalSupply, 0 / totalSupply, msg.sender);
                else:
                    require 2 * ext_call.return_data[0]
                    if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    emit Withdraw(balanceOf[address(msg.sender)], 0 / totalSupply, 2 * 10^18 * ext_call.return_data[0] / totalSupply, msg.sender);
        else:
            if ext_call.return_data[0] > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(4 * ceil32(return_data.size)) + 228] = (0 / totalSupply) - ext_call.return_data[0]
            require ext_code.size(address(controllerAddress))
            call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(stor5.field_0), (0 / totalSupply) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 196] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] >= 0 / totalSupply:
                mem[(6 * ceil32(return_data.size)) + 228] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 260] = 0 / totalSupply
                mem[(6 * ceil32(return_data.size)) + 192] = 68
                mem[(6 * ceil32(return_data.size)) + 228 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(6 * ceil32(return_data.size)) + 224 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 292] = 32
                mem[(6 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 356 len 96] = unknown_0xa9059cbb(?????), msg.sender, 0 / totalSupply, 0
                mem[(6 * ceil32(return_data.size)) + 424] = 0
                call tokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 0 / totalSupply, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 0 / totalSupply, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require uint32(stor5.field_0), mem[132 len 28] == bool(uint32(stor5.field_0), mem[132 len 28])
                        if not uint32(stor5.field_0), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 388] == bool(mem[(6 * ceil32(return_data.size)) + 388])
                        if not mem[(6 * ceil32(return_data.size)) + 388]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not totalSupply:
                    emit Withdraw(balanceOf[address(msg.sender)], 0 / totalSupply, 10^18, msg.sender);
                else:
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args tokenAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not uint255(ext_call.return_data[0]):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        emit Withdraw(balanceOf[address(msg.sender)], 0 / totalSupply, 0 / totalSupply, msg.sender);
                    else:
                        require 2 * ext_call.return_data[0]
                        if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        emit Withdraw(balanceOf[address(msg.sender)], 0 / totalSupply, 2 * 10^18 * ext_call.return_data[0] / totalSupply, msg.sender);
            else:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(6 * ceil32(return_data.size)) + 228] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 192] = 68
                mem[(6 * ceil32(return_data.size)) + 228 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(6 * ceil32(return_data.size)) + 224 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 292] = 32
                mem[(6 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 356 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                mem[(6 * ceil32(return_data.size)) + 424] = 0
                call tokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require uint32(stor5.field_0), mem[132 len 28] == bool(uint32(stor5.field_0), mem[132 len 28])
                        if not uint32(stor5.field_0), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 388] == bool(mem[(6 * ceil32(return_data.size)) + 388])
                        if not mem[(6 * ceil32(return_data.size)) + 388]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not totalSupply:
                    emit Withdraw(balanceOf[address(msg.sender)], ext_call.return_data[0], 10^18, msg.sender);
                else:
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args tokenAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not uint255(ext_call.return_data[0]):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        emit Withdraw(balanceOf[address(msg.sender)], ext_call.return_data[0], 0 / totalSupply, msg.sender);
                    else:
                        require 2 * ext_call.return_data[0]
                        if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        emit Withdraw(balanceOf[address(msg.sender)], ext_call.return_data[0], 2 * 10^18 * ext_call.return_data[0] / totalSupply, msg.sender);
    else:
        require 2 * ext_call.return_data[0]
        if (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / 2 * ext_call.return_data[0] != balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        mem[(2 * ceil32(return_data.size)) + 96] = 34
        mem[(2 * ceil32(return_data.size)) + 128 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        34,
                        0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 162 len 30] >> 16,
                        0
        balanceOf[address(msg.sender)] = 0
        if balanceOf[address(msg.sender)] > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
            mem[(4 * ceil32(return_data.size)) + 228] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 260] = (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply
            mem[(4 * ceil32(return_data.size)) + 192] = 68
            mem[(4 * ceil32(return_data.size)) + 228 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 224 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 292] = 32
            mem[(4 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 356 len 96] = unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, 0
            mem[(4 * ceil32(return_data.size)) + 424] = 0
            call tokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor5.field_0), mem[132 len 28] == bool(uint32(stor5.field_0), mem[132 len 28])
                    if not uint32(stor5.field_0), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 388] == bool(mem[(4 * ceil32(return_data.size)) + 388])
                    if not mem[(4 * ceil32(return_data.size)) + 388]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if not totalSupply:
                emit Withdraw(balanceOf[address(msg.sender)], (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, 10^18, msg.sender);
            else:
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args tokenAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint255(ext_call.return_data[0]):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    emit Withdraw(balanceOf[address(msg.sender)], (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, 0 / totalSupply, msg.sender);
                else:
                    require 2 * ext_call.return_data[0]
                    if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    emit Withdraw(balanceOf[address(msg.sender)], (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, 2 * 10^18 * ext_call.return_data[0] / totalSupply, msg.sender);
        else:
            if ext_call.return_data[0] > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(4 * ceil32(return_data.size)) + 228] = ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]
            require ext_code.size(address(controllerAddress))
            call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(stor5.field_0), ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 196] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                mem[(6 * ceil32(return_data.size)) + 228] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 260] = (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply
                mem[(6 * ceil32(return_data.size)) + 192] = 68
                mem[(6 * ceil32(return_data.size)) + 228 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(6 * ceil32(return_data.size)) + 224 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 292] = 32
                mem[(6 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 356 len 96] = unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, 0
                mem[(6 * ceil32(return_data.size)) + 424] = 0
                call tokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require uint32(stor5.field_0), mem[132 len 28] == bool(uint32(stor5.field_0), mem[132 len 28])
                        if not uint32(stor5.field_0), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 388] == bool(mem[(6 * ceil32(return_data.size)) + 388])
                        if not mem[(6 * ceil32(return_data.size)) + 388]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not totalSupply:
                    emit Withdraw(balanceOf[address(msg.sender)], (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, 10^18, msg.sender);
                else:
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args tokenAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not uint255(ext_call.return_data[0]):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        emit Withdraw(balanceOf[address(msg.sender)], (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, 0 / totalSupply, msg.sender);
                    else:
                        require 2 * ext_call.return_data[0]
                        if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        emit Withdraw(balanceOf[address(msg.sender)], (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, 2 * 10^18 * ext_call.return_data[0] / totalSupply, msg.sender);
            else:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(6 * ceil32(return_data.size)) + 228] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 192] = 68
                mem[(6 * ceil32(return_data.size)) + 228 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(6 * ceil32(return_data.size)) + 224 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 292] = 32
                mem[(6 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 356 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                mem[(6 * ceil32(return_data.size)) + 424] = 0
                call tokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require uint32(stor5.field_0), mem[132 len 28] == bool(uint32(stor5.field_0), mem[132 len 28])
                        if not uint32(stor5.field_0), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 388] == bool(mem[(6 * ceil32(return_data.size)) + 388])
                        if not mem[(6 * ceil32(return_data.size)) + 388]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not totalSupply:
                    emit Withdraw(balanceOf[address(msg.sender)], ext_call.return_data[0], 10^18, msg.sender);
                else:
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args tokenAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not uint255(ext_call.return_data[0]):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        emit Withdraw(balanceOf[address(msg.sender)], ext_call.return_data[0], 0 / totalSupply, msg.sender);
                    else:
                        require 2 * ext_call.return_data[0]
                        if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        emit Withdraw(balanceOf[address(msg.sender)], ext_call.return_data[0], 2 * 10^18 * ext_call.return_data[0] / totalSupply, msg.sender);
}



}
