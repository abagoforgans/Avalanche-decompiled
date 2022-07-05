contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const decimals = 18


uint256 totalSupply;
array of struct stor1;
array of struct stor2;
mapping of uint256 balanceOf;
mapping of struct allowance;
uint8 stor5; offset 160
uint128 stor5; offset 160
address uniswapV2PairAddress;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint8 stor8;
uint8 stor8; offset 8
uint256 maxBuy;
uint256 sub_aff41b7b;
uint256 sub_99bf3266;
address stor12;
address stor13;
uint256 stor14;

function tradingEnable() {
    return bool(uint8(stor5.field_160))
}

function totalSupply() {
    return totalSupply
}

function isBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function maxBuy() {
    return maxBuy
}

function sub_99bf3266(?) {
    return sub_99bf3266
}

function sub_aff41b7b(?) {
    return sub_aff41b7b
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function sub_52e53988(?) {
    require calldata.size - 4 >= 32
    if stor12 != msg.sender:
        require stor13 == msg.sender
    stor14 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor12 != msg.sender:
        require stor13 == msg.sender
    stor12 = arg1
}

function sub_9b6f6d78(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor12 != msg.sender:
        require stor13 == msg.sender
    uint8(stor8.field_0) = uint8(bool(arg1))
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMaxBuy(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor12 != msg.sender:
        require stor13 == msg.sender
    if arg1 and totalSupply > -1 / arg1:
        revert with 0, 17
    maxBuy = arg1 * totalSupply / 1000
}

function withdraw() {
    if stor12 != msg.sender:
        require stor13 == msg.sender
    call stor13 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_acefa691(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    if stor12 != msg.sender:
        require stor13 == msg.sender
    Mask(96, 0, stor5.field_160) = Mask(96, 0, bool(arg1))
    uint8(stor8.field_0) = uint8(bool(arg2))
}

function getMaxBuy() {
    if block.timestamp < sub_99bf3266:
        revert with 0, 17
    if not block.timestamp - sub_99bf3266 / 120:
        return maxBuy
    if sub_aff41b7b and block.timestamp - sub_99bf3266 / 120 > -1 / sub_aff41b7b:
        revert with 0, 17
    if maxBuy > !(sub_aff41b7b * block.timestamp - sub_99bf3266 / 120):
        revert with 0, 17
    return (maxBuy + (sub_aff41b7b * block.timestamp - sub_99bf3266 / 120))
}

function setBots(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 == arg2
    if stor12 != msg.sender:
        require stor13 == msg.sender
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_6c90b57f(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] == bool(cd[36])
    if stor12 != msg.sender:
        require stor13 == msg.sender
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_b203919e(?) {
    if stor12 != msg.sender:
        require stor13 == msg.sender
    require not uniswapV2PairAddress
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    balanceOf[this.address] = totalSupply
    allowance[this.address][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = totalSupply
    stor7[address(ext_call.return_data[0])] = 1
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args this.address, totalSupply, 0, 0, msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    uniswapV2PairAddress = address(ext_call.return_data[0])
    uint8(stor5.field_160) = 1
    sub_99bf3266 = block.timestamp
    if totalSupply and 1 > -1 / totalSupply:
        revert with 0, 17
    sub_aff41b7b = totalSupply / 1000
}

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
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

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    if uniswapV2PairAddress != msg.sender:
        if uint8(stor8.field_8):
            require balanceOf[address(msg.sender)] >= arg2
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            balanceOf[arg1] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not uniswapV2PairAddress:
                require balanceOf[address(msg.sender)] >= arg2
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                balanceOf[arg1] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if uniswapV2PairAddress != arg1:
                    require balanceOf[address(msg.sender)] >= arg2
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[arg1] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2 <= balanceOf[address(stor5.field_0)] / 100:
                        if arg2 / 14 > !(arg2 / 20):
                            revert with 0, 17
                        if arg2 < (arg2 / 14) + (arg2 / 20):
                            revert with 0, 17
                        if arg2 / 14 > !(arg2 / 20):
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < (arg2 / 14) + (arg2 / 20):
                            revert with 0, 17
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 14) - (arg2 / 20)
                        if balanceOf[this.address] > !(arg2 / 14):
                            revert with 0, 17
                        balanceOf[this.address] += arg2 / 14
                        if totalSupply < arg2 / 20:
                            revert with 0, 17
                        totalSupply -= arg2 / 20
                        emit Transfer((arg2 / 20), this.address, 0);
                        if balanceOf[this.address]:
                            if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                revert with 0, 17
                            if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                if arg2 - (arg2 / 14) - (arg2 / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                uint8(stor8.field_8) = 1
                                mem[128] = this.address
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if balanceOf[this.address] <= 2 * arg2 - (arg2 / 14) - (arg2 / 20):
                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = balanceOf[this.address]
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                else:
                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 14) - (arg2 / 20))
                                    emit Approval((2 * arg2 - (arg2 / 14) - (arg2 / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 14) - (arg2 / 20)
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 2 * arg2 - (arg2 / 14) - (arg2 / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            else:
                                if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                    revert with 0, 17
                                totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                if arg2 - (arg2 / 14) - (arg2 / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                uint8(stor8.field_8) = 1
                                mem[128] = this.address
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 14) - (arg2 / 20):
                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                    emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                else:
                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 14) - (arg2 / 20))
                                    emit Approval((2 * arg2 - (arg2 / 14) - (arg2 / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 14) - (arg2 / 20)
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 2 * arg2 - (arg2 / 14) - (arg2 / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor8.field_8) = 0
                        require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 14) - (arg2 / 20)
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 14) + (arg2 / 20)
                        if balanceOf[arg1] > !(arg2 - (arg2 / 14) - (arg2 / 20)):
                            revert with 0, 17
                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 / 14) - (arg2 / 20)
                        emit Transfer((arg2 - (arg2 / 14) - (arg2 / 20)), msg.sender, arg1);
                    else:
                        if arg2 > balanceOf[address(stor5.field_0)] / 10:
                            if arg2 > 0x750750750750750750750750750750750750750750750750750750750750750:
                                revert with 0, 17
                            if arg2 / 14 > !(35 * arg2 / 100):
                                revert with 0, 17
                            if arg2 < (arg2 / 14) + (35 * arg2 / 100):
                                revert with 0, 17
                            if arg2 / 14 > !(35 * arg2 / 100):
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < (arg2 / 14) + (35 * arg2 / 100):
                                revert with 0, 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 14) - (35 * arg2 / 100)
                            if balanceOf[this.address] > !(arg2 / 14):
                                revert with 0, 17
                            balanceOf[this.address] += arg2 / 14
                            if totalSupply < 35 * arg2 / 100:
                                revert with 0, 17
                            totalSupply -= 35 * arg2 / 100
                            emit Transfer((35 * arg2 / 100), this.address, 0);
                            if balanceOf[this.address]:
                                if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                    revert with 0, 17
                                if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                    if arg2 - (arg2 / 14) - (35 * arg2 / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor8.field_8) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if balanceOf[this.address] <= 2 * arg2 - (arg2 / 14) - (35 * arg2 / 100):
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[this.address]
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 14) - (35 * arg2 / 100))
                                        emit Approval((2 * arg2 - (arg2 / 14) - (35 * arg2 / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 14) - (35 * arg2 / 100)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 14) - (35 * arg2 / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                else:
                                    if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                        revert with 0, 17
                                    totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                    emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                    if arg2 - (arg2 / 14) - (35 * arg2 / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor8.field_8) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 14) - (35 * arg2 / 100):
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 14) - (35 * arg2 / 100))
                                        emit Approval((2 * arg2 - (arg2 / 14) - (35 * arg2 / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 14) - (35 * arg2 / 100)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 14) - (35 * arg2 / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor8.field_8) = 0
                            require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 14) - (35 * arg2 / 100)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 14) + (35 * arg2 / 100)
                            if balanceOf[arg1] > !(arg2 - (arg2 / 14) - (35 * arg2 / 100)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 / 14) - (35 * arg2 / 100)
                            emit Transfer((arg2 - (arg2 / 14) - (35 * arg2 / 100)), msg.sender, arg1);
                        else:
                            if balanceOf[address(stor5.field_0)] / 10 < balanceOf[address(stor5.field_0)] / 100:
                                revert with 0, 17
                            if arg2 < balanceOf[address(stor5.field_0)] / 100:
                                revert with 0, 17
                            if arg2 - (balanceOf[address(stor5.field_0)] / 100) > 0x750750750750750750750750750750750750750750750750750750750750750:
                                revert with 0, 17
                            if (35 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100) and arg2 > -1 / (35 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100):
                                revert with 0, 17
                            if not (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100):
                                revert with 0, 18
                            if arg2 / 14 > !((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                revert with 0, 17
                            if arg2 < (arg2 / 14) + ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                revert with 0, 17
                            if arg2 / 14 > !((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < (arg2 / 14) + ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                revert with 0, 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                            if balanceOf[this.address] > !(arg2 / 14):
                                revert with 0, 17
                            balanceOf[this.address] += arg2 / 14
                            if totalSupply < (35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100:
                                revert with 0, 17
                            totalSupply -= (35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100
                            emit Transfer(((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), this.address, 0);
                            if balanceOf[this.address]:
                                if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                    revert with 0, 17
                                if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                    if arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor8.field_8) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if balanceOf[this.address] <= 2 * arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[this.address]
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                        emit Approval((2 * arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                else:
                                    if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                        revert with 0, 17
                                    totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                    emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                    if arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor8.field_8) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                        emit Approval((2 * arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor8.field_8) = 0
                            require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 14) + ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                            if balanceOf[arg1] > !(arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                            emit Transfer((arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), msg.sender, arg1);
    else:
        if stor7[address(arg1)]:
            if uint8(stor8.field_8):
                require balanceOf[address(msg.sender)] >= arg2
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                balanceOf[arg1] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not uniswapV2PairAddress:
                    require balanceOf[address(msg.sender)] >= arg2
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[arg1] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if uniswapV2PairAddress != arg1:
                        require balanceOf[address(msg.sender)] >= arg2
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2 <= balanceOf[address(stor5.field_0)] / 100:
                            if arg2 / 14 > !(arg2 / 20):
                                revert with 0, 17
                            if arg2 < (arg2 / 14) + (arg2 / 20):
                                revert with 0, 17
                            if arg2 / 14 > !(arg2 / 20):
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < (arg2 / 14) + (arg2 / 20):
                                revert with 0, 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 14) - (arg2 / 20)
                            if balanceOf[this.address] > !(arg2 / 14):
                                revert with 0, 17
                            balanceOf[this.address] += arg2 / 14
                            if totalSupply < arg2 / 20:
                                revert with 0, 17
                            totalSupply -= arg2 / 20
                            emit Transfer((arg2 / 20), this.address, 0);
                            if balanceOf[this.address]:
                                if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                    revert with 0, 17
                                if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                    if arg2 - (arg2 / 14) - (arg2 / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor8.field_8) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if balanceOf[this.address] <= 2 * arg2 - (arg2 / 14) - (arg2 / 20):
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[this.address]
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 14) - (arg2 / 20))
                                        emit Approval((2 * arg2 - (arg2 / 14) - (arg2 / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 14) - (arg2 / 20)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 14) - (arg2 / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                else:
                                    if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                        revert with 0, 17
                                    totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                    emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                    if arg2 - (arg2 / 14) - (arg2 / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor8.field_8) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 14) - (arg2 / 20):
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 14) - (arg2 / 20))
                                        emit Approval((2 * arg2 - (arg2 / 14) - (arg2 / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 14) - (arg2 / 20)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 14) - (arg2 / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor8.field_8) = 0
                            require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 14) - (arg2 / 20)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 14) + (arg2 / 20)
                            if balanceOf[arg1] > !(arg2 - (arg2 / 14) - (arg2 / 20)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 / 14) - (arg2 / 20)
                            emit Transfer((arg2 - (arg2 / 14) - (arg2 / 20)), msg.sender, arg1);
                        else:
                            if arg2 > balanceOf[address(stor5.field_0)] / 10:
                                if arg2 > 0x750750750750750750750750750750750750750750750750750750750750750:
                                    revert with 0, 17
                                if arg2 / 14 > !(35 * arg2 / 100):
                                    revert with 0, 17
                                if arg2 < (arg2 / 14) + (35 * arg2 / 100):
                                    revert with 0, 17
                                if arg2 / 14 > !(35 * arg2 / 100):
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < (arg2 / 14) + (35 * arg2 / 100):
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 14) - (35 * arg2 / 100)
                                if balanceOf[this.address] > !(arg2 / 14):
                                    revert with 0, 17
                                balanceOf[this.address] += arg2 / 14
                                if totalSupply < 35 * arg2 / 100:
                                    revert with 0, 17
                                totalSupply -= 35 * arg2 / 100
                                emit Transfer((35 * arg2 / 100), this.address, 0);
                                if balanceOf[this.address]:
                                    if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                        revert with 0, 17
                                    if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                        if arg2 - (arg2 / 14) - (35 * arg2 / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        if balanceOf[this.address] <= 2 * arg2 - (arg2 / 14) - (35 * arg2 / 100):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address]
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 14) - (35 * arg2 / 100))
                                            emit Approval((2 * arg2 - (arg2 / 14) - (35 * arg2 / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 14) - (35 * arg2 / 100)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 14) - (35 * arg2 / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                            revert with 0, 17
                                        totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                        emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                        if arg2 - (arg2 / 14) - (35 * arg2 / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 14) - (35 * arg2 / 100):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 14) - (35 * arg2 / 100))
                                            emit Approval((2 * arg2 - (arg2 / 14) - (35 * arg2 / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 14) - (35 * arg2 / 100)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 14) - (35 * arg2 / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor8.field_8) = 0
                                require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 14) - (35 * arg2 / 100)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 14) + (35 * arg2 / 100)
                                if balanceOf[arg1] > !(arg2 - (arg2 / 14) - (35 * arg2 / 100)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 / 14) - (35 * arg2 / 100)
                                emit Transfer((arg2 - (arg2 / 14) - (35 * arg2 / 100)), msg.sender, arg1);
                            else:
                                if balanceOf[address(stor5.field_0)] / 10 < balanceOf[address(stor5.field_0)] / 100:
                                    revert with 0, 17
                                if arg2 < balanceOf[address(stor5.field_0)] / 100:
                                    revert with 0, 17
                                if arg2 - (balanceOf[address(stor5.field_0)] / 100) > 0x750750750750750750750750750750750750750750750750750750750750750:
                                    revert with 0, 17
                                if (35 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100) and arg2 > -1 / (35 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100):
                                    revert with 0, 17
                                if not (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100):
                                    revert with 0, 18
                                if arg2 / 14 > !((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                    revert with 0, 17
                                if arg2 < (arg2 / 14) + ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                    revert with 0, 17
                                if arg2 / 14 > !((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < (arg2 / 14) + ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                if balanceOf[this.address] > !(arg2 / 14):
                                    revert with 0, 17
                                balanceOf[this.address] += arg2 / 14
                                if totalSupply < (35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100:
                                    revert with 0, 17
                                totalSupply -= (35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100
                                emit Transfer(((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), this.address, 0);
                                if balanceOf[this.address]:
                                    if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                        revert with 0, 17
                                    if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                        if arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        if balanceOf[this.address] <= 2 * arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address]
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                            emit Approval((2 * arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                            revert with 0, 17
                                        totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                        emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                        if arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                            emit Approval((2 * arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor8.field_8) = 0
                                require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 14) + ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                if balanceOf[arg1] > !(arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                emit Transfer((arg2 - (arg2 / 14) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), msg.sender, arg1);
        else:
            if block.timestamp < sub_99bf3266:
                revert with 0, 17
            if block.timestamp - sub_99bf3266 / 120:
                if maxBuy < totalSupply:
                    if sub_aff41b7b and block.timestamp - sub_99bf3266 / 120 > -1 / sub_aff41b7b:
                        revert with 0, 17
                    if maxBuy > !(sub_aff41b7b * block.timestamp - sub_99bf3266 / 120):
                        revert with 0, 17
                    maxBuy += sub_aff41b7b * block.timestamp - sub_99bf3266 / 120
                sub_99bf3266 = block.timestamp
            require uint8(stor5.field_160)
            if uint8(stor8.field_0):
                stor6[address(arg1)] = 1
            else:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                require balanceOf[address(arg1)] + arg2 <= maxBuy
                if uint8(stor8.field_0):
                    stor6[address(arg1)] = 1
            if arg2 < arg2 / 11:
                revert with 0, 17
            if balanceOf[this.address] > !(arg2 / 11):
                revert with 0, 17
            balanceOf[this.address] += arg2 / 11
            if uint8(stor8.field_8):
                require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 11)
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 11)
                if balanceOf[arg1] > !(arg2 - (arg2 / 11)):
                    revert with 0, 17
                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 / 11)
                emit Transfer((arg2 - (arg2 / 11)), msg.sender, arg1);
            else:
                if not uniswapV2PairAddress:
                    require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 11)
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 11)
                    if balanceOf[arg1] > !(arg2 - (arg2 / 11)):
                        revert with 0, 17
                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 / 11)
                    emit Transfer((arg2 - (arg2 / 11)), msg.sender, arg1);
                else:
                    if uniswapV2PairAddress != arg1:
                        require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 11)
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 11)
                        if balanceOf[arg1] > !(arg2 - (arg2 / 11)):
                            revert with 0, 17
                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 / 11)
                        emit Transfer((arg2 - (arg2 / 11)), msg.sender, arg1);
                    else:
                        if arg2 - (arg2 / 11) <= balanceOf[address(stor5.field_0)] / 100:
                            if arg2 - (arg2 / 11) / 14 > !(arg2 - (arg2 / 11) / 20):
                                revert with 0, 17
                            if arg2 - (arg2 / 11) < (arg2 - (arg2 / 11) / 14) + (arg2 - (arg2 / 11) / 20):
                                revert with 0, 17
                            if arg2 - (arg2 / 11) / 14 > !(arg2 - (arg2 / 11) / 20):
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < (arg2 - (arg2 / 11) / 14) + (arg2 - (arg2 / 11) / 20):
                                revert with 0, 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20)
                            if balanceOf[this.address] > !(arg2 - (arg2 / 11) / 14):
                                revert with 0, 17
                            balanceOf[this.address] += arg2 - (arg2 / 11) / 14
                            if totalSupply < arg2 - (arg2 / 11) / 20:
                                revert with 0, 17
                            totalSupply -= arg2 - (arg2 / 11) / 20
                            emit Transfer((arg2 - (arg2 / 11) / 20), this.address, 0);
                            if balanceOf[this.address]:
                                if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                    revert with 0, 17
                                if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                    if arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor8.field_8) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if balanceOf[this.address] <= 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20):
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[this.address]
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20))
                                        emit Approval((2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                else:
                                    if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                        revert with 0, 17
                                    totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                    emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                    if arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor8.field_8) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20):
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20))
                                        emit Approval((2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor8.field_8) = 0
                            require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 11) + (arg2 - (arg2 / 11) / 14) + (arg2 - (arg2 / 11) / 20)
                            if balanceOf[arg1] > !(arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20)
                            emit Transfer((arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - (arg2 - (arg2 / 11) / 20)), msg.sender, arg1);
                        else:
                            if arg2 - (arg2 / 11) > balanceOf[address(stor5.field_0)] / 10:
                                if arg2 - (arg2 / 11) > 0x750750750750750750750750750750750750750750750750750750750750750:
                                    revert with 0, 17
                                if arg2 - (arg2 / 11) / 14 > !((35 * arg2) - (35 * arg2 / 11) / 100):
                                    revert with 0, 17
                                if arg2 - (arg2 / 11) < (arg2 - (arg2 / 11) / 14) + ((35 * arg2) - (35 * arg2 / 11) / 100):
                                    revert with 0, 17
                                if arg2 - (arg2 / 11) / 14 > !((35 * arg2) - (35 * arg2 / 11) / 100):
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < (arg2 - (arg2 / 11) / 14) + ((35 * arg2) - (35 * arg2 / 11) / 100):
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100)
                                if balanceOf[this.address] > !(arg2 - (arg2 / 11) / 14):
                                    revert with 0, 17
                                balanceOf[this.address] += arg2 - (arg2 / 11) / 14
                                if totalSupply < (35 * arg2) - (35 * arg2 / 11) / 100:
                                    revert with 0, 17
                                totalSupply -= (35 * arg2) - (35 * arg2 / 11) / 100
                                emit Transfer(((35 * arg2) - (35 * arg2 / 11) / 100), this.address, 0);
                                if balanceOf[this.address]:
                                    if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                        revert with 0, 17
                                    if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                        if arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        if balanceOf[this.address] <= 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address]
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100))
                                            emit Approval((2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                            revert with 0, 17
                                        totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                        emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                        if arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100))
                                            emit Approval((2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor8.field_8) = 0
                                require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 11) + (arg2 - (arg2 / 11) / 14) + ((35 * arg2) - (35 * arg2 / 11) / 100)
                                if balanceOf[arg1] > !(arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100)
                                emit Transfer((arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2) - (35 * arg2 / 11) / 100)), msg.sender, arg1);
                            else:
                                if balanceOf[address(stor5.field_0)] / 10 < balanceOf[address(stor5.field_0)] / 100:
                                    revert with 0, 17
                                if arg2 - (arg2 / 11) < balanceOf[address(stor5.field_0)] / 100:
                                    revert with 0, 17
                                if arg2 - (arg2 / 11) - (balanceOf[address(stor5.field_0)] / 100) > 0x750750750750750750750750750750750750750750750750750750750750750:
                                    revert with 0, 17
                                if (35 * arg2) - (35 * arg2 / 11) - (35 * balanceOf[address(stor5.field_0)] / 100) and arg2 - (arg2 / 11) > -1 / (35 * arg2) - (35 * arg2 / 11) - (35 * balanceOf[address(stor5.field_0)] / 100):
                                    revert with 0, 17
                                if not (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100):
                                    revert with 0, 18
                                if arg2 - (arg2 / 11) / 14 > !((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                    revert with 0, 17
                                if arg2 - (arg2 / 11) < (arg2 - (arg2 / 11) / 14) + ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                    revert with 0, 17
                                if arg2 - (arg2 / 11) / 14 > !((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < (arg2 - (arg2 / 11) / 14) + ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                if balanceOf[this.address] > !(arg2 - (arg2 / 11) / 14):
                                    revert with 0, 17
                                balanceOf[this.address] += arg2 - (arg2 / 11) / 14
                                if totalSupply < (35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100:
                                    revert with 0, 17
                                totalSupply -= (35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100
                                emit Transfer(((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), this.address, 0);
                                if balanceOf[this.address]:
                                    if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                        revert with 0, 17
                                    if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                        if arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        if balanceOf[this.address] <= 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address]
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                            emit Approval((2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                            revert with 0, 17
                                        totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                        emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                        if arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                            emit Approval((2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor8.field_8) = 0
                                require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 11) + (arg2 - (arg2 / 11) / 14) + ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                if balanceOf[arg1] > !(arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                emit Transfer((arg2 - (arg2 / 11) - (arg2 - (arg2 / 11) / 14) - ((35 * arg2 * arg2) - (35 * arg2 / 11 * arg2) - (35 * arg2 * arg2 / 11) + (35 * arg2 / 11 * arg2 / 11) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x70db69d6(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xa9059cbb(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x70db69d6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return maxBuy
            if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if bool(stor2.length):
                    if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor2.length):
                        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor2.length):
                            if 31 < uint255(stor2.length) * 0.5:
                                mem[160] = uint256(stor2.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor2.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor2.length), data=mem[160 len ceil32(uint255(stor2.length) * 0.5)])
                            mem[160] = 256 * stor2.length.field_8
                    else:
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 0, 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[160] = uint256(stor2.field_0)
                                idx = 160
                                s = 0
                                while stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor2.length), data=mem[160 len ceil32(uint255(stor2.length) * 0.5)])
                            mem[160] = 256 * stor2.length.field_8
                    mem[ceil32(uint255(stor2.length) * 0.5) + 224 len ceil32(uint255(stor2.length) * 0.5)] = mem[160 len ceil32(uint255(stor2.length) * 0.5)]
                    if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[160 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor2.length):
                    if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor2.length):
                        if 31 < uint255(stor2.length) * 0.5:
                            mem[160] = uint256(stor2.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor2.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor2[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor2.length % 128, data=mem[160 len ceil32(stor2.length.field_1)])
                        mem[160] = 256 * stor2.length.field_8
                else:
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 0, 34
                    if stor2.length.field_1:
                        if 31 < stor2.length.field_1:
                            mem[160] = uint256(stor2.field_0)
                            idx = 160
                            s = 0
                            while stor2.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor2[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor2.length % 128, data=mem[160 len ceil32(stor2.length.field_1)])
                        mem[160] = 256 * stor2.length.field_8
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[160 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) > stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                return Array(len=stor2.length % 128, data=mem[160 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
            if unknown_0x96790d4a(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if block.timestamp < sub_99bf3266:
                    revert with 0, 17
                if not block.timestamp - sub_99bf3266 / 120:
                    return maxBuy
                if sub_aff41b7b and block.timestamp - sub_99bf3266 / 120 > -1 / sub_aff41b7b:
                    revert with 0, 17
                if maxBuy > !(sub_aff41b7b * block.timestamp - sub_99bf3266 / 120):
                    revert with 0, 17
                return (maxBuy + (sub_aff41b7b * block.timestamp - sub_99bf3266 / 120))
            if unknown_0x99bf3266(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_99bf3266
            if unknown_0x9b6f6d78(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == bool(cd[4])
                if stor12 != msg.sender:
                    require stor13 == msg.sender
                uint8(stor8.field_0) = uint8(bool(cd[4]))
            else:
                require unknown_0x9c0db5f3(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 > test266151307() or ceil32(32 * ('cd', 4).length) + 129 < 128:
                    revert with 0, 65
                require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                s = cd[4] + 36
                t = 160
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                require cd[36] == bool(cd[36])
                if stor12 != msg.sender:
                    require stor13 == msg.sender
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 172 len 20]
                    mem[32] = 6
                    stor6[mem[(32 * idx) + 172 len 20]] = uint8(bool(cd[36]))
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        if unknown_0xb203919e(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0xb203919e(?????):
                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    return allowance[address(cd[4])][address(cd[36])].field_0
                if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if stor12 != msg.sender:
                        require stor13 == msg.sender
                    stor12 = address(cd[4])
                else:
                    require unknown_0xf53bc835(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if stor12 != msg.sender:
                        require stor13 == msg.sender
                    if cd[4] and totalSupply > -1 / cd[4]:
                        revert with 0, 17
                    maxBuy = cd[4] * totalSupply / 1000
            else:
                require not msg.value
                if stor12 != msg.sender:
                    require stor13 == msg.sender
                require not uniswapV2PairAddress
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args address(this.address), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                balanceOf[this.address] = totalSupply
                allowance[this.address][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = totalSupply
                stor7[address(ext_call.return_data[0])] = 1
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args this.address, totalSupply, 0, 0, msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                uniswapV2PairAddress = address(ext_call.return_data[0])
                uint8(stor5.field_160) = 1
                sub_99bf3266 = block.timestamp
                if totalSupply and 1 > -1 / totalSupply:
                    revert with 0, 17
                sub_aff41b7b = totalSupply / 1000
        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
            if uint32(call.func_hash) >> 224 != unknown_0xacefa691(?????):
                require unknown_0xaff41b7b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_aff41b7b
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == bool(cd[4])
            require cd[36] == bool(cd[36])
            if stor12 != msg.sender:
                require stor13 == msg.sender
            Mask(96, 0, stor5.field_160) = Mask(96, 0, bool(cd[4]))
            uint8(stor8.field_0) = uint8(bool(cd[36]))
        require not msg.value
        require calldata.size - 4 >= 64
        require cd[4] == address(cd[4])
        require not stor6[address(msg.sender)]
        require not stor6[address(cd[4])]
        if uniswapV2PairAddress != msg.sender:
            if uint8(stor8.field_8):
                require balanceOf[address(msg.sender)] >= cd[36]
                balanceOf[address(msg.sender)] -= cd[36]
                if balanceOf[address(cd[4])] > !cd[36]:
                    revert with 0, 17
                balanceOf[address(cd[4])] += cd[36]
                emit Transfer(cd[36], msg.sender, address(cd[4]));
            else:
                if not uniswapV2PairAddress:
                    require balanceOf[address(msg.sender)] >= cd[36]
                    balanceOf[address(msg.sender)] -= cd[36]
                    if balanceOf[address(cd[4])] > !cd[36]:
                        revert with 0, 17
                    balanceOf[address(cd[4])] += cd[36]
                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                else:
                    if uniswapV2PairAddress != address(cd[4]):
                        require balanceOf[address(msg.sender)] >= cd[36]
                        balanceOf[address(msg.sender)] -= cd[36]
                        if balanceOf[address(cd[4])] > !cd[36]:
                            revert with 0, 17
                        balanceOf[address(cd[4])] += cd[36]
                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                    else:
                        if cd[36] <= balanceOf[address(stor5.field_0)] / 100:
                            if cd[36] / 14 > !(cd[36] / 20):
                                revert with 0, 17
                            if cd[36] < (cd[36] / 14) + (cd[36] / 20):
                                revert with 0, 17
                            if cd[36] / 14 > !(cd[36] / 20):
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < (cd[36] / 14) + (cd[36] / 20):
                                revert with 0, 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (cd[36] / 14) - (cd[36] / 20)
                            if balanceOf[this.address] > !(cd[36] / 14):
                                revert with 0, 17
                            balanceOf[this.address] += cd[36] / 14
                            if totalSupply < cd[36] / 20:
                                revert with 0, 17
                            totalSupply -= cd[36] / 20
                            emit Transfer((cd[36] / 20), this.address, 0);
                            if balanceOf[this.address]:
                                if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                    revert with 0, 17
                                if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                    if cd[36] - (cd[36] / 14) - (cd[36] / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor8.field_8) = 1
                                    mem[160] = this.address
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                            gas gas_remaining wei
                                    mem[224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[192] = ext_call.return_data[12 len 20]
                                    if balanceOf[this.address] <= 2 * cd[36] - (cd[36] / 14) - (cd[36] / 20):
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                        idx = 0
                                        s = ceil32(return_data.size) + 420
                                        t = 160
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    else:
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 14) - (cd[36] / 20))
                                        emit Approval((2 * cd[36] - (cd[36] / 14) - (cd[36] / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 14) - (cd[36] / 20)
                                        idx = 0
                                        s = ceil32(return_data.size) + 420
                                        t = 160
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * cd[36] - (cd[36] / 14) - (cd[36] / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                else:
                                    if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                        revert with 0, 17
                                    totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                    emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                    if cd[36] - (cd[36] / 14) - (cd[36] / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor8.field_8) = 1
                                    mem[160] = this.address
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                            gas gas_remaining wei
                                    mem[224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[192] = ext_call.return_data[12 len 20]
                                    if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[36] - (cd[36] / 14) - (cd[36] / 20):
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        idx = 0
                                        s = ceil32(return_data.size) + 420
                                        t = 160
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    else:
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 14) - (cd[36] / 20))
                                        emit Approval((2 * cd[36] - (cd[36] / 14) - (cd[36] / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                        mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 14) - (cd[36] / 20)
                                        idx = 0
                                        s = ceil32(return_data.size) + 420
                                        t = 160
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * cd[36] - (cd[36] / 14) - (cd[36] / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor8.field_8) = 0
                            require balanceOf[address(msg.sender)] >= cd[36] - (cd[36] / 14) - (cd[36] / 20)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] / 14) + (cd[36] / 20)
                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] / 14) - (cd[36] / 20)):
                                revert with 0, 17
                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] / 14) - (cd[36] / 20)
                            emit Transfer((cd[36] - (cd[36] / 14) - (cd[36] / 20)), msg.sender, address(cd[4]));
                        else:
                            if cd[36] > balanceOf[address(stor5.field_0)] / 10:
                                if cd[36] > 0x750750750750750750750750750750750750750750750750750750750750750:
                                    revert with 0, 17
                                if cd[36] / 14 > !(35 * cd[36] / 100):
                                    revert with 0, 17
                                if cd[36] < (cd[36] / 14) + (35 * cd[36] / 100):
                                    revert with 0, 17
                                if cd[36] / 14 > !(35 * cd[36] / 100):
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < (cd[36] / 14) + (35 * cd[36] / 100):
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (cd[36] / 14) - (35 * cd[36] / 100)
                                if balanceOf[this.address] > !(cd[36] / 14):
                                    revert with 0, 17
                                balanceOf[this.address] += cd[36] / 14
                                if totalSupply < 35 * cd[36] / 100:
                                    revert with 0, 17
                                totalSupply -= 35 * cd[36] / 100
                                emit Transfer((35 * cd[36] / 100), this.address, 0);
                                if balanceOf[this.address]:
                                    if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                        revert with 0, 17
                                    if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                        if cd[36] - (cd[36] / 14) - (35 * cd[36] / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[160] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        if balanceOf[this.address] <= 2 * cd[36] - (cd[36] / 14) - (35 * cd[36] / 100):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 14) - (35 * cd[36] / 100))
                                            emit Approval((2 * cd[36] - (cd[36] / 14) - (35 * cd[36] / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 14) - (35 * cd[36] / 100)
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * cd[36] - (cd[36] / 14) - (35 * cd[36] / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    else:
                                        if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                            revert with 0, 17
                                        totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                        emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                        if cd[36] - (cd[36] / 14) - (35 * cd[36] / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[160] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[36] - (cd[36] / 14) - (35 * cd[36] / 100):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 14) - (35 * cd[36] / 100))
                                            emit Approval((2 * cd[36] - (cd[36] / 14) - (35 * cd[36] / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 14) - (35 * cd[36] / 100)
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * cd[36] - (cd[36] / 14) - (35 * cd[36] / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor8.field_8) = 0
                                require balanceOf[address(msg.sender)] >= cd[36] - (cd[36] / 14) - (35 * cd[36] / 100)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] / 14) + (35 * cd[36] / 100)
                                if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] / 14) - (35 * cd[36] / 100)):
                                    revert with 0, 17
                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] / 14) - (35 * cd[36] / 100)
                                emit Transfer((cd[36] - (cd[36] / 14) - (35 * cd[36] / 100)), msg.sender, address(cd[4]));
                            else:
                                if balanceOf[address(stor5.field_0)] / 10 < balanceOf[address(stor5.field_0)] / 100:
                                    revert with 0, 17
                                if cd[36] < balanceOf[address(stor5.field_0)] / 100:
                                    revert with 0, 17
                                if cd[36] - (balanceOf[address(stor5.field_0)] / 100) > 0x750750750750750750750750750750750750750750750750750750750750750:
                                    revert with 0, 17
                                if (35 * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100) and cd[36] > -1 / (35 * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100):
                                    revert with 0, 17
                                if not (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100):
                                    revert with 0, 18
                                if cd[36] / 14 > !((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                    revert with 0, 17
                                if cd[36] < (cd[36] / 14) + ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                    revert with 0, 17
                                if cd[36] / 14 > !((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < (cd[36] / 14) + ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                if balanceOf[this.address] > !(cd[36] / 14):
                                    revert with 0, 17
                                balanceOf[this.address] += cd[36] / 14
                                if totalSupply < (35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100:
                                    revert with 0, 17
                                totalSupply -= (35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100
                                emit Transfer(((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), this.address, 0);
                                if balanceOf[this.address]:
                                    if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                        revert with 0, 17
                                    if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                        if cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[160] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        if balanceOf[this.address] <= 2 * cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                            emit Approval((2 * cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    else:
                                        if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                            revert with 0, 17
                                        totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                        emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                        if cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[160] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                            emit Approval((2 * cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor8.field_8) = 0
                                require balanceOf[address(msg.sender)] >= cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] / 14) + ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)):
                                    revert with 0, 17
                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                emit Transfer((cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), msg.sender, address(cd[4]));
        else:
            if stor7[address(cd[4])]:
                if uint8(stor8.field_8):
                    require balanceOf[address(msg.sender)] >= cd[36]
                    balanceOf[address(msg.sender)] -= cd[36]
                    if balanceOf[address(cd[4])] > !cd[36]:
                        revert with 0, 17
                    balanceOf[address(cd[4])] += cd[36]
                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                else:
                    if not uniswapV2PairAddress:
                        require balanceOf[address(msg.sender)] >= cd[36]
                        balanceOf[address(msg.sender)] -= cd[36]
                        if balanceOf[address(cd[4])] > !cd[36]:
                            revert with 0, 17
                        balanceOf[address(cd[4])] += cd[36]
                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                    else:
                        if uniswapV2PairAddress != address(cd[4]):
                            require balanceOf[address(msg.sender)] >= cd[36]
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if cd[36] <= balanceOf[address(stor5.field_0)] / 100:
                                if cd[36] / 14 > !(cd[36] / 20):
                                    revert with 0, 17
                                if cd[36] < (cd[36] / 14) + (cd[36] / 20):
                                    revert with 0, 17
                                if cd[36] / 14 > !(cd[36] / 20):
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < (cd[36] / 14) + (cd[36] / 20):
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (cd[36] / 14) - (cd[36] / 20)
                                if balanceOf[this.address] > !(cd[36] / 14):
                                    revert with 0, 17
                                balanceOf[this.address] += cd[36] / 14
                                if totalSupply < cd[36] / 20:
                                    revert with 0, 17
                                totalSupply -= cd[36] / 20
                                emit Transfer((cd[36] / 20), this.address, 0);
                                if balanceOf[this.address]:
                                    if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                        revert with 0, 17
                                    if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                        if cd[36] - (cd[36] / 14) - (cd[36] / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[160] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        if balanceOf[this.address] <= 2 * cd[36] - (cd[36] / 14) - (cd[36] / 20):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 14) - (cd[36] / 20))
                                            emit Approval((2 * cd[36] - (cd[36] / 14) - (cd[36] / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 14) - (cd[36] / 20)
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * cd[36] - (cd[36] / 14) - (cd[36] / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    else:
                                        if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                            revert with 0, 17
                                        totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                        emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                        if cd[36] - (cd[36] / 14) - (cd[36] / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[160] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[36] - (cd[36] / 14) - (cd[36] / 20):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 14) - (cd[36] / 20))
                                            emit Approval((2 * cd[36] - (cd[36] / 14) - (cd[36] / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 14) - (cd[36] / 20)
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * cd[36] - (cd[36] / 14) - (cd[36] / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor8.field_8) = 0
                                require balanceOf[address(msg.sender)] >= cd[36] - (cd[36] / 14) - (cd[36] / 20)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] / 14) + (cd[36] / 20)
                                if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] / 14) - (cd[36] / 20)):
                                    revert with 0, 17
                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] / 14) - (cd[36] / 20)
                                emit Transfer((cd[36] - (cd[36] / 14) - (cd[36] / 20)), msg.sender, address(cd[4]));
                            else:
                                if cd[36] > balanceOf[address(stor5.field_0)] / 10:
                                    if cd[36] > 0x750750750750750750750750750750750750750750750750750750750750750:
                                        revert with 0, 17
                                    if cd[36] / 14 > !(35 * cd[36] / 100):
                                        revert with 0, 17
                                    if cd[36] < (cd[36] / 14) + (35 * cd[36] / 100):
                                        revert with 0, 17
                                    if cd[36] / 14 > !(35 * cd[36] / 100):
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < (cd[36] / 14) + (35 * cd[36] / 100):
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (cd[36] / 14) - (35 * cd[36] / 100)
                                    if balanceOf[this.address] > !(cd[36] / 14):
                                        revert with 0, 17
                                    balanceOf[this.address] += cd[36] / 14
                                    if totalSupply < 35 * cd[36] / 100:
                                        revert with 0, 17
                                    totalSupply -= 35 * cd[36] / 100
                                    emit Transfer((35 * cd[36] / 100), this.address, 0);
                                    if balanceOf[this.address]:
                                        if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                            revert with 0, 17
                                        if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                            if cd[36] - (cd[36] / 14) - (35 * cd[36] / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            uint8(stor8.field_8) = 1
                                            mem[160] = this.address
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if balanceOf[this.address] <= 2 * cd[36] - (cd[36] / 14) - (35 * cd[36] / 100):
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                                emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 14) - (35 * cd[36] / 100))
                                                emit Approval((2 * cd[36] - (cd[36] / 14) - (35 * cd[36] / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 14) - (35 * cd[36] / 100)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 2 * cd[36] - (cd[36] / 14) - (35 * cd[36] / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                                revert with 0, 17
                                            totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                            emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                            if cd[36] - (cd[36] / 14) - (35 * cd[36] / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            uint8(stor8.field_8) = 1
                                            mem[160] = this.address
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[36] - (cd[36] / 14) - (35 * cd[36] / 100):
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 14) - (35 * cd[36] / 100))
                                                emit Approval((2 * cd[36] - (cd[36] / 14) - (35 * cd[36] / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 14) - (35 * cd[36] / 100)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 2 * cd[36] - (cd[36] / 14) - (35 * cd[36] / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor8.field_8) = 0
                                    require balanceOf[address(msg.sender)] >= cd[36] - (cd[36] / 14) - (35 * cd[36] / 100)
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] / 14) + (35 * cd[36] / 100)
                                    if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] / 14) - (35 * cd[36] / 100)):
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] / 14) - (35 * cd[36] / 100)
                                    emit Transfer((cd[36] - (cd[36] / 14) - (35 * cd[36] / 100)), msg.sender, address(cd[4]));
                                else:
                                    if balanceOf[address(stor5.field_0)] / 10 < balanceOf[address(stor5.field_0)] / 100:
                                        revert with 0, 17
                                    if cd[36] < balanceOf[address(stor5.field_0)] / 100:
                                        revert with 0, 17
                                    if cd[36] - (balanceOf[address(stor5.field_0)] / 100) > 0x750750750750750750750750750750750750750750750750750750750750750:
                                        revert with 0, 17
                                    if (35 * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100) and cd[36] > -1 / (35 * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100):
                                        revert with 0, 17
                                    if not (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100):
                                        revert with 0, 18
                                    if cd[36] / 14 > !((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                        revert with 0, 17
                                    if cd[36] < (cd[36] / 14) + ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                        revert with 0, 17
                                    if cd[36] / 14 > !((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < (cd[36] / 14) + ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                    if balanceOf[this.address] > !(cd[36] / 14):
                                        revert with 0, 17
                                    balanceOf[this.address] += cd[36] / 14
                                    if totalSupply < (35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100:
                                        revert with 0, 17
                                    totalSupply -= (35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100
                                    emit Transfer(((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), this.address, 0);
                                    if balanceOf[this.address]:
                                        if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                            revert with 0, 17
                                        if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                            if cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            uint8(stor8.field_8) = 1
                                            mem[160] = this.address
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if balanceOf[this.address] <= 2 * cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                                emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                                emit Approval((2 * cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 2 * cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                                revert with 0, 17
                                            totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                            emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                            if cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            uint8(stor8.field_8) = 1
                                            mem[160] = this.address
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                                emit Approval((2 * cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 2 * cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor8.field_8) = 0
                                    require balanceOf[address(msg.sender)] >= cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] / 14) + ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                    if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)):
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                    emit Transfer((cd[36] - (cd[36] / 14) - ((35 * cd[36] * cd[36]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[36]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), msg.sender, address(cd[4]));
            else:
                if block.timestamp < sub_99bf3266:
                    revert with 0, 17
                if block.timestamp - sub_99bf3266 / 120:
                    if maxBuy < totalSupply:
                        if sub_aff41b7b and block.timestamp - sub_99bf3266 / 120 > -1 / sub_aff41b7b:
                            revert with 0, 17
                        if maxBuy > !(sub_aff41b7b * block.timestamp - sub_99bf3266 / 120):
                            revert with 0, 17
                        maxBuy += sub_aff41b7b * block.timestamp - sub_99bf3266 / 120
                    sub_99bf3266 = block.timestamp
                require uint8(stor5.field_160)
                if uint8(stor8.field_0):
                    stor6[address(cd[4])] = 1
                else:
                    if balanceOf[address(cd[4])] > !cd[36]:
                        revert with 0, 17
                    require balanceOf[address(cd[4])] + cd[36] <= maxBuy
                    if uint8(stor8.field_0):
                        stor6[address(cd[4])] = 1
                if cd[36] < cd[36] / 11:
                    revert with 0, 17
                if balanceOf[this.address] > !(cd[36] / 11):
                    revert with 0, 17
                balanceOf[this.address] += cd[36] / 11
                if uint8(stor8.field_8):
                    require balanceOf[address(msg.sender)] >= cd[36] - (cd[36] / 11)
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] / 11)
                    if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] / 11)):
                        revert with 0, 17
                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] / 11)
                    emit Transfer((cd[36] - (cd[36] / 11)), msg.sender, address(cd[4]));
                else:
                    if not uniswapV2PairAddress:
                        require balanceOf[address(msg.sender)] >= cd[36] - (cd[36] / 11)
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] / 11)
                        if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] / 11)):
                            revert with 0, 17
                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] / 11)
                        emit Transfer((cd[36] - (cd[36] / 11)), msg.sender, address(cd[4]));
                    else:
                        if uniswapV2PairAddress != address(cd[4]):
                            require balanceOf[address(msg.sender)] >= cd[36] - (cd[36] / 11)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] / 11)
                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] / 11)):
                                revert with 0, 17
                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] / 11)
                            emit Transfer((cd[36] - (cd[36] / 11)), msg.sender, address(cd[4]));
                        else:
                            if cd[36] - (cd[36] / 11) <= balanceOf[address(stor5.field_0)] / 100:
                                if cd[36] - (cd[36] / 11) / 14 > !(cd[36] - (cd[36] / 11) / 20):
                                    revert with 0, 17
                                if cd[36] - (cd[36] / 11) < (cd[36] - (cd[36] / 11) / 14) + (cd[36] - (cd[36] / 11) / 20):
                                    revert with 0, 17
                                if cd[36] - (cd[36] / 11) / 14 > !(cd[36] - (cd[36] / 11) / 20):
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < (cd[36] - (cd[36] / 11) / 14) + (cd[36] - (cd[36] / 11) / 20):
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20)
                                if balanceOf[this.address] > !(cd[36] - (cd[36] / 11) / 14):
                                    revert with 0, 17
                                balanceOf[this.address] += cd[36] - (cd[36] / 11) / 14
                                if totalSupply < cd[36] - (cd[36] / 11) / 20:
                                    revert with 0, 17
                                totalSupply -= cd[36] - (cd[36] / 11) / 20
                                emit Transfer((cd[36] - (cd[36] / 11) / 20), this.address, 0);
                                if balanceOf[this.address]:
                                    if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                        revert with 0, 17
                                    if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                        if cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[160] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        if balanceOf[this.address] <= 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20))
                                            emit Approval((2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20)
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    else:
                                        if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                            revert with 0, 17
                                        totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                        emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                        if cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[160] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20))
                                            emit Approval((2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20)
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor8.field_8) = 0
                                require balanceOf[address(msg.sender)] >= cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] / 11) + (cd[36] - (cd[36] / 11) / 14) + (cd[36] - (cd[36] / 11) / 20)
                                if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20)):
                                    revert with 0, 17
                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20)
                                emit Transfer((cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - (cd[36] - (cd[36] / 11) / 20)), msg.sender, address(cd[4]));
                            else:
                                if cd[36] - (cd[36] / 11) > balanceOf[address(stor5.field_0)] / 10:
                                    if cd[36] - (cd[36] / 11) > 0x750750750750750750750750750750750750750750750750750750750750750:
                                        revert with 0, 17
                                    if cd[36] - (cd[36] / 11) / 14 > !((35 * cd[36]) - (35 * cd[36] / 11) / 100):
                                        revert with 0, 17
                                    if cd[36] - (cd[36] / 11) < (cd[36] - (cd[36] / 11) / 14) + ((35 * cd[36]) - (35 * cd[36] / 11) / 100):
                                        revert with 0, 17
                                    if cd[36] - (cd[36] / 11) / 14 > !((35 * cd[36]) - (35 * cd[36] / 11) / 100):
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < (cd[36] - (cd[36] / 11) / 14) + ((35 * cd[36]) - (35 * cd[36] / 11) / 100):
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100)
                                    if balanceOf[this.address] > !(cd[36] - (cd[36] / 11) / 14):
                                        revert with 0, 17
                                    balanceOf[this.address] += cd[36] - (cd[36] / 11) / 14
                                    if totalSupply < (35 * cd[36]) - (35 * cd[36] / 11) / 100:
                                        revert with 0, 17
                                    totalSupply -= (35 * cd[36]) - (35 * cd[36] / 11) / 100
                                    emit Transfer(((35 * cd[36]) - (35 * cd[36] / 11) / 100), this.address, 0);
                                    if balanceOf[this.address]:
                                        if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                            revert with 0, 17
                                        if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                            if cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            uint8(stor8.field_8) = 1
                                            mem[160] = this.address
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if balanceOf[this.address] <= 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100):
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                                emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100))
                                                emit Approval((2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                                revert with 0, 17
                                            totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                            emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                            if cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            uint8(stor8.field_8) = 1
                                            mem[160] = this.address
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100):
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100))
                                                emit Approval((2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor8.field_8) = 0
                                    require balanceOf[address(msg.sender)] >= cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100)
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] / 11) + (cd[36] - (cd[36] / 11) / 14) + ((35 * cd[36]) - (35 * cd[36] / 11) / 100)
                                    if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100)):
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100)
                                    emit Transfer((cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36]) - (35 * cd[36] / 11) / 100)), msg.sender, address(cd[4]));
                                else:
                                    if balanceOf[address(stor5.field_0)] / 10 < balanceOf[address(stor5.field_0)] / 100:
                                        revert with 0, 17
                                    if cd[36] - (cd[36] / 11) < balanceOf[address(stor5.field_0)] / 100:
                                        revert with 0, 17
                                    if cd[36] - (cd[36] / 11) - (balanceOf[address(stor5.field_0)] / 100) > 0x750750750750750750750750750750750750750750750750750750750750750:
                                        revert with 0, 17
                                    if (35 * cd[36]) - (35 * cd[36] / 11) - (35 * balanceOf[address(stor5.field_0)] / 100) and cd[36] - (cd[36] / 11) > -1 / (35 * cd[36]) - (35 * cd[36] / 11) - (35 * balanceOf[address(stor5.field_0)] / 100):
                                        revert with 0, 17
                                    if not (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100):
                                        revert with 0, 18
                                    if cd[36] - (cd[36] / 11) / 14 > !((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                        revert with 0, 17
                                    if cd[36] - (cd[36] / 11) < (cd[36] - (cd[36] / 11) / 14) + ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                        revert with 0, 17
                                    if cd[36] - (cd[36] / 11) / 14 > !((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < (cd[36] - (cd[36] / 11) / 14) + ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                    if balanceOf[this.address] > !(cd[36] - (cd[36] / 11) / 14):
                                        revert with 0, 17
                                    balanceOf[this.address] += cd[36] - (cd[36] / 11) / 14
                                    if totalSupply < (35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100:
                                        revert with 0, 17
                                    totalSupply -= (35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100
                                    emit Transfer(((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), this.address, 0);
                                    if balanceOf[this.address]:
                                        if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                            revert with 0, 17
                                        if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                            if cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            uint8(stor8.field_8) = 1
                                            mem[160] = this.address
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if balanceOf[this.address] <= 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                                emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                                emit Approval((2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                                revert with 0, 17
                                            totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                            emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                            if cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            uint8(stor8.field_8) = 1
                                            mem[160] = this.address
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                                emit Approval((2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 2 * cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor8.field_8) = 0
                                    require balanceOf[address(msg.sender)] >= cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] / 11) + (cd[36] - (cd[36] / 11) / 14) + ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                    if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)):
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                    emit Transfer((cd[36] - (cd[36] / 11) - (cd[36] - (cd[36] / 11) / 14) - ((35 * cd[36] * cd[36]) - (35 * cd[36] / 11 * cd[36]) - (35 * cd[36] * cd[36] / 11) + (35 * cd[36] / 11 * cd[36] / 11) - (35 * cd[36] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[36] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), msg.sender, address(cd[4]));
    else:
        if unknown_0x3bbac579(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x3bbac579(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return bool(stor6[cd[4]])
            if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if stor12 != msg.sender:
                    require stor13 == msg.sender
                call stor13 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return uniswapV2PairAddress
                if unknown_0x52e53988(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if stor12 != msg.sender:
                        require stor13 == msg.sender
                    stor14 = cd[4]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x6c90b57f(?????):
                        require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return balanceOf[address(cd[4])]
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 > test266151307() or ceil32(32 * ('cd', 4).length) + 129 < 128:
                        revert with 0, 65
                    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                    s = cd[4] + 36
                    t = 160
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[s] == address(cd[s])
                        mem[t] = cd[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    require cd[36] == bool(cd[36])
                    if stor12 != msg.sender:
                        require stor13 == msg.sender
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 172 len 20]
                        mem[32] = 7
                        stor7[mem[(32 * idx) + 172 len 20]] = uint8(bool(cd[36]))
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
        if name() == uint32(call.func_hash) >> 224:
            require not msg.value
            if bool(stor1.length):
                if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor1.length):
                    if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1.length):
                        if 31 < uint255(stor1.length) * 0.5:
                            mem[160] = uint256(stor1.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor1.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor1[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)])
                        mem[160] = 256 * stor1.length.field_8
                else:
                    if bool(stor1.length) == stor1.length.field_1 < 32:
                        revert with 0, 34
                    if stor1.length.field_1:
                        if 31 < stor1.length.field_1:
                            mem[160] = uint256(stor1.field_0)
                            idx = 160
                            s = 0
                            while stor1.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor1[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)])
                        mem[160] = 256 * stor1.length.field_8
                mem[ceil32(uint255(stor1.length) * 0.5) + 224 len ceil32(uint255(stor1.length) * 0.5)] = mem[160 len ceil32(uint255(stor1.length) * 0.5)]
                if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
                    mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if bool(stor1.length):
                if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor1.length):
                    if 31 < uint255(stor1.length) * 0.5:
                        mem[160] = uint256(stor1.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor1.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor1[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1)])
                    mem[160] = 256 * stor1.length.field_8
            else:
                if bool(stor1.length) == stor1.length.field_1 < 32:
                    revert with 0, 34
                if stor1.length.field_1:
                    if 31 < stor1.length.field_1:
                        mem[160] = uint256(stor1.field_0)
                        idx = 160
                        s = 0
                        while stor1.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor1[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1)])
                    mem[160] = 256 * stor1.length.field_8
            mem[ceil32(stor1.length.field_1) + 224 len ceil32(stor1.length.field_1)] = mem[160 len ceil32(stor1.length.field_1)]
            if ceil32(stor1.length.field_1) > stor1.length.field_1:
                mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 224] = 0
            return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 224 len 2 * ceil32(stor1.length.field_1)]), 
        if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            allowance[address(msg.sender)][address(cd[4])].field_0 = cd[36]
            emit Approval(cd[36], msg.sender, address(cd[4]));
        else:
            if unknown_0x1693e8d4(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return bool(uint8(stor5.field_160))
            if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalSupply
            if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                require unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return 18
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            require not stor6[address(cd[4])]
            require not stor6[address(cd[36])]
            if uniswapV2PairAddress != address(cd[4]):
                if uint8(stor8.field_8):
                    require balanceOf[address(cd[4])] >= cd[68]
                    balanceOf[address(cd[4])] -= cd[68]
                    if balanceOf[address(cd[36])] > !cd[68]:
                        revert with 0, 17
                    balanceOf[address(cd[36])] += cd[68]
                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                else:
                    if not uniswapV2PairAddress:
                        require balanceOf[address(cd[4])] >= cd[68]
                        balanceOf[address(cd[4])] -= cd[68]
                        if balanceOf[address(cd[36])] > !cd[68]:
                            revert with 0, 17
                        balanceOf[address(cd[36])] += cd[68]
                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                    else:
                        if uniswapV2PairAddress != address(cd[36]):
                            require balanceOf[address(cd[4])] >= cd[68]
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if cd[68] <= balanceOf[address(stor5.field_0)] / 100:
                                if cd[68] / 14 > !(cd[68] / 20):
                                    revert with 0, 17
                                if cd[68] < (cd[68] / 14) + (cd[68] / 20):
                                    revert with 0, 17
                                if cd[68] / 14 > !(cd[68] / 20):
                                    revert with 0, 17
                                if balanceOf[address(cd[4])] < (cd[68] / 14) + (cd[68] / 20):
                                    revert with 0, 17
                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] / 14) - (cd[68] / 20)
                                if balanceOf[this.address] > !(cd[68] / 14):
                                    revert with 0, 17
                                balanceOf[this.address] += cd[68] / 14
                                if totalSupply < cd[68] / 20:
                                    revert with 0, 17
                                totalSupply -= cd[68] / 20
                                emit Transfer((cd[68] / 20), this.address, 0);
                                if balanceOf[this.address]:
                                    if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                        revert with 0, 17
                                    if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                        if cd[68] - (cd[68] / 14) - (cd[68] / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[160] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        if balanceOf[this.address] <= 2 * cd[68] - (cd[68] / 14) - (cd[68] / 20):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 14) - (cd[68] / 20))
                                            emit Approval((2 * cd[68] - (cd[68] / 14) - (cd[68] / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 14) - (cd[68] / 20)
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * cd[68] - (cd[68] / 14) - (cd[68] / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    else:
                                        if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                            revert with 0, 17
                                        totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                        emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                        if cd[68] - (cd[68] / 14) - (cd[68] / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor8.field_8) = 1
                                        mem[160] = this.address
                                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[68] - (cd[68] / 14) - (cd[68] / 20):
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 14) - (cd[68] / 20))
                                            emit Approval((2 * cd[68] - (cd[68] / 14) - (cd[68] / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                            mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 14) - (cd[68] / 20)
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * cd[68] - (cd[68] / 14) - (cd[68] / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor8.field_8) = 0
                                require balanceOf[address(cd[4])] >= cd[68] - (cd[68] / 14) - (cd[68] / 20)
                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] / 14) + (cd[68] / 20)
                                if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] / 14) - (cd[68] / 20)):
                                    revert with 0, 17
                                balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] / 14) - (cd[68] / 20)
                                emit Transfer((cd[68] - (cd[68] / 14) - (cd[68] / 20)), address(cd[4]), address(cd[36]));
                            else:
                                if cd[68] > balanceOf[address(stor5.field_0)] / 10:
                                    if cd[68] > 0x750750750750750750750750750750750750750750750750750750750750750:
                                        revert with 0, 17
                                    if cd[68] / 14 > !(35 * cd[68] / 100):
                                        revert with 0, 17
                                    if cd[68] < (cd[68] / 14) + (35 * cd[68] / 100):
                                        revert with 0, 17
                                    if cd[68] / 14 > !(35 * cd[68] / 100):
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < (cd[68] / 14) + (35 * cd[68] / 100):
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] / 14) - (35 * cd[68] / 100)
                                    if balanceOf[this.address] > !(cd[68] / 14):
                                        revert with 0, 17
                                    balanceOf[this.address] += cd[68] / 14
                                    if totalSupply < 35 * cd[68] / 100:
                                        revert with 0, 17
                                    totalSupply -= 35 * cd[68] / 100
                                    emit Transfer((35 * cd[68] / 100), this.address, 0);
                                    if balanceOf[this.address]:
                                        if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                            revert with 0, 17
                                        if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                            if cd[68] - (cd[68] / 14) - (35 * cd[68] / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            uint8(stor8.field_8) = 1
                                            mem[160] = this.address
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if balanceOf[this.address] <= 2 * cd[68] - (cd[68] / 14) - (35 * cd[68] / 100):
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                                emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 14) - (35 * cd[68] / 100))
                                                emit Approval((2 * cd[68] - (cd[68] / 14) - (35 * cd[68] / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 14) - (35 * cd[68] / 100)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 2 * cd[68] - (cd[68] / 14) - (35 * cd[68] / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                                revert with 0, 17
                                            totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                            emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                            if cd[68] - (cd[68] / 14) - (35 * cd[68] / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            uint8(stor8.field_8) = 1
                                            mem[160] = this.address
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[68] - (cd[68] / 14) - (35 * cd[68] / 100):
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 14) - (35 * cd[68] / 100))
                                                emit Approval((2 * cd[68] - (cd[68] / 14) - (35 * cd[68] / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 14) - (35 * cd[68] / 100)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 2 * cd[68] - (cd[68] / 14) - (35 * cd[68] / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor8.field_8) = 0
                                    require balanceOf[address(cd[4])] >= cd[68] - (cd[68] / 14) - (35 * cd[68] / 100)
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] / 14) + (35 * cd[68] / 100)
                                    if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] / 14) - (35 * cd[68] / 100)):
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] / 14) - (35 * cd[68] / 100)
                                    emit Transfer((cd[68] - (cd[68] / 14) - (35 * cd[68] / 100)), address(cd[4]), address(cd[36]));
                                else:
                                    if balanceOf[address(stor5.field_0)] / 10 < balanceOf[address(stor5.field_0)] / 100:
                                        revert with 0, 17
                                    if cd[68] < balanceOf[address(stor5.field_0)] / 100:
                                        revert with 0, 17
                                    if cd[68] - (balanceOf[address(stor5.field_0)] / 100) > 0x750750750750750750750750750750750750750750750750750750750750750:
                                        revert with 0, 17
                                    if (35 * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100) and cd[68] > -1 / (35 * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100):
                                        revert with 0, 17
                                    if not (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100):
                                        revert with 0, 18
                                    if cd[68] / 14 > !((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                        revert with 0, 17
                                    if cd[68] < (cd[68] / 14) + ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                        revert with 0, 17
                                    if cd[68] / 14 > !((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < (cd[68] / 14) + ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                    if balanceOf[this.address] > !(cd[68] / 14):
                                        revert with 0, 17
                                    balanceOf[this.address] += cd[68] / 14
                                    if totalSupply < (35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100:
                                        revert with 0, 17
                                    totalSupply -= (35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100
                                    emit Transfer(((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), this.address, 0);
                                    if balanceOf[this.address]:
                                        if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                            revert with 0, 17
                                        if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                            if cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            uint8(stor8.field_8) = 1
                                            mem[160] = this.address
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if balanceOf[this.address] <= 2 * cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                                emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                                emit Approval((2 * cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 2 * cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                                revert with 0, 17
                                            totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                            emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                            if cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            uint8(stor8.field_8) = 1
                                            mem[160] = this.address
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                                emit Approval((2 * cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 2 * cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor8.field_8) = 0
                                    require balanceOf[address(cd[4])] >= cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] / 14) + ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                    if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)):
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                    emit Transfer((cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), address(cd[4]), address(cd[36]));
            else:
                if stor7[address(cd[36])]:
                    if uint8(stor8.field_8):
                        require balanceOf[address(cd[4])] >= cd[68]
                        balanceOf[address(cd[4])] -= cd[68]
                        if balanceOf[address(cd[36])] > !cd[68]:
                            revert with 0, 17
                        balanceOf[address(cd[36])] += cd[68]
                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                    else:
                        if not uniswapV2PairAddress:
                            require balanceOf[address(cd[4])] >= cd[68]
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if uniswapV2PairAddress != address(cd[36]):
                                require balanceOf[address(cd[4])] >= cd[68]
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if cd[68] <= balanceOf[address(stor5.field_0)] / 100:
                                    if cd[68] / 14 > !(cd[68] / 20):
                                        revert with 0, 17
                                    if cd[68] < (cd[68] / 14) + (cd[68] / 20):
                                        revert with 0, 17
                                    if cd[68] / 14 > !(cd[68] / 20):
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < (cd[68] / 14) + (cd[68] / 20):
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] / 14) - (cd[68] / 20)
                                    if balanceOf[this.address] > !(cd[68] / 14):
                                        revert with 0, 17
                                    balanceOf[this.address] += cd[68] / 14
                                    if totalSupply < cd[68] / 20:
                                        revert with 0, 17
                                    totalSupply -= cd[68] / 20
                                    emit Transfer((cd[68] / 20), this.address, 0);
                                    if balanceOf[this.address]:
                                        if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                            revert with 0, 17
                                        if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                            if cd[68] - (cd[68] / 14) - (cd[68] / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            uint8(stor8.field_8) = 1
                                            mem[160] = this.address
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if balanceOf[this.address] <= 2 * cd[68] - (cd[68] / 14) - (cd[68] / 20):
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                                emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 14) - (cd[68] / 20))
                                                emit Approval((2 * cd[68] - (cd[68] / 14) - (cd[68] / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 14) - (cd[68] / 20)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 2 * cd[68] - (cd[68] / 14) - (cd[68] / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                                revert with 0, 17
                                            totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                            emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                            if cd[68] - (cd[68] / 14) - (cd[68] / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            uint8(stor8.field_8) = 1
                                            mem[160] = this.address
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[68] - (cd[68] / 14) - (cd[68] / 20):
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 14) - (cd[68] / 20))
                                                emit Approval((2 * cd[68] - (cd[68] / 14) - (cd[68] / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 14) - (cd[68] / 20)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 2 * cd[68] - (cd[68] / 14) - (cd[68] / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor8.field_8) = 0
                                    require balanceOf[address(cd[4])] >= cd[68] - (cd[68] / 14) - (cd[68] / 20)
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] / 14) + (cd[68] / 20)
                                    if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] / 14) - (cd[68] / 20)):
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] / 14) - (cd[68] / 20)
                                    emit Transfer((cd[68] - (cd[68] / 14) - (cd[68] / 20)), address(cd[4]), address(cd[36]));
                                else:
                                    if cd[68] > balanceOf[address(stor5.field_0)] / 10:
                                        if cd[68] > 0x750750750750750750750750750750750750750750750750750750750750750:
                                            revert with 0, 17
                                        if cd[68] / 14 > !(35 * cd[68] / 100):
                                            revert with 0, 17
                                        if cd[68] < (cd[68] / 14) + (35 * cd[68] / 100):
                                            revert with 0, 17
                                        if cd[68] / 14 > !(35 * cd[68] / 100):
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] < (cd[68] / 14) + (35 * cd[68] / 100):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] / 14) - (35 * cd[68] / 100)
                                        if balanceOf[this.address] > !(cd[68] / 14):
                                            revert with 0, 17
                                        balanceOf[this.address] += cd[68] / 14
                                        if totalSupply < 35 * cd[68] / 100:
                                            revert with 0, 17
                                        totalSupply -= 35 * cd[68] / 100
                                        emit Transfer((35 * cd[68] / 100), this.address, 0);
                                        if balanceOf[this.address]:
                                            if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                                revert with 0, 17
                                            if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                                if cd[68] - (cd[68] / 14) - (35 * cd[68] / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                uint8(stor8.field_8) = 1
                                                mem[160] = this.address
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                        gas gas_remaining wei
                                                mem[224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[192] = ext_call.return_data[12 len 20]
                                                if balanceOf[this.address] <= 2 * cd[68] - (cd[68] / 14) - (35 * cd[68] / 100):
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                else:
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 14) - (35 * cd[68] / 100))
                                                    emit Approval((2 * cd[68] - (cd[68] / 14) - (35 * cd[68] / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 14) - (35 * cd[68] / 100)
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 2 * cd[68] - (cd[68] / 14) - (35 * cd[68] / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                                    revert with 0, 17
                                                totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                                emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                                if cd[68] - (cd[68] / 14) - (35 * cd[68] / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                uint8(stor8.field_8) = 1
                                                mem[160] = this.address
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                        gas gas_remaining wei
                                                mem[224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[192] = ext_call.return_data[12 len 20]
                                                if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[68] - (cd[68] / 14) - (35 * cd[68] / 100):
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                    emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                else:
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 14) - (35 * cd[68] / 100))
                                                    emit Approval((2 * cd[68] - (cd[68] / 14) - (35 * cd[68] / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 14) - (35 * cd[68] / 100)
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 2 * cd[68] - (cd[68] / 14) - (35 * cd[68] / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            uint8(stor8.field_8) = 0
                                        require balanceOf[address(cd[4])] >= cd[68] - (cd[68] / 14) - (35 * cd[68] / 100)
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] / 14) + (35 * cd[68] / 100)
                                        if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] / 14) - (35 * cd[68] / 100)):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] / 14) - (35 * cd[68] / 100)
                                        emit Transfer((cd[68] - (cd[68] / 14) - (35 * cd[68] / 100)), address(cd[4]), address(cd[36]));
                                    else:
                                        if balanceOf[address(stor5.field_0)] / 10 < balanceOf[address(stor5.field_0)] / 100:
                                            revert with 0, 17
                                        if cd[68] < balanceOf[address(stor5.field_0)] / 100:
                                            revert with 0, 17
                                        if cd[68] - (balanceOf[address(stor5.field_0)] / 100) > 0x750750750750750750750750750750750750750750750750750750750750750:
                                            revert with 0, 17
                                        if (35 * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100) and cd[68] > -1 / (35 * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100):
                                            revert with 0, 17
                                        if not (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100):
                                            revert with 0, 18
                                        if cd[68] / 14 > !((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            revert with 0, 17
                                        if cd[68] < (cd[68] / 14) + ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            revert with 0, 17
                                        if cd[68] / 14 > !((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] < (cd[68] / 14) + ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                        if balanceOf[this.address] > !(cd[68] / 14):
                                            revert with 0, 17
                                        balanceOf[this.address] += cd[68] / 14
                                        if totalSupply < (35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100:
                                            revert with 0, 17
                                        totalSupply -= (35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100
                                        emit Transfer(((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), this.address, 0);
                                        if balanceOf[this.address]:
                                            if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                                revert with 0, 17
                                            if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                                if cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                uint8(stor8.field_8) = 1
                                                mem[160] = this.address
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                        gas gas_remaining wei
                                                mem[224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[192] = ext_call.return_data[12 len 20]
                                                if balanceOf[this.address] <= 2 * cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                else:
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                                    emit Approval((2 * cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 2 * cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                                    revert with 0, 17
                                                totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                                emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                                if cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                uint8(stor8.field_8) = 1
                                                mem[160] = this.address
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                        gas gas_remaining wei
                                                mem[224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[192] = ext_call.return_data[12 len 20]
                                                if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                    emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                else:
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                                    emit Approval((2 * cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 2 * cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            uint8(stor8.field_8) = 0
                                        require balanceOf[address(cd[4])] >= cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] / 14) + ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                        if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                        emit Transfer((cd[68] - (cd[68] / 14) - ((35 * cd[68] * cd[68]) - (35 * balanceOf[address(stor5.field_0)] / 100 * cd[68]) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), address(cd[4]), address(cd[36]));
                else:
                    if block.timestamp < sub_99bf3266:
                        revert with 0, 17
                    if block.timestamp - sub_99bf3266 / 120:
                        if maxBuy < totalSupply:
                            if sub_aff41b7b and block.timestamp - sub_99bf3266 / 120 > -1 / sub_aff41b7b:
                                revert with 0, 17
                            if maxBuy > !(sub_aff41b7b * block.timestamp - sub_99bf3266 / 120):
                                revert with 0, 17
                            maxBuy += sub_aff41b7b * block.timestamp - sub_99bf3266 / 120
                        sub_99bf3266 = block.timestamp
                    require uint8(stor5.field_160)
                    if uint8(stor8.field_0):
                        stor6[address(cd[36])] = 1
                    else:
                        if balanceOf[address(cd[36])] > !cd[68]:
                            revert with 0, 17
                        require balanceOf[address(cd[36])] + cd[68] <= maxBuy
                        if uint8(stor8.field_0):
                            stor6[address(cd[36])] = 1
                    if cd[68] < cd[68] / 11:
                        revert with 0, 17
                    if balanceOf[this.address] > !(cd[68] / 11):
                        revert with 0, 17
                    balanceOf[this.address] += cd[68] / 11
                    if uint8(stor8.field_8):
                        require balanceOf[address(cd[4])] >= cd[68] - (cd[68] / 11)
                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] / 11)
                        if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] / 11)):
                            revert with 0, 17
                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] / 11)
                        emit Transfer((cd[68] - (cd[68] / 11)), address(cd[4]), address(cd[36]));
                    else:
                        if not uniswapV2PairAddress:
                            require balanceOf[address(cd[4])] >= cd[68] - (cd[68] / 11)
                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] / 11)
                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] / 11)):
                                revert with 0, 17
                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] / 11)
                            emit Transfer((cd[68] - (cd[68] / 11)), address(cd[4]), address(cd[36]));
                        else:
                            if uniswapV2PairAddress != address(cd[36]):
                                require balanceOf[address(cd[4])] >= cd[68] - (cd[68] / 11)
                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] / 11)
                                if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] / 11)):
                                    revert with 0, 17
                                balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] / 11)
                                emit Transfer((cd[68] - (cd[68] / 11)), address(cd[4]), address(cd[36]));
                            else:
                                if cd[68] - (cd[68] / 11) <= balanceOf[address(stor5.field_0)] / 100:
                                    if cd[68] - (cd[68] / 11) / 14 > !(cd[68] - (cd[68] / 11) / 20):
                                        revert with 0, 17
                                    if cd[68] - (cd[68] / 11) < (cd[68] - (cd[68] / 11) / 14) + (cd[68] - (cd[68] / 11) / 20):
                                        revert with 0, 17
                                    if cd[68] - (cd[68] / 11) / 14 > !(cd[68] - (cd[68] / 11) / 20):
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < (cd[68] - (cd[68] / 11) / 14) + (cd[68] - (cd[68] / 11) / 20):
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20)
                                    if balanceOf[this.address] > !(cd[68] - (cd[68] / 11) / 14):
                                        revert with 0, 17
                                    balanceOf[this.address] += cd[68] - (cd[68] / 11) / 14
                                    if totalSupply < cd[68] - (cd[68] / 11) / 20:
                                        revert with 0, 17
                                    totalSupply -= cd[68] - (cd[68] / 11) / 20
                                    emit Transfer((cd[68] - (cd[68] / 11) / 20), this.address, 0);
                                    if balanceOf[this.address]:
                                        if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                            revert with 0, 17
                                        if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                            if cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            uint8(stor8.field_8) = 1
                                            mem[160] = this.address
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if balanceOf[this.address] <= 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20):
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                                emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20))
                                                emit Approval((2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        else:
                                            if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                                revert with 0, 17
                                            totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                            emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                            if cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            uint8(stor8.field_8) = 1
                                            mem[160] = this.address
                                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20):
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20))
                                                emit Approval((2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor8.field_8) = 0
                                    require balanceOf[address(cd[4])] >= cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20)
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] / 11) + (cd[68] - (cd[68] / 11) / 14) + (cd[68] - (cd[68] / 11) / 20)
                                    if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20)):
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20)
                                    emit Transfer((cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - (cd[68] - (cd[68] / 11) / 20)), address(cd[4]), address(cd[36]));
                                else:
                                    if cd[68] - (cd[68] / 11) > balanceOf[address(stor5.field_0)] / 10:
                                        if cd[68] - (cd[68] / 11) > 0x750750750750750750750750750750750750750750750750750750750750750:
                                            revert with 0, 17
                                        if cd[68] - (cd[68] / 11) / 14 > !((35 * cd[68]) - (35 * cd[68] / 11) / 100):
                                            revert with 0, 17
                                        if cd[68] - (cd[68] / 11) < (cd[68] - (cd[68] / 11) / 14) + ((35 * cd[68]) - (35 * cd[68] / 11) / 100):
                                            revert with 0, 17
                                        if cd[68] - (cd[68] / 11) / 14 > !((35 * cd[68]) - (35 * cd[68] / 11) / 100):
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] < (cd[68] - (cd[68] / 11) / 14) + ((35 * cd[68]) - (35 * cd[68] / 11) / 100):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100)
                                        if balanceOf[this.address] > !(cd[68] - (cd[68] / 11) / 14):
                                            revert with 0, 17
                                        balanceOf[this.address] += cd[68] - (cd[68] / 11) / 14
                                        if totalSupply < (35 * cd[68]) - (35 * cd[68] / 11) / 100:
                                            revert with 0, 17
                                        totalSupply -= (35 * cd[68]) - (35 * cd[68] / 11) / 100
                                        emit Transfer(((35 * cd[68]) - (35 * cd[68] / 11) / 100), this.address, 0);
                                        if balanceOf[this.address]:
                                            if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                                revert with 0, 17
                                            if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                                if cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                uint8(stor8.field_8) = 1
                                                mem[160] = this.address
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                        gas gas_remaining wei
                                                mem[224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[192] = ext_call.return_data[12 len 20]
                                                if balanceOf[this.address] <= 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100):
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                else:
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100))
                                                    emit Approval((2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100)
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                                    revert with 0, 17
                                                totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                                emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                                if cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                uint8(stor8.field_8) = 1
                                                mem[160] = this.address
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                        gas gas_remaining wei
                                                mem[224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[192] = ext_call.return_data[12 len 20]
                                                if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100):
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                    emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                else:
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100))
                                                    emit Approval((2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100)
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            uint8(stor8.field_8) = 0
                                        require balanceOf[address(cd[4])] >= cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100)
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] / 11) + (cd[68] - (cd[68] / 11) / 14) + ((35 * cd[68]) - (35 * cd[68] / 11) / 100)
                                        if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100)):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100)
                                        emit Transfer((cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68]) - (35 * cd[68] / 11) / 100)), address(cd[4]), address(cd[36]));
                                    else:
                                        if balanceOf[address(stor5.field_0)] / 10 < balanceOf[address(stor5.field_0)] / 100:
                                            revert with 0, 17
                                        if cd[68] - (cd[68] / 11) < balanceOf[address(stor5.field_0)] / 100:
                                            revert with 0, 17
                                        if cd[68] - (cd[68] / 11) - (balanceOf[address(stor5.field_0)] / 100) > 0x750750750750750750750750750750750750750750750750750750750750750:
                                            revert with 0, 17
                                        if (35 * cd[68]) - (35 * cd[68] / 11) - (35 * balanceOf[address(stor5.field_0)] / 100) and cd[68] - (cd[68] / 11) > -1 / (35 * cd[68]) - (35 * cd[68] / 11) - (35 * balanceOf[address(stor5.field_0)] / 100):
                                            revert with 0, 17
                                        if not (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100):
                                            revert with 0, 18
                                        if cd[68] - (cd[68] / 11) / 14 > !((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            revert with 0, 17
                                        if cd[68] - (cd[68] / 11) < (cd[68] - (cd[68] / 11) / 14) + ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            revert with 0, 17
                                        if cd[68] - (cd[68] / 11) / 14 > !((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] < (cd[68] - (cd[68] / 11) / 14) + ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                        if balanceOf[this.address] > !(cd[68] - (cd[68] / 11) / 14):
                                            revert with 0, 17
                                        balanceOf[this.address] += cd[68] - (cd[68] / 11) / 14
                                        if totalSupply < (35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100:
                                            revert with 0, 17
                                        totalSupply -= (35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100
                                        emit Transfer(((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), this.address, 0);
                                        if balanceOf[this.address]:
                                            if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                                revert with 0, 17
                                            if balanceOf[this.address] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                                if cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                uint8(stor8.field_8) = 1
                                                mem[160] = this.address
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                        gas gas_remaining wei
                                                mem[224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[192] = ext_call.return_data[12 len 20]
                                                if balanceOf[this.address] <= 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                else:
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                                    emit Approval((2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            else:
                                                if totalSupply < balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                                    revert with 0, 17
                                                totalSupply = totalSupply - balanceOf[this.address] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                                emit Transfer((balanceOf[this.address] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                                if cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                uint8(stor8.field_8) = 1
                                                mem[160] = this.address
                                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0xad5c4648 with:
                                                        gas gas_remaining wei
                                                mem[224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[192] = ext_call.return_data[12 len 20]
                                                if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                    emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                else:
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_0 = 0
                                                    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4].field_1 = uint255(cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                                    emit Approval((2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                                                    mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 2 * cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            uint8(stor8.field_8) = 0
                                        require balanceOf[address(cd[4])] >= cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] / 11) + (cd[68] - (cd[68] / 11) / 14) + ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                        if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                        emit Transfer((cd[68] - (cd[68] / 11) - (cd[68] - (cd[68] / 11) / 14) - ((35 * cd[68] * cd[68]) - (35 * cd[68] / 11 * cd[68]) - (35 * cd[68] * cd[68] / 11) + (35 * cd[68] / 11 * cd[68] / 11) - (35 * cd[68] * balanceOf[address(stor5.field_0)] / 100) + (35 * cd[68] / 11 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), address(cd[4]), address(cd[36]));
            require allowance[address(cd[4])][msg.sender].field_0 >= cd[68]
            allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
            emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
    return 1
}



}
