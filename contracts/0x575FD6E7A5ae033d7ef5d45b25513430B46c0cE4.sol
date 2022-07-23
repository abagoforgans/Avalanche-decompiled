contract main {




// =====================  Runtime code  =====================


const decimals = 18

const _decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 tax;
address stor5; offset 16
address stor6;
address stor7;
address stor8;
address rewardPoolAddress;
address sub_e7af92deAddress;
address sub_8b3a96e9Address;
address teamWalletAddress;
address sub_ddd089c3Address;
address marketingWalletAddress;
address sub_11ffeaf2Address;
mapping of uint8 stor17;
mapping of uint8 stor18;
mapping of uint256 stor19;

function sub_11ffeaf2(?) payable {
    return sub_11ffeaf2Address
}

function totalSupply() payable {
    return totalSupply
}

function RewardPool() payable {
    return rewardPoolAddress
}

function MarketingWallet() payable {
    return marketingWalletAddress
}

function TeamWallet() payable {
    return teamWalletAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_8471dcb3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor17[address(arg1)])
}

function sub_8b3a96e9(?) payable {
    return sub_8b3a96e9Address
}

function tax() payable {
    return tax
}

function sub_dcad720b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor18[address(arg1)])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_ddd089c3(?) payable {
    return sub_ddd089c3Address
}

function sub_e7af92de(?) payable {
    return sub_e7af92deAddress
}

function _fallback() payable {
    revert
}

function sub_4cf291d6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the owner of the token'
    tax = uint8(arg1)
}

function sub_6661fba8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the owner of the token'
    stor8 = address(arg1)
}

function transferOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the owner of the token'
    stor5 = arg1
    emit 0x884c580f: msg.sender, arg1, 1
    return 1
}

function sub_3331ad52(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the owner of the token'
    stor18[address(arg1)] = 1
    emit 0xed1fb8c1: msg.sender, address(arg1), 1
}

function sub_61e11e37(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the owner of the token'
    stor18[address(arg1)] = 0
    emit 0xed1fb8c1: msg.sender, address(arg1), 0
}

function sub_741d2d16(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the owner of the token'
    stor17[address(arg1)] = 0
    emit 0xed1fb8c1: msg.sender, address(arg1), 0
}

function sub_e1340b1a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the owner of the token'
    stor17[address(arg1)] = 1
    emit 0xed1fb8c1: msg.sender, address(arg1), 1
}

function withdraw() payable {
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the owner of the token'
    require eth.balance(this.address) > 0
    call stor5 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function addGameContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the owner of the token'
    stor7 = arg1
    if not rewardPoolAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[stor9] < balanceOf[stor9]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor9] = 0
    if balanceOf[stor7] > -balanceOf[stor9] - 1:
        revert with 'NH{q', 17
    balanceOf[stor7] += balanceOf[stor9]
    emit Transfer(balanceOf[stor9], rewardPoolAddress, stor7);
    rewardPoolAddress = arg1
}

function addPresaleContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the owner of the token'
    stor6 = arg1
    if not sub_8b3a96e9Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[stor11] < balanceOf[stor11]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor11] = 0
    if balanceOf[stor6] > -balanceOf[stor11] - 1:
        revert with 'NH{q', 17
    balanceOf[stor6] += balanceOf[stor11]
    emit Transfer(balanceOf[stor11], sub_8b3a96e9Address, stor6);
    sub_8b3a96e9Address = arg1
}

