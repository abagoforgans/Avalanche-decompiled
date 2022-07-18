contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
mapping of struct sub_88966cc9;
address sub_856a8ba2Address;
address sub_0053d555Address;
uint256 dailyInterest;
uint256 sub_91c072f0;
uint256 nodeCost;
uint256 sub_bcd4aa83;
uint256 sub_63584ecd;
uint256 sub_e7edaa7b;
uint256 stor10;
uint256 sub_b1c0cfd1;
uint256 sub_7796ff37;
uint256 marketingShare;
uint256 lpShare;
address sub_04d2be77Address;
address treasuryAddress;
uint8 isLive; offset 160
uint8 isSwapEnabled; offset 168
uint128 stor17; offset 168
uint128 stor17; offset 160
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
    require arg1 < sub_28d78f72.length
    return address(sub_28d78f72[arg1])
}

function nodeCost() payable {
    return nodeCost
}

function isSwapEnabled() payable {
    return bool(isSwapEnabled)
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

function sub_6d6c857a(?) payable {
    return lpShare
}

function sub_7796ff37(?) payable {
    return sub_7796ff37
}

function sub_856a8ba2(?) payable {
    return sub_856a8ba2Address
}

function sub_88966cc9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_88966cc9[arg1].field_0), 
           sub_88966cc9[arg1].field_256,
           sub_88966cc9[arg1].field_512,
           sub_88966cc9[arg1].field_768,
           sub_88966cc9[arg1].field_1024,
           sub_88966cc9[arg1].field_1280,
           sub_88966cc9[arg1].field_1536
}

function owner() payable {
    return owner
}

function sub_91c072f0(?) payable {
    return sub_91c072f0
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

function lpShare() payable {
    return lpShare
}

function _fallback() payable {
    revert
}

function sub_132dbea2(?) payable {
    if sub_bcd4aa83 and sub_91c072f0 > -1 / sub_bcd4aa83:
        revert with 0, 17
    return (sub_bcd4aa83 * sub_91c072f0)
}

function sub_e7438d1d(?) payable {
    if sub_bcd4aa83 and dailyInterest > -1 / sub_bcd4aa83:
        revert with 0, 17
    return (sub_bcd4aa83 * dailyInterest)
}

function sub_6567c442(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lpShare = arg1
}

function sub_be7847a7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nodeCost = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_03d7bda7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b1c0cfd1 = arg1
}

function sub_b7f2e759(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bcd4aa83 = arg1
}

function sub_b51ea7ca(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingShare = arg1
}

function setTreasuryShare(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7796ff37 = arg1
}

function setTreasuryAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function setTokenAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_856a8ba2Address = arg1
}

function sub_71e7af22(?) payable {
    if sub_88966cc9[msg.sender].field_256 > !sub_88966cc9[msg.sender].field_512:
        revert with 0, 17
    return (sub_88966cc9[msg.sender].field_256 + sub_88966cc9[msg.sender].field_512)
}

function sub_49dae516(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_04d2be77Address = address(arg1)
}

function sub_d40ebd47(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor17.field_168) = Mask(88, 0, bool(arg1))
}

function sub_e3b57275(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor17.field_160) = Mask(96, 0, bool(arg1))
}

