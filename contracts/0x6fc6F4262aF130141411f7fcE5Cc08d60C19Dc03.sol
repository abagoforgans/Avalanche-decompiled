contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 totalSupply;
array of struct stor7;
array of struct stor8;
uint8 decimals;
address owner; offset 8
address USDTAddress;
address sub_d466c295Address;
address sub_03c8ed3bAddress;
mapping of uint8 stor13;
uint256 sub_9987e9b7;
uint256 shareRate;
uint256 devRate;
uint256 buyRate;
uint256 sellRate;
uint8 open;
uint256 rate1;
uint256 rate2;
uint256 rate3;
address devAddr;
address sub_8a5fa363Address;
address sub_c3662e82Address;
address sub_3f7c0073Address;

function sub_03c8ed3b(?) payable {
    return sub_03c8ed3bAddress
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function sub_3dc5e75b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function sub_3f7c0073(?) payable {
    return sub_3f7c0073Address
}

function blackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function sellRate() payable {
    return sellRate
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_8a5fa363(?) payable {
    return sub_8a5fa363Address
}

function owner() payable {
    return owner
}

function sub_9987e9b7(?) payable {
    return sub_9987e9b7
}

function rate3() payable {
    return rate3
}

function sub_c3662e82(?) payable {
    return sub_c3662e82Address
}

function USDT() payable {
    return USDTAddress
}

function devRate() payable {
    return devRate
}

function rate1() payable {
    return rate1
}

function sub_d459e072(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function sub_d466c295(?) payable {
    return sub_d466c295Address
}

function devAddr() payable {
    return devAddr
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function isPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[arg1])
}

function sub_ea187eff(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function rate2() payable {
    return rate2
}

function shareRate() payable {
    return shareRate
}

function buyRate() payable {
    return buyRate
}

function open() payable {
    return bool(open)
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

function sub_a4efb3fb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9987e9b7 = arg1
}

function setOpen(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    open = uint8(arg1)
}

function setUsdt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    USDTAddress = arg1
}

function sub_10b74779(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_03c8ed3bAddress = address(arg1)
}

function setBlackList(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = uint8(arg2)
}

function sub_d62faa60(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rate1 = arg1
    rate2 = arg2
    rate3 = arg3
}

function setPair(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = 1
    if arg2:
        if not sub_d466c295Address:
            sub_d466c295Address = arg1
}

function setAddr(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devAddr = arg1
    sub_8a5fa363Address = arg2
    sub_c3662e82Address = arg3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_67038d52(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        stor2[address(arg1)] = uint8(bool(arg3))
    else:
        if arg2 == 1:
            stor3[address(arg1)] = uint8(bool(arg3))
        else:
            if arg2 == 2:
                stor4[address(arg1)] = uint8(bool(arg3))
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

function setRate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1:
        revert with 0, 'invaild input'
    if arg2 > 1:
        revert with 0, 'invaild input'
    if arg3 > 14:
        revert with 0, 'invaild input'
    if arg4 > 14:
        revert with 0, 'invaild input'
    shareRate = arg1
    devRate = arg2
    buyRate = arg3
    sellRate = arg4
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_1390f164(?) payable {
    require ext_code.size(sub_d466c295Address)
    staticcall sub_d466c295Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_d466c295Address)
    staticcall sub_d466c295Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[12 len 20] != USDTAddress:
        if not ext_call.return_data[18 len 14]:
            revert with 'NH{q', 18
        if ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > 100:
            return 2022 * 10^18
        if ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10 > -2:
            revert with 'NH{q', 17
        if (ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10) + 1 and 10^18 > -1 / (ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10) + 1:
            revert with 'NH{q', 17
        return ((10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10) + 10^18)
    if not ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    if ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > 100:
        return 2022 * 10^18
    if ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10 > -2:
        revert with 'NH{q', 17
    if (ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10) + 1 and 10^18 > -1 / (ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10) + 1:
        revert with 'NH{q', 17
    return ((10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10) + 10^18)
}

function sub_2f8a0f7b(?) payable {
    require ext_code.size(sub_d466c295Address)
    staticcall sub_d466c295Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_d466c295Address)
    staticcall sub_d466c295Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[12 len 20] != USDTAddress:
        if not ext_call.return_data[50 len 14]:
            return rate1
        if ext_call.return_data[50 len 14] and 2 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if not ext_call.return_data[50 len 14]:
            revert with 'NH{q', 18
        if 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if 2 * Mask(112, 0, ext_call.return_data[32]) <= 3000000 * 10^18:
            return rate1
        if 2 * Mask(112, 0, ext_call.return_data[32]) <= 10000000 * 10^18:
            return rate2
        if 2 * Mask(112, 0, ext_call.return_data[32]) > 30000000 * 10^18:
            return rate1
    else:
        if not ext_call.return_data[18 len 14]:
            return rate1
        if ext_call.return_data[18 len 14] and 2 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if not ext_call.return_data[18 len 14]:
            revert with 'NH{q', 18
        if 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if 2 * Mask(112, 0, ext_call.return_data[0]) <= 3000000 * 10^18:
            return rate1
        if 2 * Mask(112, 0, ext_call.return_data[0]) <= 10000000 * 10^18:
            return rate2
        if 2 * Mask(112, 0, ext_call.return_data[0]) > 30000000 * 10^18:
            return rate1
    return rate3
}

function name() payable {
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function symbol() payable {
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if stor5[address(msg.sender)]:
        revert with 0, 'ERC20: is black List !'
    if stor5[address(msg.sender)]:
        revert with 0, 'ERC20: is black List !'
    if stor5[address(arg1)]:
        revert with 0, 'ERC20: is black List !'
    if stor2[address(msg.sender)]:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor3[address(arg1)]:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if 100 < buyRate:
                revert with 'NH{q', 17
            if arg2 and -buyRate + 100 > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 and rate1 > -1 / arg2:
                revert with 'NH{q', 17
            if balanceOf[stor23] > -(arg2 * rate1 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[stor23] += arg2 * rate1 / 100
            if arg2 and rate2 > -1 / arg2:
                revert with 'NH{q', 17
            if balanceOf[stor24] > -(arg2 * rate2 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[stor24] += arg2 * rate2 / 100
            if arg2 and rate3 > -1 / arg2:
                revert with 'NH{q', 17
            if balanceOf[stor25] > -(arg2 * rate3 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[stor25] += arg2 * rate3 / 100
            if not stor13[address(arg1)]:
                require ext_code.size(sub_d466c295Address)
                staticcall sub_d466c295Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_d466c295Address)
                staticcall sub_d466c295Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if ext_call.return_data[12 len 20] != USDTAddress:
                    if not ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > 100:
                        if balanceOf[address(arg1)] > -((100 * arg2) - (buyRate * arg2) / 100) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + ((100 * arg2) - (buyRate * arg2) / 100) > 2022 * 10^18:
                            revert with 0, 'you cant get more token'
                    else:
                        if ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10 > -2:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10) + 1 and 10^18 > -1 / (ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10) + 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] > -((100 * arg2) - (buyRate * arg2) / 100) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + ((100 * arg2) - (buyRate * arg2) / 100) > (10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10) + 10^18:
                            revert with 0, 'you cant get more token'
                else:
                    if not ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > 100:
                        if balanceOf[address(arg1)] > -((100 * arg2) - (buyRate * arg2) / 100) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + ((100 * arg2) - (buyRate * arg2) / 100) > 2022 * 10^18:
                            revert with 0, 'you cant get more token'
                    else:
                        if ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10 > -2:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10) + 1 and 10^18 > -1 / (ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10) + 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] > -((100 * arg2) - (buyRate * arg2) / 100) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + ((100 * arg2) - (buyRate * arg2) / 100) > (10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10) + 10^18:
                            revert with 0, 'you cant get more token'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -((100 * arg2) - (buyRate * arg2) / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += (100 * arg2) - (buyRate * arg2) / 100
            emit Transfer(((100 * arg2) - (buyRate * arg2) / 100), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if stor5[address(msg.sender)]:
        revert with 0, 'ERC20: is black List !'
    if stor5[address(arg1)]:
        revert with 0, 'ERC20: is black List !'
    if stor5[address(arg2)]:
        revert with 0, 'ERC20: is black List !'
    if stor2[address(arg1)]:
        if balanceOf[address(arg1)] < arg3:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 'NH{q', 17
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if stor3[address(arg2)]:
            if balanceOf[address(arg1)] < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if 100 < buyRate:
                revert with 'NH{q', 17
            if arg3 and -buyRate + 100 > -1 / arg3:
                revert with 'NH{q', 17
            if arg3 and rate1 > -1 / arg3:
                revert with 'NH{q', 17
            if balanceOf[stor23] > -(arg3 * rate1 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[stor23] += arg3 * rate1 / 100
            if arg3 and rate2 > -1 / arg3:
                revert with 'NH{q', 17
            if balanceOf[stor24] > -(arg3 * rate2 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[stor24] += arg3 * rate2 / 100
            if arg3 and rate3 > -1 / arg3:
                revert with 'NH{q', 17
            if balanceOf[stor25] > -(arg3 * rate3 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[stor25] += arg3 * rate3 / 100
            if stor13[address(arg2)]:
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -((100 * arg3) - (buyRate * arg3) / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += (100 * arg3) - (buyRate * arg3) / 100
                emit Transfer(((100 * arg3) - (buyRate * arg3) / 100), arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                require ext_code.size(sub_d466c295Address)
                staticcall sub_d466c295Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_d466c295Address)
                staticcall sub_d466c295Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if ext_call.return_data[12 len 20] != USDTAddress:
                    if not ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > 100:
                        if balanceOf[address(arg2)] > -((100 * arg3) - (buyRate * arg3) / 100) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] + ((100 * arg3) - (buyRate * arg3) / 100) > 2022 * 10^18:
                            revert with 0, 'you cant get more token'
                    else:
                        if ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10 > -2:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10) + 1 and 10^18 > -1 / (ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10) + 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] > -((100 * arg3) - (buyRate * arg3) / 100) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] + ((100 * arg3) - (buyRate * arg3) / 100) > (10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10) + 10^18:
                            revert with 0, 'you cant get more token'
                else:
                    if not ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > 100:
                        if balanceOf[address(arg2)] > -((100 * arg3) - (buyRate * arg3) / 100) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] + ((100 * arg3) - (buyRate * arg3) / 100) > 2022 * 10^18:
                            revert with 0, 'you cant get more token'
                    else:
                        if ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10 > -2:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10) + 1 and 10^18 > -1 / (ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10) + 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] > -((100 * arg3) - (buyRate * arg3) / 100) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] + ((100 * arg3) - (buyRate * arg3) / 100) > (10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10) + 10^18:
                            revert with 0, 'you cant get more token'
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -((100 * arg3) - (buyRate * arg3) / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += (100 * arg3) - (buyRate * arg3) / 100
                emit Transfer(((100 * arg3) - (buyRate * arg3) / 100), arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
