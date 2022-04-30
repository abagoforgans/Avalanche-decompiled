contract main {




// =====================  Runtime code  =====================


const MIN_BUYBACK_FEE = 100

const MAX_MANAGEMENT_FEE = 100

const MAX_BUYBACK_FEE = 500

const MIN_MANAGEMENT_FEE = 0

const FEE_DENOMINATOR = 1000


address registryAddress;
address tokenAddress;
uint256 buybackFee;
uint256 managementFee;
mapping of uint32 liquidators;
mapping of uint8 stor5;
array of struct banks;
mapping of uint256 stor7;
array of struct strategies;
mapping of uint8 stor9;
mapping of uint8 withdrawIndex;
uint32 stor11;
address burnerAddress;
uint256 stor11;

function banks(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= banks.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return banks[arg1].field_0
}

function burner() payable {
    return address(burnerAddress)
}

function buybackFee() payable {
    return buybackFee
}

function registry() payable {
    return registryAddress
}

function liquidators(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return address(liquidators[arg1][arg2])
}

function strategies(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= strategies[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return strategies[address(arg1)][arg2].field_0
}

function managementFee() payable {
    return managementFee
}

function totalStrategies(address arg1) payable {
    require calldata.size - 4 >= 32
    return strategies[address(arg1)].field_0
}

function whitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function totalBanks() payable {
    return banks.length
}

function withdrawIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    return withdrawIndex[address(arg1)]
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setWithdrawIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        revert with 0, 'Manager: Only Bank'
    withdrawIndex[msg.sender] = uint8(arg1)
}

function manager() payable {
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x481c6a75 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function governance() payable {
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function setBurner(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'lSubscriber: Only Governance'
    address(burnerAddress) = arg1
}

function setWhitelisted(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'lSubscriber: Only Governance'
    if not ext_code.size(arg1):
        revert with 0, 'Registry: Not Contract'
    stor5[address(arg1)] = uint8(arg2)
}

function setManagementFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'lSubscriber: Only Governance'
    if arg1 <= 0:
        revert with 0, 'Registry: Invalid Mgmt'
    if arg1 >= 100:
        revert with 0, 'Registry: Mgmt Too High'
    managementFee = arg1
}

function setBuybackFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'lSubscriber: Only Governance'
    if arg1 <= 100:
        revert with 0, 'Registry: Invalid Buyback'
    if arg1 >= 500:
        revert with 0, 'Registry: Buyback Too High'
    buybackFee = arg1
}

function setLiquidator(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'lSubscriber: Only Governance'
    if not ext_code.size(arg1):
        revert with 0, 'Manager: Not Contract'
    address(liquidators[address(arg2)][address(arg3)]) = arg1
}

function exit(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'lSubscriber: Only Governance'
    require ext_code.size(arg1)
    call arg1.0xeb0dff66 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'lSubscriber: Only Governance'
    if not ext_code.size(arg1):
        revert with 0, 'Subscriber: Invalid Registry'
    registryAddress = arg1
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Subscriber: Bad Governance'
}

function exitAll(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'lSubscriber: Only Governance'
    idx = 0
    while idx < strategies[address(arg1)].field_0:
        mem[32] = 8
        if idx >= strategies[address(arg1)].field_0:
            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[198 len 30]
        mem[0] = sha3(address(arg1), 8)
        mem[96] = 0xeb0dff6600000000000000000000000000000000000000000000000000000000
        mem[100] = strategies[address(arg1)][idx].field_0
        require ext_code.size(arg1)
        call arg1.0xeb0dff66 with:
             gas gas_remaining wei
            args strategies[address(arg1)][idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function financeAll(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        if not stor5[msg.sender]:
            revert with 0, 'wManager: Only EOA or Whitelist'
    if not stor7[address(arg1)]:
        revert with 0, 'Manager: Only Bank'
    if strategies[address(arg1)].field_0 <= 0:
        revert with 0, 'Manager: No Strategies'
    require ext_code.size(arg1)
    staticcall arg1.underlyingBalance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < strategies[address(arg1)].field_0:
        require strategies[address(arg1)].field_0
        mem[32] = 8
        if idx >= strategies[address(arg1)].field_0:
            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[198 len 30]
        mem[0] = sha3(address(arg1), 8)
        mem[96] = 0xb9b8c24600000000000000000000000000000000000000000000000000000000
        mem[100] = strategies[address(arg1)][idx].field_0
        mem[132] = ext_call.return_data[0] / strategies[address(arg1)].field_0
        require ext_code.size(arg1)
        call arg1.invest(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args strategies[address(arg1)][idx].field_0, ext_call.return_data[0] / strategies[address(arg1)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    emit FinanceAll(arg1);
}

function finance(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        if not stor5[msg.sender]:
            revert with 0, 'wManager: Only EOA or Whitelist'
    if not stor7[address(arg1)]:
        revert with 0, 'Manager: Only Bank'
    if strategies[address(arg1)].field_0 <= 0:
        revert with 0, 'Manager: No Strategies'
    if stor9[address(arg1)] >= strategies[address(arg1)].field_0:
        if 0 >= strategies[address(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[198 len 30]
        require ext_code.size(arg1)
        call arg1.investAll(address arg1) with:
             gas gas_remaining wei
            args strategies[address(arg1)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor9[address(arg1)] = 1
        emit Finance(arg1, strategies[address(arg1)].field_0);
    else:
        if stor9[address(arg1)] >= strategies[address(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[198 len 30]
        require ext_code.size(arg1)
        call arg1.investAll(address arg1) with:
             gas gas_remaining wei
            args strategies[address(arg1)][stor9[address(arg1)]].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor9[address(arg1)] = uint8(stor9[address(arg1)] + 1)
        emit Finance(arg1, strategies[address(arg1)][stor9[address(arg1)]].field_0);
}

function rebalance(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        if not stor5[msg.sender]:
            revert with 0, 'wManager: Only EOA or Whitelist'
    if not stor7[address(arg1)]:
        revert with 0, 'Manager: Only Bank'
    idx = 0
    while idx < strategies[address(arg1)].field_0:
        mem[32] = 8
        if idx >= strategies[address(arg1)].field_0:
            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[198 len 30]
        mem[0] = sha3(address(arg1), 8)
        mem[96] = 0xeb0dff6600000000000000000000000000000000000000000000000000000000
        mem[100] = strategies[address(arg1)][idx].field_0
        require ext_code.size(arg1)
        call arg1.0xeb0dff66 with:
             gas gas_remaining wei
            args strategies[address(arg1)][idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(arg1)
    staticcall arg1.underlyingBalance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < strategies[address(arg1)].field_0:
        require strategies[address(arg1)].field_0
        mem[32] = 8
        if idx >= strategies[address(arg1)].field_0:
            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[198 len 30]
        mem[0] = sha3(address(arg1), 8)
        mem[96] = 0xb9b8c24600000000000000000000000000000000000000000000000000000000
        mem[100] = strategies[address(arg1)][idx].field_0
        mem[132] = ext_call.return_data[0] / strategies[address(arg1)].field_0
        require ext_code.size(arg1)
        call arg1.invest(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args strategies[address(arg1)][idx].field_0, ext_call.return_data[0] / strategies[address(arg1)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    emit Rebalance(arg1);
}

function setBank(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'lSubscriber: Only Governance'
    if not ext_code.size(arg1):
        revert with 0, 'Manager: Not Contract'
    if bool(stor7[address(arg1)]) == arg2:
        revert with 0, 'Manager: No Change'
    if not stor7[address(arg1)]:
        if not stor7[address(arg1)]:
            banks.length++
            banks[banks.length].field_0 = arg1
            banks[banks.length].field_160 = 0
            stor7[address(arg1)] = banks.length
    else:
        require ext_code.size(registryAddress)
        staticcall registryAddress.0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'lSubscriber: Only Governance'
        idx = 0
        while idx < strategies[address(arg1)].field_0:
            mem[32] = 8
            if idx >= strategies[address(arg1)].field_0:
                revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[198 len 30]
            mem[0] = sha3(address(arg1), 8)
            mem[96] = 0xeb0dff6600000000000000000000000000000000000000000000000000000000
            mem[100] = strategies[address(arg1)][idx].field_0
            require ext_code.size(arg1)
            call arg1.0xeb0dff66 with:
                 gas gas_remaining wei
                args strategies[address(arg1)][idx].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        if stor7[address(arg1)]:
            require banks.length - 1 < banks.length
            require stor7[address(arg1)] - 1 < banks.length
            banks[stor7[address(arg1)]].field_0 = banks[banks.length].field_0
            stor7[stor6[stor6.length].field_0] = stor7[address(arg1)]
            require banks.length
            banks[banks.length].field_0 = 0
            banks.length--
            stor7[address(arg1)] = 0
}

function setStrategy(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'lSubscriber: Only Governance'
    if not ext_code.size(arg2):
        revert with 0, 'Manager: Not Contract'
    if not ext_code.size(arg1):
        revert with 0, 'Manager: Not Contract'
    if bool(strategies[address(arg1)][1][address(arg2)].field_0) == arg3:
        revert with 0, 'Manager: No Change'
    if not strategies[address(arg1)][1][address(arg2)].field_0:
        if not strategies[address(arg1)][1][address(arg2)].field_0:
            strategies[address(arg1)].field_0++
            strategies[address(arg1)][strategies[address(arg1)].field_0].field_0 = arg2
            strategies[address(arg1)][strategies[address(arg1)].field_0].field_160 = 0
            strategies[address(arg1)][1][address(arg2)].field_0 = strategies[address(arg1)].field_0
    else:
        require ext_code.size(registryAddress)
        staticcall registryAddress.0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'lSubscriber: Only Governance'
        require ext_code.size(arg1)
        call arg1.0xeb0dff66 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if strategies[address(arg1)][1][address(arg2)].field_0:
            require strategies[address(arg1)].field_0 - 1 < strategies[address(arg1)].field_0
            require strategies[address(arg1)][1][address(arg2)].field_0 - 1 < strategies[address(arg1)].field_0
            strategies[address(arg1)][strategies[address(arg1)][1][address(arg2)].field_0].field_0 = strategies[address(arg1)][strategies[address(arg1)].field_0].field_0
            strategies[address(arg1)][1][strategies[address(arg1)][strategies[address(arg1)].field_0].field_0].field_0 = strategies[address(arg1)][1][address(arg2)].field_0
            require strategies[address(arg1)].field_0
            strategies[address(arg1)][strategies[address(arg1)].field_0].field_0 = 0
            strategies[address(arg1)].field_0--
            strategies[address(arg1)][1][address(arg2)].field_0 = 0
}

function buyback(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        if not stor5[msg.sender]:
            revert with 0, 'wManager: Only EOA or Whitelist'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(liquidators[address(arg1)][stor1]))
        call address(liquidators[address(arg1)][stor1]).liquidate(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, uint32(this.address), address(arg1), tokenAddress, ext_call.return_data[0], 1
    else:
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, liquidators[address(arg1)][stor1]), uint32(liquidators[address(arg1)][stor1]), ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call arg1 with:
           funct uint32(liquidators[address(arg1)][stor1])
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address arg1, uint256 arg2), 
                            Mask(224, 0, liquidators[address(arg1)][stor1]),
                            uint32(liquidators[address(arg1)][stor1]),
                            ext_call.return_data[0]
            if not transfer(address arg1, uint256 arg2), Mask(224, 0, liquidators[address(arg1)][stor1]):
                revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
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
                                0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                mem[ceil32(return_data.size) + 371 len 22]
        require ext_code.size(address(liquidators[address(arg1)][stor1]))
        call address(liquidators[address(arg1)][stor1]).liquidate(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args this.address, address(arg1), tokenAddress, ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Buyback(ext_call.return_data[0], ext_call.return_data[0], arg1);
}

function burn() payable {
    if tx.origin == msg.sender:
        if not address(burnerAddress):
            revert with 0, 'Manager: No Burner'
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0 len 28]
            call tokenAddress with:
               funct uint32(stor11)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0]
                if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor11):
                    revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
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
                                    0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                    mem[ceil32(return_data.size) + 371 len 22]
    else:
        if not stor5[msg.sender]:
            revert with 0, 'wManager: Only EOA or Whitelist'
        if not address(burnerAddress):
            revert with 0, 'Manager: No Burner'
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0 len 28]
            if ext_call.return_data[0] < ext_call.return_data[0]:
            else:
                mem[324 len 0] = 0
            call tokenAddress with:
               funct uint32(stor11)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0]
                if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor11):
                    revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
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
                                    0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                    mem[ceil32(return_data.size) + 371 len 22]
}

function accrueRevenue(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not strategies[address(arg1)][1][address(msg.sender)].field_0:
        revert with 0, 'Manager: Only Strategy'
    if not arg3:
        if not arg3:
            if 0 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg3:
                emit AccrueRevenue(arg3, 0, 0, arg1, msg.sender);
            else:
                require ext_code.size(arg2)
                staticcall arg2.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] >= arg3:
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg3) >> 32
                    mem[324 len 0] = 0
                    call arg2 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg3) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), msg.sender, arg3
                        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                        emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                           arg3,
                                           0,
                                           0,
                                           0,
                                           arg1,
                                           msg.sender,
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
                                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        emit AccrueRevenue(arg3, 0, 0, arg1, msg.sender);
                else:
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                    mem[324 len 0] = 0
                    call arg2 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                        emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                           arg3,
                                           0,
                                           0,
                                           0,
                                           arg1,
                                           msg.sender,
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
                                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        emit AccrueRevenue(arg3, 0, 0, arg1, msg.sender);
        else:
            if managementFee * arg3 / arg3 != managementFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                            mem[197 len 31]
            if 0 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if managementFee * arg3 / 1000 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not managementFee * arg3 / 1000:
                if not arg3 - (managementFee * arg3 / 1000):
                    emit AccrueRevenue(arg3 - (managementFee * arg3 / 1000), 0, managementFee * arg3 / 1000, arg1, msg.sender);
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg3 - (managementFee * arg3 / 1000):
                        mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg3 - (managementFee * arg3 / 1000)) >> 32
                        mem[324 len 0] = 0
                        call arg2 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg3 - (managementFee * arg3 / 1000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), msg.sender, arg3 - (managementFee * arg3 / 1000)
                            if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                            emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                               arg3 - (managementFee * arg3 / 1000),
                                               0,
                                               0,
                                               managementFee * arg3 / 1000,
                                               arg1,
                                               msg.sender,
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
                                                0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            emit AccrueRevenue(arg3 - (managementFee * arg3 / 1000), 0, managementFee * arg3 / 1000, arg1, msg.sender);
                    else:
                        mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                        mem[324 len 0] = 0
                        call arg2 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                            if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                            emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                               arg3 - (managementFee * arg3 / 1000),
                                               0,
                                               0,
                                               managementFee * arg3 / 1000,
                                               arg1,
                                               msg.sender,
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
                                                0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            emit AccrueRevenue(arg3 - (managementFee * arg3 / 1000), 0, managementFee * arg3 / 1000, arg1, msg.sender);
            else:
                require ext_code.size(arg2)
                staticcall arg2.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] >= managementFee * arg3 / 1000:
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, Mask(224, 32, managementFee * arg3 / 1000) >> 32
                    mem[324 len 0] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args Mask(224, 32, managementFee * arg3 / 1000) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, managementFee * arg3 / 1000
                        if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                            revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                        if not arg3 - (managementFee * arg3 / 1000):
                            emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                               arg3 - (managementFee * arg3 / 1000),
                                               0,
                                               0,
                                               managementFee * arg3 / 1000,
                                               arg1,
                                               msg.sender,
                        else:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= arg3 - (managementFee * arg3 / 1000):
                                mem[424 len 64] = 0, msg.sender, Mask(224, 32, arg3 - (managementFee * arg3 / 1000)) >> 32
                                call arg2 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg3 - (managementFee * arg3 / 1000), mem[360 len 28], mem[488 len 4]
                            else:
                                mem[424 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                                call arg2 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, managementFee * arg3 / 1000
                                if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                                    revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[534 len 22]
                            else:
                                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[456]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                            emit AccrueRevenue(arg3 - (managementFee * arg3 / 1000), 0, managementFee * arg3 / 1000, arg1, msg.sender);
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if not arg3 - (managementFee * arg3 / 1000):
                                emit AccrueRevenue(arg3 - (managementFee * arg3 / 1000), 0, managementFee * arg3 / 1000, arg1, msg.sender);
                            else:
                                require ext_code.size(arg2)
                                staticcall arg2.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(arg2):
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= arg3 - (managementFee * arg3 / 1000):
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, arg3 - (managementFee * arg3 / 1000)) >> 32
                                    call arg2 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args arg3 - (managementFee * arg3 / 1000), mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, managementFee * arg3 / 1000
                                        if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 457]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                    emit AccrueRevenue(arg3 - (managementFee * arg3 / 1000), 0, managementFee * arg3 / 1000, arg1, msg.sender);
                                else:
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                                    call arg2 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, managementFee * arg3 / 1000
                                        if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                                        emit AccrueRevenue(arg3 - (managementFee * arg3 / 1000), 0, managementFee * arg3 / 1000, arg1, msg.sender);
                                    else:
                                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 457]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                                           arg3 - (managementFee * arg3 / 1000),
                                                           0,
                                                           managementFee * arg3 / 1000,
                                                           mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                           arg1,
                                                           msg.sender,
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if not arg3 - (managementFee * arg3 / 1000):
                                emit AccrueRevenue(arg3 - (managementFee * arg3 / 1000), 0, managementFee * arg3 / 1000, arg1, msg.sender);
                            else:
                                require ext_code.size(arg2)
                                staticcall arg2.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(arg2):
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= arg3 - (managementFee * arg3 / 1000):
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, arg3 - (managementFee * arg3 / 1000)) >> 32
                                    call arg2 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args arg3 - (managementFee * arg3 / 1000), mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                else:
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                                    call arg2 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, managementFee * arg3 / 1000
                                    if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                    emit AccrueRevenue(arg3 - (managementFee * arg3 / 1000), 0, managementFee * arg3 / 1000, arg1, msg.sender);
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                                       arg3 - (managementFee * arg3 / 1000),
                                                       0,
                                                       managementFee * arg3 / 1000,
                                                       mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                       arg1,
                                                       msg.sender,
                else:
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, ext_call.return_data[0 len 28]
                    mem[324 len 0] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, ext_call.return_data[0]
                        if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                            revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                        if not arg3 - (managementFee * arg3 / 1000):
                            emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                               arg3 - (managementFee * arg3 / 1000),
                                               0,
                                               0,
                                               managementFee * arg3 / 1000,
                                               arg1,
                                               msg.sender,
                        else:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= arg3 - (managementFee * arg3 / 1000):
                                mem[424 len 64] = 0, msg.sender, Mask(224, 32, arg3 - (managementFee * arg3 / 1000)) >> 32
                                call arg2 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg3 - (managementFee * arg3 / 1000), mem[360 len 28], mem[488 len 4]
                            else:
                                mem[424 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                                call arg2 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, ext_call.return_data[0]
                                if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                                    revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[534 len 22]
                            else:
                                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[456]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                            emit AccrueRevenue(arg3 - (managementFee * arg3 / 1000), 0, managementFee * arg3 / 1000, arg1, msg.sender);
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
                                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        if not arg3 - (managementFee * arg3 / 1000):
                            emit AccrueRevenue(arg3 - (managementFee * arg3 / 1000), 0, managementFee * arg3 / 1000, arg1, msg.sender);
                        else:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= arg3 - (managementFee * arg3 / 1000):
                                mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, arg3 - (managementFee * arg3 / 1000)) >> 32
                                call arg2 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg3 - (managementFee * arg3 / 1000), mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                            else:
                                mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                                call arg2 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, ext_call.return_data[0]
                                if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                mem[ceil32(return_data.size) + 535 len 22]
                                emit AccrueRevenue(arg3 - (managementFee * arg3 / 1000), 0, managementFee * arg3 / 1000, arg1, msg.sender);
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                                   arg3 - (managementFee * arg3 / 1000),
                                                   0,
                                                   managementFee * arg3 / 1000,
                                                   mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                   arg1,
                                                   msg.sender,
    else:
        if buybackFee * arg3 / arg3 != buybackFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                        mem[197 len 31]
        if not arg3:
            if buybackFee * arg3 / 1000 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > arg3 - (buybackFee * arg3 / 1000):
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg3 - (buybackFee * arg3 / 1000):
                emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000), buybackFee * arg3 / 1000, 0, arg1, msg.sender);
            else:
                require ext_code.size(arg2)
                staticcall arg2.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] >= arg3 - (buybackFee * arg3 / 1000):
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg3 - (buybackFee * arg3 / 1000)) >> 32
                    call arg2 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg3 - (buybackFee * arg3 / 1000)) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), msg.sender, arg3 - (buybackFee * arg3 / 1000)
                        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
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
                                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000), buybackFee * arg3 / 1000, 0, arg1, msg.sender);
                else:
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                    mem[324 len 0] = 0
                    call arg2 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                        emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                           arg3 - (buybackFee * arg3 / 1000),
                                           buybackFee * arg3 / 1000,
                                           0,
                                           0,
                                           arg1,
                                           msg.sender,
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
                                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000), buybackFee * arg3 / 1000, 0, arg1, msg.sender);
        else:
            if managementFee * arg3 / arg3 != managementFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                            mem[197 len 31]
            if buybackFee * arg3 / 1000 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if managementFee * arg3 / 1000 > arg3 - (buybackFee * arg3 / 1000):
                revert with 0, 'SafeMath: subtraction overflow'
            if not managementFee * arg3 / 1000:
                if not arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000):
                    emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), buybackFee * arg3 / 1000, managementFee * arg3 / 1000, arg1, msg.sender);
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000):
                        mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000)) >> 32
                        mem[324 len 0] = 0
                        call arg2 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), msg.sender, arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000)
                            if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                            emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                               arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000),
                                               buybackFee * arg3 / 1000,
                                               0,
                                               managementFee * arg3 / 1000,
                                               arg1,
                                               msg.sender,
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
                                                0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), buybackFee * arg3 / 1000, managementFee * arg3 / 1000, arg1, msg.sender);
                    else:
                        mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                        mem[324 len 0] = 0
                        call arg2 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                            if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                            emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                               arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000),
                                               buybackFee * arg3 / 1000,
                                               0,
                                               managementFee * arg3 / 1000,
                                               arg1,
                                               msg.sender,
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
                                                0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), buybackFee * arg3 / 1000, managementFee * arg3 / 1000, arg1, msg.sender);
            else:
                require ext_code.size(arg2)
                staticcall arg2.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] >= managementFee * arg3 / 1000:
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, Mask(224, 32, managementFee * arg3 / 1000) >> 32
                    mem[324 len 0] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args Mask(224, 32, managementFee * arg3 / 1000) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, managementFee * arg3 / 1000
                        if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                            revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                        if not arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000):
                            emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                               arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000),
                                               buybackFee * arg3 / 1000,
                                               0,
                                               managementFee * arg3 / 1000,
                                               arg1,
                                               msg.sender,
                        else:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000):
                                mem[424 len 64] = 0, msg.sender, Mask(224, 32, arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000)) >> 32
                                call arg2 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), mem[360 len 28], mem[488 len 4]
                            else:
                                mem[424 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                                call arg2 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, managementFee * arg3 / 1000
                                if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                                    revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[534 len 22]
                            else:
                                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[456]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                            emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), buybackFee * arg3 / 1000, managementFee * arg3 / 1000, arg1, msg.sender);
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if not arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000):
                                emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), buybackFee * arg3 / 1000, managementFee * arg3 / 1000, arg1, msg.sender);
                            else:
                                require ext_code.size(arg2)
                                staticcall arg2.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(arg2):
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000):
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000)) >> 32
                                    call arg2 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                else:
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                                    call arg2 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, managementFee * arg3 / 1000
                                    if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                    emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), buybackFee * arg3 / 1000, managementFee * arg3 / 1000, arg1, msg.sender);
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                                       arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000),
                                                       buybackFee * arg3 / 1000,
                                                       managementFee * arg3 / 1000,
                                                       mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                       arg1,
                                                       msg.sender,
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if not arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000):
                                emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), buybackFee * arg3 / 1000, managementFee * arg3 / 1000, arg1, msg.sender);
                            else:
                                require ext_code.size(arg2)
                                staticcall arg2.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(arg2):
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000):
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000)) >> 32
                                    call arg2 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, managementFee * arg3 / 1000
                                        if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 457]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                    emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), buybackFee * arg3 / 1000, managementFee * arg3 / 1000, arg1, msg.sender);
                                else:
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                                    call arg2 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, managementFee * arg3 / 1000
                                        if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                                        emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), buybackFee * arg3 / 1000, managementFee * arg3 / 1000, arg1, msg.sender);
                                    else:
                                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 457]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                                           arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000),
                                                           buybackFee * arg3 / 1000,
                                                           managementFee * arg3 / 1000,
                                                           mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                           arg1,
                                                           msg.sender,
                else:
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, ext_call.return_data[0 len 28]
                    mem[324 len 0] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, ext_call.return_data[0]
                        if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                            revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                        if not arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000):
                            emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                               arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000),
                                               buybackFee * arg3 / 1000,
                                               0,
                                               managementFee * arg3 / 1000,
                                               arg1,
                                               msg.sender,
                        else:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000):
                                mem[424 len 64] = 0, msg.sender, Mask(224, 32, arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000)) >> 32
                                call arg2 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), mem[360 len 28], mem[488 len 4]
                            else:
                                mem[424 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                                call arg2 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, ext_call.return_data[0]
                                if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                                    revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[534 len 22]
                            else:
                                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[456]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                            emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), buybackFee * arg3 / 1000, managementFee * arg3 / 1000, arg1, msg.sender);
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if not arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000):
                                emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), buybackFee * arg3 / 1000, managementFee * arg3 / 1000, arg1, msg.sender);
                            else:
                                require ext_code.size(arg2)
                                staticcall arg2.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(arg2):
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000):
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000)) >> 32
                                    call arg2 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, ext_call.return_data[0]
                                        if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                                        emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), buybackFee * arg3 / 1000, managementFee * arg3 / 1000, arg1, msg.sender);
                                    else:
                                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 457]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                                           arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000),
                                                           buybackFee * arg3 / 1000,
                                                           managementFee * arg3 / 1000,
                                                           mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                           arg1,
                                                           msg.sender,
                                else:
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                                    call arg2 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, ext_call.return_data[0]
                                        if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 457]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                    emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), buybackFee * arg3 / 1000, managementFee * arg3 / 1000, arg1, msg.sender);
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if not arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000):
                                emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), buybackFee * arg3 / 1000, managementFee * arg3 / 1000, arg1, msg.sender);
                            else:
                                require ext_code.size(arg2)
                                staticcall arg2.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(arg2):
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000):
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000)) >> 32
                                    call arg2 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, ext_call.return_data[0]
                                        if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 457]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                    emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), buybackFee * arg3 / 1000, managementFee * arg3 / 1000, arg1, msg.sender);
                                else:
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                                    call arg2 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, ext_call.return_data[0]
                                        if not transfer(address arg1, uint256 arg2), address(tx.origin) << 64:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                                        emit AccrueRevenue(arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000), buybackFee * arg3 / 1000, managementFee * arg3 / 1000, arg1, msg.sender);
                                    else:
                                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 457]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        emit AccrueRevenue(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                                           arg3 - (buybackFee * arg3 / 1000) - (managementFee * arg3 / 1000),
                                                           buybackFee * arg3 / 1000,
                                                           managementFee * arg3 / 1000,
                                                           mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                           arg1,
                                                           msg.sender,
}



}
