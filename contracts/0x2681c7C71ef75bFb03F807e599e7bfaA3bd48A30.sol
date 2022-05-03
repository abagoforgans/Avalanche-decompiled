contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint256 sub_08d09957;
mapping of uint256 tokenBoughtTotal;
mapping of uint8 stor3;
uint256 saleIndex;
mapping of uint256 totalBuyingTokenSpend;
address stor6;
uint8 isSaleActive; offset 160
uint8 isClaimActive; offset 168
uint8 isWhitelistEnabled; offset 176
uint128 stor7; offset 176
uint128 stor7; offset 168
uint128 stor7; offset 160
address stor7;
uint256 sub_004d4d2c;
uint256 sub_4b94f120;
uint256 totalTokenSold;
uint256 price;
uint256 hardcap;
uint256 minSpend;
uint256 sub_e91bc7c3;
address stor15;
uint256 sub_87f3c0b2;

function sub_004d4d2c(?) payable {
    return sub_004d4d2c
}

function sub_08d09957(?) payable {
    require calldata.size - 4 >= 32
    return sub_08d09957[arg1]
}

function totalBuyingTokenSpend(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return totalBuyingTokenSpend[arg1][arg2]
}

function isWhitelistEnabled() payable {
    return bool(isWhitelistEnabled)
}

function minSpend() payable {
    return minSpend
}

function sub_4b94f120(?) payable {
    return sub_4b94f120
}

function isSaleActive() payable {
    return bool(isSaleActive)
}

function saleIndex() payable {
    return saleIndex
}

function isClaimActive() payable {
    return bool(isClaimActive)
}

function sub_87f3c0b2(?) payable {
    return sub_87f3c0b2
}

function price() payable {
    return price
}

function tokenBoughtTotal(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenBoughtTotal[arg1]
}

function hardcap() payable {
    return hardcap
}

function totalTokenSold() payable {
    return totalTokenSold
}

function sub_e91bc7c3(?) payable {
    return sub_e91bc7c3
}

function whiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor15 != msg.sender:
        revert with 0, 'You're not the owner'
    price = arg1
}

function sub_c01f8b5f(?) payable {
    require calldata.size - 4 >= 32
    if stor15 != msg.sender:
        revert with 0, 'You're not the owner'
    sub_004d4d2c = arg1
}

function sub_f6e34f37(?) payable {
    require calldata.size - 4 >= 32
    if stor15 != msg.sender:
        revert with 0, 'You're not the owner'
    sub_87f3c0b2 = arg1
}

function setHardcap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor15 != msg.sender:
        revert with 0, 'You're not the owner'
    hardcap = arg1
}

function setSaleActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if stor15 != msg.sender:
        revert with 0, 'You're not the owner'
    Mask(96, 0, stor7.field_160) = Mask(96, 0, arg1)
}

function setWhitelistEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    if stor15 != msg.sender:
        revert with 0, 'You're not the owner'
    Mask(80, 0, stor7.field_176) = Mask(80, 0, arg1)
}

function setClaimActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if stor15 != msg.sender:
        revert with 0, 'You're not the owner'
    Mask(88, 0, stor7.field_168) = Mask(88, 0, arg1)
    if arg1:
        sub_4b94f120 = block.timestamp
}

function set(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    if stor15 != msg.sender:
        revert with 0, 'You're not the owner'
    price = arg1
    hardcap = arg2
    sub_004d4d2c = arg3
    minSpend = arg4
    sub_e91bc7c3 = arg5
    saleIndex = arg6
}

