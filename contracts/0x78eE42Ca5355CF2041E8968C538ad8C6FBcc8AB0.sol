contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
array of address users;
uint256 totalStaked;
uint8 stor5; offset 160
uint128 stor5; offset 160
address sub_f34e2426Address;
uint256 stor6;
mapping of uint256 balanceOf;

function name() payable {
    return name[0 len name.length]
}

function users(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < users.length
    return users[arg1]
}

function online() payable {
    return bool(uint8(stor5.field_160))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_f34e2426(?) payable {
    return sub_f34e2426Address
}

function _fallback() payable {
    revert
}

function sub_b4d41c45(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor6 = arg1
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function sub_58c4dfb0(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_f34e2426Address = arg1
    return 1
}

function sub_0221c7a1(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(96, 0, stor5.field_160) = Mask(96, 0, arg1)
    return 1
}

function sub_364f3d51(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(sub_f34e2426Address)
    call sub_f34e2426Address.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require uint8(stor5.field_160)
    require arg1 <= balanceOf[address(msg.sender)]
    require ext_code.size(sub_f34e2426Address)
    call sub_f34e2426Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balanceOf[address(msg.sender)] -= arg1
    totalStaked -= arg1
    emit Withdraw(arg1, msg.sender);
    return 1
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require uint8(stor5.field_160)
    require owner != msg.sender
    if not balanceOf[address(msg.sender)]:
        idx = 0
        s = 0
        while idx < users.length:
            mem[0] = 3
            if users[idx] != msg.sender:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if not s:
            users.length++
            users[users.length] = msg.sender
    require balanceOf[address(msg.sender)] + arg1 > balanceOf[address(msg.sender)]
    require ext_code.size(sub_f34e2426Address)
    call sub_f34e2426Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balanceOf[address(msg.sender)] += arg1
    totalStaked += arg1
    emit Stake(arg1, msg.sender);
    return 1
}

function pay() payable {
    require msg.sender == owner
    require ext_code.size(sub_f34e2426Address)
    staticcall sub_f34e2426Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= totalStaked + (totalStaked * stor6 / 100)
    Mask(96, 0, stor5.field_160) = 0
    idx = 0
    while idx < users.length:
        mem[32] = 7
        require idx < users.length
        mem[132] = balanceOf[stor3[idx]] * stor6 / 100
        require ext_code.size(sub_f34e2426Address)
        call sub_f34e2426Address.0xa9059cbb with:
             gas gas_remaining wei
            args users[idx], balanceOf[stor3[idx]] * stor6 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < users.length
        mem[0] = 3
        mem[96] = balanceOf[stor3[idx]] * stor6 / 100
        mem[128] = block.timestamp
        emit 0xbeaaa1ca: balanceOf[stor3[idx]] * stor6 / 100, block.timestamp, users[idx]
        idx = idx + 1
        continue 
    Mask(96, 0, stor5.field_160) = 1
    return 1
}



}
