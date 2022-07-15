contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
mapping of struct sub_88966cc9;
address sub_6c0c69b1Address;
address sub_0053d555Address;
uint256 dailyInterest;
uint256 nodeCost;
uint256 sub_bcd4aa83;
uint256 sub_63584ecd;
uint256 sub_e7edaa7b;
uint256 stor9;
uint256 sub_b1c0cfd1;
uint256 sub_7796ff37;
uint256 marketingShare;
address sub_04d2be77Address;
address treasuryAddress;
uint8 isLive; offset 160
uint128 stor15; offset 160
address marketingAddress;
array of address sub_28d78f72;

function sub_0053d555(?) payable {
    return sub_0053d555Address
}

function dailyInterest() payable {
    return dailyInterest
}

function sub_04d2be77(?) payable {
    return sub_04d2be77Address
}

function marketingShare() payable {
    return marketingShare
}

function sub_28d78f72(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_28d78f72.length
    return sub_28d78f72[arg1]
}

function nodeCost() payable {
    return nodeCost
}

function claimTax() payable {
    return sub_b1c0cfd1
}

function paused() payable {
    return bool(stor0)
}

function sub_63584ecd(?) payable {
    return sub_63584ecd
}

function sub_6c0c69b1(?) payable {
    return sub_6c0c69b1Address
}

function sub_7796ff37(?) payable {
    return sub_7796ff37
}

function sub_88966cc9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_88966cc9[arg1].field_0), 
           sub_88966cc9[arg1].field_256,
           sub_88966cc9[arg1].field_512,
           sub_88966cc9[arg1].field_768,
           sub_88966cc9[arg1].field_1024,
           sub_88966cc9[arg1].field_1280
}

function owner() payable {
    return owner
}

function marketingAddress() payable {
    return marketingAddress
}

function sub_b1c0cfd1(?) payable {
    return sub_b1c0cfd1
}

function isLive() payable {
    return bool(isLive)
}

function sub_bcd4aa83(?) payable {
    return sub_bcd4aa83
}

function treasuryAddress() payable {
    return treasuryAddress
}

function sub_e7edaa7b(?) payable {
    return sub_e7edaa7b
}

function _fallback() payable {
    revert
}

function sub_e7438d1d(?) payable {
    if sub_bcd4aa83 and dailyInterest > -1 / sub_bcd4aa83:
        revert with 'NH{q', 17
    return (sub_bcd4aa83 * dailyInterest / 100)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_be7847a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nodeCost = arg1
}

function sub_03d7bda7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b1c0cfd1 = arg1
}

function sub_b7f2e759(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bcd4aa83 = arg1
}

function sub_71e7af22(?) payable {
    if sub_88966cc9[address(msg.sender)].field_256 > -sub_88966cc9[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    return (sub_88966cc9[address(msg.sender)].field_256 + sub_88966cc9[address(msg.sender)].field_512)
}

function sub_b51ea7ca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if treasuryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by AstroNode Treasury'
    marketingShare = arg1
}

function setTreasuryShare(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if treasuryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by AstroNode Treasury'
    sub_7796ff37 = arg1
}

function setTreasuryAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if treasuryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by AstroNode Treasury'
    treasuryAddress = arg1
}

function setTokenAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if treasuryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by AstroNode Treasury'
    sub_6c0c69b1Address = arg1
}

function sub_e3b57275(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if treasuryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by AstroNode Treasury'
    stor15 = Mask(96, 0, bool(arg1))
}