function emergencyWithdraw() payable {
    if stor15 != msg.sender:
        revert with 0, 'You're not the owner'
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_8ec2956a(?) payable {
    if stor15 != msg.sender:
        revert with 0, 'You're not the owner'
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - totalTokenSold
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function whiteListBuyers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor15 != msg.sender:
        revert with 0, 'You're not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function withdrawFunds() payable {
    if stor15 != msg.sender:
        revert with 0, 'You're not the owner'
    require ext_code.size(address(stor7.field_0))
    staticcall address(stor7.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor7.field_0))
    call address(stor7.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function buy(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not isSaleActive:
        revert with 0, 'Presale has not started'
    if block.timestamp < sub_004d4d2c:
        revert with 0, 'Presale has not started'
    if isWhitelistEnabled:
        if bool(stor3[address(msg.sender)]) != 1:
            revert with 0, 'Not whitelisted'
    if totalBuyingTokenSpend[stor4][address(msg.sender)] + arg1 < minSpend:
        revert with 0, 'Below minimum amount'
    if totalBuyingTokenSpend[stor4][address(msg.sender)] + arg1 > sub_e91bc7c3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x73596f7520686176652072656163686564206d6178696d756d207370656e6420616d6f756e742070657220757365,
                    mem[210 len 18]
    if price <= 0:
        revert with 0, 'SafeMath: division by zero'
    require price
    if not arg1 / price:
        if totalTokenSold > hardcap:
            revert with 0, 'Token presale hardcap reached'
        require ext_code.size(address(stor7.field_0))
        call address(stor7.field_0).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_08d09957[address(msg.sender)] < sub_08d09957[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if tokenBoughtTotal[address(msg.sender)] < tokenBoughtTotal[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if totalBuyingTokenSpend[stor4][address(msg.sender)] + arg1 < totalBuyingTokenSpend[stor4][address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        totalBuyingTokenSpend[stor4][address(msg.sender)] += arg1
        if totalTokenSold < totalTokenSold:
            revert with 0, 'SafeMath: addition overflow'
        emit TokenBuy(msg.sender, 0);
    else:
        require arg1 / price
        if 1000 * arg1 / price / arg1 / price != 1000:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalTokenSold + (1000 * arg1 / price / 10^9) > hardcap:
            revert with 0, 'Token presale hardcap reached'
        require ext_code.size(address(stor7.field_0))
        call address(stor7.field_0).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_08d09957[address(msg.sender)] + (1000 * arg1 / price / 10^9) < sub_08d09957[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_08d09957[address(msg.sender)] += 1000 * arg1 / price / 10^9
        if tokenBoughtTotal[address(msg.sender)] + (1000 * arg1 / price / 10^9) < tokenBoughtTotal[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        tokenBoughtTotal[address(msg.sender)] += 1000 * arg1 / price / 10^9
        if totalBuyingTokenSpend[stor4][address(msg.sender)] + arg1 < totalBuyingTokenSpend[stor4][address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        totalBuyingTokenSpend[stor4][address(msg.sender)] += arg1
        if totalTokenSold + (1000 * arg1 / price / 10^9) < totalTokenSold:
            revert with 0, 'SafeMath: addition overflow'
        totalTokenSold += 1000 * arg1 / price / 10^9
        emit TokenBuy(msg.sender, 1000 * arg1 / price / 10^9);
    stor0 = 1
}

function claim() payable {
    if not isClaimActive:
        revert with 0, 'Claim is not allowed yet'
    if sub_08d09957[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x77596f7520646f6e2774206861766520616e7920756e636c61696d656420746f6b656e,
                    mem[199 len 29]
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_08d09957[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    93,
                    0xfe546865726520617265206e6f7420656e6f75676820746f6b656e7320696e2070726573616c6520636f6e747261637420746f207472616e736665722e20506c65617365207265706f727420746f20636f6e74726163742061646d696e,
                    mem[257 len 3]
    if sub_4b94f120 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - sub_4b94f120:
        if sub_87f3c0b2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_87f3c0b2
        if (0 / sub_87f3c0b2) + 5000 < 0 / sub_87f3c0b2:
            revert with 0, 'SafeMath: addition overflow'
        if (0 / sub_87f3c0b2) + 5000 <= 10000:
            if not tokenBoughtTotal[address(msg.sender)]:
                if sub_08d09957[address(msg.sender)] > tokenBoughtTotal[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenBoughtTotal[address(msg.sender)] - sub_08d09957[address(msg.sender)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)] > sub_08d09957[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_08d09957[address(msg.sender)] = tokenBoughtTotal[address(msg.sender)]
                require ext_code.size(stor6)
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenClaim(msg.sender, -tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)]);
            else:
                require tokenBoughtTotal[address(msg.sender)]
                if (5000 * tokenBoughtTotal[address(msg.sender)]) + (0 / sub_87f3c0b2 * tokenBoughtTotal[address(msg.sender)]) / tokenBoughtTotal[address(msg.sender)] != (0 / sub_87f3c0b2) + 5000:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if sub_08d09957[address(msg.sender)] > tokenBoughtTotal[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenBoughtTotal[address(msg.sender)] - sub_08d09957[address(msg.sender)] > (5000 * tokenBoughtTotal[address(msg.sender)]) + (0 / sub_87f3c0b2 * tokenBoughtTotal[address(msg.sender)]) / 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((5000 * tokenBoughtTotal[address(msg.sender)]) + (0 / sub_87f3c0b2 * tokenBoughtTotal[address(msg.sender)]) / 10000) - tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)] > sub_08d09957[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_08d09957[address(msg.sender)] = -((5000 * tokenBoughtTotal[address(msg.sender)]) + (0 / sub_87f3c0b2 * tokenBoughtTotal[address(msg.sender)]) / 10000) + tokenBoughtTotal[address(msg.sender)]
                require ext_code.size(stor6)
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ((5000 * tokenBoughtTotal[address(msg.sender)]) + (0 / sub_87f3c0b2 * tokenBoughtTotal[address(msg.sender)]) / 10000) - tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenClaim(msg.sender, ((5000 * tokenBoughtTotal[address(msg.sender)]) + (0 / sub_87f3c0b2 * tokenBoughtTotal[address(msg.sender)]) / 10000) - tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)]);
        else:
            if not tokenBoughtTotal[address(msg.sender)]:
                if sub_08d09957[address(msg.sender)] > tokenBoughtTotal[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenBoughtTotal[address(msg.sender)] - sub_08d09957[address(msg.sender)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)] > sub_08d09957[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_08d09957[address(msg.sender)] = tokenBoughtTotal[address(msg.sender)]
                require ext_code.size(stor6)
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenClaim(msg.sender, -tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)]);
            else:
                require tokenBoughtTotal[address(msg.sender)]
                if 10000 * tokenBoughtTotal[address(msg.sender)] / tokenBoughtTotal[address(msg.sender)] != 10000:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if sub_08d09957[address(msg.sender)] > tokenBoughtTotal[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenBoughtTotal[address(msg.sender)] - sub_08d09957[address(msg.sender)] > 10000 * tokenBoughtTotal[address(msg.sender)] / 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (10000 * tokenBoughtTotal[address(msg.sender)] / 10000) - tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)] > sub_08d09957[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_08d09957[address(msg.sender)] = -(10000 * tokenBoughtTotal[address(msg.sender)] / 10000) + tokenBoughtTotal[address(msg.sender)]
                require ext_code.size(stor6)
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (10000 * tokenBoughtTotal[address(msg.sender)] / 10000) - tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenClaim(msg.sender, (10000 * tokenBoughtTotal[address(msg.sender)] / 10000) - tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)]);
    else:
        require block.timestamp - sub_4b94f120
        if (100 * block.timestamp) - (100 * sub_4b94f120) / block.timestamp - sub_4b94f120 != 100:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if sub_87f3c0b2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_87f3c0b2
        if ((100 * block.timestamp) - (100 * sub_4b94f120) / sub_87f3c0b2) + 5000 < (100 * block.timestamp) - (100 * sub_4b94f120) / sub_87f3c0b2:
            revert with 0, 'SafeMath: addition overflow'
        if ((100 * block.timestamp) - (100 * sub_4b94f120) / sub_87f3c0b2) + 5000 <= 10000:
            if not tokenBoughtTotal[address(msg.sender)]:
                if sub_08d09957[address(msg.sender)] > tokenBoughtTotal[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenBoughtTotal[address(msg.sender)] - sub_08d09957[address(msg.sender)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)] > sub_08d09957[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_08d09957[address(msg.sender)] = tokenBoughtTotal[address(msg.sender)]
                require ext_code.size(stor6)
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenClaim(msg.sender, -tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)]);
            else:
                require tokenBoughtTotal[address(msg.sender)]
                if (5000 * tokenBoughtTotal[address(msg.sender)]) + ((100 * block.timestamp) - (100 * sub_4b94f120) / sub_87f3c0b2 * tokenBoughtTotal[address(msg.sender)]) / tokenBoughtTotal[address(msg.sender)] != ((100 * block.timestamp) - (100 * sub_4b94f120) / sub_87f3c0b2) + 5000:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if sub_08d09957[address(msg.sender)] > tokenBoughtTotal[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenBoughtTotal[address(msg.sender)] - sub_08d09957[address(msg.sender)] > (5000 * tokenBoughtTotal[address(msg.sender)]) + ((100 * block.timestamp) - (100 * sub_4b94f120) / sub_87f3c0b2 * tokenBoughtTotal[address(msg.sender)]) / 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((5000 * tokenBoughtTotal[address(msg.sender)]) + ((100 * block.timestamp) - (100 * sub_4b94f120) / sub_87f3c0b2 * tokenBoughtTotal[address(msg.sender)]) / 10000) - tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)] > sub_08d09957[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_08d09957[address(msg.sender)] = -((5000 * tokenBoughtTotal[address(msg.sender)]) + ((100 * block.timestamp) - (100 * sub_4b94f120) / sub_87f3c0b2 * tokenBoughtTotal[address(msg.sender)]) / 10000) + tokenBoughtTotal[address(msg.sender)]
                require ext_code.size(stor6)
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ((5000 * tokenBoughtTotal[address(msg.sender)]) + ((100 * block.timestamp) - (100 * sub_4b94f120) / sub_87f3c0b2 * tokenBoughtTotal[address(msg.sender)]) / 10000) - tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenClaim(msg.sender, ((5000 * tokenBoughtTotal[address(msg.sender)]) + ((100 * block.timestamp) - (100 * sub_4b94f120) / sub_87f3c0b2 * tokenBoughtTotal[address(msg.sender)]) / 10000) - tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)]);
        else:
            if not tokenBoughtTotal[address(msg.sender)]:
                if sub_08d09957[address(msg.sender)] > tokenBoughtTotal[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenBoughtTotal[address(msg.sender)] - sub_08d09957[address(msg.sender)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)] > sub_08d09957[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_08d09957[address(msg.sender)] = tokenBoughtTotal[address(msg.sender)]
                require ext_code.size(stor6)
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenClaim(msg.sender, -tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)]);
            else:
                require tokenBoughtTotal[address(msg.sender)]
                if 10000 * tokenBoughtTotal[address(msg.sender)] / tokenBoughtTotal[address(msg.sender)] != 10000:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if sub_08d09957[address(msg.sender)] > tokenBoughtTotal[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenBoughtTotal[address(msg.sender)] - sub_08d09957[address(msg.sender)] > 10000 * tokenBoughtTotal[address(msg.sender)] / 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (10000 * tokenBoughtTotal[address(msg.sender)] / 10000) - tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)] > sub_08d09957[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_08d09957[address(msg.sender)] = -(10000 * tokenBoughtTotal[address(msg.sender)] / 10000) + tokenBoughtTotal[address(msg.sender)]
                require ext_code.size(stor6)
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (10000 * tokenBoughtTotal[address(msg.sender)] / 10000) - tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenClaim(msg.sender, (10000 * tokenBoughtTotal[address(msg.sender)] / 10000) - tokenBoughtTotal[address(msg.sender)] + sub_08d09957[address(msg.sender)]);
}



}
