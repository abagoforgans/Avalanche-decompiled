contract main {




// =====================  Runtime code  =====================


#
#  - withdrawToVault(uint256 arg1)
#
address storeAddress;
address underlyingAddress;
uint32 stor2;
address vaultAddress;
uint256 stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;
array of address whitelistedStrategies;
array of address activeStrategies;
array of uint256 caps;
array of uint256 investmentRatioNumerators;
array of address withdrawalOrder;
address futureStrategyAddress;
uint256 strategyWhitelistTime;
uint256 investmentRatioDenominator;
uint256 whitelistStrategyTimeLock;
uint8 isInitialized;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function whitelistedStrategies(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < whitelistedStrategies.length
    return whitelistedStrategies[arg1]
}

function withdrawalOrder(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < withdrawalOrder.length
    return address(withdrawalOrder[arg1])
}

function underlyingERC() payable {
    return underlyingAddress
}

function isInitialized() payable {
    return bool(isInitialized)
}

function unsalvagableTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function futureStrategy() payable {
    return futureStrategyAddress
}

function underlying() payable {
    return underlyingAddress
}

function whitelistedStrategyCount() payable {
    return whitelistedStrategies.length
}

function whitelistStrategyTimeLock() payable {
    return whitelistStrategyTimeLock
}

function store() payable {
    return storeAddress
}

function isStrategyWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function activeStrategies(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < activeStrategies.length
    return address(activeStrategies[arg1])
}

function investmentRatioDenominator() payable {
    return investmentRatioDenominator
}

function strategyWhitelistTime() payable {
    return strategyWhitelistTime
}

function caps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < caps.length
    return caps[arg1]
}

function investmentRatioNumerators(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < investmentRatioNumerators.length
    return investmentRatioNumerators[arg1]
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function canWhitelistStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    if futureStrategyAddress != arg1:
        return (futureStrategyAddress == arg1)
    if block.timestamp <= strategyWhitelistTime:
        return (block.timestamp > strategyWhitelistTime)
    return (strategyWhitelistTime > 0)
}

function governance() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function controller() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function finalizeStrategyWhitelist() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    strategyWhitelistTime = 0
    futureStrategyAddress = 0
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, 'new storage shouldn't be empty'
    storeAddress = arg1
}

function investedUnderlyingBalance() payable {
    idx = 0
    s = 0
    while idx < whitelistedStrategies.length:
        mem[0] = 5
        require ext_code.size(whitelistedStrategies[idx])
        staticcall whitelistedStrategies[idx].0x45d01e4a with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + (_24 * whitelistedStrategies.length) < _24 * whitelistedStrategies.length:
        revert with 0, 'SafeMath: addition overflow'
    return (ext_call.return_data[0] + (_24 * whitelistedStrategies.length))
}

function startSaving(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0xf77c4791 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x5aa6e675 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x675468652073656e6465722068617320746f2062652074686520636f6e74726f6c6c6572206f72207661756c74206f7220676f7665726e616e63,
                            mem[222 len 6]
    require ext_code.size(arg1)
    call arg1.0x4983aecd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawFromStrategy(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(vaultAddress) != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0xf77c4791 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x5aa6e675 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x675468652073656e6465722068617320746f2062652074686520636f6e74726f6c6c6572206f72207661756c74206f7220676f7665726e616e63,
                            mem[222 len 6]
    if not stor4[address(arg1)]:
        revert with 0, 'strategy not whitelisted'
    require ext_code.size(arg1)
    call arg1.0xce8c42e8 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unwhitelistStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, '_strategy cannot be 0x0'
    if not stor4[address(arg1)]:
        revert with 0, '_strategy is not whitelisted'
    require ext_code.size(arg1)
    staticcall arg1.0x45d01e4a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7463616e206f6e6c7920756e77686974656c69737420616e20656d7074792073747261746567,
                    mem[202 len 26]
    emit 0x94d1cdb7: arg1
    stor4[address(arg1)] = 0
    idx = 0
    while idx < whitelistedStrategies.length:
        mem[0] = 5
        if whitelistedStrategies[idx] != arg1:
            idx = idx + 1
            continue 
        if idx < whitelistedStrategies.length - 1:
            require whitelistedStrategies.length - 1 < whitelistedStrategies.length
            require idx < whitelistedStrategies.length
            whitelistedStrategies[idx] = whitelistedStrategies[whitelistedStrategies.length]
        require whitelistedStrategies.length
        whitelistedStrategies[whitelistedStrategies.length] = 0
        whitelistedStrategies.length--
}

function announceStrategyWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, '_strategy cannot be 0x0'
    require ext_code.size(arg1)
    staticcall arg1.0x6f307dc3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != underlyingAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x65556e6465726c79696e67206f662073706c6974746572206d757374206d6174636820537472617465677920756e6465726c79696e,
                    mem[217 len 11]
    require ext_code.size(arg1)
    staticcall arg1.0xfbfa77cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x7754686520737472617465677920646f6573206e6f742062656c6f6e6720746f20746869732073706c69747465,
                    mem[209 len 19]
    if whitelistStrategyTimeLock + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    strategyWhitelistTime = whitelistStrategyTimeLock + block.timestamp
    futureStrategyAddress = arg1
    emit 0xb6eb131a: address(arg1), whitelistStrategyTimeLock + block.timestamp
}

function investIntoStrategy(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == address(vaultAddress):
        if not stor4[address(arg1)]:
            revert with 0, 'strategy not whitelisted'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(underlyingAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
    else:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0xf77c4791 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.sender == ext_call.return_data[12 len 20]:
            if not stor4[address(arg1)]:
                revert with 0, 'strategy not whitelisted'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
        else:
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x5aa6e675 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x675468652073656e6465722068617320746f2062652074686520636f6e74726f6c6c6572206f72207661756c74206f7220676f7665726e616e63,
                            mem[222 len 6]
            if not stor4[address(arg1)]:
                revert with 0, 'strategy not whitelisted'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
            mem[324 len 0] = 0
    call underlyingAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function whitelistStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if futureStrategyAddress != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x725468652073747261746567792065786973747320616e64207377697463682074696d656c6f636b20646964206e6f7420656c61707365207965,
                    mem[222 len 6]
    if block.timestamp <= strategyWhitelistTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x725468652073747261746567792065786973747320616e64207377697463682074696d656c6f636b20646964206e6f7420656c61707365207965,
                    mem[222 len 6]
    if strategyWhitelistTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x725468652073747261746567792065786973747320616e64207377697463682074696d656c6f636b20646964206e6f7420656c61707365207965,
                    mem[222 len 6]
    whitelistedStrategies.length++
    stor36B6[stor5.length] = arg1
    stor4[address(arg1)] = 1
    emit 0x6b583e2e: arg1
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    call underlyingAddress with:
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1
        if not approve(address arg1, uint256 arg2), address(arg1) << 64:
            revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    strategyWhitelistTime = 0
    futureStrategyAddress = 0
}

function salvage(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if msg.sender == address(vaultAddress):
        if stor3[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x79746f6b656e20697320646566696e6564206173206e6f742073616c7661676561626c,
                        mem[199 len 29]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3) >> 32
    else:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0xf77c4791 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.sender == ext_call.return_data[12 len 20]:
            if stor3[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x79746f6b656e20697320646566696e6564206173206e6f742073616c7661676561626c,
                            mem[199 len 29]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3) >> 32
        else:
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x5aa6e675 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x675468652073656e6465722068617320746f2062652074686520636f6e74726f6c6c6572206f72207661756c74206f7220676f7665726e616e63,
                            mem[222 len 6]
            if stor3[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x79746f6b656e20697320646566696e6564206173206e6f742073616c7661676561626c,
                            mem[199 len 29]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3) >> 32
            mem[324 len 0] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function configureStrategies(address[] arg1, uint256[] arg2, uint256[] arg3, address[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 228] = msg.sender
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if arg1.length != arg2.length:
        revert with 0, 'investment ratios length invalid'
    if arg1.length != arg3.length:
        revert with 0, 'caps length invalid'
    if whitelistedStrategies.length != arg4.length:
        revert with 0, 'withdrawalOrder length invalid'
    activeStrategies.length = 0
    idx = 0
    while activeStrategies.length > idx:
        uint256(activeStrategies[idx]) = 0
        idx = idx + 1
        continue 
    investmentRatioNumerators.length = 0
    idx = 0
    while investmentRatioNumerators.length > idx:
        investmentRatioNumerators[idx] = 0
        idx = idx + 1
        continue 
    caps.length = 0
    idx = 0
    while caps.length > idx:
        caps[idx] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[32] = 4
        if not stor4[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'strategy not whitelisted'
        require idx < arg1.length
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0x6f307dc3 with:
                gas gas_remaining wei
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != underlyingAddress:
            revert with 0, 
                        32,
                        46,
                        0x6c756e6465726c79696e67206d757374206d6174636820666f722077686974656c69737465642073747261746567,
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 338 len 18]
        require idx < arg1.length
        activeStrategies.length++
        address(activeStrategies[activeStrategies.length]) = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        investmentRatioNumerators.length++
        investmentRatioNumerators[investmentRatioNumerators.length] = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg3.length
        caps.length++
        mem[0] = 7
        caps[caps.length] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        idx = idx + 1
        continue 
    withdrawalOrder.length = 0
    idx = 0
    while withdrawalOrder.length > idx:
        uint256(withdrawalOrder[idx]) = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg4.length:
        require idx < arg4.length
        mem[32] = 4
        if not stor4[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]]:
            revert with 0, 
                        32,
                        35,
                        0x657769746864726177616c207374726174656779206e6f742077686974656c69737465,
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 327 len 29]
        require idx < arg4.length
        withdrawalOrder.length++
        mem[0] = 9
        address(withdrawalOrder[withdrawalOrder.length]) = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]
        idx = idx + 1
        continue 
}

