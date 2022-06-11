contract main {




// =====================  Runtime code  =====================


const maxSupply = 15000000 * 10^18


address owner;
array of struct stor1;
array of struct stor2;
uint256 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 buyFee;
uint256 sellFee;
uint256 feeDenominator;
address feeReceiverAddress;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;

function feeDenominator() payable {
    return feeDenominator
}

function totalSupply() payable {
    return totalSupply
}

function sub_2a277833(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor12[arg1])
}

function sellFee() payable {
    return sellFee
}

function decimals() payable {
    return decimals
}

function isFeeExempt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[arg1])
}

function buyFee() payable {
    return buyFee
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_76a873e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[arg1])
}

function getOwner() payable {
    return owner
}

function feeReceiver() payable {
    return feeReceiverAddress
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    emit OwnershipTransferred(arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor13[address(arg1)] = uint8(arg2)
    emit 0xcff6d159: arg2, arg1
}

function sub_506c43b3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor11[address(arg1)] = uint8(bool(arg2))
    stor12[address(arg1)] = uint8(bool(arg3))
    emit 0x17e76435: bool(arg2), bool(arg3), address(arg1)
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if balanceOf[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += arg1
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    totalSupply += arg1
    if totalSupply > 15000000 * 10^18:
        revert with 'NH{q', 1
    emit Transfer(arg1, 0, msg.sender);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'Insufficient Balance'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function sub_b1c46c9f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > arg3 / 20:
        revert with 0, 'Total fee must not exceed 5%'
    buyFee = arg1
    sellFee = arg2
    feeDenominator = arg3
    feeReceiverAddress = address(arg4)
    emit 0xc1e43cd0: buyFee, sellFee, feeDenominator, feeReceiverAddress
}

function name() payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function symbol() payable {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'Insufficient Balance'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    if stor13[address(msg.sender)]:
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor13[address(arg1)]:
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if buyFee <= 0:
                if sellFee <= 0:
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if not stor12[address(arg1)]:
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if sellFee and arg2 > -1 / sellFee:
                            revert with 'NH{q', 17
                        if not feeDenominator:
                            revert with 'NH{q', 18
                        if 0 > -(sellFee * arg2 / feeDenominator) - 1:
                            revert with 'NH{q', 17
                        if sellFee * arg2 / feeDenominator <= 0:
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if balanceOf[stor10] > -(sellFee * arg2 / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor10] += sellFee * arg2 / feeDenominator
                            emit Transfer((sellFee * arg2 / feeDenominator), msg.sender, feeReceiverAddress);
                            if arg2 < sellFee * arg2 / feeDenominator:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] > -arg2 + (sellFee * arg2 / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (sellFee * arg2 / feeDenominator)
                            emit Transfer((arg2 - (sellFee * arg2 / feeDenominator)), msg.sender, arg1);
            else:
                if not stor11[address(msg.sender)]:
                    if sellFee <= 0:
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not stor12[address(arg1)]:
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if sellFee and arg2 > -1 / sellFee:
                                revert with 'NH{q', 17
                            if not feeDenominator:
                                revert with 'NH{q', 18
                            if 0 > -(sellFee * arg2 / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            if sellFee * arg2 / feeDenominator <= 0:
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if balanceOf[stor10] > -(sellFee * arg2 / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[stor10] += sellFee * arg2 / feeDenominator
                                emit Transfer((sellFee * arg2 / feeDenominator), msg.sender, feeReceiverAddress);
                                if arg2 < sellFee * arg2 / feeDenominator:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] > -arg2 + (sellFee * arg2 / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (sellFee * arg2 / feeDenominator)
                                emit Transfer((arg2 - (sellFee * arg2 / feeDenominator)), msg.sender, arg1);
                else:
                    if buyFee and arg2 > -1 / buyFee:
                        revert with 'NH{q', 17
                    if not feeDenominator:
                        revert with 'NH{q', 18
                    if 0 > -(buyFee * arg2 / feeDenominator) - 1:
                        revert with 'NH{q', 17
                    if sellFee <= 0:
                        if buyFee * arg2 / feeDenominator <= 0:
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if balanceOf[stor10] > -(buyFee * arg2 / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor10] += buyFee * arg2 / feeDenominator
                            emit Transfer((buyFee * arg2 / feeDenominator), msg.sender, feeReceiverAddress);
                            if arg2 < buyFee * arg2 / feeDenominator:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] > -arg2 + (buyFee * arg2 / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (buyFee * arg2 / feeDenominator)
                            emit Transfer((arg2 - (buyFee * arg2 / feeDenominator)), msg.sender, arg1);
                    else:
                        if not stor12[address(arg1)]:
                            if buyFee * arg2 / feeDenominator <= 0:
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if balanceOf[stor10] > -(buyFee * arg2 / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[stor10] += buyFee * arg2 / feeDenominator
                                emit Transfer((buyFee * arg2 / feeDenominator), msg.sender, feeReceiverAddress);
                                if arg2 < buyFee * arg2 / feeDenominator:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] > -arg2 + (buyFee * arg2 / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (buyFee * arg2 / feeDenominator)
                                emit Transfer((arg2 - (buyFee * arg2 / feeDenominator)), msg.sender, arg1);
                        else:
                            if sellFee and arg2 > -1 / sellFee:
                                revert with 'NH{q', 17
                            if not feeDenominator:
                                revert with 'NH{q', 18
                            if buyFee * arg2 / feeDenominator > -(sellFee * arg2 / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            if (buyFee * arg2 / feeDenominator) + (sellFee * arg2 / feeDenominator) <= 0:
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if balanceOf[stor10] > -(buyFee * arg2 / feeDenominator) + -(sellFee * arg2 / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[stor10] = balanceOf[stor10] + (buyFee * arg2 / feeDenominator) + (sellFee * arg2 / feeDenominator)
                                emit Transfer(((buyFee * arg2 / feeDenominator) + (sellFee * arg2 / feeDenominator)), msg.sender, feeReceiverAddress);
                                if arg2 < (buyFee * arg2 / feeDenominator) + (sellFee * arg2 / feeDenominator):
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] > -arg2 + (buyFee * arg2 / feeDenominator) + (sellFee * arg2 / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (buyFee * arg2 / feeDenominator) - (sellFee * arg2 / feeDenominator)
                                emit Transfer((arg2 - (buyFee * arg2 / feeDenominator) - (sellFee * arg2 / feeDenominator)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'Insufficient Allowance'
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'Insufficient Balance'
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg3
    if stor13[address(arg1)]:
        if balanceOf[address(arg2)] > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if stor13[address(arg2)]:
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if buyFee <= 0:
                if sellFee <= 0:
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if not stor12[address(arg2)]:
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if sellFee and arg3 > -1 / sellFee:
                            revert with 'NH{q', 17
                        if not feeDenominator:
                            revert with 'NH{q', 18
                        if 0 > -(sellFee * arg3 / feeDenominator) - 1:
                            revert with 'NH{q', 17
                        if sellFee * arg3 / feeDenominator <= 0:
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if balanceOf[stor10] > -(sellFee * arg3 / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor10] += sellFee * arg3 / feeDenominator
                            emit Transfer((sellFee * arg3 / feeDenominator), arg1, feeReceiverAddress);
                            if arg3 < sellFee * arg3 / feeDenominator:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] > -arg3 + (sellFee * arg3 / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (sellFee * arg3 / feeDenominator)
                            emit Transfer((arg3 - (sellFee * arg3 / feeDenominator)), arg1, arg2);
            else:
                if not stor11[address(arg1)]:
                    if sellFee <= 0:
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if not stor12[address(arg2)]:
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if sellFee and arg3 > -1 / sellFee:
                                revert with 'NH{q', 17
                            if not feeDenominator:
                                revert with 'NH{q', 18
                            if 0 > -(sellFee * arg3 / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            if sellFee * arg3 / feeDenominator <= 0:
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if balanceOf[stor10] > -(sellFee * arg3 / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[stor10] += sellFee * arg3 / feeDenominator
                                emit Transfer((sellFee * arg3 / feeDenominator), arg1, feeReceiverAddress);
                                if arg3 < sellFee * arg3 / feeDenominator:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 + (sellFee * arg3 / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (sellFee * arg3 / feeDenominator)
                                emit Transfer((arg3 - (sellFee * arg3 / feeDenominator)), arg1, arg2);
                else:
                    if buyFee and arg3 > -1 / buyFee:
                        revert with 'NH{q', 17
                    if not feeDenominator:
                        revert with 'NH{q', 18
                    if 0 > -(buyFee * arg3 / feeDenominator) - 1:
                        revert with 'NH{q', 17
                    if sellFee <= 0:
                        if buyFee * arg3 / feeDenominator <= 0:
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if balanceOf[stor10] > -(buyFee * arg3 / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor10] += buyFee * arg3 / feeDenominator
                            emit Transfer((buyFee * arg3 / feeDenominator), arg1, feeReceiverAddress);
                            if arg3 < buyFee * arg3 / feeDenominator:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] > -arg3 + (buyFee * arg3 / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (buyFee * arg3 / feeDenominator)
                            emit Transfer((arg3 - (buyFee * arg3 / feeDenominator)), arg1, arg2);
                    else:
                        if not stor12[address(arg2)]:
                            if buyFee * arg3 / feeDenominator <= 0:
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if balanceOf[stor10] > -(buyFee * arg3 / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[stor10] += buyFee * arg3 / feeDenominator
                                emit Transfer((buyFee * arg3 / feeDenominator), arg1, feeReceiverAddress);
                                if arg3 < buyFee * arg3 / feeDenominator:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 + (buyFee * arg3 / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (buyFee * arg3 / feeDenominator)
                                emit Transfer((arg3 - (buyFee * arg3 / feeDenominator)), arg1, arg2);
                        else:
                            if sellFee and arg3 > -1 / sellFee:
                                revert with 'NH{q', 17
                            if not feeDenominator:
                                revert with 'NH{q', 18
                            if buyFee * arg3 / feeDenominator > -(sellFee * arg3 / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            if (buyFee * arg3 / feeDenominator) + (sellFee * arg3 / feeDenominator) <= 0:
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if balanceOf[stor10] > -(buyFee * arg3 / feeDenominator) + -(sellFee * arg3 / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[stor10] = balanceOf[stor10] + (buyFee * arg3 / feeDenominator) + (sellFee * arg3 / feeDenominator)
                                emit Transfer(((buyFee * arg3 / feeDenominator) + (sellFee * arg3 / feeDenominator)), arg1, feeReceiverAddress);
                                if arg3 < (buyFee * arg3 / feeDenominator) + (sellFee * arg3 / feeDenominator):
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 + (buyFee * arg3 / feeDenominator) + (sellFee * arg3 / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (buyFee * arg3 / feeDenominator) - (sellFee * arg3 / feeDenominator)
                                emit Transfer((arg3 - (buyFee * arg3 / feeDenominator) - (sellFee * arg3 / feeDenominator)), arg1, arg2);
    return 1
}



}