function sub_49dae516(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if treasuryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by AstroNode Treasury'
    sub_04d2be77Address = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_59d32948(?) payable {
    require ext_code.size(sub_6c0c69b1Address)
    staticcall sub_6c0c69b1Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_04d2be77Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getPrice() payable {
    require ext_code.size(sub_6c0c69b1Address)
    staticcall sub_6c0c69b1Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_04d2be77Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_0053d555Address)
    staticcall sub_0053d555Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_04d2be77Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'divison by zero error'
    if ext_call.return_data[0] and 1000000000000 * 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_19cfbcd4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_6c0c69b1Address)
    if arg1:
        call sub_6c0c69b1Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_6c0c69b1Address, -1
    else:
        call sub_6c0c69b1Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_6c0c69b1Address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_6c0c69b1Address)
    if arg1:
        call sub_6c0c69b1Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), -1
    else:
        call sub_6c0c69b1Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setDailyInterest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_28d78f72.length:
        if block.timestamp < sub_88966cc9[stor16[idx]].field_1280:
            revert with 'NH{q', 17
        if sub_88966cc9[stor16[idx]].field_1280 > 0:
            if sub_88966cc9[stor16[idx]].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[stor16[idx]].field_256:
                revert with 'NH{q', 17
            if sub_88966cc9[stor16[idx]].field_256 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[stor16[idx]].field_256 * sub_bcd4aa83:
                revert with 'NH{q', 17
            if sub_88966cc9[stor16[idx]].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[stor16[idx]].field_1280 > -1 / sub_88966cc9[stor16[idx]].field_256 * sub_bcd4aa83 * dailyInterest:
                revert with 'NH{q', 17
            if sub_88966cc9[stor16[idx]].field_768 > -((block.timestamp * sub_88966cc9[stor16[idx]].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[stor16[idx]].field_1280 * sub_88966cc9[stor16[idx]].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
                revert with 'NH{q', 17
            sub_88966cc9[stor16[idx]].field_768 += (block.timestamp * sub_88966cc9[stor16[idx]].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[stor16[idx]].field_1280 * sub_88966cc9[stor16[idx]].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
        if sub_88966cc9[stor16[idx]].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[stor16[idx]].field_512:
            revert with 'NH{q', 17
        if sub_88966cc9[stor16[idx]].field_512 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[stor16[idx]].field_512 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if sub_88966cc9[stor16[idx]].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[stor16[idx]].field_1280 > -1 / sub_88966cc9[stor16[idx]].field_512 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if sub_88966cc9[stor16[idx]].field_1024 > -((block.timestamp * sub_88966cc9[stor16[idx]].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[stor16[idx]].field_1280 * sub_88966cc9[stor16[idx]].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        sub_88966cc9[stor16[idx]].field_1024 += (block.timestamp * sub_88966cc9[stor16[idx]].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[stor16[idx]].field_1280 * sub_88966cc9[stor16[idx]].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
        mem[0] = sub_28d78f72[idx]
        mem[32] = 1
        sub_88966cc9[stor16[idx]].field_1280 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    dailyInterest = arg1
}

function sub_647379ae(?) payable {
    if block.timestamp < sub_88966cc9[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_1280 > 0:
        if sub_88966cc9[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(msg.sender)].field_1280 > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_768 > -((block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        sub_88966cc9[address(msg.sender)].field_768 += (block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
    if sub_88966cc9[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(msg.sender)].field_1280 > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_1024 > -((block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    sub_88966cc9[address(msg.sender)].field_1024 += (block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
    sub_88966cc9[address(msg.sender)].field_1280 = block.timestamp
    if sub_88966cc9[address(msg.sender)].field_768 / 100 and sub_b1c0cfd1 > -1 / sub_88966cc9[address(msg.sender)].field_768 / 100:
        revert with 'NH{q', 17
    return (sub_88966cc9[address(msg.sender)].field_768 / 100 * sub_b1c0cfd1)
}

function sub_e08f1897(?) payable {
    if block.timestamp < sub_88966cc9[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(msg.sender)].field_1280 > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest:
        revert with 'NH{q', 17
    if block.timestamp < sub_88966cc9[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(msg.sender)].field_1280 > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest:
        revert with 'NH{q', 17
    if (block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600 > -sub_88966cc9[address(msg.sender)].field_768 - 1:
        revert with 'NH{q', 17
    if (block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600 > -sub_88966cc9[address(msg.sender)].field_1024 - 1:
        revert with 'NH{q', 17
    if ((block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + sub_88966cc9[address(msg.sender)].field_768 / 100 and sub_b1c0cfd1 > -1 / ((block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + sub_88966cc9[address(msg.sender)].field_768 / 100:
        revert with 'NH{q', 17
    return (((block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + sub_88966cc9[address(msg.sender)].field_768 / 100 * sub_b1c0cfd1)
}

function sub_6180c609(?) payable {
    if sub_88966cc9[address(msg.sender)].field_1280 <= 0:
        if block.timestamp < block.timestamp:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest and 0 > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if block.timestamp < block.timestamp:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_512:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest and 0 > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_768 > -sub_88966cc9[address(msg.sender)].field_1024 - 1:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_768 + sub_88966cc9[address(msg.sender)].field_1024 > -1:
            revert with 'NH{q', 17
        return (sub_88966cc9[address(msg.sender)].field_768 + sub_88966cc9[address(msg.sender)].field_1024)
    if block.timestamp < sub_88966cc9[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(msg.sender)].field_1280 > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest:
        revert with 'NH{q', 17
    if block.timestamp < sub_88966cc9[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(msg.sender)].field_1280 > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest:
        revert with 'NH{q', 17
    if (block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600 > -((block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_768 > -sub_88966cc9[address(msg.sender)].field_1024 - 1:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_768 + sub_88966cc9[address(msg.sender)].field_1024 > -((block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + -((block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    return (sub_88966cc9[address(msg.sender)].field_768 + sub_88966cc9[address(msg.sender)].field_1024 + ((block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + ((block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600))
}

function claim() payable {
    if not sub_88966cc9[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sender must be an Astronaut to claim yields'
    if block.timestamp < sub_88966cc9[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_1280 > 0:
        if sub_88966cc9[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(msg.sender)].field_1280 > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_768 > -((block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        sub_88966cc9[address(msg.sender)].field_768 += (block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
    if sub_88966cc9[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(msg.sender)].field_1280 > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_1024 > -((block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    sub_88966cc9[address(msg.sender)].field_1024 += (block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
    sub_88966cc9[address(msg.sender)].field_1280 = block.timestamp
    if block.timestamp < sub_88966cc9[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_1280 > 0:
        if sub_88966cc9[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(msg.sender)].field_1280 > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_768 > -((block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        sub_88966cc9[address(msg.sender)].field_768 += (block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
    if sub_88966cc9[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(msg.sender)].field_1280 > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_1024 > -((block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    sub_88966cc9[address(msg.sender)].field_1024 += (block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
    sub_88966cc9[address(msg.sender)].field_1280 = block.timestamp
    if sub_88966cc9[address(msg.sender)].field_768 / 100 and sub_b1c0cfd1 > -1 / sub_88966cc9[address(msg.sender)].field_768 / 100:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_768 > -sub_88966cc9[address(msg.sender)].field_1024 - 1:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_768 + sub_88966cc9[address(msg.sender)].field_1024 < sub_88966cc9[address(msg.sender)].field_768 / 100 * sub_b1c0cfd1:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_768 + sub_88966cc9[address(msg.sender)].field_1024 > 0:
        sub_88966cc9[address(msg.sender)].field_768 = 0
        sub_88966cc9[address(msg.sender)].field_1024 = 0
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_88966cc9[address(msg.sender)].field_768 + sub_88966cc9[address(msg.sender)].field_1024 - (sub_88966cc9[address(msg.sender)].field_768 / 100 * sub_b1c0cfd1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferEvent(msg.sender, sub_88966cc9[address(msg.sender)].field_768 + sub_88966cc9[address(msg.sender)].field_1024 - (sub_88966cc9[address(msg.sender)].field_768 / 100 * sub_b1c0cfd1), sub_6c0c69b1Address);
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0xa9059cbb with:
             gas gas_remaining wei
            args treasuryAddress, sub_88966cc9[address(msg.sender)].field_768 / 100 * sub_b1c0cfd1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferEvent(treasuryAddress, sub_88966cc9[address(msg.sender)].field_768 / 100 * sub_b1c0cfd1, sub_6c0c69b1Address);
}

function sub_29a5c72b(?) payable {
    if sub_88966cc9[address(msg.sender)].field_1280 <= 0:
        if block.timestamp < block.timestamp:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest and 0 > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if block.timestamp < block.timestamp:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_512:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest and 0 > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_768 > -sub_88966cc9[address(msg.sender)].field_1024 - 1:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_768 + sub_88966cc9[address(msg.sender)].field_1024 > -1:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 > -sub_88966cc9[address(msg.sender)].field_512 - 1:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_768 + sub_88966cc9[address(msg.sender)].field_1024 <= nodeCost:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough pending ASNO to compound'
    else:
        if block.timestamp < sub_88966cc9[address(msg.sender)].field_1280:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(msg.sender)].field_1280 > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if block.timestamp < sub_88966cc9[address(msg.sender)].field_1280:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_512:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(msg.sender)].field_1280 > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if (block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600 > -((block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_768 > -sub_88966cc9[address(msg.sender)].field_1024 - 1:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_768 + sub_88966cc9[address(msg.sender)].field_1024 > -((block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + -((block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 > -sub_88966cc9[address(msg.sender)].field_512 - 1:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_768 + sub_88966cc9[address(msg.sender)].field_1024 + ((block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + ((block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) <= nodeCost:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough pending ASNO to compound'
    if sub_88966cc9[address(msg.sender)].field_256 + sub_88966cc9[address(msg.sender)].field_512 >= 100:
        revert with 0, 'Max AstroNodes Owned'
    if block.timestamp < sub_88966cc9[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_1280 > 0:
        if sub_88966cc9[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(msg.sender)].field_1280 > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_768 > -((block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        sub_88966cc9[address(msg.sender)].field_768 += (block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
    if sub_88966cc9[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(msg.sender)].field_1280 > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_1024 > -((block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    sub_88966cc9[address(msg.sender)].field_1024 += (block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
    sub_88966cc9[address(msg.sender)].field_1280 = block.timestamp
    if sub_88966cc9[address(msg.sender)].field_768 < nodeCost:
        if sub_88966cc9[address(msg.sender)].field_768 > -sub_88966cc9[address(msg.sender)].field_1024 - 1:
            revert with 'NH{q', 17
        sub_88966cc9[address(msg.sender)].field_768 += sub_88966cc9[address(msg.sender)].field_1024
        sub_88966cc9[address(msg.sender)].field_1024 = 0
    if sub_88966cc9[address(msg.sender)].field_768 < nodeCost:
        revert with 'NH{q', 17
    sub_88966cc9[address(msg.sender)].field_768 -= nodeCost
    if sub_88966cc9[address(msg.sender)].field_256 == -1:
        revert with 'NH{q', 17
    sub_88966cc9[address(msg.sender)].field_256++
    if sub_63584ecd == -1:
        revert with 'NH{q', 17
    sub_63584ecd++
    if stor9 == -1:
        revert with 'NH{q', 17
    stor9++
}

function sub_75166473(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not isLive:
        revert with 0, 'Platform is offline'
    if arg2 >= 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot donate that many AstroNodes'
    if sub_88966cc9[address(arg1)].field_256 > -sub_88966cc9[address(arg1)].field_512 - 1:
        revert with 'NH{q', 17
    if sub_88966cc9[address(arg1)].field_256 + sub_88966cc9[address(arg1)].field_512 > -arg2 - 1:
        revert with 'NH{q', 17
    if sub_88966cc9[address(arg1)].field_256 + sub_88966cc9[address(arg1)].field_512 + arg2 >= 101:
        revert with 0, 'Max AstroNodes Owned'
    if sub_88966cc9[address(arg1)].field_0:
        if nodeCost and arg2 > -1 / nodeCost:
            revert with 'NH{q', 17
        if nodeCost * arg2 / 10 and marketingShare > -1 / nodeCost * arg2 / 10:
            revert with 'NH{q', 17
        if nodeCost * arg2 / 10 and sub_7796ff37 > -1 / nodeCost * arg2 / 10:
            revert with 'NH{q', 17
        if nodeCost * arg2 < nodeCost * arg2 / 10 * marketingShare:
            revert with 'NH{q', 17
        if (nodeCost * arg2) - (nodeCost * arg2 / 10 * marketingShare) < nodeCost * arg2 / 10 * sub_7796ff37:
            revert with 'NH{q', 17
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), (nodeCost * arg2) - (nodeCost * arg2 / 10 * marketingShare) - (nodeCost * arg2 / 10 * sub_7796ff37)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferFromEvent(msg.sender, address(this.address), (nodeCost * arg2) - (nodeCost * arg2 / 10 * marketingShare) - (nodeCost * arg2 / 10 * sub_7796ff37), sub_6c0c69b1Address);
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, treasuryAddress, nodeCost * arg2 / 10 * sub_7796ff37
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferFromEvent(msg.sender, treasuryAddress, nodeCost * arg2 / 10 * sub_7796ff37, sub_6c0c69b1Address);
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, marketingAddress, nodeCost * arg2 / 10 * marketingShare
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferFromEvent(msg.sender, marketingAddress, nodeCost * arg2 / 10 * marketingShare, sub_6c0c69b1Address);
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0xa9059cbb with:
             gas gas_remaining wei
            args sub_6c0c69b1Address, (nodeCost * arg2) - (nodeCost * arg2 / 10 * marketingShare) - (nodeCost * arg2 / 10 * sub_7796ff37) / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferEvent(sub_6c0c69b1Address, (nodeCost * arg2) - (nodeCost * arg2 / 10 * marketingShare) - (nodeCost * arg2 / 10 * sub_7796ff37) / 2, sub_6c0c69b1Address);
        sub_88966cc9[address(arg1)].field_0 = uint8(bool(sub_88966cc9[address(arg1)].field_0))
    else:
        sub_28d78f72.length++
        sub_28d78f72[sub_28d78f72.length] = address(arg1)
        if nodeCost and arg2 > -1 / nodeCost:
            revert with 'NH{q', 17
        if nodeCost * arg2 / 10 and marketingShare > -1 / nodeCost * arg2 / 10:
            revert with 'NH{q', 17
        if nodeCost * arg2 / 10 and sub_7796ff37 > -1 / nodeCost * arg2 / 10:
            revert with 'NH{q', 17
        if nodeCost * arg2 < nodeCost * arg2 / 10 * marketingShare:
            revert with 'NH{q', 17
        if (nodeCost * arg2) - (nodeCost * arg2 / 10 * marketingShare) < nodeCost * arg2 / 10 * sub_7796ff37:
            revert with 'NH{q', 17
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), (nodeCost * arg2) - (nodeCost * arg2 / 10 * marketingShare) - (nodeCost * arg2 / 10 * sub_7796ff37)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferFromEvent(msg.sender, address(this.address), (nodeCost * arg2) - (nodeCost * arg2 / 10 * marketingShare) - (nodeCost * arg2 / 10 * sub_7796ff37), sub_6c0c69b1Address);
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, treasuryAddress, nodeCost * arg2 / 10 * sub_7796ff37
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferFromEvent(msg.sender, treasuryAddress, nodeCost * arg2 / 10 * sub_7796ff37, sub_6c0c69b1Address);
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, marketingAddress, nodeCost * arg2 / 10 * marketingShare
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferFromEvent(msg.sender, marketingAddress, nodeCost * arg2 / 10 * marketingShare, sub_6c0c69b1Address);
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0xa9059cbb with:
             gas gas_remaining wei
            args sub_6c0c69b1Address, (nodeCost * arg2) - (nodeCost * arg2 / 10 * marketingShare) - (nodeCost * arg2 / 10 * sub_7796ff37) / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferEvent(sub_6c0c69b1Address, (nodeCost * arg2) - (nodeCost * arg2 / 10 * marketingShare) - (nodeCost * arg2 / 10 * sub_7796ff37) / 2, sub_6c0c69b1Address);
        sub_88966cc9[address(arg1)].field_0 = 1
        sub_88966cc9[address(arg1)].field_256 = 0
        sub_88966cc9[address(arg1)].field_512 = 0
        sub_88966cc9[address(arg1)].field_768 = 0
        sub_88966cc9[address(arg1)].field_1024 = 0
        sub_88966cc9[address(arg1)].field_1280 = 0
    if block.timestamp < sub_88966cc9[address(arg1)].field_1280:
        revert with 'NH{q', 17
    if sub_88966cc9[address(arg1)].field_1280 > 0:
        if sub_88966cc9[address(arg1)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(arg1)].field_256:
            revert with 'NH{q', 17
        if sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(arg1)].field_1280 > -1 / sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if sub_88966cc9[address(arg1)].field_768 > -((block.timestamp * sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(arg1)].field_1280 * sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        sub_88966cc9[address(arg1)].field_768 += (block.timestamp * sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(arg1)].field_1280 * sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
    if sub_88966cc9[address(arg1)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(arg1)].field_512:
        revert with 'NH{q', 17
    if sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83:
        revert with 'NH{q', 17
    if sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(arg1)].field_1280 > -1 / sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83 * dailyInterest:
        revert with 'NH{q', 17
    if sub_88966cc9[address(arg1)].field_1024 > -((block.timestamp * sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(arg1)].field_1280 * sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    sub_88966cc9[address(arg1)].field_1024 += (block.timestamp * sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(arg1)].field_1280 * sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
    sub_88966cc9[address(arg1)].field_1280 = block.timestamp
    if sub_88966cc9[address(arg1)].field_512 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_88966cc9[address(arg1)].field_512 += arg2
    if sub_63584ecd > -arg2 - 1:
        revert with 'NH{q', 17
    sub_63584ecd += arg2
    if sub_e7edaa7b > -arg2 - 1:
        revert with 'NH{q', 17
    sub_e7edaa7b += arg2
    sub_88966cc9[address(arg1)].field_1280 = block.timestamp
}

function buyNode(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not isLive:
        revert with 0, 'Platform is offline'
    if sub_88966cc9[address(msg.sender)].field_256 > -sub_88966cc9[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_256 + sub_88966cc9[address(msg.sender)].field_512 > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_256 + sub_88966cc9[address(msg.sender)].field_512 + arg1 <= 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be gifted an AstroNode first'
    if sub_88966cc9[address(msg.sender)].field_256 + sub_88966cc9[address(msg.sender)].field_512 + arg1 >= 101:
        revert with 0, 'Max AstroNodes Owned'
    if sub_88966cc9[address(msg.sender)].field_0:
        if nodeCost and arg1 > -1 / nodeCost:
            revert with 'NH{q', 17
        if nodeCost * arg1 / 10 and marketingShare > -1 / nodeCost * arg1 / 10:
            revert with 'NH{q', 17
        if nodeCost * arg1 / 10 and sub_7796ff37 > -1 / nodeCost * arg1 / 10:
            revert with 'NH{q', 17
        if nodeCost * arg1 < nodeCost * arg1 / 10 * marketingShare:
            revert with 'NH{q', 17
        if (nodeCost * arg1) - (nodeCost * arg1 / 10 * marketingShare) < nodeCost * arg1 / 10 * sub_7796ff37:
            revert with 'NH{q', 17
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), (nodeCost * arg1) - (nodeCost * arg1 / 10 * marketingShare) - (nodeCost * arg1 / 10 * sub_7796ff37)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferFromEvent(msg.sender, address(this.address), (nodeCost * arg1) - (nodeCost * arg1 / 10 * marketingShare) - (nodeCost * arg1 / 10 * sub_7796ff37), sub_6c0c69b1Address);
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, treasuryAddress, nodeCost * arg1 / 10 * sub_7796ff37
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferFromEvent(msg.sender, treasuryAddress, nodeCost * arg1 / 10 * sub_7796ff37, sub_6c0c69b1Address);
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, marketingAddress, nodeCost * arg1 / 10 * marketingShare
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferFromEvent(msg.sender, marketingAddress, nodeCost * arg1 / 10 * marketingShare, sub_6c0c69b1Address);
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), sub_6c0c69b1Address, (nodeCost * arg1) - (nodeCost * arg1 / 10 * marketingShare) - (nodeCost * arg1 / 10 * sub_7796ff37) / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferFromEvent(address(this.address), sub_6c0c69b1Address, (nodeCost * arg1) - (nodeCost * arg1 / 10 * marketingShare) - (nodeCost * arg1 / 10 * sub_7796ff37) / 2, sub_6c0c69b1Address);
        sub_88966cc9[address(msg.sender)].field_0 = uint8(bool(sub_88966cc9[address(msg.sender)].field_0))
    else:
        sub_28d78f72.length++
        sub_28d78f72[sub_28d78f72.length] = msg.sender
        if nodeCost and arg1 > -1 / nodeCost:
            revert with 'NH{q', 17
        if nodeCost * arg1 / 10 and marketingShare > -1 / nodeCost * arg1 / 10:
            revert with 'NH{q', 17
        if nodeCost * arg1 / 10 and sub_7796ff37 > -1 / nodeCost * arg1 / 10:
            revert with 'NH{q', 17
        if nodeCost * arg1 < nodeCost * arg1 / 10 * marketingShare:
            revert with 'NH{q', 17
        if (nodeCost * arg1) - (nodeCost * arg1 / 10 * marketingShare) < nodeCost * arg1 / 10 * sub_7796ff37:
            revert with 'NH{q', 17
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), (nodeCost * arg1) - (nodeCost * arg1 / 10 * marketingShare) - (nodeCost * arg1 / 10 * sub_7796ff37)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferFromEvent(msg.sender, address(this.address), (nodeCost * arg1) - (nodeCost * arg1 / 10 * marketingShare) - (nodeCost * arg1 / 10 * sub_7796ff37), sub_6c0c69b1Address);
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, treasuryAddress, nodeCost * arg1 / 10 * sub_7796ff37
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferFromEvent(msg.sender, treasuryAddress, nodeCost * arg1 / 10 * sub_7796ff37, sub_6c0c69b1Address);
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, marketingAddress, nodeCost * arg1 / 10 * marketingShare
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferFromEvent(msg.sender, marketingAddress, nodeCost * arg1 / 10 * marketingShare, sub_6c0c69b1Address);
        require ext_code.size(sub_6c0c69b1Address)
        call sub_6c0c69b1Address.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), sub_6c0c69b1Address, (nodeCost * arg1) - (nodeCost * arg1 / 10 * marketingShare) - (nodeCost * arg1 / 10 * sub_7796ff37) / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferFromEvent(address(this.address), sub_6c0c69b1Address, (nodeCost * arg1) - (nodeCost * arg1 / 10 * marketingShare) - (nodeCost * arg1 / 10 * sub_7796ff37) / 2, sub_6c0c69b1Address);
        sub_88966cc9[address(msg.sender)].field_0 = 1
        sub_88966cc9[address(msg.sender)].field_256 = 0
        sub_88966cc9[address(msg.sender)].field_512 = 0
        sub_88966cc9[address(msg.sender)].field_768 = 0
        sub_88966cc9[address(msg.sender)].field_1024 = 0
        sub_88966cc9[address(msg.sender)].field_1280 = 0
    if block.timestamp < sub_88966cc9[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_1280 > 0:
        if sub_88966cc9[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(msg.sender)].field_1280 > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if sub_88966cc9[address(msg.sender)].field_768 > -((block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        sub_88966cc9[address(msg.sender)].field_768 += (block.timestamp * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
    if sub_88966cc9[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - sub_88966cc9[address(msg.sender)].field_1280 > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest:
        revert with 'NH{q', 17
    if sub_88966cc9[address(msg.sender)].field_1024 > -((block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    sub_88966cc9[address(msg.sender)].field_1024 += (block.timestamp * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (sub_88966cc9[address(msg.sender)].field_1280 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
    sub_88966cc9[address(msg.sender)].field_1280 = block.timestamp
    if sub_88966cc9[address(msg.sender)].field_256 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_88966cc9[address(msg.sender)].field_256 += arg1
    if sub_63584ecd > -arg1 - 1:
        revert with 'NH{q', 17
    sub_63584ecd += arg1
}



}
