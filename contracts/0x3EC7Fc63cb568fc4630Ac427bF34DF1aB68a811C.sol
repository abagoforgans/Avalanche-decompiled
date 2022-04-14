contract main {




// =====================  Runtime code  =====================


#
#  - permit(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#
mapping of struct balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
mapping of uint256 nonces;
uint256 DOMAIN_SEPARATOR;
mapping of uint256 stor8;
mapping of uint8 stor9;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)].field_0
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
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

function getNextUnwrapTimestamp(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor8[address(arg1)] + (720 * 24 * 3600) < stor8[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    return (stor8[address(arg1)] + (720 * 24 * 3600))
}

function setWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Must be another address'
    if arg1 == owner:
        revert with 0, 'Owner cannot be whitelisted'
    stor9[address(arg1)] = 1
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function sub_f5390162(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xe7417729ecb7e483479cb69936a017681dd81031)
    call 0xe7417729ecb7e483479cb69936a017681dd81031.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[address(msg.sender)].field_0 + arg1 < balanceOf[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)].field_0 += arg1
    emit Transfer(arg1, 0, msg.sender);
    stor8[address(msg.sender)] = block.timestamp
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor9[address(msg.sender)]:
        revert with 0, 'Not whitelisted'
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
    if arg2 > balanceOf[address(msg.sender)].field_0:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)].field_0 -= arg2
    if balanceOf[address(arg1)].field_0 + arg2 < balanceOf[address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)].field_0 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor9[address(msg.sender)]:
        revert with 0, 'Not whitelisted'
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
    if arg3 > balanceOf[address(arg1)].field_0:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)].field_0 -= arg3
    if balanceOf[address(arg2)].field_0 + arg3 < balanceOf[address(arg2)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)].field_0 += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x2945524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
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

function sub_339bdbe9(?) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)].field_0:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)].field_0 -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    if stor8[address(msg.sender)] + (720 * 24 * 3600) < stor8[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(0xe7417729ecb7e483479cb69936a017681dd81031)
    if block.timestamp >= stor8[address(msg.sender)] + (720 * 24 * 3600):
        call 0xe7417729ecb7e483479cb69936a017681dd81031.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            return 1
    else:
        call 0xe7417729ecb7e483479cb69936a017681dd81031.0xa9059cbb with:
             gas gas_remaining wei
            args 57005, arg1 / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(0xe7417729ecb7e483479cb69936a017681dd81031)
            call 0xe7417729ecb7e483479cb69936a017681dd81031.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                return 1
    revert
}

function sub_258bc95e(?) payable {
    require ext_code.size(0xe7417729ecb7e483479cb69936a017681dd81031)
    staticcall 0xe7417729ecb7e483479cb69936a017681dd81031.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe7417729ecb7e483479cb69936a017681dd81031)
    if -1 < ext_call.return_data[0]:
        call 0xe7417729ecb7e483479cb69936a017681dd81031.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply - 1 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply--
        if balanceOf[address(msg.sender)].field_0 - 1 < balanceOf[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)].field_0--
        emit Transfer(-1, 0, msg.sender);
    else:
        call 0xe7417729ecb7e483479cb69936a017681dd81031.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply + ext_call.return_data[0] < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += ext_call.return_data[0]
        if balanceOf[address(msg.sender)].field_0 + ext_call.return_data[0] < balanceOf[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)].field_0 += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], 0, msg.sender);
    stor8[address(msg.sender)] = block.timestamp
    return 1
}

function sub_8583a6b8(?) payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if -1 < balanceOf[address(msg.sender)].field_0:
        if -1 > balanceOf[address(msg.sender)].field_0:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(msg.sender)].field_0 -= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        if -1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        emit Transfer(-1, msg.sender, 0);
        if stor8[address(msg.sender)] + (720 * 24 * 3600) < stor8[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(0xe7417729ecb7e483479cb69936a017681dd81031)
        if block.timestamp >= stor8[address(msg.sender)] + (720 * 24 * 3600):
            call 0xe7417729ecb7e483479cb69936a017681dd81031.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                return 1
        else:
            call 0xe7417729ecb7e483479cb69936a017681dd81031.0xa9059cbb with:
                 gas gas_remaining wei
                args 57005, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(0xe7417729ecb7e483479cb69936a017681dd81031)
                call 0xe7417729ecb7e483479cb69936a017681dd81031.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    return 1
    else:
        if balanceOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)].field_0:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(msg.sender)].field_0 = 0
        if balanceOf[address(msg.sender)].field_0 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= balanceOf[address(msg.sender)].field_0
        emit Transfer(balanceOf[address(msg.sender)].field_0, msg.sender, 0);
        if stor8[address(msg.sender)] + (720 * 24 * 3600) < stor8[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(0xe7417729ecb7e483479cb69936a017681dd81031)
        if block.timestamp >= stor8[address(msg.sender)] + (720 * 24 * 3600):
            call 0xe7417729ecb7e483479cb69936a017681dd81031.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, balanceOf[address(msg.sender)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                return 1
        else:
            call 0xe7417729ecb7e483479cb69936a017681dd81031.0xa9059cbb with:
                 gas gas_remaining wei
                args 57005, balanceOf[address(msg.sender)].field_1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(0xe7417729ecb7e483479cb69936a017681dd81031)
                call 0xe7417729ecb7e483479cb69936a017681dd81031.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)].field_1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    return 1
    revert
}



}