function sub_1fb243ad(?) payable {
    require ext_code.size(sub_856a8ba2Address)
    staticcall sub_856a8ba2Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_04d2be77Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function getLog2TableTimes1M(uint256 arg1) payable {
    if sub_88966cc9[address(msg.sender)].field_768 and sub_91c072f0 > -1 / sub_88966cc9[address(msg.sender)].field_768:
        revert with 0, 17
    if dailyInterest > !(sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0):
        revert with 0, 17
    if sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_bcd4aa83:
        revert with 0, 17
    return ((dailyInterest * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_bcd4aa83))
}

function getPrice() payable {
    require ext_code.size(sub_856a8ba2Address)
    staticcall sub_856a8ba2Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_04d2be77Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0053d555Address)
    staticcall sub_0053d555Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_04d2be77Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'divison by zero error'
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_19cfbcd4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_856a8ba2Address)
    if arg1:
        call sub_856a8ba2Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_856a8ba2Address, -1
    else:
        call sub_856a8ba2Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_856a8ba2Address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_856a8ba2Address)
    if arg1:
        call sub_856a8ba2Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_04d2be77Address, -1
    else:
        call sub_856a8ba2Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_04d2be77Address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_856a8ba2Address)
    if arg1:
        call sub_856a8ba2Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), -1
    else:
        call sub_856a8ba2Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e08f1897(?) payable {
    if sub_88966cc9[address(msg.sender)].field_768 and sub_91c072f0 > -1 / sub_88966cc9[address(msg.sender)].field_768:
        revert with 0, 17
    if dailyInterest > !(sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0):
        revert with 0, 17
    if block.timestamp < sub_88966cc9[msg.sender].field_1536:
        revert with 0, 17
    if sub_88966cc9[msg.sender].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[msg.sender].field_256:
        revert with 0, 17
    if sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83:
        revert with 0, 17
    if (dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[msg.sender].field_1536 > -1 / (dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83):
        revert with 0, 17
    if block.timestamp < sub_88966cc9[msg.sender].field_1536:
        revert with 0, 17
    if sub_88966cc9[msg.sender].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[msg.sender].field_512:
        revert with 0, 17
    if sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83:
        revert with 0, 17
    if (dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[msg.sender].field_1536 > -1 / (dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83):
        revert with 0, 17
    if (block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600 > !sub_88966cc9[msg.sender].field_1024:
        revert with 0, 17
    if (block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600 > !sub_88966cc9[msg.sender].field_1280:
        revert with 0, 17
    if ((block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600) + sub_88966cc9[msg.sender].field_1024 / 100 and sub_b1c0cfd1 > -1 / ((block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600) + sub_88966cc9[msg.sender].field_1024 / 100:
        revert with 0, 17
    return (((block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600) + sub_88966cc9[msg.sender].field_1024 / 100 * sub_b1c0cfd1)
}

function sub_647379ae(?) payable {
    if sub_88966cc9[address(msg.sender)].field_768 and sub_91c072f0 > -1 / sub_88966cc9[address(msg.sender)].field_768:
        revert with 0, 17
    if dailyInterest > !(sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0):
        revert with 0, 17
    if block.timestamp < sub_88966cc9[address(msg.sender)].field_1536:
        revert with 0, 17
    if sub_88966cc9[address(msg.sender)].field_1536:
        if sub_88966cc9[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_256:
            revert with 0, 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83:
            revert with 0, 17
        if (dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[address(msg.sender)].field_1536 > -1 / (dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83):
            revert with 0, 17
        if sub_88966cc9[address(msg.sender)].field_1024 > !((block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600):
            revert with 0, 17
        sub_88966cc9[address(msg.sender)].field_1024 += (block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600
    if sub_88966cc9[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_512:
        revert with 0, 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83:
        revert with 0, 17
    if (dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[address(msg.sender)].field_1536 > -1 / (dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83):
        revert with 0, 17
    if sub_88966cc9[address(msg.sender)].field_1280 > !((block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600):
        revert with 0, 17
    sub_88966cc9[address(msg.sender)].field_1280 += (block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600
    sub_88966cc9[address(msg.sender)].field_1536 = block.timestamp
    if sub_88966cc9[msg.sender].field_1024 / 100 and sub_b1c0cfd1 > -1 / sub_88966cc9[msg.sender].field_1024 / 100:
        revert with 0, 17
    return (sub_88966cc9[msg.sender].field_1024 / 100 * sub_b1c0cfd1)
}

function sub_73afb247(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_28d78f72.length:
        if sub_88966cc9[address(msg.sender)].field_768 and sub_91c072f0 > -1 / sub_88966cc9[address(msg.sender)].field_768:
            revert with 0, 17
        if dailyInterest > !(sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0):
            revert with 0, 17
        if block.timestamp < sub_88966cc9[address(stor18[idx])].field_1536:
            revert with 0, 17
        if sub_88966cc9[address(stor18[idx])].field_1536:
            if sub_88966cc9[address(stor18[idx])].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(stor18[idx])].field_256:
                revert with 0, 17
            if sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83:
                revert with 0, 17
            if (dailyInterest * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[address(stor18[idx])].field_1536 > -1 / (dailyInterest * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83):
                revert with 0, 17
            if sub_88966cc9[address(stor18[idx])].field_1024 > !((block.timestamp * dailyInterest * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(stor18[idx])].field_1536 * dailyInterest * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(stor18[idx])].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600):
                revert with 0, 17
            sub_88966cc9[address(stor18[idx])].field_1024 += (block.timestamp * dailyInterest * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(stor18[idx])].field_1536 * dailyInterest * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(stor18[idx])].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600
        if sub_88966cc9[address(stor18[idx])].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(stor18[idx])].field_512:
            revert with 0, 17
        if sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83:
            revert with 0, 17
        if (dailyInterest * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[address(stor18[idx])].field_1536 > -1 / (dailyInterest * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83):
            revert with 0, 17
        if sub_88966cc9[address(stor18[idx])].field_1280 > !((block.timestamp * dailyInterest * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(stor18[idx])].field_1536 * dailyInterest * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(stor18[idx])].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600):
            revert with 0, 17
        sub_88966cc9[address(stor18[idx])].field_1280 += (block.timestamp * dailyInterest * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(stor18[idx])].field_1536 * dailyInterest * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(stor18[idx])].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600
        mem[0] = address(sub_28d78f72[idx])
        mem[32] = 1
        sub_88966cc9[address(stor18[idx])].field_1536 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_91c072f0 = arg1
}

function setDailyInterest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_28d78f72.length:
        if sub_88966cc9[address(msg.sender)].field_768 and sub_91c072f0 > -1 / sub_88966cc9[address(msg.sender)].field_768:
            revert with 0, 17
        if dailyInterest > !(sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0):
            revert with 0, 17
        if block.timestamp < sub_88966cc9[address(stor18[idx])].field_1536:
            revert with 0, 17
        if sub_88966cc9[address(stor18[idx])].field_1536:
            if sub_88966cc9[address(stor18[idx])].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(stor18[idx])].field_256:
                revert with 0, 17
            if sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83:
                revert with 0, 17
            if (dailyInterest * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[address(stor18[idx])].field_1536 > -1 / (dailyInterest * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83):
                revert with 0, 17
            if sub_88966cc9[address(stor18[idx])].field_1024 > !((block.timestamp * dailyInterest * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(stor18[idx])].field_1536 * dailyInterest * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(stor18[idx])].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600):
                revert with 0, 17
            sub_88966cc9[address(stor18[idx])].field_1024 += (block.timestamp * dailyInterest * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(stor18[idx])].field_1536 * dailyInterest * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(stor18[idx])].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600
        if sub_88966cc9[address(stor18[idx])].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(stor18[idx])].field_512:
            revert with 0, 17
        if sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83:
            revert with 0, 17
        if (dailyInterest * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[address(stor18[idx])].field_1536 > -1 / (dailyInterest * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83):
            revert with 0, 17
        if sub_88966cc9[address(stor18[idx])].field_1280 > !((block.timestamp * dailyInterest * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(stor18[idx])].field_1536 * dailyInterest * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(stor18[idx])].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600):
            revert with 0, 17
        sub_88966cc9[address(stor18[idx])].field_1280 += (block.timestamp * dailyInterest * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(stor18[idx])].field_1536 * dailyInterest * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(stor18[idx])].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(stor18[idx])].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600
        mem[0] = address(sub_28d78f72[idx])
        mem[32] = 1
        sub_88966cc9[address(stor18[idx])].field_1536 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    dailyInterest = arg1
}

function sub_6180c609(?) payable {
    if sub_88966cc9[address(msg.sender)].field_768 and sub_91c072f0 > -1 / sub_88966cc9[address(msg.sender)].field_768:
        revert with 0, 17
    if dailyInterest > !(sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0):
        revert with 0, 17
    if not sub_88966cc9[msg.sender].field_1536:
        if block.timestamp < block.timestamp:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[msg.sender].field_256:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83:
            revert with 0, 17
        if (dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) and 0 > -1 / (dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83):
            revert with 0, 17
        if block.timestamp < block.timestamp:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[msg.sender].field_512:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83:
            revert with 0, 17
        if (dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) and 0 > -1 / (dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83):
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_1024 > !sub_88966cc9[msg.sender].field_1280:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_1024 + sub_88966cc9[msg.sender].field_1280 > -1:
            revert with 0, 17
        return (sub_88966cc9[msg.sender].field_1024 + sub_88966cc9[msg.sender].field_1280)
    if block.timestamp < sub_88966cc9[msg.sender].field_1536:
        revert with 0, 17
    if sub_88966cc9[msg.sender].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[msg.sender].field_256:
        revert with 0, 17
    if sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83:
        revert with 0, 17
    if (dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[msg.sender].field_1536 > -1 / (dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83):
        revert with 0, 17
    if block.timestamp < sub_88966cc9[msg.sender].field_1536:
        revert with 0, 17
    if sub_88966cc9[msg.sender].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[msg.sender].field_512:
        revert with 0, 17
    if sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83:
        revert with 0, 17
    if (dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[msg.sender].field_1536 > -1 / (dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83):
        revert with 0, 17
    if (block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600 > !((block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600):
        revert with 0, 17
    if sub_88966cc9[msg.sender].field_1024 > !sub_88966cc9[msg.sender].field_1280:
        revert with 0, 17
    if sub_88966cc9[msg.sender].field_1024 + sub_88966cc9[msg.sender].field_1280 > !(((block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600) + ((block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600)):
        revert with 0, 17
    return (sub_88966cc9[msg.sender].field_1024 + sub_88966cc9[msg.sender].field_1280 + ((block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600) + ((block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600))
}

function claim() payable {
    if not sub_88966cc9[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sender must be an Astronaut to claim yields'
    if sub_88966cc9[address(msg.sender)].field_768 and sub_91c072f0 > -1 / sub_88966cc9[address(msg.sender)].field_768:
        revert with 0, 17
    if dailyInterest > !(sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0):
        revert with 0, 17
    if block.timestamp < sub_88966cc9[address(msg.sender)].field_1536:
        revert with 0, 17
    if sub_88966cc9[address(msg.sender)].field_1536:
        if sub_88966cc9[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_256:
            revert with 0, 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83:
            revert with 0, 17
        if (dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[address(msg.sender)].field_1536 > -1 / (dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83):
            revert with 0, 17
        if sub_88966cc9[address(msg.sender)].field_1024 > !((block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600):
            revert with 0, 17
        sub_88966cc9[address(msg.sender)].field_1024 += (block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600
    if sub_88966cc9[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_512:
        revert with 0, 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83:
        revert with 0, 17
    if (dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[address(msg.sender)].field_1536 > -1 / (dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83):
        revert with 0, 17
    if sub_88966cc9[address(msg.sender)].field_1280 > !((block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600):
        revert with 0, 17
    sub_88966cc9[address(msg.sender)].field_1280 += (block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600
    sub_88966cc9[address(msg.sender)].field_1536 = block.timestamp
    if sub_88966cc9[address(msg.sender)].field_768 and sub_91c072f0 > -1 / sub_88966cc9[address(msg.sender)].field_768:
        revert with 0, 17
    if dailyInterest > !(sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0):
        revert with 0, 17
    if block.timestamp < sub_88966cc9[address(msg.sender)].field_1536:
        revert with 0, 17
    if sub_88966cc9[address(msg.sender)].field_1536:
        if sub_88966cc9[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_256:
            revert with 0, 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83:
            revert with 0, 17
        if (dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[address(msg.sender)].field_1536 > -1 / (dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83):
            revert with 0, 17
        if sub_88966cc9[address(msg.sender)].field_1024 > !((block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600):
            revert with 0, 17
        sub_88966cc9[address(msg.sender)].field_1024 += (block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600
    if sub_88966cc9[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_512:
        revert with 0, 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83:
        revert with 0, 17
    if (dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[address(msg.sender)].field_1536 > -1 / (dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83):
        revert with 0, 17
    if sub_88966cc9[address(msg.sender)].field_1280 > !((block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600):
        revert with 0, 17
    sub_88966cc9[address(msg.sender)].field_1280 += (block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600
    sub_88966cc9[address(msg.sender)].field_1536 = block.timestamp
    if sub_88966cc9[msg.sender].field_1024 / 100 and sub_b1c0cfd1 > -1 / sub_88966cc9[msg.sender].field_1024 / 100:
        revert with 0, 17
    if sub_88966cc9[msg.sender].field_1024 > !sub_88966cc9[msg.sender].field_1280:
        revert with 0, 17
    if sub_88966cc9[msg.sender].field_1024 + sub_88966cc9[msg.sender].field_1280 < sub_88966cc9[msg.sender].field_1024 / 100 * sub_b1c0cfd1:
        revert with 0, 17
    if sub_88966cc9[msg.sender].field_1024 + sub_88966cc9[msg.sender].field_1280:
        sub_88966cc9[msg.sender].field_1024 = 0
        sub_88966cc9[msg.sender].field_1280 = 0
        require ext_code.size(sub_856a8ba2Address)
        call sub_856a8ba2Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_88966cc9[msg.sender].field_1024 + sub_88966cc9[msg.sender].field_1280 - (sub_88966cc9[msg.sender].field_1024 / 100 * sub_b1c0cfd1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferEvent(msg.sender, sub_88966cc9[msg.sender].field_1024 + sub_88966cc9[msg.sender].field_1280 - (sub_88966cc9[msg.sender].field_1024 / 100 * sub_b1c0cfd1), sub_856a8ba2Address);
        require ext_code.size(sub_856a8ba2Address)
        call sub_856a8ba2Address.0xa9059cbb with:
             gas gas_remaining wei
            args treasuryAddress, sub_88966cc9[msg.sender].field_1024 / 100 * sub_b1c0cfd1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TransferEvent(treasuryAddress, sub_88966cc9[msg.sender].field_1024 / 100 * sub_b1c0cfd1, sub_856a8ba2Address);
}

function buyNode(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not isLive:
        revert with 0, 'Platform is offline'
    if sub_88966cc9[msg.sender].field_256 > !sub_88966cc9[msg.sender].field_512:
        revert with 0, 17
    if sub_88966cc9[msg.sender].field_256 + sub_88966cc9[msg.sender].field_512 > !arg1:
        revert with 0, 17
    if sub_88966cc9[msg.sender].field_256 + sub_88966cc9[msg.sender].field_512 + arg1 <= 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be gifted an AstroNode first'
    if sub_88966cc9[msg.sender].field_256 + sub_88966cc9[msg.sender].field_512 + arg1 >= 101:
        revert with 0, 'Max AstroNodes Owned'
    if sub_88966cc9[msg.sender].field_0:
        if isSwapEnabled:
            if nodeCost and arg1 > -1 / nodeCost:
                revert with 0, 17
            if nodeCost * arg1 and marketingShare > -1 / nodeCost * arg1:
                revert with 0, 17
            if nodeCost * arg1 and sub_7796ff37 > -1 / nodeCost * arg1:
                revert with 0, 17
            if nodeCost * arg1 < nodeCost * arg1 * marketingShare / 100:
                revert with 0, 17
            if (nodeCost * arg1) - (nodeCost * arg1 * marketingShare / 100) < nodeCost * arg1 * sub_7796ff37 / 100:
                revert with 0, 17
            if (nodeCost * arg1) - (nodeCost * arg1 * marketingShare / 100) - (nodeCost * arg1 * sub_7796ff37 / 100) and lpShare > -1 / (nodeCost * arg1) - (nodeCost * arg1 * marketingShare / 100) - (nodeCost * arg1 * sub_7796ff37 / 100):
                revert with 0, 17
            require ext_code.size(sub_856a8ba2Address)
            call sub_856a8ba2Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, treasuryAddress, nodeCost * arg1 * sub_7796ff37 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit TransferFromEvent(msg.sender, treasuryAddress, nodeCost * arg1 * sub_7796ff37 / 100, sub_856a8ba2Address);
            require ext_code.size(sub_856a8ba2Address)
            call sub_856a8ba2Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, marketingAddress, nodeCost * arg1 * marketingShare / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit TransferFromEvent(msg.sender, marketingAddress, nodeCost * arg1 * marketingShare / 100, sub_856a8ba2Address);
            require ext_code.size(sub_856a8ba2Address)
            call sub_856a8ba2Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), (nodeCost * arg1) - (nodeCost * arg1 * marketingShare / 100) - (nodeCost * arg1 * sub_7796ff37 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit TransferFromEvent(msg.sender, address(this.address), (nodeCost * arg1) - (nodeCost * arg1 * marketingShare / 100) - (nodeCost * arg1 * sub_7796ff37 / 100), sub_856a8ba2Address);
            require ext_code.size(sub_856a8ba2Address)
            call sub_856a8ba2Address.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_856a8ba2Address, (nodeCost * arg1 * lpShare) - (nodeCost * arg1 * marketingShare / 100 * lpShare) - (nodeCost * arg1 * sub_7796ff37 / 100 * lpShare) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit TransferEvent(sub_856a8ba2Address, (nodeCost * arg1 * lpShare) - (nodeCost * arg1 * marketingShare / 100 * lpShare) - (nodeCost * arg1 * sub_7796ff37 / 100 * lpShare) / 100, sub_856a8ba2Address);
        sub_88966cc9[msg.sender].field_0 = uint8(bool(sub_88966cc9[msg.sender].field_0))
    else:
        sub_28d78f72.length++
        uint256(sub_28d78f72[sub_28d78f72.length]) = msg.sender or Mask(96, 160, uint256(sub_28d78f72[sub_28d78f72.length]))
        if isSwapEnabled:
            if nodeCost and arg1 > -1 / nodeCost:
                revert with 0, 17
            if nodeCost * arg1 and marketingShare > -1 / nodeCost * arg1:
                revert with 0, 17
            if nodeCost * arg1 and sub_7796ff37 > -1 / nodeCost * arg1:
                revert with 0, 17
            if nodeCost * arg1 < nodeCost * arg1 * marketingShare / 100:
                revert with 0, 17
            if (nodeCost * arg1) - (nodeCost * arg1 * marketingShare / 100) < nodeCost * arg1 * sub_7796ff37 / 100:
                revert with 0, 17
            if (nodeCost * arg1) - (nodeCost * arg1 * marketingShare / 100) - (nodeCost * arg1 * sub_7796ff37 / 100) and lpShare > -1 / (nodeCost * arg1) - (nodeCost * arg1 * marketingShare / 100) - (nodeCost * arg1 * sub_7796ff37 / 100):
                revert with 0, 17
            require ext_code.size(sub_856a8ba2Address)
            call sub_856a8ba2Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, treasuryAddress, nodeCost * arg1 * sub_7796ff37 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit TransferFromEvent(msg.sender, treasuryAddress, nodeCost * arg1 * sub_7796ff37 / 100, sub_856a8ba2Address);
            require ext_code.size(sub_856a8ba2Address)
            call sub_856a8ba2Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, marketingAddress, nodeCost * arg1 * marketingShare / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit TransferFromEvent(msg.sender, marketingAddress, nodeCost * arg1 * marketingShare / 100, sub_856a8ba2Address);
            require ext_code.size(sub_856a8ba2Address)
            call sub_856a8ba2Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), (nodeCost * arg1) - (nodeCost * arg1 * marketingShare / 100) - (nodeCost * arg1 * sub_7796ff37 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit TransferFromEvent(msg.sender, address(this.address), (nodeCost * arg1) - (nodeCost * arg1 * marketingShare / 100) - (nodeCost * arg1 * sub_7796ff37 / 100), sub_856a8ba2Address);
            require ext_code.size(sub_856a8ba2Address)
            call sub_856a8ba2Address.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_856a8ba2Address, (nodeCost * arg1 * lpShare) - (nodeCost * arg1 * marketingShare / 100 * lpShare) - (nodeCost * arg1 * sub_7796ff37 / 100 * lpShare) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit TransferEvent(sub_856a8ba2Address, (nodeCost * arg1 * lpShare) - (nodeCost * arg1 * marketingShare / 100 * lpShare) - (nodeCost * arg1 * sub_7796ff37 / 100 * lpShare) / 100, sub_856a8ba2Address);
        sub_88966cc9[msg.sender].field_0 = 1
        sub_88966cc9[msg.sender].field_256 = 0
        sub_88966cc9[msg.sender].field_512 = 0
        sub_88966cc9[msg.sender].field_768 = 0
        sub_88966cc9[msg.sender].field_1024 = 0
        sub_88966cc9[msg.sender].field_1280 = 0
        sub_88966cc9[msg.sender].field_1536 = 0
    if sub_88966cc9[address(msg.sender)].field_768 and sub_91c072f0 > -1 / sub_88966cc9[address(msg.sender)].field_768:
        revert with 0, 17
    if dailyInterest > !(sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0):
        revert with 0, 17
    if block.timestamp < sub_88966cc9[address(msg.sender)].field_1536:
        revert with 0, 17
    if sub_88966cc9[address(msg.sender)].field_1536:
        if sub_88966cc9[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_256:
            revert with 0, 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83:
            revert with 0, 17
        if (dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[address(msg.sender)].field_1536 > -1 / (dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83):
            revert with 0, 17
        if sub_88966cc9[address(msg.sender)].field_1024 > !((block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600):
            revert with 0, 17
        sub_88966cc9[address(msg.sender)].field_1024 += (block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600
    if sub_88966cc9[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_512:
        revert with 0, 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83:
        revert with 0, 17
    if (dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[address(msg.sender)].field_1536 > -1 / (dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83):
        revert with 0, 17
    if sub_88966cc9[address(msg.sender)].field_1280 > !((block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600):
        revert with 0, 17
    sub_88966cc9[address(msg.sender)].field_1280 += (block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600
    sub_88966cc9[address(msg.sender)].field_1536 = block.timestamp
    if sub_88966cc9[msg.sender].field_256 > !arg1:
        revert with 0, 17
    sub_88966cc9[msg.sender].field_256 += arg1
    if sub_63584ecd > !arg1:
        revert with 0, 17
    sub_63584ecd += arg1
}

function sub_29a5c72b(?) payable {
    if sub_88966cc9[address(msg.sender)].field_768 and sub_91c072f0 > -1 / sub_88966cc9[address(msg.sender)].field_768:
        revert with 0, 17
    if dailyInterest > !(sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0):
        revert with 0, 17
    if not sub_88966cc9[msg.sender].field_1536:
        if block.timestamp < block.timestamp:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[msg.sender].field_256:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83:
            revert with 0, 17
        if (dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) and 0 > -1 / (dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83):
            revert with 0, 17
        if block.timestamp < block.timestamp:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[msg.sender].field_512:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83:
            revert with 0, 17
        if (dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) and 0 > -1 / (dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83):
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_1024 > !sub_88966cc9[msg.sender].field_1280:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_1024 + sub_88966cc9[msg.sender].field_1280 > -1:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_256 > !sub_88966cc9[msg.sender].field_512:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_1024 + sub_88966cc9[msg.sender].field_1280 <= nodeCost:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough pending BUZZ to compound'
    else:
        if block.timestamp < sub_88966cc9[msg.sender].field_1536:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[msg.sender].field_256:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83:
            revert with 0, 17
        if (dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[msg.sender].field_1536 > -1 / (dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83):
            revert with 0, 17
        if block.timestamp < sub_88966cc9[msg.sender].field_1536:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[msg.sender].field_512:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83:
            revert with 0, 17
        if (dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[msg.sender].field_1536 > -1 / (dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83):
            revert with 0, 17
        if (block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600 > !((block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600):
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_1024 > !sub_88966cc9[msg.sender].field_1280:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_1024 + sub_88966cc9[msg.sender].field_1280 > !(((block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600) + ((block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600)):
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_256 > !sub_88966cc9[msg.sender].field_512:
            revert with 0, 17
        if sub_88966cc9[msg.sender].field_1024 + sub_88966cc9[msg.sender].field_1280 + ((block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600) + ((block.timestamp * dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * dailyInterest * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) - (sub_88966cc9[msg.sender].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[msg.sender].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600) <= nodeCost:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough pending BUZZ to compound'
    if sub_88966cc9[msg.sender].field_256 + sub_88966cc9[msg.sender].field_512 >= 100:
        revert with 0, 'Max AstroNodes Owned'
    if sub_88966cc9[address(msg.sender)].field_768 and sub_91c072f0 > -1 / sub_88966cc9[address(msg.sender)].field_768:
        revert with 0, 17
    if dailyInterest > !(sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0):
        revert with 0, 17
    if block.timestamp < sub_88966cc9[address(msg.sender)].field_1536:
        revert with 0, 17
    if sub_88966cc9[address(msg.sender)].field_1536:
        if sub_88966cc9[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_256:
            revert with 0, 17
        if sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83:
            revert with 0, 17
        if (dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[address(msg.sender)].field_1536 > -1 / (dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83):
            revert with 0, 17
        if sub_88966cc9[address(msg.sender)].field_1024 > !((block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600):
            revert with 0, 17
        sub_88966cc9[address(msg.sender)].field_1024 += (block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600
    if sub_88966cc9[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(msg.sender)].field_512:
        revert with 0, 17
    if sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83:
        revert with 0, 17
    if (dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[address(msg.sender)].field_1536 > -1 / (dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83):
        revert with 0, 17
    if sub_88966cc9[address(msg.sender)].field_1280 > !((block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600):
        revert with 0, 17
    sub_88966cc9[address(msg.sender)].field_1280 += (block.timestamp * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * dailyInterest * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(msg.sender)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(msg.sender)].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600
    sub_88966cc9[address(msg.sender)].field_1536 = block.timestamp
    if sub_88966cc9[msg.sender].field_1024 < nodeCost:
        if sub_88966cc9[msg.sender].field_1024 > !sub_88966cc9[msg.sender].field_1280:
            revert with 0, 17
        sub_88966cc9[msg.sender].field_1024 += sub_88966cc9[msg.sender].field_1280
        sub_88966cc9[msg.sender].field_1280 = 0
    if sub_88966cc9[msg.sender].field_1024 < nodeCost:
        revert with 0, 17
    sub_88966cc9[msg.sender].field_1024 -= nodeCost
    if sub_88966cc9[msg.sender].field_256 == -1:
        revert with 0, 17
    sub_88966cc9[msg.sender].field_256++
    if sub_63584ecd == -1:
        revert with 0, 17
    sub_63584ecd++
    if stor10 == -1:
        revert with 0, 17
    stor10++
}

function sub_75166473(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not isLive:
        revert with 0, 'Platform is offline'
    if arg2 >= 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only donate 1 AstroNode at a time'
    if sub_88966cc9[address(arg1)].field_256 > !sub_88966cc9[address(arg1)].field_512:
        revert with 0, 17
    if sub_88966cc9[address(arg1)].field_256 + sub_88966cc9[address(arg1)].field_512 > !arg2:
        revert with 0, 17
    if sub_88966cc9[address(arg1)].field_256 + sub_88966cc9[address(arg1)].field_512 + arg2 >= 101:
        revert with 0, 'Max AstroNodes Owned'
    if sub_88966cc9[address(arg1)].field_0:
        if sub_88966cc9[address(arg1)].field_512:
            revert with 0, 'This Astronaut has already received a donation. Please find another to donate to.'
        if sub_88966cc9[msg.sender].field_0:
            if isSwapEnabled:
                if nodeCost and arg2 > -1 / nodeCost:
                    revert with 0, 17
                if nodeCost * arg2 and marketingShare > -1 / nodeCost * arg2:
                    revert with 0, 17
                if nodeCost * arg2 and sub_7796ff37 > -1 / nodeCost * arg2:
                    revert with 0, 17
                if nodeCost * arg2 < nodeCost * arg2 * marketingShare / 100:
                    revert with 0, 17
                if (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) < nodeCost * arg2 * sub_7796ff37 / 100:
                    revert with 0, 17
                if (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) - (nodeCost * arg2 * sub_7796ff37 / 100) and lpShare > -1 / (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) - (nodeCost * arg2 * sub_7796ff37 / 100):
                    revert with 0, 17
                require ext_code.size(sub_856a8ba2Address)
                call sub_856a8ba2Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, treasuryAddress, nodeCost * arg2 * sub_7796ff37 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TransferFromEvent(msg.sender, treasuryAddress, nodeCost * arg2 * sub_7796ff37 / 100, sub_856a8ba2Address);
                require ext_code.size(sub_856a8ba2Address)
                call sub_856a8ba2Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, marketingAddress, nodeCost * arg2 * marketingShare / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TransferFromEvent(msg.sender, marketingAddress, nodeCost * arg2 * marketingShare / 100, sub_856a8ba2Address);
                require ext_code.size(sub_856a8ba2Address)
                call sub_856a8ba2Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) - (nodeCost * arg2 * sub_7796ff37 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TransferFromEvent(msg.sender, address(this.address), (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) - (nodeCost * arg2 * sub_7796ff37 / 100), sub_856a8ba2Address);
                require ext_code.size(sub_856a8ba2Address)
                call sub_856a8ba2Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_856a8ba2Address, (nodeCost * arg2 * lpShare) - (nodeCost * arg2 * marketingShare / 100 * lpShare) - (nodeCost * arg2 * sub_7796ff37 / 100 * lpShare) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TransferEvent(sub_856a8ba2Address, (nodeCost * arg2 * lpShare) - (nodeCost * arg2 * marketingShare / 100 * lpShare) - (nodeCost * arg2 * sub_7796ff37 / 100 * lpShare) / 100, sub_856a8ba2Address);
            sub_88966cc9[address(arg1)].field_0 = uint8(bool(sub_88966cc9[address(arg1)].field_0))
            sub_88966cc9[address(msg.sender)].field_0 = uint8(bool(sub_88966cc9[msg.sender].field_0))
            sub_88966cc9[address(msg.sender)].field_256 = sub_88966cc9[msg.sender].field_256
            sub_88966cc9[address(msg.sender)].field_512 = sub_88966cc9[msg.sender].field_512
            sub_88966cc9[address(msg.sender)].field_768 = sub_88966cc9[msg.sender].field_768
            sub_88966cc9[address(msg.sender)].field_1024 = sub_88966cc9[msg.sender].field_1024
            sub_88966cc9[address(msg.sender)].field_1280 = sub_88966cc9[msg.sender].field_1280
            sub_88966cc9[address(msg.sender)].field_1536 = sub_88966cc9[msg.sender].field_1536
        else:
            sub_28d78f72.length++
            uint256(sub_28d78f72[sub_28d78f72.length]) = msg.sender or Mask(96, 160, uint256(sub_28d78f72[sub_28d78f72.length]))
            if isSwapEnabled:
                if nodeCost and arg2 > -1 / nodeCost:
                    revert with 0, 17
                if nodeCost * arg2 and marketingShare > -1 / nodeCost * arg2:
                    revert with 0, 17
                if nodeCost * arg2 and sub_7796ff37 > -1 / nodeCost * arg2:
                    revert with 0, 17
                if nodeCost * arg2 < nodeCost * arg2 * marketingShare / 100:
                    revert with 0, 17
                if (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) < nodeCost * arg2 * sub_7796ff37 / 100:
                    revert with 0, 17
                if (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) - (nodeCost * arg2 * sub_7796ff37 / 100) and lpShare > -1 / (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) - (nodeCost * arg2 * sub_7796ff37 / 100):
                    revert with 0, 17
                require ext_code.size(sub_856a8ba2Address)
                call sub_856a8ba2Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, treasuryAddress, nodeCost * arg2 * sub_7796ff37 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TransferFromEvent(msg.sender, treasuryAddress, nodeCost * arg2 * sub_7796ff37 / 100, sub_856a8ba2Address);
                require ext_code.size(sub_856a8ba2Address)
                call sub_856a8ba2Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, marketingAddress, nodeCost * arg2 * marketingShare / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TransferFromEvent(msg.sender, marketingAddress, nodeCost * arg2 * marketingShare / 100, sub_856a8ba2Address);
                require ext_code.size(sub_856a8ba2Address)
                call sub_856a8ba2Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) - (nodeCost * arg2 * sub_7796ff37 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TransferFromEvent(msg.sender, address(this.address), (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) - (nodeCost * arg2 * sub_7796ff37 / 100), sub_856a8ba2Address);
                require ext_code.size(sub_856a8ba2Address)
                call sub_856a8ba2Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_856a8ba2Address, (nodeCost * arg2 * lpShare) - (nodeCost * arg2 * marketingShare / 100 * lpShare) - (nodeCost * arg2 * sub_7796ff37 / 100 * lpShare) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TransferEvent(sub_856a8ba2Address, (nodeCost * arg2 * lpShare) - (nodeCost * arg2 * marketingShare / 100 * lpShare) - (nodeCost * arg2 * sub_7796ff37 / 100 * lpShare) / 100, sub_856a8ba2Address);
            sub_88966cc9[address(arg1)].field_0 = uint8(bool(sub_88966cc9[address(arg1)].field_0))
            sub_88966cc9[address(msg.sender)].field_0 = 1
            sub_88966cc9[address(msg.sender)].field_256 = 0
            sub_88966cc9[address(msg.sender)].field_512 = 0
            sub_88966cc9[address(msg.sender)].field_768 = 0
            sub_88966cc9[address(msg.sender)].field_1024 = 0
            sub_88966cc9[address(msg.sender)].field_1280 = 0
            sub_88966cc9[address(msg.sender)].field_1536 = 0
    else:
        sub_28d78f72.length++
        address(sub_28d78f72[sub_28d78f72.length]) = address(arg1)
        if sub_88966cc9[msg.sender].field_0:
            if isSwapEnabled:
                if nodeCost and arg2 > -1 / nodeCost:
                    revert with 0, 17
                if nodeCost * arg2 and marketingShare > -1 / nodeCost * arg2:
                    revert with 0, 17
                if nodeCost * arg2 and sub_7796ff37 > -1 / nodeCost * arg2:
                    revert with 0, 17
                if nodeCost * arg2 < nodeCost * arg2 * marketingShare / 100:
                    revert with 0, 17
                if (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) < nodeCost * arg2 * sub_7796ff37 / 100:
                    revert with 0, 17
                if (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) - (nodeCost * arg2 * sub_7796ff37 / 100) and lpShare > -1 / (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) - (nodeCost * arg2 * sub_7796ff37 / 100):
                    revert with 0, 17
                require ext_code.size(sub_856a8ba2Address)
                call sub_856a8ba2Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, treasuryAddress, nodeCost * arg2 * sub_7796ff37 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TransferFromEvent(msg.sender, treasuryAddress, nodeCost * arg2 * sub_7796ff37 / 100, sub_856a8ba2Address);
                require ext_code.size(sub_856a8ba2Address)
                call sub_856a8ba2Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, marketingAddress, nodeCost * arg2 * marketingShare / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TransferFromEvent(msg.sender, marketingAddress, nodeCost * arg2 * marketingShare / 100, sub_856a8ba2Address);
                require ext_code.size(sub_856a8ba2Address)
                call sub_856a8ba2Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) - (nodeCost * arg2 * sub_7796ff37 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TransferFromEvent(msg.sender, address(this.address), (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) - (nodeCost * arg2 * sub_7796ff37 / 100), sub_856a8ba2Address);
                require ext_code.size(sub_856a8ba2Address)
                call sub_856a8ba2Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_856a8ba2Address, (nodeCost * arg2 * lpShare) - (nodeCost * arg2 * marketingShare / 100 * lpShare) - (nodeCost * arg2 * sub_7796ff37 / 100 * lpShare) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TransferEvent(sub_856a8ba2Address, (nodeCost * arg2 * lpShare) - (nodeCost * arg2 * marketingShare / 100 * lpShare) - (nodeCost * arg2 * sub_7796ff37 / 100 * lpShare) / 100, sub_856a8ba2Address);
            sub_88966cc9[address(arg1)].field_0 = 1
            sub_88966cc9[address(arg1)].field_256 = 0
            sub_88966cc9[address(arg1)].field_512 = 0
            sub_88966cc9[address(arg1)].field_768 = 0
            sub_88966cc9[address(arg1)].field_1024 = 0
            sub_88966cc9[address(arg1)].field_1280 = 0
            sub_88966cc9[address(arg1)].field_1536 = 0
            sub_88966cc9[address(msg.sender)].field_0 = uint8(bool(sub_88966cc9[msg.sender].field_0))
            sub_88966cc9[address(msg.sender)].field_256 = sub_88966cc9[msg.sender].field_256
            sub_88966cc9[address(msg.sender)].field_512 = sub_88966cc9[msg.sender].field_512
            sub_88966cc9[address(msg.sender)].field_768 = sub_88966cc9[msg.sender].field_768
            sub_88966cc9[address(msg.sender)].field_1024 = sub_88966cc9[msg.sender].field_1024
            sub_88966cc9[address(msg.sender)].field_1280 = sub_88966cc9[msg.sender].field_1280
            sub_88966cc9[address(msg.sender)].field_1536 = sub_88966cc9[msg.sender].field_1536
        else:
            sub_28d78f72.length++
            uint256(sub_28d78f72[sub_28d78f72.length]) = msg.sender or Mask(96, 160, uint256(sub_28d78f72[sub_28d78f72.length]))
            if isSwapEnabled:
                if nodeCost and arg2 > -1 / nodeCost:
                    revert with 0, 17
                if nodeCost * arg2 and marketingShare > -1 / nodeCost * arg2:
                    revert with 0, 17
                if nodeCost * arg2 and sub_7796ff37 > -1 / nodeCost * arg2:
                    revert with 0, 17
                if nodeCost * arg2 < nodeCost * arg2 * marketingShare / 100:
                    revert with 0, 17
                if (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) < nodeCost * arg2 * sub_7796ff37 / 100:
                    revert with 0, 17
                if (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) - (nodeCost * arg2 * sub_7796ff37 / 100) and lpShare > -1 / (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) - (nodeCost * arg2 * sub_7796ff37 / 100):
                    revert with 0, 17
                require ext_code.size(sub_856a8ba2Address)
                call sub_856a8ba2Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, treasuryAddress, nodeCost * arg2 * sub_7796ff37 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TransferFromEvent(msg.sender, treasuryAddress, nodeCost * arg2 * sub_7796ff37 / 100, sub_856a8ba2Address);
                require ext_code.size(sub_856a8ba2Address)
                call sub_856a8ba2Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, marketingAddress, nodeCost * arg2 * marketingShare / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TransferFromEvent(msg.sender, marketingAddress, nodeCost * arg2 * marketingShare / 100, sub_856a8ba2Address);
                require ext_code.size(sub_856a8ba2Address)
                call sub_856a8ba2Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) - (nodeCost * arg2 * sub_7796ff37 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TransferFromEvent(msg.sender, address(this.address), (nodeCost * arg2) - (nodeCost * arg2 * marketingShare / 100) - (nodeCost * arg2 * sub_7796ff37 / 100), sub_856a8ba2Address);
                require ext_code.size(sub_856a8ba2Address)
                call sub_856a8ba2Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_856a8ba2Address, (nodeCost * arg2 * lpShare) - (nodeCost * arg2 * marketingShare / 100 * lpShare) - (nodeCost * arg2 * sub_7796ff37 / 100 * lpShare) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TransferEvent(sub_856a8ba2Address, (nodeCost * arg2 * lpShare) - (nodeCost * arg2 * marketingShare / 100 * lpShare) - (nodeCost * arg2 * sub_7796ff37 / 100 * lpShare) / 100, sub_856a8ba2Address);
            sub_88966cc9[address(arg1)].field_0 = 1
            sub_88966cc9[address(arg1)].field_256 = 0
            sub_88966cc9[address(arg1)].field_512 = 0
            sub_88966cc9[address(arg1)].field_768 = 0
            sub_88966cc9[address(arg1)].field_1024 = 0
            sub_88966cc9[address(arg1)].field_1280 = 0
            sub_88966cc9[address(arg1)].field_1536 = 0
            sub_88966cc9[address(msg.sender)].field_0 = 1
            sub_88966cc9[address(msg.sender)].field_256 = 0
            sub_88966cc9[address(msg.sender)].field_512 = 0
            sub_88966cc9[address(msg.sender)].field_768 = 0
            sub_88966cc9[address(msg.sender)].field_1024 = 0
            sub_88966cc9[address(msg.sender)].field_1280 = 0
            sub_88966cc9[address(msg.sender)].field_1536 = 0
    if sub_88966cc9[address(msg.sender)].field_768 and sub_91c072f0 > -1 / sub_88966cc9[address(msg.sender)].field_768:
        revert with 0, 17
    if dailyInterest > !(sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0):
        revert with 0, 17
    if block.timestamp < sub_88966cc9[address(arg1)].field_1536:
        revert with 0, 17
    if sub_88966cc9[address(arg1)].field_1536:
        if sub_88966cc9[address(arg1)].field_256 and sub_bcd4aa83 > -1 / sub_88966cc9[address(arg1)].field_256:
            revert with 0, 17
        if sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83:
            revert with 0, 17
        if (dailyInterest * sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[address(arg1)].field_1536 > -1 / (dailyInterest * sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83):
            revert with 0, 17
        if sub_88966cc9[address(arg1)].field_1024 > !((block.timestamp * dailyInterest * sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(arg1)].field_1536 * dailyInterest * sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(arg1)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600):
            revert with 0, 17
        sub_88966cc9[address(arg1)].field_1024 += (block.timestamp * dailyInterest * sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(arg1)].field_1536 * dailyInterest * sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83) - (sub_88966cc9[address(arg1)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(arg1)].field_256 * sub_bcd4aa83) / 2400 * 24 * 3600
    if sub_88966cc9[address(arg1)].field_512 and sub_bcd4aa83 > -1 / sub_88966cc9[address(arg1)].field_512:
        revert with 0, 17
    if sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83 and dailyInterest + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0) > -1 / sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83:
        revert with 0, 17
    if (dailyInterest * sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83) and block.timestamp - sub_88966cc9[address(arg1)].field_1536 > -1 / (dailyInterest * sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83) + (sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83):
        revert with 0, 17
    if sub_88966cc9[address(arg1)].field_1280 > !((block.timestamp * dailyInterest * sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(arg1)].field_1536 * dailyInterest * sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(arg1)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600):
        revert with 0, 17
    sub_88966cc9[address(arg1)].field_1280 += (block.timestamp * dailyInterest * sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(arg1)].field_1536 * dailyInterest * sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83) + (block.timestamp * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83) - (sub_88966cc9[address(arg1)].field_1536 * sub_88966cc9[address(msg.sender)].field_768 * sub_91c072f0 * sub_88966cc9[address(arg1)].field_512 * sub_bcd4aa83) / 2400 * 24 * 3600
    sub_88966cc9[address(arg1)].field_1536 = block.timestamp
    if sub_88966cc9[address(arg1)].field_512 > !arg2:
        revert with 0, 17
    sub_88966cc9[address(arg1)].field_512 += arg2
    if sub_88966cc9[msg.sender].field_768 > !arg2:
        revert with 0, 17
    sub_88966cc9[msg.sender].field_768 += arg2
    if sub_63584ecd > !arg2:
        revert with 0, 17
    sub_63584ecd += arg2
    if sub_e7edaa7b > !arg2:
        revert with 0, 17
    sub_e7edaa7b += arg2
    sub_88966cc9[address(arg1)].field_1536 = block.timestamp
}



}