function initSplitter(address arg1, address arg2, address[] arg3, uint256[] arg4, uint256[] arg5, address[] arg6) payable {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = arg6.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 228] = msg.sender
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if isInitialized:
        revert with 0, 'splitter is already initialized'
    isInitialized = 1
    if not arg1:
        revert with 0, '_underlying cannot be empty'
    if not arg2:
        revert with 0, '_vault cannot be empty'
    require ext_code.size(arg2)
    staticcall arg2.0x6f307dc3 with:
            gas gas_remaining wei
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg1:
        revert with 0, 'underlying must match'
    stor3[address(arg1)] = 1
    underlyingAddress = arg1
    address(vaultAddress) = arg2
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0x6f307dc3 with:
                gas gas_remaining wei
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg1:
            revert with 0, 
                        32,
                        46,
                        0x6c756e6465726c79696e67206d757374206d6174636820666f722077686974656c69737465642073747261746567,
                        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 338 len 18]
        require idx < arg3.length
        whitelistedStrategies.length++
        whitelistedStrategies[whitelistedStrategies.length] = mem[(32 * idx) + 140 len 20]
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    if arg3.length != arg4.length:
        revert with 0, 'investment ratios length invalid'
    if arg3.length != arg5.length:
        revert with 0, 'caps length invalid'
    if whitelistedStrategies.length != arg6.length:
        revert with 0, 'withdrawalOrder length invalid'
    activeStrategies.length = 0
    idx = 0
    while activeStrategies.length > idx:
        uint256(activeStrategies[idx]) = 0
        idx = idx + 1
        continue 
    investmentRatioNumerators.length = 0
    idx = 0
    while investmentRatioNumerators.length > idx:
        investmentRatioNumerators[idx] = 0
        idx = idx + 1
        continue 
    caps.length = 0
    idx = 0
    while caps.length > idx:
        caps[idx] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        mem[32] = 4
        if not stor4[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'strategy not whitelisted'
        require idx < arg3.length
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0x6f307dc3 with:
                gas gas_remaining wei
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != underlyingAddress:
            revert with 0, 
                        32,
                        46,
                        0x6c756e6465726c79696e67206d757374206d6174636820666f722077686974656c69737465642073747261746567,
                        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 338 len 18]
        require idx < arg3.length
        activeStrategies.length++
        address(activeStrategies[activeStrategies.length]) = mem[(32 * idx) + 140 len 20]
        require idx < arg4.length
        investmentRatioNumerators.length++
        investmentRatioNumerators[investmentRatioNumerators.length] = mem[(32 * idx) + (32 * arg3.length) + 160]
        require idx < arg5.length
        caps.length++
        mem[0] = 7
        caps[caps.length] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
        idx = idx + 1
        continue 
    withdrawalOrder.length = 0
    idx = 0
    while withdrawalOrder.length > idx:
        uint256(withdrawalOrder[idx]) = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg6.length:
        require idx < arg6.length
        mem[32] = 4
        if not stor4[mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]]:
            revert with 0, 
                        32,
                        35,
                        0x657769746864726177616c207374726174656779206e6f742077686974656c69737465,
                        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 327 len 29]
        require idx < arg6.length
        withdrawalOrder.length++
        mem[0] = 9
        address(withdrawalOrder[withdrawalOrder.length]) = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]
        idx = idx + 1
        continue 
}

function withdrawAllToVault() payable {
    if msg.sender == address(vaultAddress):
        idx = 0
        while idx < withdrawalOrder.length:
            mem[0] = 9
            require ext_code.size(address(withdrawalOrder[idx]))
            staticcall address(withdrawalOrder[idx]).0x45d01e4a with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require idx < withdrawalOrder.length
                mem[0] = 9
                mem[96] = 0xbfd131f100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(withdrawalOrder[idx]))
                call address(withdrawalOrder[idx]).0xbfd131f1 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call underlyingAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                    revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
    else:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0xf77c4791 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x5aa6e675 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x675468652073656e6465722068617320746f2062652074686520636f6e74726f6c6c6572206f72207661756c74206f7220676f7665726e616e63,
                            mem[222 len 6]
        idx = 0
        while idx < withdrawalOrder.length:
            mem[0] = 9
            require ext_code.size(address(withdrawalOrder[idx]))
            staticcall address(withdrawalOrder[idx]).0x45d01e4a with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require idx < withdrawalOrder.length
                mem[0] = 9
                mem[96] = 0xbfd131f100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(withdrawalOrder[idx]))
                call address(withdrawalOrder[idx]).0xbfd131f1 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
            call underlyingAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                    revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
}

