contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of struct balanceOfReward;
mapping of uint8 stor8;
uint256 claimDelay;
uint8 enableReward;
uint256 sub_9fd98de1;
uint256 totalUnclaimed;
uint256 totalReward;
uint8 sub_fbe4ee2a;
uint256 botDelay;
uint256 sub_071ce231;
address sub_4dc32effAddress;

function name() payable {
    return name[0 len name.length]
}

function sub_071ce231(?) payable {
    return sub_071ce231
}

function balanceOfReward(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOfReward[address(arg1)].field_1024
}

function totalSupply() payable {
    return totalSupply
}

function claimDelay() payable {
    return claimDelay
}

function decimals() payable {
    return decimals
}

function sub_4dc32eff(?) payable {
    return sub_4dc32effAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function totalReward() payable {
    return totalReward
}

function enableReward() payable {
    return bool(enableReward)
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function botDelay() payable {
    return botDelay
}

function sub_9fd98de1(?) payable {
    return sub_9fd98de1
}

function userData(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOfReward[arg1].field_0, 
           balanceOfReward[arg1].field_256,
           balanceOfReward[arg1].field_512,
           balanceOfReward[arg1].field_768,
           balanceOfReward[arg1].field_1024
}

function totalUnclaimed() payable {
    return totalUnclaimed
}

function nextClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOfReward[address(arg1)].field_768
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_fbe4ee2a(?) payable {
    return bool(sub_fbe4ee2a)
}

function _fallback() payable {
    revert
}

function totalClaimed() payable {
    if totalUnclaimed > totalReward:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalReward - totalUnclaimed)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
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
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0x6d42455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function burnSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if balanceOf[address(this.address)] <= 0:
        revert with 0, 'Token::burnToken:Nothing to burn'
    if arg1 > balanceOf[address(this.address)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x64546f6b656e3a3a6275726e546f6b656e3a496e73756666696369656e742062616c616e636520746f20627572,
                    mem[209 len 19]
    require ext_code.size(this.address)
    if arg1 > 0:
        call this.address.0xa9059cbb with:
             gas gas_remaining wei
            args 57005, arg1
    else:
        call this.address.0xa9059cbb with:
             gas gas_remaining wei
            args 57005, balanceOf[address(this.address)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_8b7bf3ed(?) payable {
    require calldata.size - 4 >= 96
    mem[96] = 2
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(sub_4dc32effAddress)
    staticcall sub_4dc32effAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _23 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _26 = mem[_23 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_23 + 192])] = mem[_23 + 224 len floor32(mem[_23 + 192])]
    mem[(32 * _26) + ceil32(return_data.size) + 224] = 32
    mem[(32 * _26) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 192]
    mem[(32 * _26) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 192])] = mem[ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 192])]
    return 32, mem[(32 * _26) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
}

function claimReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    stor8[tx.origin] = 1
    if not enableReward:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65546f6b656e3a3a636c61696d5265776172643a5265776172642064697361626c65,
                    mem[198 len 30]
    if not balanceOfReward[msg.sender].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x73546f6b656e3a3a636c61696d5265776172643a4e6f207265776172642062616c616e636520746f20636c6169,
                    mem[209 len 19]
    if block.timestamp < balanceOfReward[msg.sender].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x73546f6b656e3a3a636c61696d5265776172643a4e65787420636c61696d696e672074696d65206e6565647320746f20656c617073,
                    mem[217 len 11]
    if not balanceOf[address(this.address)]:
        balanceOfReward[msg.sender].field_1024 = 0
        enableReward = 0
    else:
        if balanceOfReward[msg.sender].field_1024 <= balanceOf[address(this.address)]:
            if arg1 > balanceOfReward[msg.sender].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            57,
                            0x73546f6b656e3a3a636c61696d5265776172643a456e746572656420616d6f756e74206578636565647320636c696d61626c65207265776172,
                            mem[221 len 7]
            if balanceOfReward[msg.sender].field_1024 + balanceOfReward[msg.sender].field_512 < balanceOfReward[msg.sender].field_512:
                revert with 0, 'SafeMath: addition overflow'
            balanceOfReward[msg.sender].field_512 += balanceOfReward[msg.sender].field_1024
            if arg1 > 0:
                if arg1 > balanceOfReward[msg.sender].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOfReward[msg.sender].field_1024 -= arg1
                if block.timestamp + balanceOfReward[msg.sender].field_768 < balanceOfReward[msg.sender].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if claimDelay < 0:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOfReward[msg.sender].field_768 = claimDelay + block.timestamp + balanceOfReward[msg.sender].field_768
                if block.timestamp + balanceOfReward[msg.sender].field_0 < balanceOfReward[msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if botDelay < 0:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOfReward[msg.sender].field_0 = botDelay + block.timestamp + balanceOfReward[msg.sender].field_0
                if arg1 > totalUnclaimed:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalUnclaimed -= arg1
                require ext_code.size(this.address)
                call this.address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
            else:
                if balanceOfReward[msg.sender].field_1024 > balanceOfReward[msg.sender].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOfReward[msg.sender].field_1024 = 0
                if block.timestamp + balanceOfReward[msg.sender].field_768 < balanceOfReward[msg.sender].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if claimDelay < 0:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOfReward[msg.sender].field_768 = claimDelay + block.timestamp + balanceOfReward[msg.sender].field_768
                if block.timestamp + balanceOfReward[msg.sender].field_0 < balanceOfReward[msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if botDelay < 0:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOfReward[msg.sender].field_0 = botDelay + block.timestamp + balanceOfReward[msg.sender].field_0
                if balanceOfReward[msg.sender].field_1024 > totalUnclaimed:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalUnclaimed -= balanceOfReward[msg.sender].field_1024
                require ext_code.size(this.address)
                call this.address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, balanceOfReward[msg.sender].field_1024
        else:
            if balanceOf[address(this.address)] > balanceOf[address(this.address)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            57,
                            0x73546f6b656e3a3a636c61696d5265776172643a456e746572656420616d6f756e74206578636565647320636c696d61626c65207265776172,
                            mem[221 len 7]
            if balanceOf[address(this.address)] + balanceOfReward[msg.sender].field_512 < balanceOfReward[msg.sender].field_512:
                revert with 0, 'SafeMath: addition overflow'
            balanceOfReward[msg.sender].field_512 += balanceOf[address(this.address)]
            if balanceOf[address(this.address)] > balanceOfReward[msg.sender].field_1024:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOfReward[msg.sender].field_1024 -= balanceOf[address(this.address)]
            if block.timestamp + balanceOfReward[msg.sender].field_768 < balanceOfReward[msg.sender].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if claimDelay < 0:
                revert with 0, 'SafeMath: addition overflow'
            balanceOfReward[msg.sender].field_768 = claimDelay + block.timestamp + balanceOfReward[msg.sender].field_768
            if block.timestamp + balanceOfReward[msg.sender].field_0 < balanceOfReward[msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if botDelay < 0:
                revert with 0, 'SafeMath: addition overflow'
            balanceOfReward[msg.sender].field_0 = botDelay + block.timestamp + balanceOfReward[msg.sender].field_0
            if balanceOf[address(this.address)] > totalUnclaimed:
                revert with 0, 'SafeMath: subtraction overflow'
            totalUnclaimed -= balanceOf[address(this.address)]
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, balanceOf[address(this.address)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    stor8[tx.origin] = uint8(bool(stor8[tx.origin]))
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if 57005 == arg1:
        if arg2:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
    else:
        if not arg2:
            if not sub_fbe4ee2a:
                if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if botDelay < 0:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
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
                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if block.timestamp >= balanceOfReward[tx.origin].field_0:
                    if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if botDelay < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
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
                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2 <= 0:
                        if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if botDelay < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
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
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not arg2:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                                            mem[197 len 31]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                            if 0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            emit Transfer(0, msg.sender, 0);
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if botDelay < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[262 len 26],
                                            mem[314 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if sub_071ce231 * arg2 / arg2 != sub_071ce231:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                                            mem[197 len 31]
                            if sub_071ce231 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                            balanceOf[address(msg.sender)] -= sub_071ce231 * arg2 / 100
                            if sub_071ce231 * arg2 / 100 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= sub_071ce231 * arg2 / 100
                            emit Transfer((sub_071ce231 * arg2 / 100), msg.sender, 0);
                            if sub_071ce231 * arg2 / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if botDelay < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                            if arg2 - (sub_071ce231 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[262 len 26],
                                            mem[314 len 6]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (sub_071ce231 * arg2 / 100)
                            if arg2 - (sub_071ce231 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 - (sub_071ce231 * arg2 / 100) + balanceOf[arg1]
                            emit Transfer((arg2 - (sub_071ce231 * arg2 / 100)), msg.sender, arg1);
        else:
            if this.address == arg1:
                if not sub_fbe4ee2a:
                    if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if botDelay < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
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
                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if block.timestamp >= balanceOfReward[tx.origin].field_0:
                        if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if botDelay < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
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
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2 <= 0:
                            if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if botDelay < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
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
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                                                mem[197 len 31]
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                                if 0 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                emit Transfer(0, msg.sender, 0);
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if botDelay < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                                if not msg.sender:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[262 len 26],
                                                mem[314 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if sub_071ce231 * arg2 / arg2 != sub_071ce231:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                                                mem[197 len 31]
                                if sub_071ce231 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                                balanceOf[address(msg.sender)] -= sub_071ce231 * arg2 / 100
                                if sub_071ce231 * arg2 / 100 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= sub_071ce231 * arg2 / 100
                                emit Transfer((sub_071ce231 * arg2 / 100), msg.sender, 0);
                                if sub_071ce231 * arg2 / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if botDelay < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                                if not msg.sender:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                if arg2 - (sub_071ce231 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[262 len 26],
                                                mem[314 len 6]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (sub_071ce231 * arg2 / 100)
                                if arg2 - (sub_071ce231 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 - (sub_071ce231 * arg2 / 100) + balanceOf[arg1]
                                emit Transfer((arg2 - (sub_071ce231 * arg2 / 100)), msg.sender, arg1);
            else:
                if not arg2:
                    if not sub_fbe4ee2a:
                        if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if botDelay < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
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
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if block.timestamp >= balanceOfReward[tx.origin].field_0:
                            if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if botDelay < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
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
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 <= 0:
                                if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if botDelay < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
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
                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                                                    mem[197 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if botDelay < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[262 len 26],
                                                    mem[314 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if sub_071ce231 * arg2 / arg2 != sub_071ce231:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                                                    mem[197 len 31]
                                    if sub_071ce231 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                                    balanceOf[address(msg.sender)] -= sub_071ce231 * arg2 / 100
                                    if sub_071ce231 * arg2 / 100 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= sub_071ce231 * arg2 / 100
                                    emit Transfer((sub_071ce231 * arg2 / 100), msg.sender, 0);
                                    if sub_071ce231 * arg2 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if botDelay < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                    if arg2 - (sub_071ce231 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[262 len 26],
                                                    mem[314 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (sub_071ce231 * arg2 / 100)
                                    if arg2 - (sub_071ce231 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (sub_071ce231 * arg2 / 100) + balanceOf[arg1]
                                    emit Transfer((arg2 - (sub_071ce231 * arg2 / 100)), msg.sender, arg1);
                else:
                    if sub_9fd98de1 * arg2 / arg2 != sub_9fd98de1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not sub_fbe4ee2a:
                        if not stor8[tx.origin]:
                            if sub_9fd98de1 * arg2 / 100:
                                if (sub_9fd98de1 * arg2 / 100) + totalUnclaimed < totalUnclaimed:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalUnclaimed += sub_9fd98de1 * arg2 / 100
                                if (sub_9fd98de1 * arg2 / 100) + totalReward < totalReward:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalReward += sub_9fd98de1 * arg2 / 100
                                if (sub_9fd98de1 * arg2 / 100) + balanceOfReward[tx.origin].field_512 < balanceOfReward[tx.origin].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOfReward[tx.origin].field_512 += sub_9fd98de1 * arg2 / 100
                                if (sub_9fd98de1 * arg2 / 100) + balanceOfReward[tx.origin].field_1024 < balanceOfReward[tx.origin].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOfReward[tx.origin].field_1024 += sub_9fd98de1 * arg2 / 100
                                if block.timestamp + balanceOfReward[tx.origin].field_768 < balanceOfReward[tx.origin].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claimDelay < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOfReward[tx.origin].field_768 = claimDelay + block.timestamp + balanceOfReward[tx.origin].field_768
                        if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if botDelay < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
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
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if block.timestamp >= balanceOfReward[tx.origin].field_0:
                            if not stor8[tx.origin]:
                                if sub_9fd98de1 * arg2 / 100:
                                    if (sub_9fd98de1 * arg2 / 100) + totalUnclaimed < totalUnclaimed:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalUnclaimed += sub_9fd98de1 * arg2 / 100
                                    if (sub_9fd98de1 * arg2 / 100) + totalReward < totalReward:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalReward += sub_9fd98de1 * arg2 / 100
                                    if (sub_9fd98de1 * arg2 / 100) + balanceOfReward[tx.origin].field_512 < balanceOfReward[tx.origin].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOfReward[tx.origin].field_512 += sub_9fd98de1 * arg2 / 100
                                    if (sub_9fd98de1 * arg2 / 100) + balanceOfReward[tx.origin].field_1024 < balanceOfReward[tx.origin].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOfReward[tx.origin].field_1024 += sub_9fd98de1 * arg2 / 100
                                    if block.timestamp + balanceOfReward[tx.origin].field_768 < balanceOfReward[tx.origin].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claimDelay < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOfReward[tx.origin].field_768 = claimDelay + block.timestamp + balanceOfReward[tx.origin].field_768
                            if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if botDelay < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
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
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 > 0:
                                if not arg2:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                                                    mem[197 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if botDelay < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[262 len 26],
                                                    mem[314 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if sub_071ce231 * arg2 / arg2 != sub_071ce231:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                                                    mem[197 len 31]
                                    if sub_071ce231 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                                    balanceOf[address(msg.sender)] -= sub_071ce231 * arg2 / 100
                                    if sub_071ce231 * arg2 / 100 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= sub_071ce231 * arg2 / 100
                                    emit Transfer((sub_071ce231 * arg2 / 100), msg.sender, 0);
                                    if sub_071ce231 * arg2 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if botDelay < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                    if arg2 - (sub_071ce231 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[262 len 26],
                                                    mem[314 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (sub_071ce231 * arg2 / 100)
                                    if arg2 - (sub_071ce231 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (sub_071ce231 * arg2 / 100) + balanceOf[arg1]
                                    emit Transfer((arg2 - (sub_071ce231 * arg2 / 100)), msg.sender, arg1);
                            else:
                                if not stor8[tx.origin]:
                                    if sub_9fd98de1 * arg2 / 100:
                                        if (sub_9fd98de1 * arg2 / 100) + totalUnclaimed < totalUnclaimed:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalUnclaimed += sub_9fd98de1 * arg2 / 100
                                        if (sub_9fd98de1 * arg2 / 100) + totalReward < totalReward:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalReward += sub_9fd98de1 * arg2 / 100
                                        if (sub_9fd98de1 * arg2 / 100) + balanceOfReward[tx.origin].field_512 < balanceOfReward[tx.origin].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOfReward[tx.origin].field_512 += sub_9fd98de1 * arg2 / 100
                                        if (sub_9fd98de1 * arg2 / 100) + balanceOfReward[tx.origin].field_1024 < balanceOfReward[tx.origin].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOfReward[tx.origin].field_1024 += sub_9fd98de1 * arg2 / 100
                                        if block.timestamp + balanceOfReward[tx.origin].field_768 < balanceOfReward[tx.origin].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claimDelay < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOfReward[tx.origin].field_768 = claimDelay + block.timestamp + balanceOfReward[tx.origin].field_768
                                if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if botDelay < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
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
                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
    if 57005 == arg2:
        if not arg3:
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[168 len 24],
                            mem[216 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
        else:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(arg1)] -= arg3
            if arg3 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg3
            emit Transfer(arg3, arg1, 0);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if not arg3:
            if not sub_fbe4ee2a:
                if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if botDelay < 0:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
            else:
                if block.timestamp >= balanceOfReward[tx.origin].field_0:
                    if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if botDelay < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                    0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[264 len 24],
                                    mem[312 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                else:
                    if arg3 <= 0:
                        if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if botDelay < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                        0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[264 len 24],
                                        mem[312 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                    else:
                        if not arg3:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                                            mem[197 len 31]
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                            if 0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            emit Transfer(0, arg1, 0);
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if botDelay < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                            if not arg1:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[262 len 26],
                                            mem[314 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if sub_071ce231 * arg3 / arg3 != sub_071ce231:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                                            mem[197 len 31]
                            if sub_071ce231 * arg3 / 100 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                            balanceOf[address(arg1)] -= sub_071ce231 * arg3 / 100
                            if sub_071ce231 * arg3 / 100 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= sub_071ce231 * arg3 / 100
                            emit Transfer((sub_071ce231 * arg3 / 100), arg1, 0);
                            if sub_071ce231 * arg3 / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if botDelay < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                            if not arg1:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                            if arg3 - (sub_071ce231 * arg3 / 100) > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[262 len 26],
                                            mem[314 len 6]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (sub_071ce231 * arg3 / 100)
                            if arg3 - (sub_071ce231 * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = arg3 - (sub_071ce231 * arg3 / 100) + balanceOf[arg2]
                            emit Transfer((arg3 - (sub_071ce231 * arg3 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[360 len 24],
                                        mem[408 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
        else:
            if this.address == arg2:
                if not sub_fbe4ee2a:
                    if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if botDelay < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                    0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[264 len 24],
                                    mem[312 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                else:
                    if block.timestamp >= balanceOfReward[tx.origin].field_0:
                        if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if botDelay < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                        0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[264 len 24],
                                        mem[312 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                    else:
                        if arg3 <= 0:
                            if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if botDelay < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                            0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[264 len 24],
                                            mem[312 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                        else:
                            if not arg3:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                                                mem[197 len 31]
                                if 0 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                                if 0 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                emit Transfer(0, arg1, 0);
                                if 0 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if botDelay < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                                if not arg1:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[262 len 26],
                                                mem[314 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if sub_071ce231 * arg3 / arg3 != sub_071ce231:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                                                mem[197 len 31]
                                if sub_071ce231 * arg3 / 100 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                                balanceOf[address(arg1)] -= sub_071ce231 * arg3 / 100
                                if sub_071ce231 * arg3 / 100 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= sub_071ce231 * arg3 / 100
                                emit Transfer((sub_071ce231 * arg3 / 100), arg1, 0);
                                if sub_071ce231 * arg3 / 100 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if botDelay < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                                if not arg1:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                if arg3 - (sub_071ce231 * arg3 / 100) > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[262 len 26],
                                                mem[314 len 6]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (sub_071ce231 * arg3 / 100)
                                if arg3 - (sub_071ce231 * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = arg3 - (sub_071ce231 * arg3 / 100) + balanceOf[arg2]
                                emit Transfer((arg3 - (sub_071ce231 * arg3 / 100)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[360 len 24],
                                            mem[408 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
            else:
                if not arg3:
                    if not sub_fbe4ee2a:
                        if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if botDelay < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                        0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[264 len 24],
                                        mem[312 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                    else:
                        if block.timestamp >= balanceOfReward[tx.origin].field_0:
                            if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if botDelay < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                            0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[264 len 24],
                                            mem[312 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                        else:
                            if arg3 <= 0:
                                if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if botDelay < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                                0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[264 len 24],
                                                mem[312 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                            else:
                                if not arg3:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                                                    mem[197 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    emit Transfer(0, arg1, 0);
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if botDelay < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                                    if not arg1:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[262 len 26],
                                                    mem[314 len 6]
                                    balanceOf[address(arg1)] -= arg3
                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if sub_071ce231 * arg3 / arg3 != sub_071ce231:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                                                    mem[197 len 31]
                                    if sub_071ce231 * arg3 / 100 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                                    balanceOf[address(arg1)] -= sub_071ce231 * arg3 / 100
                                    if sub_071ce231 * arg3 / 100 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= sub_071ce231 * arg3 / 100
                                    emit Transfer((sub_071ce231 * arg3 / 100), arg1, 0);
                                    if sub_071ce231 * arg3 / 100 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if botDelay < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                                    if not arg1:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                    if arg3 - (sub_071ce231 * arg3 / 100) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[262 len 26],
                                                    mem[314 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (sub_071ce231 * arg3 / 100)
                                    if arg3 - (sub_071ce231 * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (sub_071ce231 * arg3 / 100) + balanceOf[arg2]
                                    emit Transfer((arg3 - (sub_071ce231 * arg3 / 100)), arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[360 len 24],
                                                mem[408 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                else:
                    if sub_9fd98de1 * arg3 / arg3 != sub_9fd98de1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not sub_fbe4ee2a:
                        if not stor8[tx.origin]:
                            if sub_9fd98de1 * arg3 / 100:
                                if (sub_9fd98de1 * arg3 / 100) + totalUnclaimed < totalUnclaimed:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalUnclaimed += sub_9fd98de1 * arg3 / 100
                                if (sub_9fd98de1 * arg3 / 100) + totalReward < totalReward:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalReward += sub_9fd98de1 * arg3 / 100
                                if (sub_9fd98de1 * arg3 / 100) + balanceOfReward[tx.origin].field_512 < balanceOfReward[tx.origin].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOfReward[tx.origin].field_512 += sub_9fd98de1 * arg3 / 100
                                if (sub_9fd98de1 * arg3 / 100) + balanceOfReward[tx.origin].field_1024 < balanceOfReward[tx.origin].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOfReward[tx.origin].field_1024 += sub_9fd98de1 * arg3 / 100
                                if block.timestamp + balanceOfReward[tx.origin].field_768 < balanceOfReward[tx.origin].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claimDelay < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOfReward[tx.origin].field_768 = claimDelay + block.timestamp + balanceOfReward[tx.origin].field_768
                        if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if botDelay < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                        0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[264 len 24],
                                        mem[312 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                    else:
                        if block.timestamp >= balanceOfReward[tx.origin].field_0:
                            if not stor8[tx.origin]:
                                if sub_9fd98de1 * arg3 / 100:
                                    if (sub_9fd98de1 * arg3 / 100) + totalUnclaimed < totalUnclaimed:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalUnclaimed += sub_9fd98de1 * arg3 / 100
                                    if (sub_9fd98de1 * arg3 / 100) + totalReward < totalReward:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalReward += sub_9fd98de1 * arg3 / 100
                                    if (sub_9fd98de1 * arg3 / 100) + balanceOfReward[tx.origin].field_512 < balanceOfReward[tx.origin].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOfReward[tx.origin].field_512 += sub_9fd98de1 * arg3 / 100
                                    if (sub_9fd98de1 * arg3 / 100) + balanceOfReward[tx.origin].field_1024 < balanceOfReward[tx.origin].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOfReward[tx.origin].field_1024 += sub_9fd98de1 * arg3 / 100
                                    if block.timestamp + balanceOfReward[tx.origin].field_768 < balanceOfReward[tx.origin].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claimDelay < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOfReward[tx.origin].field_768 = claimDelay + block.timestamp + balanceOfReward[tx.origin].field_768
                            if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if botDelay < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                            0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[264 len 24],
                                            mem[312 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                        else:
                            if arg3 > 0:
                                if not arg3:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                                                    mem[197 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    emit Transfer(0, arg1, 0);
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if botDelay < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                                    if not arg1:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[262 len 26],
                                                    mem[314 len 6]
                                    balanceOf[address(arg1)] -= arg3
                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if sub_071ce231 * arg3 / arg3 != sub_071ce231:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                                                    mem[197 len 31]
                                    if sub_071ce231 * arg3 / 100 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                                    balanceOf[address(arg1)] -= sub_071ce231 * arg3 / 100
                                    if sub_071ce231 * arg3 / 100 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= sub_071ce231 * arg3 / 100
                                    emit Transfer((sub_071ce231 * arg3 / 100), arg1, 0);
                                    if sub_071ce231 * arg3 / 100 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if botDelay < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                                    if not arg1:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                    if arg3 - (sub_071ce231 * arg3 / 100) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[262 len 26],
                                                    mem[314 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (sub_071ce231 * arg3 / 100)
                                    if arg3 - (sub_071ce231 * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (sub_071ce231 * arg3 / 100) + balanceOf[arg2]
                                    emit Transfer((arg3 - (sub_071ce231 * arg3 / 100)), arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[360 len 24],
                                                mem[408 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                            else:
                                if not stor8[tx.origin]:
                                    if sub_9fd98de1 * arg3 / 100:
                                        if (sub_9fd98de1 * arg3 / 100) + totalUnclaimed < totalUnclaimed:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalUnclaimed += sub_9fd98de1 * arg3 / 100
                                        if (sub_9fd98de1 * arg3 / 100) + totalReward < totalReward:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalReward += sub_9fd98de1 * arg3 / 100
                                        if (sub_9fd98de1 * arg3 / 100) + balanceOfReward[tx.origin].field_512 < balanceOfReward[tx.origin].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOfReward[tx.origin].field_512 += sub_9fd98de1 * arg3 / 100
                                        if (sub_9fd98de1 * arg3 / 100) + balanceOfReward[tx.origin].field_1024 < balanceOfReward[tx.origin].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOfReward[tx.origin].field_1024 += sub_9fd98de1 * arg3 / 100
                                        if block.timestamp + balanceOfReward[tx.origin].field_768 < balanceOfReward[tx.origin].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claimDelay < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOfReward[tx.origin].field_768 = claimDelay + block.timestamp + balanceOfReward[tx.origin].field_768
                                if block.timestamp + balanceOfReward[tx.origin].field_0 < balanceOfReward[tx.origin].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if botDelay < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOfReward[tx.origin].field_0 = botDelay + block.timestamp + balanceOfReward[tx.origin].field_0
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                                0x6542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[264 len 24],
                                                mem[312 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
