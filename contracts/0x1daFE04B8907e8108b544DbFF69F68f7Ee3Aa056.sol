contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint256 liquidityBalance;
uint256 startSacrifice;
uint256 endSacrifice;
uint8 stor8;
uint8 stor8; offset 8
uint256 stor8; offset 8
mapping of uint256 userBalances;
address stor10;
address stor11;

function totalSupply() {
    return totalSupply
}

function userBalances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userBalances[arg1]
}

function endSacrifice() {
    return endSacrifice
}

function canClaim() {
    return bool(uint8(stor8.field_0))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function canSacrifice() {
    return bool(uint8(stor8.field_8))
}

function liquidityBalance() {
    return liquidityBalance
}

function startSacrifice() {
    return startSacrifice
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function updatendSacrificeDate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor10 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only patron can call this function'
    endSacrifice = arg1
}

function updatestartSacrificeDate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor10 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only patron can call this function'
    startSacrifice = arg1
}

function updatecanMetacardsAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only patron can call this function'
    stor11 = arg1
}

function updatecanClaim(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only patron can call this function'
    uint8(stor8.field_0) = uint8(arg1)
}

function getMetaCardsBalance() {
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function updatecanSacrifice(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only patron can call this function'
    Mask(248, 0, stor8.field_8) = Mask(248, 0, arg1)
}

function redeem() payable {
    if stor10 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only patron can call this function'
    call stor10 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor8.field_8) = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit 0xfeddf252: arg2, msg.sender, arg1
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function getCurrentRate() {
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if endSacrifice < startSacrifice:
            revert with 0, 17
        if endSacrifice - startSacrifice > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        return ((100 * endSacrifice) - (100 * startSacrifice))
    if block.timestamp >= endSacrifice:
        return 0
    if endSacrifice < block.timestamp:
        revert with 0, 17
    if endSacrifice - block.timestamp > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    return ((100 * endSacrifice) - (100 * block.timestamp))
}

function claimTokens() {
    if block.timestamp <= endSacrifice:
        if stor10 != msg.sender:
            revert with 0, 'Can't claim tokens yet'
    else:
        if not uint8(stor8.field_0):
            if stor10 != msg.sender:
                revert with 0, 'Can't claim tokens yet'
    if not userBalances[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User must have more than one token to claim'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !userBalances[msg.sender]:
        revert with 0, 17
    totalSupply += userBalances[msg.sender]
    if balanceOf[address(msg.sender)] > !userBalances[msg.sender]:
        revert with 0, 17
    balanceOf[address(msg.sender)] += userBalances[msg.sender]
    emit 0xfeddf252: userBalances[msg.sender], 0, msg.sender
    userBalances[msg.sender] = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit 0xfeddf252: arg3, arg1, arg2
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
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

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
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

function sacrifice() payable {
    if not uint8(stor8.field_8):
        revert with 0, 'Can't sacrifice yet'
    if block.timestamp <= startSacrifice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't buy, sacrifice hasn't started'
    if block.timestamp >= endSacrifice:
        revert with 0, 'Can't buy, sacrifice has ended'
    if msg.value <= 0:
        revert with 0, 'Must send at least something...'
    if liquidityBalance > !msg.value:
        revert with 0, 17
    liquidityBalance += msg.value
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if endSacrifice < startSacrifice:
            revert with 0, 17
        if endSacrifice - startSacrifice > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if msg.value and (100 * endSacrifice) - (100 * startSacrifice) > -1 / msg.value:
            revert with 0, 17
        if userBalances[msg.sender] > !((100 * endSacrifice * msg.value) - (100 * startSacrifice * msg.value)):
            revert with 0, 17
        userBalances[msg.sender] = userBalances[msg.sender] + (100 * endSacrifice * msg.value) - (100 * startSacrifice * msg.value)
        if (100 * endSacrifice * msg.value) - (100 * startSacrifice * msg.value) > 0x1111111111111111111111111111111111111111111111111111111111111111:
            revert with 0, 17
        if userBalances[stor10] > !((1500 * endSacrifice * msg.value) - (1500 * startSacrifice * msg.value) / 100):
            revert with 0, 17
        userBalances[stor10] += (1500 * endSacrifice * msg.value) - (1500 * startSacrifice * msg.value) / 100
        if (100 * endSacrifice * msg.value) - (100 * startSacrifice * msg.value) > !((1500 * endSacrifice * msg.value) - (1500 * startSacrifice * msg.value) / 100):
            revert with 0, 17
        if not stor10:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !((100 * endSacrifice * msg.value) - (100 * startSacrifice * msg.value) + ((1500 * endSacrifice * msg.value) - (1500 * startSacrifice * msg.value) / 100)):
            revert with 0, 17
        totalSupply = totalSupply + (100 * endSacrifice * msg.value) - (100 * startSacrifice * msg.value) + ((1500 * endSacrifice * msg.value) - (1500 * startSacrifice * msg.value) / 100)
        if balanceOf[stor10] > !((100 * endSacrifice * msg.value) - (100 * startSacrifice * msg.value) + ((1500 * endSacrifice * msg.value) - (1500 * startSacrifice * msg.value) / 100)):
            revert with 0, 17
        balanceOf[stor10] = balanceOf[stor10] + (100 * endSacrifice * msg.value) - (100 * startSacrifice * msg.value) + ((1500 * endSacrifice * msg.value) - (1500 * startSacrifice * msg.value) / 100)
        emit 0xfeddf252: ((100 * endSacrifice * msg.value) - (100 * startSacrifice * msg.value) + ((1500 * endSacrifice * msg.value) - (1500 * startSacrifice * msg.value) / 100)), 0, stor10
    else:
        if block.timestamp >= endSacrifice:
            if msg.value and 0 > -1 / msg.value:
                revert with 0, 17
            if userBalances[msg.sender] > -1:
                revert with 0, 17
            if userBalances[stor10] > -1:
                revert with 0, 17
            if not stor10:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > -1:
                revert with 0, 17
            if balanceOf[stor10] > -1:
                revert with 0, 17
            emit 0xfeddf252: 0, 0, stor10
        else:
            if endSacrifice < block.timestamp:
                revert with 0, 17
            if endSacrifice - block.timestamp > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if msg.value and (100 * endSacrifice) - (100 * block.timestamp) > -1 / msg.value:
                revert with 0, 17
            if userBalances[msg.sender] > !((100 * endSacrifice * msg.value) - (100 * block.timestamp * msg.value)):
                revert with 0, 17
            userBalances[msg.sender] = userBalances[msg.sender] + (100 * endSacrifice * msg.value) - (100 * block.timestamp * msg.value)
            if (100 * endSacrifice * msg.value) - (100 * block.timestamp * msg.value) > 0x1111111111111111111111111111111111111111111111111111111111111111:
                revert with 0, 17
            if userBalances[stor10] > !((1500 * endSacrifice * msg.value) - (1500 * block.timestamp * msg.value) / 100):
                revert with 0, 17
            userBalances[stor10] += (1500 * endSacrifice * msg.value) - (1500 * block.timestamp * msg.value) / 100
            if (100 * endSacrifice * msg.value) - (100 * block.timestamp * msg.value) > !((1500 * endSacrifice * msg.value) - (1500 * block.timestamp * msg.value) / 100):
                revert with 0, 17
            if not stor10:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !((100 * endSacrifice * msg.value) - (100 * block.timestamp * msg.value) + ((1500 * endSacrifice * msg.value) - (1500 * block.timestamp * msg.value) / 100)):
                revert with 0, 17
            totalSupply = totalSupply + (100 * endSacrifice * msg.value) - (100 * block.timestamp * msg.value) + ((1500 * endSacrifice * msg.value) - (1500 * block.timestamp * msg.value) / 100)
            if balanceOf[stor10] > !((100 * endSacrifice * msg.value) - (100 * block.timestamp * msg.value) + ((1500 * endSacrifice * msg.value) - (1500 * block.timestamp * msg.value) / 100)):
                revert with 0, 17
            balanceOf[stor10] = balanceOf[stor10] + (100 * endSacrifice * msg.value) - (100 * block.timestamp * msg.value) + ((1500 * endSacrifice * msg.value) - (1500 * block.timestamp * msg.value) / 100)
            emit 0xfeddf252: ((100 * endSacrifice * msg.value) - (100 * block.timestamp * msg.value) + ((1500 * endSacrifice * msg.value) - (1500 * block.timestamp * msg.value) / 100)), 0, stor10
}



}