function sub_a69cf2cf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the owner of the token'
    if not sub_e7af92deAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[stor10] < balanceOf[stor10]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor10] = 0
    if balanceOf[address(arg1)] > -balanceOf[stor10] - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += balanceOf[stor10]
    emit Transfer(balanceOf[stor10], sub_e7af92deAddress, address(arg1));
    sub_e7af92deAddress = address(arg1)
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function sub_4496b7da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and 65 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 < 65 * arg1 / 100:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not rewardPoolAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < 65 * arg1 / 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= 65 * arg1 / 100
    if balanceOf[stor9] > -(65 * arg1 / 100) - 1:
        revert with 'NH{q', 17
    balanceOf[stor9] += 65 * arg1 / 100
    emit Transfer((65 * arg1 / 100), msg.sender, rewardPoolAddress);
    if arg1 and 15 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 - (65 * arg1 / 100) < 15 * arg1 / 100:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not sub_11ffeaf2Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < 15 * arg1 / 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= 15 * arg1 / 100
    if balanceOf[stor15] > -(15 * arg1 / 100) - 1:
        revert with 'NH{q', 17
    balanceOf[stor15] += 15 * arg1 / 100
    emit Transfer((15 * arg1 / 100), msg.sender, sub_11ffeaf2Address);
    if arg1 and 10 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 - (65 * arg1 / 100) - (15 * arg1 / 100) < 10 * arg1 / 100:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not sub_e7af92deAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < 10 * arg1 / 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= 10 * arg1 / 100
    if balanceOf[stor10] > -(10 * arg1 / 100) - 1:
        revert with 'NH{q', 17
    balanceOf[stor10] += 10 * arg1 / 100
    emit Transfer((10 * arg1 / 100), msg.sender, sub_e7af92deAddress);
    if arg1 and 5 > -1 / arg1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not marketingWalletAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < 5 * arg1 / 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= 5 * arg1 / 100
    if balanceOf[stor14] > -(5 * arg1 / 100) - 1:
        revert with 'NH{q', 17
    balanceOf[stor14] += 5 * arg1 / 100
    emit Transfer((5 * arg1 / 100), msg.sender, marketingWalletAddress);
    if arg1 - (65 * arg1 / 100) - (15 * arg1 / 100) - (10 * arg1 / 100) < 5 * arg1 / 100:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not teamWalletAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg1 - (65 * arg1 / 100) - (15 * arg1 / 100) - (10 * arg1 / 100) - (5 * arg1 / 100):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg1 + (65 * arg1 / 100) + (15 * arg1 / 100) + (10 * arg1 / 100) + (5 * arg1 / 100)
    if balanceOf[stor12] > -arg1 + (65 * arg1 / 100) + (15 * arg1 / 100) + (10 * arg1 / 100) + (5 * arg1 / 100) - 1:
        revert with 'NH{q', 17
    balanceOf[stor12] = balanceOf[stor12] + arg1 - (65 * arg1 / 100) - (15 * arg1 / 100) - (10 * arg1 / 100) - (5 * arg1 / 100)
    emit Transfer((arg1 - (65 * arg1 / 100) - (15 * arg1 / 100) - (10 * arg1 / 100) - (5 * arg1 / 100)), msg.sender, teamWalletAddress);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor17[address(msg.sender)]:
        revert with 0, 'You are in the blacklist'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'You do not have enough CRN'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The receiver address has to exist'
    if msg.sender == stor6:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if bool(stor18[address(msg.sender)]) == 1:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if msg.sender == stor7:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if msg.sender == stor8:
                    if arg2 and 5 > -1 / arg2:
                        revert with 'NH{q', 17
                    if arg2 < 5 * arg2 / 100:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 - (5 * arg2 / 100):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (5 * arg2 / 100)
                    if balanceOf[address(arg1)] > -arg2 + (5 * arg2 / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (5 * arg2 / 100)
                    emit Transfer((arg2 - (5 * arg2 / 100)), msg.sender, arg1);
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not sub_e7af92deAddress:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < 5 * arg2 / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 5 * arg2 / 100
                    if balanceOf[stor10] > -(5 * arg2 / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[stor10] += 5 * arg2 / 100
                    emit Transfer((5 * arg2 / 100), msg.sender, sub_e7af92deAddress);
                else:
                    if arg2 and tax > -1 / arg2:
                        revert with 'NH{q', 17
                    if arg2 < arg2 * tax / 100:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * tax / 100):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * tax / 100)
                    if balanceOf[address(arg1)] > -arg2 + (arg2 * tax / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * tax / 100)
                    emit Transfer((arg2 - (arg2 * tax / 100)), msg.sender, arg1);
                    if arg2 * tax / 100 and 65 > -1 / arg2 * tax / 100:
                        revert with 'NH{q', 17
                    if arg2 * tax / 100 < 65 * arg2 * tax / 100 / 100:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not rewardPoolAddress:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < 65 * arg2 * tax / 100 / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 65 * arg2 * tax / 100 / 100
                    if balanceOf[stor9] > -(65 * arg2 * tax / 100 / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[stor9] += 65 * arg2 * tax / 100 / 100
                    emit Transfer((65 * arg2 * tax / 100 / 100), msg.sender, rewardPoolAddress);
                    if arg2 * tax / 100 and 15 > -1 / arg2 * tax / 100:
                        revert with 'NH{q', 17
                    if (arg2 * tax / 100) - (65 * arg2 * tax / 100 / 100) < 15 * arg2 * tax / 100 / 100:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not sub_11ffeaf2Address:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < 15 * arg2 * tax / 100 / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 15 * arg2 * tax / 100 / 100
                    if balanceOf[stor15] > -(15 * arg2 * tax / 100 / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[stor15] += 15 * arg2 * tax / 100 / 100
                    emit Transfer((15 * arg2 * tax / 100 / 100), msg.sender, sub_11ffeaf2Address);
                    if arg2 * tax / 100 and 10 > -1 / arg2 * tax / 100:
                        revert with 'NH{q', 17
                    if (arg2 * tax / 100) - (65 * arg2 * tax / 100 / 100) - (15 * arg2 * tax / 100 / 100) < 10 * arg2 * tax / 100 / 100:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not sub_e7af92deAddress:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < 10 * arg2 * tax / 100 / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 10 * arg2 * tax / 100 / 100
                    if balanceOf[stor10] > -(10 * arg2 * tax / 100 / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[stor10] += 10 * arg2 * tax / 100 / 100
                    emit Transfer((10 * arg2 * tax / 100 / 100), msg.sender, sub_e7af92deAddress);
                    if arg2 * tax / 100 and 5 > -1 / arg2 * tax / 100:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not marketingWalletAddress:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < 5 * arg2 * tax / 100 / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 5 * arg2 * tax / 100 / 100
                    if balanceOf[stor14] > -(5 * arg2 * tax / 100 / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[stor14] += 5 * arg2 * tax / 100 / 100
                    emit Transfer((5 * arg2 * tax / 100 / 100), msg.sender, marketingWalletAddress);
                    if (arg2 * tax / 100) - (65 * arg2 * tax / 100 / 100) - (15 * arg2 * tax / 100 / 100) - (10 * arg2 * tax / 100 / 100) < 5 * arg2 * tax / 100 / 100:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not teamWalletAddress:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < (arg2 * tax / 100) - (65 * arg2 * tax / 100 / 100) - (15 * arg2 * tax / 100 / 100) - (10 * arg2 * tax / 100 / 100) - (5 * arg2 * tax / 100 / 100):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * tax / 100) + (65 * arg2 * tax / 100 / 100) + (15 * arg2 * tax / 100 / 100) + (10 * arg2 * tax / 100 / 100) + (5 * arg2 * tax / 100 / 100)
                    if balanceOf[stor12] > -(arg2 * tax / 100) + (65 * arg2 * tax / 100 / 100) + (15 * arg2 * tax / 100 / 100) + (10 * arg2 * tax / 100 / 100) + (5 * arg2 * tax / 100 / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[stor12] = balanceOf[stor12] + (arg2 * tax / 100) - (65 * arg2 * tax / 100 / 100) - (15 * arg2 * tax / 100 / 100) - (10 * arg2 * tax / 100 / 100) - (5 * arg2 * tax / 100 / 100)
                    emit Transfer(((arg2 * tax / 100) - (65 * arg2 * tax / 100 / 100) - (15 * arg2 * tax / 100 / 100) - (10 * arg2 * tax / 100 / 100) - (5 * arg2 * tax / 100 / 100)), msg.sender, teamWalletAddress);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor17[address(msg.sender)]:
        revert with 0, 'You are in the blacklist'
    if msg.sender == stor7:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if msg.sender == stor8:
            if arg3 and 5 > -1 / arg3:
                revert with 'NH{q', 17
            if allowance[address(arg1)][address(msg.sender)] != -1:
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 0, 'ERC20: insufficient allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            if arg3 < 5 * arg3 / 100:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3 - (5 * arg3 / 100):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (5 * arg3 / 100)
            if balanceOf[address(arg2)] > -arg3 + (5 * arg3 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (5 * arg3 / 100)
            emit Transfer((arg3 - (5 * arg3 / 100)), arg1, arg2);
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not sub_e7af92deAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < 5 * arg3 / 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= 5 * arg3 / 100
            if balanceOf[stor10] > -(5 * arg3 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[stor10] += 5 * arg3 / 100
            emit Transfer((5 * arg3 / 100), arg1, sub_e7af92deAddress);
        else:
            if stor19[address(arg1)][address(msg.sender)] < arg3:
                revert with 0, 'You do not have enough CRN'
            if arg3 <= 0:
                revert with 0, 'You do not have enough CRN'
            if bool(stor18[address(arg1)]) == 1:
                if allowance[address(arg1)][address(msg.sender)] != -1:
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 0, 'ERC20: insufficient allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg1 == stor6:
                    if allowance[address(arg1)][address(msg.sender)] != -1:
                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                            revert with 0, 'ERC20: insufficient allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg1 == stor7:
                        if allowance[address(arg1)][address(msg.sender)] != -1:
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 0, 'ERC20: insufficient allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            allowance[address(arg1)][address(msg.sender)] -= arg3
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg3 and tax > -1 / arg3:
                            revert with 'NH{q', 17
                        if allowance[address(arg1)][address(msg.sender)] != -1:
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 0, 'ERC20: insufficient allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            allowance[address(arg1)][address(msg.sender)] -= arg3
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        if arg3 < arg3 * tax / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 - (arg3 * tax / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * tax / 100)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 * tax / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * tax / 100)
                        emit Transfer((arg3 - (arg3 * tax / 100)), arg1, arg2);
                        if arg3 * tax / 100 and 65 > -1 / arg3 * tax / 100:
                            revert with 'NH{q', 17
                        if arg3 * tax / 100 < 65 * arg3 * tax / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not rewardPoolAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < 65 * arg3 * tax / 100 / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= 65 * arg3 * tax / 100 / 100
                        if balanceOf[stor9] > -(65 * arg3 * tax / 100 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor9] += 65 * arg3 * tax / 100 / 100
                        emit Transfer((65 * arg3 * tax / 100 / 100), arg1, rewardPoolAddress);
                        if arg3 * tax / 100 and 15 > -1 / arg3 * tax / 100:
                            revert with 'NH{q', 17
                        if (arg3 * tax / 100) - (65 * arg3 * tax / 100 / 100) < 15 * arg3 * tax / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not sub_11ffeaf2Address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < 15 * arg3 * tax / 100 / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= 15 * arg3 * tax / 100 / 100
                        if balanceOf[stor15] > -(15 * arg3 * tax / 100 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor15] += 15 * arg3 * tax / 100 / 100
                        emit Transfer((15 * arg3 * tax / 100 / 100), arg1, sub_11ffeaf2Address);
                        if arg3 * tax / 100 and 10 > -1 / arg3 * tax / 100:
                            revert with 'NH{q', 17
                        if (arg3 * tax / 100) - (65 * arg3 * tax / 100 / 100) - (15 * arg3 * tax / 100 / 100) < 10 * arg3 * tax / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not sub_e7af92deAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < 10 * arg3 * tax / 100 / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= 10 * arg3 * tax / 100 / 100
                        if balanceOf[stor10] > -(10 * arg3 * tax / 100 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor10] += 10 * arg3 * tax / 100 / 100
                        emit Transfer((10 * arg3 * tax / 100 / 100), arg1, sub_e7af92deAddress);
                        if arg3 * tax / 100 and 5 > -1 / arg3 * tax / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not marketingWalletAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < 5 * arg3 * tax / 100 / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= 5 * arg3 * tax / 100 / 100
                        if balanceOf[stor14] > -(5 * arg3 * tax / 100 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor14] += 5 * arg3 * tax / 100 / 100
                        emit Transfer((5 * arg3 * tax / 100 / 100), arg1, marketingWalletAddress);
                        if (arg3 * tax / 100) - (65 * arg3 * tax / 100 / 100) - (15 * arg3 * tax / 100 / 100) - (10 * arg3 * tax / 100 / 100) < 5 * arg3 * tax / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not teamWalletAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < (arg3 * tax / 100) - (65 * arg3 * tax / 100 / 100) - (15 * arg3 * tax / 100 / 100) - (10 * arg3 * tax / 100 / 100) - (5 * arg3 * tax / 100 / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * tax / 100) + (65 * arg3 * tax / 100 / 100) + (15 * arg3 * tax / 100 / 100) + (10 * arg3 * tax / 100 / 100) + (5 * arg3 * tax / 100 / 100)
                        if balanceOf[stor12] > -(arg3 * tax / 100) + (65 * arg3 * tax / 100 / 100) + (15 * arg3 * tax / 100 / 100) + (10 * arg3 * tax / 100 / 100) + (5 * arg3 * tax / 100 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor12] = balanceOf[stor12] + (arg3 * tax / 100) - (65 * arg3 * tax / 100 / 100) - (15 * arg3 * tax / 100 / 100) - (10 * arg3 * tax / 100 / 100) - (5 * arg3 * tax / 100 / 100)
                        emit Transfer(((arg3 * tax / 100) - (65 * arg3 * tax / 100 / 100) - (15 * arg3 * tax / 100 / 100) - (10 * arg3 * tax / 100 / 100) - (5 * arg3 * tax / 100 / 100)), arg1, teamWalletAddress);
    return 1
}



}