function startSaving() payable {
    mem[64] = 96
    if msg.sender == address(vaultAddress):
        mem[100] = this.address
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < activeStrategies.length:
            require idx < investmentRatioNumerators.length
            mem[0] = 8
            if not ext_call.return_data[0]:
                if investmentRatioDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require investmentRatioDenominator
                mem[mem[64] + 4] = this.address
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / investmentRatioDenominator >= ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        idx = idx + 1
                        continue 
                    require idx < caps.length
                    require idx < activeStrategies.length
                    if caps[idx] <= 0:
                        mem[0] = 6
                        _1856 = mem[64]
                        mem[mem[64] + 36] = address(activeStrategies[idx])
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _1857 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1857 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1857 + 36 len 28]
                        mem[64] = _1856 + 164
                        mem[_1856 + 100] = 32
                        mem[_1856 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1856 + 270 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        _1997 = mem[_1857]
                        t = _1857 + 32
                        u = _1856 + 164
                        s = mem[_1857]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1856 + floor32(mem[_1857]) + 164] = mem[_1857 + -(mem[_1857] % 32) + floor32(mem[_1857]) + 64 len mem[_1857] % 32] or Mask(8 * -(mem[_1857] % 32) + 32, -(8 * -(mem[_1857] % 32) + 32) + 256, mem[_1856 + floor32(mem[_1857]) + 164])
                        call underlyingAddress.mem[_1856 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1856 + 168 len _1997 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1856 + 274 len 22]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1856 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1856 + 168] = 32
                            mem[_1856 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1856 + 232] = mem[idx + _1856 + 132]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _1856 + -mem[64] + 264
                        mem[64] = _1856 + ceil32(return_data.size) + 165
                        mem[_1856 + 164] = return_data.size
                        mem[_1856 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1856 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1856 + ceil32(return_data.size) + 275 len 22]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1856 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1856 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1856 + ceil32(return_data.size) + 233] = mem[idx + _1856 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1856 + ceil32(return_data.size) + 233]
                    require ext_code.size(address(activeStrategies[idx]))
                    staticcall address(activeStrategies[idx]).0x45d01e4a with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < caps.length
                    mem[0] = 7
                    if ext_call.return_data[0] >= caps[idx]:
                        idx = idx + 1
                        continue 
                    require idx < caps.length
                    require idx < activeStrategies.length
                    mem[0] = 6
                    if caps[idx] - ext_call.return_data[0] < ext_call.return_data[0]:
                        _2091 = mem[64]
                        mem[mem[64] + 36] = address(activeStrategies[idx])
                        mem[mem[64] + 68] = caps[idx] - ext_call.return_data[0]
                        _2092 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_2092 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2092 + 36 len 28]
                        mem[64] = _2091 + 164
                        mem[_2091 + 100] = 32
                        mem[_2091 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2091 + 270 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        _2429 = mem[_2092]
                        t = _2092 + 32
                        u = _2091 + 164
                        s = mem[_2092]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_2091 + floor32(mem[_2092]) + 164] = mem[_2092 + -(mem[_2092] % 32) + floor32(mem[_2092]) + 64 len mem[_2092] % 32] or Mask(8 * -(mem[_2092] % 32) + 32, -(8 * -(mem[_2092] % 32) + 32) + 256, mem[_2091 + floor32(mem[_2092]) + 164])
                        call underlyingAddress.mem[_2091 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_2091 + 168 len _2429 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2091 + 274 len 22]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2091 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2091 + 168] = 32
                            mem[_2091 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2091 + 232] = mem[idx + _2091 + 132]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _2091 + -mem[64] + 264
                        mem[64] = _2091 + ceil32(return_data.size) + 165
                        mem[_2091 + 164] = return_data.size
                        mem[_2091 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_2091 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_2091 + ceil32(return_data.size) + 275 len 22]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2091 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2091 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2091 + ceil32(return_data.size) + 233] = mem[idx + _2091 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2091 + ceil32(return_data.size) + 233]
                    _2136 = mem[64]
                    mem[mem[64] + 36] = address(activeStrategies[idx])
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _2137 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_2137 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2137 + 36 len 28]
                    mem[64] = _2136 + 164
                    mem[_2136 + 100] = 32
                    mem[_2136 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2136 + 270 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2521 = mem[_2137]
                    t = _2137 + 32
                    u = _2136 + 164
                    s = mem[_2137]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_2136 + floor32(mem[_2137]) + 164] = mem[_2137 + -(mem[_2137] % 32) + floor32(mem[_2137]) + 64 len mem[_2137] % 32] or Mask(8 * -(mem[_2137] % 32) + 32, -(8 * -(mem[_2137] % 32) + 32) + 256, mem[_2136 + floor32(mem[_2137]) + 164])
                    call underlyingAddress.mem[_2136 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_2136 + 168 len _2521 - 4]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_2136 + 274 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_2136 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2136 + 168] = 32
                        mem[_2136 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2136 + 232] = mem[idx + _2136 + 132]
                            idx = idx + 32
                            continue 
                        revert with memory
                          from mem[64]
                           len _2136 + -mem[64] + 264
                    mem[64] = _2136 + ceil32(return_data.size) + 165
                    mem[_2136 + 164] = return_data.size
                    mem[_2136 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_2136 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_2136 + ceil32(return_data.size) + 275 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2136 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2136 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _2136 + ceil32(return_data.size) + 233] = mem[idx + _2136 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_2136 + ceil32(return_data.size) + 233]
                if not 0 / investmentRatioDenominator:
                    idx = idx + 1
                    continue 
                require idx < caps.length
                require idx < activeStrategies.length
                if caps[idx] <= 0:
                    mem[0] = 6
                    _1818 = mem[64]
                    mem[mem[64] + 36] = address(activeStrategies[idx])
                    mem[mem[64] + 68] = 0 / investmentRatioDenominator
                    _1819 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1819 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1819 + 36 len 28]
                    mem[64] = _1818 + 164
                    mem[_1818 + 100] = 32
                    mem[_1818 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1818 + 270 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    _1973 = mem[_1819]
                    t = _1819 + 32
                    u = mem[64]
                    s = mem[_1819]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1819])] = mem[_1819 + floor32(mem[_1819]) + -(mem[_1819] % 32) + 64 len mem[_1819] % 32] or Mask(8 * -(mem[_1819] % 32) + 32, -(8 * -(mem[_1819] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1819])])
                    call underlyingAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1973 + _1818 + -mem[64] + 160]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _3767 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_1818 + 100]
                        _3769 = mem[_1818 + 100]
                        idx = 0
                        while idx < _3769:
                            mem[idx + _3767 + 68] = mem[idx + _1818 + 132]
                            idx = idx + 32
                            continue 
                        if not _3769 % 32:
                            revert with memory
                              from mem[64]
                               len _3769 + _3767 + -mem[64] + 68
                        mem[floor32(_3769) + _3767 + 68] = mem[floor32(_3769) + _3767 + -(_3769 % 32) + 100 len _3769 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_3769) + _3767 + -mem[64] + 100
                    _3611 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3611] = return_data.size
                    mem[_3611 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_3611 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3771 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_1818 + 100]
                    _3773 = mem[_1818 + 100]
                    idx = 0
                    while idx < _3773:
                        mem[idx + _3771 + 68] = mem[idx + _1818 + 132]
                        idx = idx + 32
                        continue 
                    if not _3773 % 32:
                        revert with memory
                          from mem[64]
                           len _3773 + _3771 + -mem[64] + 68
                    mem[floor32(_3773) + _3771 + 68] = mem[floor32(_3773) + _3771 + -(_3773 % 32) + 100 len _3773 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_3773) + _3771 + -mem[64] + 100
                require ext_code.size(address(activeStrategies[idx]))
                staticcall address(activeStrategies[idx]).0x45d01e4a with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < caps.length
                mem[0] = 7
                if ext_call.return_data[0] >= caps[idx]:
                    idx = idx + 1
                    continue 
                require idx < caps.length
                require idx < activeStrategies.length
                mem[0] = 6
                if caps[idx] - ext_call.return_data[0] < 0 / investmentRatioDenominator:
                    _2047 = mem[64]
                    mem[mem[64] + 36] = address(activeStrategies[idx])
                    mem[mem[64] + 68] = caps[idx] - ext_call.return_data[0]
                    _2048 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_2048 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2048 + 36 len 28]
                    mem[64] = _2047 + 164
                    mem[_2047 + 100] = 32
                    mem[_2047 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2047 + 270 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2365 = mem[_2048]
                    t = _2048 + 32
                    u = _2047 + 164
                    s = mem[_2048]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_2047 + floor32(mem[_2048]) + 164] = mem[_2048 + -(mem[_2048] % 32) + floor32(mem[_2048]) + 64 len mem[_2048] % 32] or Mask(8 * -(mem[_2048] % 32) + 32, -(8 * -(mem[_2048] % 32) + 32) + 256, mem[_2047 + floor32(mem[_2048]) + 164])
                    call underlyingAddress.mem[_2047 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_2047 + 168 len _2365 - 4]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_2047 + 274 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_2047 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2047 + 168] = 32
                        mem[_2047 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2047 + 232] = mem[idx + _2047 + 132]
                            idx = idx + 32
                            continue 
                        revert with memory
                          from mem[64]
                           len _2047 + -mem[64] + 264
                    mem[64] = _2047 + ceil32(return_data.size) + 165
                    mem[_2047 + 164] = return_data.size
                    mem[_2047 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_2047 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_2047 + ceil32(return_data.size) + 275 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2047 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2047 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _2047 + ceil32(return_data.size) + 233] = mem[idx + _2047 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_2047 + ceil32(return_data.size) + 233]
                _2087 = mem[64]
                mem[mem[64] + 36] = address(activeStrategies[idx])
                mem[mem[64] + 68] = 0 / investmentRatioDenominator
                _2088 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2088 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2088 + 36 len 28]
                mem[64] = _2087 + 164
                mem[_2087 + 100] = 32
                mem[_2087 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2087 + 270 len 26]
                if not ext_code.size(underlyingAddress):
                    revert with 0, 'Address: call to non-contract'
                _2419 = mem[_2088]
                t = _2088 + 32
                u = mem[64]
                s = mem[_2088]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_2088])] = mem[_2088 + floor32(mem[_2088]) + -(mem[_2088] % 32) + 64 len mem[_2088] % 32] or Mask(8 * -(mem[_2088] % 32) + 32, -(8 * -(mem[_2088] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2088])])
                call underlyingAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2419 + _2087 + -mem[64] + 160]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _3783 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_2087 + 100]
                    _3785 = mem[_2087 + 100]
                    idx = 0
                    while idx < _3785:
                        mem[idx + _3783 + 68] = mem[idx + _2087 + 132]
                        idx = idx + 32
                        continue 
                    if not _3785 % 32:
                        revert with memory
                          from mem[64]
                           len _3785 + _3783 + -mem[64] + 68
                    mem[floor32(_3785) + _3783 + 68] = mem[floor32(_3785) + _3783 + -(_3785 % 32) + 100 len _3785 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_3785) + _3783 + -mem[64] + 100
                _3613 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_3613] = return_data.size
                mem[_3613 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_3613 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _3787 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_2087 + 100]
                _3789 = mem[_2087 + 100]
                idx = 0
                while idx < _3789:
                    mem[idx + _3787 + 68] = mem[idx + _2087 + 132]
                    idx = idx + 32
                    continue 
                if not _3789 % 32:
                    revert with memory
                      from mem[64]
                       len _3789 + _3787 + -mem[64] + 68
                mem[floor32(_3789) + _3787 + 68] = mem[floor32(_3789) + _3787 + -(_3789 % 32) + 100 len _3789 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_3789) + _3787 + -mem[64] + 100
            if investmentRatioNumerators[idx] * ext_call.return_data[0] / ext_call.return_data[0] != investmentRatioNumerators[idx]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if investmentRatioDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require investmentRatioDenominator
            mem[mem[64] + 4] = this.address
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if investmentRatioNumerators[idx] * ext_call.return_data[0] / investmentRatioDenominator >= ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    idx = idx + 1
                    continue 
                require idx < caps.length
                require idx < activeStrategies.length
                if caps[idx] <= 0:
                    mem[0] = 6
                    _1885 = mem[64]
                    mem[mem[64] + 36] = address(activeStrategies[idx])
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _1886 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1886 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1886 + 36 len 28]
                    mem[64] = _1885 + 164
                    mem[_1885 + 100] = 32
                    mem[_1885 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1885 + 270 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2019 = mem[_1886]
                    t = _1886 + 32
                    u = mem[64]
                    s = mem[_1886]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1886])] = mem[_1886 + floor32(mem[_1886]) + -(mem[_1886] % 32) + 64 len mem[_1886] % 32] or Mask(8 * -(mem[_1886] % 32) + 32, -(8 * -(mem[_1886] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1886])])
                    call underlyingAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2019 + _1885 + -mem[64] + 160]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _3743 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_1885 + 100]
                        _3745 = mem[_1885 + 100]
                        idx = 0
                        while idx < _3745:
                            mem[idx + _3743 + 68] = mem[idx + _1885 + 132]
                            idx = idx + 32
                            continue 
                        if not _3745 % 32:
                            revert with memory
                              from mem[64]
                               len _3745 + _3743 + -mem[64] + 68
                        mem[floor32(_3745) + _3743 + 68] = mem[floor32(_3745) + _3743 + -(_3745 % 32) + 100 len _3745 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_3745) + _3743 + -mem[64] + 100
                    _3608 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3608] = return_data.size
                    mem[_3608 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_3608 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3747 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_1885 + 100]
                    _3749 = mem[_1885 + 100]
                    idx = 0
                    while idx < _3749:
                        mem[idx + _3747 + 68] = mem[idx + _1885 + 132]
                        idx = idx + 32
                        continue 
                    if not _3749 % 32:
                        revert with memory
                          from mem[64]
                           len _3749 + _3747 + -mem[64] + 68
                    mem[floor32(_3749) + _3747 + 68] = mem[floor32(_3749) + _3747 + -(_3749 % 32) + 100 len _3749 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_3749) + _3747 + -mem[64] + 100
                require ext_code.size(address(activeStrategies[idx]))
                staticcall address(activeStrategies[idx]).0x45d01e4a with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < caps.length
                mem[0] = 7
                if ext_call.return_data[0] >= caps[idx]:
                    idx = idx + 1
                    continue 
                require idx < caps.length
                require idx < activeStrategies.length
                mem[0] = 6
                if caps[idx] - ext_call.return_data[0] < ext_call.return_data[0]:
                    _2131 = mem[64]
                    mem[mem[64] + 36] = address(activeStrategies[idx])
                    mem[mem[64] + 68] = caps[idx] - ext_call.return_data[0]
                    _2132 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_2132 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2132 + 36 len 28]
                    mem[64] = _2131 + 164
                    mem[_2131 + 100] = 32
                    mem[_2131 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2131 + 270 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2507 = mem[_2132]
                    t = _2132 + 32
                    u = _2131 + 164
                    s = mem[_2132]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_2131 + floor32(mem[_2132]) + 164] = mem[_2132 + -(mem[_2132] % 32) + floor32(mem[_2132]) + 64 len mem[_2132] % 32] or Mask(8 * -(mem[_2132] % 32) + 32, -(8 * -(mem[_2132] % 32) + 32) + 256, mem[_2131 + floor32(mem[_2132]) + 164])
                    call underlyingAddress.mem[_2131 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_2131 + 168 len _2507 - 4]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_2131 + 274 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_2131 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2131 + 168] = 32
                        mem[_2131 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2131 + 232] = mem[idx + _2131 + 132]
                            idx = idx + 32
                            continue 
                        revert with memory
                          from mem[64]
                           len _2131 + -mem[64] + 264
                    mem[64] = _2131 + ceil32(return_data.size) + 165
                    mem[_2131 + 164] = return_data.size
                    mem[_2131 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_2131 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_2131 + ceil32(return_data.size) + 275 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2131 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2131 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _2131 + ceil32(return_data.size) + 233] = mem[idx + _2131 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_2131 + ceil32(return_data.size) + 233]
                _2167 = mem[64]
                mem[mem[64] + 36] = address(activeStrategies[idx])
                mem[mem[64] + 68] = ext_call.return_data[0]
                _2168 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2168 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2168 + 36 len 28]
                mem[64] = _2167 + 164
                mem[_2167 + 100] = 32
                mem[_2167 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2167 + 270 len 26]
                if not ext_code.size(underlyingAddress):
                    revert with 0, 'Address: call to non-contract'
                _2599 = mem[_2168]
                t = _2168 + 32
                u = _2167 + 164
                s = mem[_2168]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_2167 + floor32(mem[_2168]) + 164] = mem[_2168 + -(mem[_2168] % 32) + floor32(mem[_2168]) + 64 len mem[_2168] % 32] or Mask(8 * -(mem[_2168] % 32) + 32, -(8 * -(mem[_2168] % 32) + 32) + 256, mem[_2167 + floor32(mem[_2168]) + 164])
                call underlyingAddress.mem[_2167 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_2167 + 168 len _2599 - 4]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_2167 + 274 len 22]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_2167 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2167 + 168] = 32
                    mem[_2167 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _2167 + 232] = mem[idx + _2167 + 132]
                        idx = idx + 32
                        continue 
                    revert with memory
                      from mem[64]
                       len _2167 + -mem[64] + 264
                mem[64] = _2167 + ceil32(return_data.size) + 165
                mem[_2167 + 164] = return_data.size
                mem[_2167 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_2167 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_2167 + ceil32(return_data.size) + 275 len 22]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2167 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2167 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _2167 + ceil32(return_data.size) + 233] = mem[idx + _2167 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_2167 + ceil32(return_data.size) + 233]
            if not investmentRatioNumerators[idx] * ext_call.return_data[0] / investmentRatioDenominator:
                idx = idx + 1
                continue 
            require idx < caps.length
            require idx < activeStrategies.length
            if caps[idx] <= 0:
                mem[0] = 6
                _1847 = mem[64]
                mem[mem[64] + 36] = address(activeStrategies[idx])
                mem[mem[64] + 68] = investmentRatioNumerators[idx] * ext_call.return_data[0] / investmentRatioDenominator
                _1848 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1848 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1848 + 36 len 28]
                mem[64] = _1847 + 164
                mem[_1847 + 100] = 32
                mem[_1847 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1847 + 270 len 26]
                if not ext_code.size(underlyingAddress):
                    revert with 0, 'Address: call to non-contract'
                _1992 = mem[_1848]
                t = _1848 + 32
                u = mem[64]
                s = mem[_1848]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_1848])] = mem[_1848 + floor32(mem[_1848]) + -(mem[_1848] % 32) + 64 len mem[_1848] % 32] or Mask(8 * -(mem[_1848] % 32) + 32, -(8 * -(mem[_1848] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1848])])
                call underlyingAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1992 + _1847 + -mem[64] + 160]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _3719 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_1847 + 100]
                    _3721 = mem[_1847 + 100]
                    idx = 0
                    while idx < _3721:
                        mem[idx + _3719 + 68] = mem[idx + _1847 + 132]
                        idx = idx + 32
                        continue 
                    if not _3721 % 32:
                        revert with memory
                          from mem[64]
                           len _3721 + _3719 + -mem[64] + 68
                    mem[floor32(_3721) + _3719 + 68] = mem[floor32(_3721) + _3719 + -(_3721 % 32) + 100 len _3721 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_3721) + _3719 + -mem[64] + 100
                _3605 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_3605] = return_data.size
                mem[_3605 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_3605 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _3723 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_1847 + 100]
                _3725 = mem[_1847 + 100]
                idx = 0
                while idx < _3725:
                    mem[idx + _3723 + 68] = mem[idx + _1847 + 132]
                    idx = idx + 32
                    continue 
                if not _3725 % 32:
                    revert with memory
                      from mem[64]
                       len _3725 + _3723 + -mem[64] + 68
                mem[floor32(_3725) + _3723 + 68] = mem[floor32(_3725) + _3723 + -(_3725 % 32) + 100 len _3725 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_3725) + _3723 + -mem[64] + 100
            require ext_code.size(address(activeStrategies[idx]))
            staticcall address(activeStrategies[idx]).0x45d01e4a with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < caps.length
            mem[0] = 7
            if ext_call.return_data[0] >= caps[idx]:
                idx = idx + 1
                continue 
            require idx < caps.length
            require idx < activeStrategies.length
            mem[0] = 6
            if caps[idx] - ext_call.return_data[0] >= investmentRatioNumerators[idx] * ext_call.return_data[0] / investmentRatioDenominator:
                _2127 = mem[64]
                mem[mem[64] + 36] = address(activeStrategies[idx])
                mem[mem[64] + 68] = investmentRatioNumerators[idx] * ext_call.return_data[0] / investmentRatioDenominator
                _2128 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2128 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2128 + 36 len 28]
                mem[64] = _2127 + 164
                mem[_2127 + 100] = 32
                mem[_2127 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2127 + 270 len 26]
                if not ext_code.size(underlyingAddress):
                    revert with 0, 'Address: call to non-contract'
                _2497 = mem[_2128]
                t = _2128 + 32
                u = _2127 + 164
                s = mem[_2128]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_2127 + floor32(mem[_2128]) + 164] = mem[_2128 + -(mem[_2128] % 32) + floor32(mem[_2128]) + 64 len mem[_2128] % 32] or Mask(8 * -(mem[_2128] % 32) + 32, -(8 * -(mem[_2128] % 32) + 32) + 256, mem[_2127 + floor32(mem[_2128]) + 164])
                call underlyingAddress.mem[_2127 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_2127 + 168 len _2497 - 4]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_2127 + 274 len 22]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_2127 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2127 + 168] = 32
                    mem[_2127 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _2127 + 232] = mem[idx + _2127 + 132]
                        idx = idx + 32
                        continue 
                    revert with memory
                      from mem[64]
                       len _2127 + -mem[64] + 264
                mem[64] = _2127 + ceil32(return_data.size) + 165
                mem[_2127 + 164] = return_data.size
                mem[_2127 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_2127 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_2127 + ceil32(return_data.size) + 275 len 22]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2127 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2127 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _2127 + ceil32(return_data.size) + 233] = mem[idx + _2127 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_2127 + ceil32(return_data.size) + 233]
            _2079 = mem[64]
            mem[mem[64] + 36] = address(activeStrategies[idx])
            mem[mem[64] + 68] = caps[idx] - ext_call.return_data[0]
            _2080 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2080 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2080 + 36 len 28]
            mem[64] = _2079 + 164
            mem[_2079 + 100] = 32
            mem[_2079 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2079 + 270 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            _2409 = mem[_2080]
            t = _2080 + 32
            u = mem[64]
            s = mem[_2080]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_2080])] = mem[_2080 + floor32(mem[_2080]) + -(mem[_2080] % 32) + 64 len mem[_2080] % 32] or Mask(8 * -(mem[_2080] % 32) + 32, -(8 * -(mem[_2080] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2080])])
            call underlyingAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2409 + _2079 + -mem[64] + 160]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _3727 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_2079 + 100]
                _3729 = mem[_2079 + 100]
                idx = 0
                while idx < _3729:
                    mem[idx + _3727 + 68] = mem[idx + _2079 + 132]
                    idx = idx + 32
                    continue 
                if not _3729 % 32:
                    revert with memory
                      from mem[64]
                       len _3729 + _3727 + -mem[64] + 68
                mem[floor32(_3729) + _3727 + 68] = mem[floor32(_3729) + _3727 + -(_3729 % 32) + 100 len _3729 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_3729) + _3727 + -mem[64] + 100
            _3606 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_3606] = return_data.size
            mem[_3606 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_3606 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _3731 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_2079 + 100]
            _3733 = mem[_2079 + 100]
            idx = 0
            while idx < _3733:
                mem[idx + _3731 + 68] = mem[idx + _2079 + 132]
                idx = idx + 32
                continue 
            if not _3733 % 32:
                revert with memory
                  from mem[64]
                   len _3733 + _3731 + -mem[64] + 68
            mem[floor32(_3733) + _3731 + 68] = mem[floor32(_3733) + _3731 + -(_3733 % 32) + 100 len _3733 % 32]
            revert with memory
              from mem[64]
               len floor32(_3733) + _3731 + -mem[64] + 100
    else:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0xf77c4791 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.sender == ext_call.return_data[12 len 20]:
            mem[100] = this.address
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < activeStrategies.length:
                require idx < investmentRatioNumerators.length
                mem[0] = 8
                if ext_call.return_data[0]:
                    if investmentRatioNumerators[idx] * ext_call.return_data[0] / ext_call.return_data[0] != investmentRatioNumerators[idx]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if investmentRatioDenominator <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require investmentRatioDenominator
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if investmentRatioNumerators[idx] * ext_call.return_data[0] / investmentRatioDenominator < ext_call.return_data[0]:
                        if not investmentRatioNumerators[idx] * ext_call.return_data[0] / investmentRatioDenominator:
                            idx = idx + 1
                            continue 
                        require idx < caps.length
                        require idx < activeStrategies.length
                        if caps[idx] <= 0:
                            mem[0] = 6
                            _1859 = mem[64]
                            mem[mem[64] + 36] = address(activeStrategies[idx])
                            mem[mem[64] + 68] = investmentRatioNumerators[idx] * ext_call.return_data[0] / investmentRatioDenominator
                            _1860 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1860 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1860 + 36 len 28]
                            mem[64] = _1859 + 164
                            mem[_1859 + 100] = 32
                            mem[_1859 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1859 + 270 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            _2001 = mem[_1860]
                            t = _1860 + 32
                            u = _1859 + 164
                            s = mem[_1860]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1859 + floor32(mem[_1860]) + 164] = mem[_1860 + -(mem[_1860] % 32) + floor32(mem[_1860]) + 64 len mem[_1860] % 32] or Mask(8 * -(mem[_1860] % 32) + 32, -(8 * -(mem[_1860] % 32) + 32) + 256, mem[_1859 + floor32(mem[_1860]) + 164])
                            call underlyingAddress.mem[_1859 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1859 + 168 len _2001 - 4]
                            if not return_data.size:
                                if ext_call.success:
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_1859 + 274 len 22]
                                    idx = idx + 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1859 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1859 + 168] = 32
                                mem[_1859 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1859 + 232] = mem[idx + _1859 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with memory
                                  from mem[64]
                                   len _1859 + -mem[64] + 264
                            mem[64] = _1859 + ceil32(return_data.size) + 165
                            mem[_1859 + 164] = return_data.size
                            mem[_1859 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1859 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1859 + ceil32(return_data.size) + 275 len 22]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1859 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1859 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1859 + ceil32(return_data.size) + 233] = mem[idx + _1859 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1859 + ceil32(return_data.size) + 233]
                        require ext_code.size(address(activeStrategies[idx]))
                        staticcall address(activeStrategies[idx]).0x45d01e4a with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < caps.length
                        mem[0] = 7
                        if ext_call.return_data[0] >= caps[idx]:
                            idx = idx + 1
                            continue 
                        require idx < caps.length
                        require idx < activeStrategies.length
                        mem[0] = 6
                        if caps[idx] - ext_call.return_data[0] < investmentRatioNumerators[idx] * ext_call.return_data[0] / investmentRatioDenominator:
                            _2095 = mem[64]
                            mem[mem[64] + 36] = address(activeStrategies[idx])
                            mem[mem[64] + 68] = caps[idx] - ext_call.return_data[0]
                            _2096 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2096 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2096 + 36 len 28]
                            mem[64] = _2095 + 164
                            mem[_2095 + 100] = 32
                            mem[_2095 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2095 + 270 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            _2439 = mem[_2096]
                            t = _2096 + 32
                            u = _2095 + 164
                            s = mem[_2096]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_2095 + floor32(mem[_2096]) + 164] = mem[_2096 + -(mem[_2096] % 32) + floor32(mem[_2096]) + 64 len mem[_2096] % 32] or Mask(8 * -(mem[_2096] % 32) + 32, -(8 * -(mem[_2096] % 32) + 32) + 256, mem[_2095 + floor32(mem[_2096]) + 164])
                            call underlyingAddress.mem[_2095 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_2095 + 168 len _2439 - 4]
                            if not return_data.size:
                                if ext_call.success:
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2095 + 274 len 22]
                                    idx = idx + 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_2095 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2095 + 168] = 32
                                mem[_2095 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _2095 + 232] = mem[idx + _2095 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with memory
                                  from mem[64]
                                   len _2095 + -mem[64] + 264
                            mem[64] = _2095 + ceil32(return_data.size) + 165
                            mem[_2095 + 164] = return_data.size
                            mem[_2095 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_2095 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2095 + ceil32(return_data.size) + 275 len 22]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2095 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2095 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2095 + ceil32(return_data.size) + 233] = mem[idx + _2095 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2095 + ceil32(return_data.size) + 233]
                        _2140 = mem[64]
                        mem[mem[64] + 36] = address(activeStrategies[idx])
                        mem[mem[64] + 68] = investmentRatioNumerators[idx] * ext_call.return_data[0] / investmentRatioDenominator
                        _2141 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_2141 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2141 + 36 len 28]
                        mem[64] = _2140 + 164
                        mem[_2140 + 100] = 32
                        mem[_2140 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2140 + 270 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        _2529 = mem[_2141]
                        t = _2141 + 32
                        u = _2140 + 164
                        s = mem[_2141]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_2140 + floor32(mem[_2141]) + 164] = mem[_2141 + -(mem[_2141] % 32) + floor32(mem[_2141]) + 64 len mem[_2141] % 32] or Mask(8 * -(mem[_2141] % 32) + 32, -(8 * -(mem[_2141] % 32) + 32) + 256, mem[_2140 + floor32(mem[_2141]) + 164])
                        call underlyingAddress.mem[_2140 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_2140 + 168 len _2529 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2140 + 274 len 22]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2140 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2140 + 168] = 32
                            mem[_2140 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2140 + 232] = mem[idx + _2140 + 132]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _2140 + -mem[64] + 264
                        mem[64] = _2140 + ceil32(return_data.size) + 165
                        mem[_2140 + 164] = return_data.size
                        mem[_2140 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_2140 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_2140 + ceil32(return_data.size) + 275 len 22]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2140 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2140 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2140 + ceil32(return_data.size) + 233] = mem[idx + _2140 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2140 + ceil32(return_data.size) + 233]
                    if not ext_call.return_data[0]:
                        idx = idx + 1
                        continue 
                    require idx < caps.length
                    require idx < activeStrategies.length
                    if caps[idx] <= 0:
                        mem[0] = 6
                        _1893 = mem[64]
                        mem[mem[64] + 36] = address(activeStrategies[idx])
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _1894 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1894 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1894 + 36 len 28]
                        mem[64] = _1893 + 164
                        mem[_1893 + 100] = 32
                        mem[_1893 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1893 + 270 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        _2027 = mem[_1894]
                        t = _1894 + 32
                        u = _1893 + 164
                        s = mem[_1894]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1893 + floor32(mem[_1894]) + 164] = mem[_1894 + -(mem[_1894] % 32) + floor32(mem[_1894]) + 64 len mem[_1894] % 32] or Mask(8 * -(mem[_1894] % 32) + 32, -(8 * -(mem[_1894] % 32) + 32) + 256, mem[_1893 + floor32(mem[_1894]) + 164])
                        call underlyingAddress.mem[_1893 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1893 + 168 len _2027 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1893 + 274 len 22]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1893 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1893 + 168] = 32
                            mem[_1893 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1893 + 232] = mem[idx + _1893 + 132]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _1893 + -mem[64] + 264
                        mem[64] = _1893 + ceil32(return_data.size) + 165
                        mem[_1893 + 164] = return_data.size
                        mem[_1893 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1893 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1893 + ceil32(return_data.size) + 275 len 22]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1893 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1893 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1893 + ceil32(return_data.size) + 233] = mem[idx + _1893 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1893 + ceil32(return_data.size) + 233]
                    require ext_code.size(address(activeStrategies[idx]))
                    staticcall address(activeStrategies[idx]).0x45d01e4a with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < caps.length
                    mem[0] = 7
                    if ext_call.return_data[0] >= caps[idx]:
                        idx = idx + 1
                        continue 
                    require idx < caps.length
                    require idx < activeStrategies.length
                    mem[0] = 6
                    if caps[idx] - ext_call.return_data[0] < ext_call.return_data[0]:
                        _2144 = mem[64]
                        mem[mem[64] + 36] = address(activeStrategies[idx])
                        mem[mem[64] + 68] = caps[idx] - ext_call.return_data[0]
                        _2145 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_2145 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2145 + 36 len 28]
                        mem[64] = _2144 + 164
                        mem[_2144 + 100] = 32
                        mem[_2144 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2144 + 270 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        _2539 = mem[_2145]
                        t = _2145 + 32
                        u = _2144 + 164
                        s = mem[_2145]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_2144 + floor32(mem[_2145]) + 164] = mem[_2145 + -(mem[_2145] % 32) + floor32(mem[_2145]) + 64 len mem[_2145] % 32] or Mask(8 * -(mem[_2145] % 32) + 32, -(8 * -(mem[_2145] % 32) + 32) + 256, mem[_2144 + floor32(mem[_2145]) + 164])
                        call underlyingAddress.mem[_2144 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_2144 + 168 len _2539 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2144 + 274 len 22]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2144 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2144 + 168] = 32
                            mem[_2144 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2144 + 232] = mem[idx + _2144 + 132]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _2144 + -mem[64] + 264
                        mem[64] = _2144 + ceil32(return_data.size) + 165
                        mem[_2144 + 164] = return_data.size
                        mem[_2144 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_2144 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_2144 + ceil32(return_data.size) + 275 len 22]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2144 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2144 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2144 + ceil32(return_data.size) + 233] = mem[idx + _2144 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2144 + ceil32(return_data.size) + 233]
                    _2175 = mem[64]
                    mem[mem[64] + 36] = address(activeStrategies[idx])
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _2176 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_2176 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2176 + 36 len 28]
                    mem[64] = _2175 + 164
                    mem[_2175 + 100] = 32
                    mem[_2175 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2175 + 270 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2628 = mem[_2176]
                    t = _2176 + 32
                    u = _2175 + 164
                    s = mem[_2176]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_2175 + floor32(mem[_2176]) + 164] = mem[_2176 + -(mem[_2176] % 32) + floor32(mem[_2176]) + 64 len mem[_2176] % 32] or Mask(8 * -(mem[_2176] % 32) + 32, -(8 * -(mem[_2176] % 32) + 32) + 256, mem[_2175 + floor32(mem[_2176]) + 164])
                    call underlyingAddress.mem[_2175 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_2175 + 168 len _2628 - 4]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_2175 + 274 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_2175 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2175 + 168] = 32
                        mem[_2175 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2175 + 232] = mem[idx + _2175 + 132]
                            idx = idx + 32
                            continue 
                        revert with memory
                          from mem[64]
                           len _2175 + -mem[64] + 264
                    mem[64] = _2175 + ceil32(return_data.size) + 165
                    mem[_2175 + 164] = return_data.size
                    mem[_2175 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_2175 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_2175 + ceil32(return_data.size) + 275 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2175 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2175 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _2175 + ceil32(return_data.size) + 233] = mem[idx + _2175 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_2175 + ceil32(return_data.size) + 233]
                if investmentRatioDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require investmentRatioDenominator
                mem[mem[64] + 4] = this.address
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / investmentRatioDenominator < ext_call.return_data[0]:
                    if not 0 / investmentRatioDenominator:
                        idx = idx + 1
                        continue 
                    require idx < caps.length
                    require idx < activeStrategies.length
                    if caps[idx] <= 0:
                        mem[0] = 6
                        _1829 = mem[64]
                        mem[mem[64] + 36] = address(activeStrategies[idx])
                        mem[mem[64] + 68] = 0 / investmentRatioDenominator
                        _1830 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1830 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1830 + 36 len 28]
                        mem[64] = _1829 + 164
                        mem[_1829 + 100] = 32
                        mem[_1829 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1829 + 270 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        _1980 = mem[_1830]
                        t = _1830 + 32
                        u = _1829 + 164
                        s = mem[_1830]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1829 + floor32(mem[_1830]) + 164] = mem[_1830 + -(mem[_1830] % 32) + floor32(mem[_1830]) + 64 len mem[_1830] % 32] or Mask(8 * -(mem[_1830] % 32) + 32, -(8 * -(mem[_1830] % 32) + 32) + 256, mem[_1829 + floor32(mem[_1830]) + 164])
                        call underlyingAddress.mem[_1829 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1829 + 168 len _1980 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1829 + 274 len 22]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1829 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1829 + 168] = 32
                            mem[_1829 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1829 + 232] = mem[idx + _1829 + 132]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _1829 + -mem[64] + 264
                        mem[64] = _1829 + ceil32(return_data.size) + 165
                        mem[_1829 + 164] = return_data.size
                        mem[_1829 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1829 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1829 + ceil32(return_data.size) + 275 len 22]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1829 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1829 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1829 + ceil32(return_data.size) + 233] = mem[idx + _1829 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1829 + ceil32(return_data.size) + 233]
                    require ext_code.size(address(activeStrategies[idx]))
                    staticcall address(activeStrategies[idx]).0x45d01e4a with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < caps.length
                    mem[0] = 7
                    if ext_call.return_data[0] >= caps[idx]:
                        idx = idx + 1
                        continue 
                    require idx < caps.length
                    require idx < activeStrategies.length
                    mem[0] = 6
                    if caps[idx] - ext_call.return_data[0] < 0 / investmentRatioDenominator:
                        _2059 = mem[64]
                        mem[mem[64] + 36] = address(activeStrategies[idx])
                        mem[mem[64] + 68] = caps[idx] - ext_call.return_data[0]
                        _2060 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_2060 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2060 + 36 len 28]
                        mem[64] = _2059 + 164
                        mem[_2059 + 100] = 32
                        mem[_2059 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2059 + 270 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        _2381 = mem[_2060]
                        t = _2060 + 32
                        u = _2059 + 164
                        s = mem[_2060]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_2059 + floor32(mem[_2060]) + 164] = mem[_2060 + -(mem[_2060] % 32) + floor32(mem[_2060]) + 64 len mem[_2060] % 32] or Mask(8 * -(mem[_2060] % 32) + 32, -(8 * -(mem[_2060] % 32) + 32) + 256, mem[_2059 + floor32(mem[_2060]) + 164])
                        call underlyingAddress.mem[_2059 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_2059 + 168 len _2381 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2059 + 274 len 22]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2059 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2059 + 168] = 32
                            mem[_2059 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2059 + 232] = mem[idx + _2059 + 132]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _2059 + -mem[64] + 264
                        mem[64] = _2059 + ceil32(return_data.size) + 165
                        mem[_2059 + 164] = return_data.size
                        mem[_2059 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_2059 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_2059 + ceil32(return_data.size) + 275 len 22]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2059 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2059 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2059 + ceil32(return_data.size) + 233] = mem[idx + _2059 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2059 + ceil32(return_data.size) + 233]
                    _2103 = mem[64]
                    mem[mem[64] + 36] = address(activeStrategies[idx])
                    mem[mem[64] + 68] = 0 / investmentRatioDenominator
                    _2104 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_2104 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2104 + 36 len 28]
                    mem[64] = _2103 + 164
                    mem[_2103 + 100] = 32
                    mem[_2103 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2103 + 270 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2449 = mem[_2104]
                    t = _2104 + 32
                    u = mem[64]
                    s = mem[_2104]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2104])] = mem[_2104 + floor32(mem[_2104]) + -(mem[_2104] % 32) + 64 len mem[_2104] % 32] or Mask(8 * -(mem[_2104] % 32) + 32, -(8 * -(mem[_2104] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2104])])
                    call underlyingAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2449 + _2103 + -mem[64] + 160]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _3879 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_2103 + 100]
                        _3881 = mem[_2103 + 100]
                        idx = 0
                        while idx < _3881:
                            mem[idx + _3879 + 68] = mem[idx + _2103 + 132]
                            idx = idx + 32
                            continue 
                        if not _3881 % 32:
                            revert with memory
                              from mem[64]
                               len _3881 + _3879 + -mem[64] + 68
                        mem[floor32(_3881) + _3879 + 68] = mem[floor32(_3881) + _3879 + -(_3881 % 32) + 100 len _3881 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_3881) + _3879 + -mem[64] + 100
                    _3628 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3628] = return_data.size
                    mem[_3628 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_3628 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3883 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_2103 + 100]
                    _3885 = mem[_2103 + 100]
                    idx = 0
                    while idx < _3885:
                        mem[idx + _3883 + 68] = mem[idx + _2103 + 132]
                        idx = idx + 32
                        continue 
                    if not _3885 % 32:
                        revert with memory
                          from mem[64]
                           len _3885 + _3883 + -mem[64] + 68
                    mem[floor32(_3885) + _3883 + 68] = mem[floor32(_3885) + _3883 + -(_3885 % 32) + 100 len _3885 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_3885) + _3883 + -mem[64] + 100
                if not ext_call.return_data[0]:
                    idx = idx + 1
                    continue 
                require idx < caps.length
                require idx < activeStrategies.length
                if caps[idx] <= 0:
                    mem[0] = 6
                    _1868 = mem[64]
                    mem[mem[64] + 36] = address(activeStrategies[idx])
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _1869 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1869 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1869 + 36 len 28]
                    mem[64] = _1868 + 164
                    mem[_1868 + 100] = 32
                    mem[_1868 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1868 + 270 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2006 = mem[_1869]
                    t = _1869 + 32
                    u = mem[64]
                    s = mem[_1869]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1869])] = mem[_1869 + floor32(mem[_1869]) + -(mem[_1869] % 32) + 64 len mem[_1869] % 32] or Mask(8 * -(mem[_1869] % 32) + 32, -(8 * -(mem[_1869] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1869])])
                    call underlyingAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2006 + _1868 + -mem[64] + 160]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _3887 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_1868 + 100]
                        _3889 = mem[_1868 + 100]
                        idx = 0
                        while idx < _3889:
                            mem[idx + _3887 + 68] = mem[idx + _1868 + 132]
                            idx = idx + 32
                            continue 
                        if not _3889 % 32:
                            revert with memory
                              from mem[64]
                               len _3889 + _3887 + -mem[64] + 68
                        mem[floor32(_3889) + _3887 + 68] = mem[floor32(_3889) + _3887 + -(_3889 % 32) + 100 len _3889 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_3889) + _3887 + -mem[64] + 100
                    _3629 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3629] = return_data.size
                    mem[_3629 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_3629 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3891 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_1868 + 100]
                    _3893 = mem[_1868 + 100]
                    idx = 0
                    while idx < _3893:
                        mem[idx + _3891 + 68] = mem[idx + _1868 + 132]
                        idx = idx + 32
                        continue 
                    if not _3893 % 32:
                        revert with memory
                          from mem[64]
                           len _3893 + _3891 + -mem[64] + 68
                    mem[floor32(_3893) + _3891 + 68] = mem[floor32(_3893) + _3891 + -(_3893 % 32) + 100 len _3893 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_3893) + _3891 + -mem[64] + 100
                require ext_code.size(address(activeStrategies[idx]))
                staticcall address(activeStrategies[idx]).0x45d01e4a with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < caps.length
                mem[0] = 7
                if ext_call.return_data[0] >= caps[idx]:
                    idx = idx + 1
                    continue 
                require idx < caps.length
                require idx < activeStrategies.length
                mem[0] = 6
                if caps[idx] - ext_call.return_data[0] < ext_call.return_data[0]:
                    _2107 = mem[64]
                    mem[mem[64] + 36] = address(activeStrategies[idx])
                    mem[mem[64] + 68] = caps[idx] - ext_call.return_data[0]
                    _2108 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_2108 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2108 + 36 len 28]
                    mem[64] = _2107 + 164
                    mem[_2107 + 100] = 32
                    mem[_2107 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2107 + 270 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2459 = mem[_2108]
                    t = _2108 + 32
                    u = mem[64]
                    s = mem[_2108]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2108])] = mem[_2108 + floor32(mem[_2108]) + -(mem[_2108] % 32) + 64 len mem[_2108] % 32] or Mask(8 * -(mem[_2108] % 32) + 32, -(8 * -(mem[_2108] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2108])])
                    call underlyingAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2459 + _2107 + -mem[64] + 160]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _3895 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_2107 + 100]
                        _3897 = mem[_2107 + 100]
                        idx = 0
                        while idx < _3897:
                            mem[idx + _3895 + 68] = mem[idx + _2107 + 132]
                            idx = idx + 32
                            continue 
                        if not _3897 % 32:
                            revert with memory
                              from mem[64]
                               len _3897 + _3895 + -mem[64] + 68
                        mem[floor32(_3897) + _3895 + 68] = mem[floor32(_3897) + _3895 + -(_3897 % 32) + 100 len _3897 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_3897) + _3895 + -mem[64] + 100
                    _3630 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3630] = return_data.size
                    mem[_3630 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_3630 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3899 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_2107 + 100]
                    _3901 = mem[_2107 + 100]
                    idx = 0
                    while idx < _3901:
                        mem[idx + _3899 + 68] = mem[idx + _2107 + 132]
                        idx = idx + 32
                        continue 
                    if not _3901 % 32:
                        revert with memory
                          from mem[64]
                           len _3901 + _3899 + -mem[64] + 68
                    mem[floor32(_3901) + _3899 + 68] = mem[floor32(_3901) + _3899 + -(_3901 % 32) + 100 len _3901 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_3901) + _3899 + -mem[64] + 100
                _2149 = mem[64]
                mem[mem[64] + 36] = address(activeStrategies[idx])
                mem[mem[64] + 68] = ext_call.return_data[0]
                _2150 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2150 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2150 + 36 len 28]
                mem[64] = _2149 + 164
                mem[_2149 + 100] = 32
                mem[_2149 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2149 + 270 len 26]
                if not ext_code.size(underlyingAddress):
                    revert with 0, 'Address: call to non-contract'
                _2553 = mem[_2150]
                t = _2150 + 32
                u = mem[64]
                s = mem[_2150]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_2150])] = mem[_2150 + floor32(mem[_2150]) + -(mem[_2150] % 32) + 64 len mem[_2150] % 32] or Mask(8 * -(mem[_2150] % 32) + 32, -(8 * -(mem[_2150] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2150])])
                call underlyingAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2553 + _2149 + -mem[64] + 160]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _3903 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_2149 + 100]
                    _3905 = mem[_2149 + 100]
                    idx = 0
                    while idx < _3905:
                        mem[idx + _3903 + 68] = mem[idx + _2149 + 132]
                        idx = idx + 32
                        continue 
                    if not _3905 % 32:
                        revert with memory
                          from mem[64]
                           len _3905 + _3903 + -mem[64] + 68
                    mem[floor32(_3905) + _3903 + 68] = mem[floor32(_3905) + _3903 + -(_3905 % 32) + 100 len _3905 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_3905) + _3903 + -mem[64] + 100
                _3631 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_3631] = return_data.size
                mem[_3631 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_3631 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _3907 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_2149 + 100]
                _3909 = mem[_2149 + 100]
                idx = 0
                while idx < _3909:
                    mem[idx + _3907 + 68] = mem[idx + _2149 + 132]
                    idx = idx + 32
                    continue 
                if not _3909 % 32:
                    revert with memory
                      from mem[64]
                       len _3909 + _3907 + -mem[64] + 68
                mem[floor32(_3909) + _3907 + 68] = mem[floor32(_3909) + _3907 + -(_3909 % 32) + 100 len _3909 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_3909) + _3907 + -mem[64] + 100
        else:
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x5aa6e675 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x675468652073656e6465722068617320746f2062652074686520636f6e74726f6c6c6572206f72207661756c74206f7220676f7665726e616e63,
                            mem[222 len 6]
            mem[100] = this.address
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < activeStrategies.length:
                require idx < investmentRatioNumerators.length
                mem[0] = 8
                if not ext_call.return_data[0]:
                    if investmentRatioDenominator <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require investmentRatioDenominator
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / investmentRatioDenominator < ext_call.return_data[0]:
                        if not 0 / investmentRatioDenominator:
                            idx = idx + 1
                            continue 
                        require idx < caps.length
                        require idx < activeStrategies.length
                        if caps[idx] <= 0:
                            mem[0] = 6
                            _1840 = mem[64]
                            mem[mem[64] + 36] = address(activeStrategies[idx])
                            mem[mem[64] + 68] = 0 / investmentRatioDenominator
                            _1841 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1841 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1841 + 36 len 28]
                            mem[64] = _1840 + 164
                            mem[_1840 + 100] = 32
                            mem[_1840 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1840 + 270 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            _1987 = mem[_1841]
                            t = _1841 + 32
                            u = mem[64]
                            s = mem[_1841]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_1841])] = mem[_1841 + floor32(mem[_1841]) + -(mem[_1841] % 32) + 64 len mem[_1841] % 32] or Mask(8 * -(mem[_1841] % 32) + 32, -(8 * -(mem[_1841] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1841])])
                            call underlyingAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1987 + _1840 + -mem[64] + 160]
                            if not return_data.size:
                                if ext_call.success:
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                    idx = idx + 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                _3959 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[_1840 + 100]
                                _3961 = mem[_1840 + 100]
                                idx = 0
                                while idx < _3961:
                                    mem[idx + _3959 + 68] = mem[idx + _1840 + 132]
                                    idx = idx + 32
                                    continue 
                                if not _3961 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _3961 + _3959 + -mem[64] + 68
                                mem[floor32(_3961) + _3959 + 68] = mem[floor32(_3961) + _3959 + -(_3961 % 32) + 100 len _3961 % 32]
                                revert with memory
                                  from mem[64]
                                   len floor32(_3961) + _3959 + -mem[64] + 100
                            _3641 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3641] = return_data.size
                            mem[_3641 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_3641 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3963 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_1840 + 100]
                            _3965 = mem[_1840 + 100]
                            idx = 0
                            while idx < _3965:
                                mem[idx + _3963 + 68] = mem[idx + _1840 + 132]
                                idx = idx + 32
                                continue 
                            if not _3965 % 32:
                                revert with memory
                                  from mem[64]
                                   len _3965 + _3963 + -mem[64] + 68
                            mem[floor32(_3965) + _3963 + 68] = mem[floor32(_3965) + _3963 + -(_3965 % 32) + 100 len _3965 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_3965) + _3963 + -mem[64] + 100
                        require ext_code.size(address(activeStrategies[idx]))
                        staticcall address(activeStrategies[idx]).0x45d01e4a with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < caps.length
                        mem[0] = 7
                        if ext_call.return_data[0] >= caps[idx]:
                            idx = idx + 1
                            continue 
                        require idx < caps.length
                        require idx < activeStrategies.length
                        mem[0] = 6
                        if caps[idx] - ext_call.return_data[0] < 0 / investmentRatioDenominator:
                            _2071 = mem[64]
                            mem[mem[64] + 36] = address(activeStrategies[idx])
                            mem[mem[64] + 68] = caps[idx] - ext_call.return_data[0]
                            _2072 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2072 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2072 + 36 len 28]
                            mem[64] = _2071 + 164
                            mem[_2071 + 100] = 32
                            mem[_2071 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2071 + 270 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            _2397 = mem[_2072]
                            t = _2072 + 32
                            u = mem[64]
                            s = mem[_2072]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2072])] = mem[_2072 + floor32(mem[_2072]) + -(mem[_2072] % 32) + 64 len mem[_2072] % 32] or Mask(8 * -(mem[_2072] % 32) + 32, -(8 * -(mem[_2072] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2072])])
                            call underlyingAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2397 + _2071 + -mem[64] + 160]
                            if not return_data.size:
                                if ext_call.success:
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                    idx = idx + 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                _3967 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[_2071 + 100]
                                _3969 = mem[_2071 + 100]
                                idx = 0
                                while idx < _3969:
                                    mem[idx + _3967 + 68] = mem[idx + _2071 + 132]
                                    idx = idx + 32
                                    continue 
                                if not _3969 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _3969 + _3967 + -mem[64] + 68
                                mem[floor32(_3969) + _3967 + 68] = mem[floor32(_3969) + _3967 + -(_3969 % 32) + 100 len _3969 % 32]
                                revert with memory
                                  from mem[64]
                                   len floor32(_3969) + _3967 + -mem[64] + 100
                            _3642 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3642] = return_data.size
                            mem[_3642 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_3642 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3971 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_2071 + 100]
                            _3973 = mem[_2071 + 100]
                            idx = 0
                            while idx < _3973:
                                mem[idx + _3971 + 68] = mem[idx + _2071 + 132]
                                idx = idx + 32
                                continue 
                            if not _3973 % 32:
                                revert with memory
                                  from mem[64]
                                   len _3973 + _3971 + -mem[64] + 68
                            mem[floor32(_3973) + _3971 + 68] = mem[floor32(_3973) + _3971 + -(_3973 % 32) + 100 len _3973 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_3973) + _3971 + -mem[64] + 100
                        _2119 = mem[64]
                        mem[mem[64] + 36] = address(activeStrategies[idx])
                        mem[mem[64] + 68] = 0 / investmentRatioDenominator
                        _2120 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_2120 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2120 + 36 len 28]
                        mem[64] = _2119 + 164
                        mem[_2119 + 100] = 32
                        mem[_2119 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2119 + 270 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        _2479 = mem[_2120]
                        t = _2120 + 32
                        u = mem[64]
                        s = mem[_2120]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_2120])] = mem[_2120 + floor32(mem[_2120]) + -(mem[_2120] % 32) + 64 len mem[_2120] % 32] or Mask(8 * -(mem[_2120] % 32) + 32, -(8 * -(mem[_2120] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2120])])
                        call underlyingAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2479 + _2119 + -mem[64] + 160]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _3975 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_2119 + 100]
                            _3977 = mem[_2119 + 100]
                            idx = 0
                            while idx < _3977:
                                mem[idx + _3975 + 68] = mem[idx + _2119 + 132]
                                idx = idx + 32
                                continue 
                            if not _3977 % 32:
                                revert with memory
                                  from mem[64]
                                   len _3977 + _3975 + -mem[64] + 68
                            mem[floor32(_3977) + _3975 + 68] = mem[floor32(_3977) + _3975 + -(_3977 % 32) + 100 len _3977 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_3977) + _3975 + -mem[64] + 100
                        _3643 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3643] = return_data.size
                        mem[_3643 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_3643 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3979 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_2119 + 100]
                        _3981 = mem[_2119 + 100]
                        idx = 0
                        while idx < _3981:
                            mem[idx + _3979 + 68] = mem[idx + _2119 + 132]
                            idx = idx + 32
                            continue 
                        if not _3981 % 32:
                            revert with memory
                              from mem[64]
                               len _3981 + _3979 + -mem[64] + 68
                        mem[floor32(_3981) + _3979 + 68] = mem[floor32(_3981) + _3979 + -(_3981 % 32) + 100 len _3981 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_3981) + _3979 + -mem[64] + 100
                    if not ext_call.return_data[0]:
                        idx = idx + 1
                        continue 
                    require idx < caps.length
                    require idx < activeStrategies.length
                    if caps[idx] <= 0:
                        mem[0] = 6
                        _1880 = mem[64]
                        mem[mem[64] + 36] = address(activeStrategies[idx])
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _1881 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1881 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1881 + 36 len 28]
                        mem[64] = _1880 + 164
                        mem[_1880 + 100] = 32
                        mem[_1880 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1880 + 270 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        _2015 = mem[_1881]
                        t = _1881 + 32
                        u = _1880 + 164
                        s = mem[_1881]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1880 + floor32(mem[_1881]) + 164] = mem[_1881 + -(mem[_1881] % 32) + floor32(mem[_1881]) + 64 len mem[_1881] % 32] or Mask(8 * -(mem[_1881] % 32) + 32, -(8 * -(mem[_1881] % 32) + 32) + 256, mem[_1880 + floor32(mem[_1881]) + 164])
                        call underlyingAddress.mem[_1880 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1880 + 168 len _2015 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1880 + 274 len 22]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1880 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1880 + 168] = 32
                            mem[_1880 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1880 + 232] = mem[idx + _1880 + 132]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _1880 + -mem[64] + 264
                        mem[64] = _1880 + ceil32(return_data.size) + 165
                        mem[_1880 + 164] = return_data.size
                        mem[_1880 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1880 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1880 + ceil32(return_data.size) + 275 len 22]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1880 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1880 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1880 + ceil32(return_data.size) + 233] = mem[idx + _1880 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1880 + ceil32(return_data.size) + 233]
                    require ext_code.size(address(activeStrategies[idx]))
                    staticcall address(activeStrategies[idx]).0x45d01e4a with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < caps.length
                    mem[0] = 7
                    if ext_call.return_data[0] >= caps[idx]:
                        idx = idx + 1
                        continue 
                    require idx < caps.length
                    require idx < activeStrategies.length
                    mem[0] = 6
                    if caps[idx] - ext_call.return_data[0] < ext_call.return_data[0]:
                        _2123 = mem[64]
                        mem[mem[64] + 36] = address(activeStrategies[idx])
                        mem[mem[64] + 68] = caps[idx] - ext_call.return_data[0]
                        _2124 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_2124 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2124 + 36 len 28]
                        mem[64] = _2123 + 164
                        mem[_2123 + 100] = 32
                        mem[_2123 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2123 + 270 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        _2489 = mem[_2124]
                        t = _2124 + 32
                        u = _2123 + 164
                        s = mem[_2124]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_2123 + floor32(mem[_2124]) + 164] = mem[_2124 + -(mem[_2124] % 32) + floor32(mem[_2124]) + 64 len mem[_2124] % 32] or Mask(8 * -(mem[_2124] % 32) + 32, -(8 * -(mem[_2124] % 32) + 32) + 256, mem[_2123 + floor32(mem[_2124]) + 164])
                        call underlyingAddress.mem[_2123 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_2123 + 168 len _2489 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2123 + 274 len 22]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2123 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2123 + 168] = 32
                            mem[_2123 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2123 + 232] = mem[idx + _2123 + 132]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _2123 + -mem[64] + 264
                        mem[64] = _2123 + ceil32(return_data.size) + 165
                        mem[_2123 + 164] = return_data.size
                        mem[_2123 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_2123 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_2123 + ceil32(return_data.size) + 275 len 22]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2123 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2123 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2123 + ceil32(return_data.size) + 233] = mem[idx + _2123 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2123 + ceil32(return_data.size) + 233]
                    _2162 = mem[64]
                    mem[mem[64] + 36] = address(activeStrategies[idx])
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _2163 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_2163 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2163 + 36 len 28]
                    mem[64] = _2162 + 164
                    mem[_2162 + 100] = 32
                    mem[_2162 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2162 + 270 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2585 = mem[_2163]
                    t = _2163 + 32
                    u = mem[64]
                    s = mem[_2163]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2163])] = mem[_2163 + floor32(mem[_2163]) + -(mem[_2163] % 32) + 64 len mem[_2163] % 32] or Mask(8 * -(mem[_2163] % 32) + 32, -(8 * -(mem[_2163] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2163])])
                    call underlyingAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2585 + _2162 + -mem[64] + 160]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _3999 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_2162 + 100]
                        _4001 = mem[_2162 + 100]
                        idx = 0
                        while idx < _4001:
                            mem[idx + _3999 + 68] = mem[idx + _2162 + 132]
                            idx = idx + 32
                            continue 
                        if not _4001 % 32:
                            revert with memory
                              from mem[64]
                               len _4001 + _3999 + -mem[64] + 68
                        mem[floor32(_4001) + _3999 + 68] = mem[floor32(_4001) + _3999 + -(_4001 % 32) + 100 len _4001 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_4001) + _3999 + -mem[64] + 100
                    _3646 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3646] = return_data.size
                    mem[_3646 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_3646 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4003 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_2162 + 100]
                    _4005 = mem[_2162 + 100]
                    idx = 0
                    while idx < _4005:
                        mem[idx + _4003 + 68] = mem[idx + _2162 + 132]
                        idx = idx + 32
                        continue 
                    if not _4005 % 32:
                        revert with memory
                          from mem[64]
                           len _4005 + _4003 + -mem[64] + 68
                    mem[floor32(_4005) + _4003 + 68] = mem[floor32(_4005) + _4003 + -(_4005 % 32) + 100 len _4005 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_4005) + _4003 + -mem[64] + 100
                if investmentRatioNumerators[idx] * ext_call.return_data[0] / ext_call.return_data[0] != investmentRatioNumerators[idx]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if investmentRatioDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require investmentRatioDenominator
                mem[mem[64] + 4] = this.address
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if investmentRatioNumerators[idx] * ext_call.return_data[0] / investmentRatioDenominator < ext_call.return_data[0]:
                    if not investmentRatioNumerators[idx] * ext_call.return_data[0] / investmentRatioDenominator:
                        idx = idx + 1
                        continue 
                    require idx < caps.length
                    require idx < activeStrategies.length
                    if caps[idx] <= 0:
                        mem[0] = 6
                        _1871 = mem[64]
                        mem[mem[64] + 36] = address(activeStrategies[idx])
                        mem[mem[64] + 68] = investmentRatioNumerators[idx] * ext_call.return_data[0] / investmentRatioDenominator
                        _1872 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1872 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1872 + 36 len 28]
                        mem[64] = _1871 + 164
                        mem[_1871 + 100] = 32
                        mem[_1871 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1871 + 270 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        _2010 = mem[_1872]
                        t = _1872 + 32
                        u = _1871 + 164
                        s = mem[_1872]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1871 + floor32(mem[_1872]) + 164] = mem[_1872 + -(mem[_1872] % 32) + floor32(mem[_1872]) + 64 len mem[_1872] % 32] or Mask(8 * -(mem[_1872] % 32) + 32, -(8 * -(mem[_1872] % 32) + 32) + 256, mem[_1871 + floor32(mem[_1872]) + 164])
                        call underlyingAddress.mem[_1871 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1871 + 168 len _2010 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1871 + 274 len 22]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1871 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1871 + 168] = 32
                            mem[_1871 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1871 + 232] = mem[idx + _1871 + 132]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _1871 + -mem[64] + 264
                        mem[64] = _1871 + ceil32(return_data.size) + 165
                        mem[_1871 + 164] = return_data.size
                        mem[_1871 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1871 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1871 + ceil32(return_data.size) + 275 len 22]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1871 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1871 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1871 + ceil32(return_data.size) + 233] = mem[idx + _1871 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1871 + ceil32(return_data.size) + 233]
                    require ext_code.size(address(activeStrategies[idx]))
                    staticcall address(activeStrategies[idx]).0x45d01e4a with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < caps.length
                    mem[0] = 7
                    if ext_call.return_data[0] >= caps[idx]:
                        idx = idx + 1
                        continue 
                    require idx < caps.length
                    require idx < activeStrategies.length
                    mem[0] = 6
                    if caps[idx] - ext_call.return_data[0] >= investmentRatioNumerators[idx] * ext_call.return_data[0] / investmentRatioDenominator:
                        _2153 = mem[64]
                        mem[mem[64] + 36] = address(activeStrategies[idx])
                        mem[mem[64] + 68] = investmentRatioNumerators[idx] * ext_call.return_data[0] / investmentRatioDenominator
                        _2154 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_2154 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2154 + 36 len 28]
                        mem[64] = _2153 + 164
                        mem[_2153 + 100] = 32
                        mem[_2153 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2153 + 270 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        _2561 = mem[_2154]
                        t = _2154 + 32
                        u = _2153 + 164
                        s = mem[_2154]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_2153 + floor32(mem[_2154]) + 164] = mem[_2154 + -(mem[_2154] % 32) + floor32(mem[_2154]) + 64 len mem[_2154] % 32] or Mask(8 * -(mem[_2154] % 32) + 32, -(8 * -(mem[_2154] % 32) + 32) + 256, mem[_2153 + floor32(mem[_2154]) + 164])
                        call underlyingAddress.mem[_2153 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_2153 + 168 len _2561 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2153 + 274 len 22]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2153 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2153 + 168] = 32
                            mem[_2153 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2153 + 232] = mem[idx + _2153 + 132]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _2153 + -mem[64] + 264
                        mem[64] = _2153 + ceil32(return_data.size) + 165
                        mem[_2153 + 164] = return_data.size
                        mem[_2153 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_2153 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_2153 + ceil32(return_data.size) + 275 len 22]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2153 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2153 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2153 + ceil32(return_data.size) + 233] = mem[idx + _2153 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2153 + ceil32(return_data.size) + 233]
                    _2111 = mem[64]
                    mem[mem[64] + 36] = address(activeStrategies[idx])
                    mem[mem[64] + 68] = caps[idx] - ext_call.return_data[0]
                    _2112 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_2112 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2112 + 36 len 28]
                    mem[64] = _2111 + 164
                    mem[_2111 + 100] = 32
                    mem[_2111 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2111 + 270 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2469 = mem[_2112]
                    t = _2112 + 32
                    u = mem[64]
                    s = mem[_2112]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2112])] = mem[_2112 + floor32(mem[_2112]) + -(mem[_2112] % 32) + 64 len mem[_2112] % 32] or Mask(8 * -(mem[_2112] % 32) + 32, -(8 * -(mem[_2112] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2112])])
                    call underlyingAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2469 + _2111 + -mem[64] + 160]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _3919 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_2111 + 100]
                        _3921 = mem[_2111 + 100]
                        idx = 0
                        while idx < _3921:
                            mem[idx + _3919 + 68] = mem[idx + _2111 + 132]
                            idx = idx + 32
                            continue 
                        if not _3921 % 32:
                            revert with memory
                              from mem[64]
                               len _3921 + _3919 + -mem[64] + 68
                        mem[floor32(_3921) + _3919 + 68] = mem[floor32(_3921) + _3919 + -(_3921 % 32) + 100 len _3921 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_3921) + _3919 + -mem[64] + 100
                    _3636 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3636] = return_data.size
                    mem[_3636 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_3636 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3923 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_2111 + 100]
                    _3925 = mem[_2111 + 100]
                    idx = 0
                    while idx < _3925:
                        mem[idx + _3923 + 68] = mem[idx + _2111 + 132]
                        idx = idx + 32
                        continue 
                    if not _3925 % 32:
                        revert with memory
                          from mem[64]
                           len _3925 + _3923 + -mem[64] + 68
                    mem[floor32(_3925) + _3923 + 68] = mem[floor32(_3925) + _3923 + -(_3925 % 32) + 100 len _3925 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_3925) + _3923 + -mem[64] + 100
                if not ext_call.return_data[0]:
                    idx = idx + 1
                    continue 
                require idx < caps.length
                require idx < activeStrategies.length
                if caps[idx] <= 0:
                    mem[0] = 6
                    _1901 = mem[64]
                    mem[mem[64] + 36] = address(activeStrategies[idx])
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _1902 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1902 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1902 + 36 len 28]
                    mem[64] = _1901 + 164
                    mem[_1901 + 100] = 32
                    mem[_1901 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1901 + 270 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2035 = mem[_1902]
                    t = _1902 + 32
                    u = _1901 + 164
                    s = mem[_1902]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1901 + floor32(mem[_1902]) + 164] = mem[_1902 + -(mem[_1902] % 32) + floor32(mem[_1902]) + 64 len mem[_1902] % 32] or Mask(8 * -(mem[_1902] % 32) + 32, -(8 * -(mem[_1902] % 32) + 32) + 256, mem[_1901 + floor32(mem[_1902]) + 164])
                    call underlyingAddress.mem[_1901 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1901 + 168 len _2035 - 4]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1901 + 274 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1901 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1901 + 168] = 32
                        mem[_1901 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1901 + 232] = mem[idx + _1901 + 132]
                            idx = idx + 32
                            continue 
                        revert with memory
                          from mem[64]
                           len _1901 + -mem[64] + 264
                    mem[64] = _1901 + ceil32(return_data.size) + 165
                    mem[_1901 + 164] = return_data.size
                    mem[_1901 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1901 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1901 + ceil32(return_data.size) + 275 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1901 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1901 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _1901 + ceil32(return_data.size) + 233] = mem[idx + _1901 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1901 + ceil32(return_data.size) + 233]
                require ext_code.size(address(activeStrategies[idx]))
                staticcall address(activeStrategies[idx]).0x45d01e4a with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < caps.length
                mem[0] = 7
                if ext_call.return_data[0] >= caps[idx]:
                    idx = idx + 1
                    continue 
                require idx < caps.length
                require idx < activeStrategies.length
                mem[0] = 6
                if caps[idx] - ext_call.return_data[0] < ext_call.return_data[0]:
                    _2157 = mem[64]
                    mem[mem[64] + 36] = address(activeStrategies[idx])
                    mem[mem[64] + 68] = caps[idx] - ext_call.return_data[0]
                    _2158 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_2158 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2158 + 36 len 28]
                    mem[64] = _2157 + 164
                    mem[_2157 + 100] = 32
                    mem[_2157 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2157 + 270 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2571 = mem[_2158]
                    t = _2158 + 32
                    u = mem[64]
                    s = mem[_2158]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2158])] = mem[_2158 + floor32(mem[_2158]) + -(mem[_2158] % 32) + 64 len mem[_2158] % 32] or Mask(8 * -(mem[_2158] % 32) + 32, -(8 * -(mem[_2158] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2158])])
                    call underlyingAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2571 + _2157 + -mem[64] + 160]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _3943 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_2157 + 100]
                        _3945 = mem[_2157 + 100]
                        idx = 0
                        while idx < _3945:
                            mem[idx + _3943 + 68] = mem[idx + _2157 + 132]
                            idx = idx + 32
                            continue 
                        if not _3945 % 32:
                            revert with memory
                              from mem[64]
                               len _3945 + _3943 + -mem[64] + 68
                        mem[floor32(_3945) + _3943 + 68] = mem[floor32(_3945) + _3943 + -(_3945 % 32) + 100 len _3945 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_3945) + _3943 + -mem[64] + 100
                    _3639 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3639] = return_data.size
                    mem[_3639 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_3639 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3947 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_2157 + 100]
                    _3949 = mem[_2157 + 100]
                    idx = 0
                    while idx < _3949:
                        mem[idx + _3947 + 68] = mem[idx + _2157 + 132]
                        idx = idx + 32
                        continue 
                    if not _3949 % 32:
                        revert with memory
                          from mem[64]
                           len _3949 + _3947 + -mem[64] + 68
                    mem[floor32(_3949) + _3947 + 68] = mem[floor32(_3949) + _3947 + -(_3949 % 32) + 100 len _3949 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_3949) + _3947 + -mem[64] + 100
                _2183 = mem[64]
                mem[mem[64] + 36] = address(activeStrategies[idx])
                mem[mem[64] + 68] = ext_call.return_data[0]
                _2184 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2184 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2184 + 36 len 28]
                mem[64] = _2183 + 164
                mem[_2183 + 100] = 32
                mem[_2183 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2183 + 270 len 26]
                if not ext_code.size(underlyingAddress):
                    revert with 0, 'Address: call to non-contract'
                _2657 = mem[_2184]
                t = _2184 + 32
                u = mem[64]
                s = mem[_2184]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_2184])] = mem[_2184 + floor32(mem[_2184]) + -(mem[_2184] % 32) + 64 len mem[_2184] % 32] or Mask(8 * -(mem[_2184] % 32) + 32, -(8 * -(mem[_2184] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2184])])
                call underlyingAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2657 + _2183 + -mem[64] + 160]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _3951 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_2183 + 100]
                    _3953 = mem[_2183 + 100]
                    idx = 0
                    while idx < _3953:
                        mem[idx + _3951 + 68] = mem[idx + _2183 + 132]
                        idx = idx + 32
                        continue 
                    if not _3953 % 32:
                        revert with memory
                          from mem[64]
                           len _3953 + _3951 + -mem[64] + 68
                    mem[floor32(_3953) + _3951 + 68] = mem[floor32(_3953) + _3951 + -(_3953 % 32) + 100 len _3953 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_3953) + _3951 + -mem[64] + 100
                _3640 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_3640] = return_data.size
                mem[_3640 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_3640 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _3955 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_2183 + 100]
                _3957 = mem[_2183 + 100]
                idx = 0
                while idx < _3957:
                    mem[idx + _3955 + 68] = mem[idx + _2183 + 132]
                    idx = idx + 32
                    continue 
                if not _3957 % 32:
                    revert with memory
                      from mem[64]
                       len _3957 + _3955 + -mem[64] + 68
                mem[floor32(_3957) + _3955 + 68] = mem[floor32(_3957) + _3955 + -(_3957 % 32) + 100 len _3957 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_3957) + _3955 + -mem[64] + 100
    idx = 0
    while idx < activeStrategies.length:
        mem[0] = 6
        mem[mem[64]] = 0x4983aecd00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(activeStrategies[idx]))
        call address(activeStrategies[idx]).0x4983aecd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
