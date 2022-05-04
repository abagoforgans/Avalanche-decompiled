contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - sub_460c65e4(?)
#  - initializeVault(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5)
#  - depositFor(uint256 arg1, uint256 arg2, address arg3)
#  - deposit(uint256 arg1, uint256 arg2)
#
const versionRecipient = ' '

const sub_bae119ef(?) = 1000


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address trustedForwarderAddress;
address rewardsDistributorAddress;
uint256 sub_f5197d58;
uint256 sub_e09ea184;
uint256 sub_bab5dfe8;
uint256 sub_26046911;
uint256 sub_c94f9b97;
uint256 totalFees;
uint256 protocolFees;
uint256 withdrawalFees;
uint128 stor1994; offset 160
address underlyingAddress;
uint256 stor22F7;
uint256 vaultFractionToInvestNumerator;
uint256 nextImplementationTimestamp;
uint256 stor4215;
uint256 vaultFractionToInvestDenominator;
uint256 strategyUpdateTime;
uint256 strategyTimeLock;
uint256 nextImplementationDelay;
uint256 underlyingUnit;
uint128 storA7EC; offset 160
address storA7EC;
uint128 storB1AC; offset 160
address nextImplementationAddress;
uint256 storB1AC;
uint256 pricePerFullShareCheckpoint;
uint128 storB441; offset 160
address futureStrategyAddress;
uint256 storB441;
uint32 storF1A1;
uint128 storF1A1; offset 160
address strategyAddress;
uint256 storF1A1;

function name() payable {
    return name[0 len name.length]
}

function nextImplementation() payable {
    return nextImplementationAddress
}

function strategyTimeLock() payable {
    return strategyTimeLock
}

function totalFees() payable {
    return totalFees
}

function totalSupply() payable {
    return totalSupply
}

function protocolFees() payable {
    return protocolFees
}

function sub_26046911(?) payable {
    return sub_26046911
}

function decimals() payable {
    return decimals
}

function rewardsDistributor() payable {
    return rewardsDistributorAddress
}

function vaultFractionToInvestNumerator() payable {
    return vaultFractionToInvestNumerator
}

function withdrawalFees() payable {
    return withdrawalFees
}

function underlyingUnit() payable {
    return underlyingUnit
}

function futureStrategy() payable {
    return futureStrategyAddress
}

function underlying() payable {
    return underlyingAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function trustedForwarder() payable {
    return trustedForwarderAddress
}

function nextImplementationTimestamp() payable {
    return nextImplementationTimestamp
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function nextImplementationDelay() payable {
    return nextImplementationDelay
}

function strategy() payable {
    return strategyAddress
}

function strategyUpdateTime() payable {
    return strategyUpdateTime
}

function getPricePerFullShareCheckpoint() payable {
    return pricePerFullShareCheckpoint
}

function sub_bab5dfe8(?) payable {
    return sub_bab5dfe8
}

function sub_c94f9b97(?) payable {
    return sub_c94f9b97
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e09ea184(?) payable {
    return sub_e09ea184
}

function vaultFractionToInvestDenominator() payable {
    return vaultFractionToInvestDenominator
}

function sub_f5197d58(?) payable {
    return sub_f5197d58
}

function _fallback() payable {
    revert
}

function allowSharePriceDecrease() payable {
    return (1 == stor22F7)
}

function withdrawBeforeReinvesting() payable {
    return (1 == stor4215)
}

function isTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    return (arg1 == trustedForwarderAddress)
}

function governance() payable {
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function controller() payable {
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function shouldUpgrade() payable {
    if not nextImplementationTimestamp:
        return bool(nextImplementationTimestamp), nextImplementationAddress
    if block.timestamp <= nextImplementationTimestamp:
        return block.timestamp > nextImplementationTimestamp, nextImplementationAddress
    return not not nextImplementationAddress, nextImplementationAddress
}

function canUpdateStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    if not strategyAddress:
        return not strategyAddress
    if arg1 != futureStrategyAddress:
        return (arg1 == futureStrategyAddress)
    if block.timestamp <= strategyUpdateTime:
        return (block.timestamp > strategyUpdateTime)
    return (strategyUpdateTime > 0)
}

function setAllowSharePriceDecrease(bool arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if arg1:
        stor22F7 = 1
    else:
        stor22F7 = 0
}

function setWithdrawBeforeReinvesting(bool arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if arg1:
        stor4215 = 1
    else:
        stor4215 = 0
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, 'new storage shouldn't be empty'
    address(storA7EC.field_0) = arg1
    Mask(96, 0, storA7EC.field_160) = 0
}

function underlyingBalanceInVault() payable {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if protocolFees > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if withdrawalFees > ext_call.return_data[0] - protocolFees:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - protocolFees - withdrawalFees)
}

function scheduleUpgrade(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    nextImplementationAddress = arg1
    Mask(96, 0, storB1AC.field_160) = 0
    if nextImplementationDelay + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    nextImplementationTimestamp = nextImplementationDelay + block.timestamp
}

function finalizeStrategyUpdate() payable {
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xb429afeb with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(storA7EC.field_0))
        staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
    strategyUpdateTime = 0
    uint256(storB441.field_0) = 0
}

function setTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xb429afeb with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(storA7EC.field_0))
        staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
    trustedForwarderAddress = arg1
}

function setRewardsDistributor(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xb429afeb with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(storA7EC.field_0))
        staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
    rewardsDistributorAddress = arg1
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x79496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    underlyingAddress = arg1
    stor1994 = 0
    vaultFractionToInvestNumerator = arg2
    vaultFractionToInvestDenominator = arg3
    underlyingUnit = arg4
    nextImplementationDelay = arg5
    strategyTimeLock = arg6
    strategyUpdateTime = 0
    uint256(storB441.field_0) = 0
    pricePerFullShareCheckpoint = arg4
    stor22F7 = 0
    stor4215 = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function setVaultFractionToInvest(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7364656e6f6d696e61746f72206d7573742062652067726561746572207468616e20,
                    mem[198 len 30]
    if arg1 > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x7464656e6f6d696e61746f72206d7573742062652067726561746572207468616e206f7220657175616c20746f20746865206e756d657261746f,
                    mem[222 len 6]
    vaultFractionToInvestNumerator = arg1
    vaultFractionToInvestDenominator = arg2
}

function withdrawAll() payable {
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xb429afeb with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(storA7EC.field_0))
        staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
    if not strategyAddress:
        revert with 0, 'Strategy must be defined'
    require ext_code.size(strategyAddress)
    call strategyAddress.withdrawAllToVault() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function announceStrategyUpdate(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xb429afeb with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(storA7EC.field_0))
        staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
    if strategyTimeLock + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    strategyUpdateTime = strategyTimeLock + block.timestamp
    futureStrategyAddress = arg1
    Mask(96, 0, storB441.field_160) = 0
    emit StrategyAnnounced(address(arg1), strategyTimeLock + block.timestamp);
}

function underlyingBalanceWithInvestment() payable {
    if not strategyAddress:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if protocolFees > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if withdrawalFees > ext_call.return_data[0] - protocolFees:
            revert with 0, 'SafeMath: subtraction overflow'
        return (ext_call.return_data[0] - protocolFees - withdrawalFees)
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.investedUnderlyingBalance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if protocolFees > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if withdrawalFees > ext_call.return_data[0] - protocolFees:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ((2 * ext_call.return_data[0]) - protocolFees - withdrawalFees)
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        address(storA7EC.field_0) = arg1
        Mask(96, 0, storA7EC.field_160) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x79496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            address(storA7EC.field_0) = arg1
            Mask(96, 0, storA7EC.field_160) = 0
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x79496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                address(storA7EC.field_0) = arg1
                Mask(96, 0, storA7EC.field_160) = 0
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                address(storA7EC.field_0) = arg1
                Mask(96, 0, storA7EC.field_160) = 0
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
}

function sub_cff757e9(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xb429afeb with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(storA7EC.field_0))
        staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
    if arg1 >= 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6550726f746f636f6c20466565732073686f756c642062652061206672616374696f,
                    mem[198 len 30]
    if arg2 >= 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x644275794261636b20466565732073686f756c642062652061206672616374696f,
                    mem[197 len 31]
    if arg3 >= 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77547265617375727920466565732073686f756c642062652061206672616374696f,
                    mem[198 len 30]
    if arg4 >= 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x6c5265646973747269627574696f6e20466565732073686f756c642062652061206672616374696f,
                    mem[204 len 24]
    sub_f5197d58 = arg1
    sub_bab5dfe8 = arg2
    sub_e09ea184 = arg3
    sub_26046911 = arg4
    if arg3 + arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    sub_c94f9b97 = arg4 + arg3 + arg2
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if calldata.size < 24:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[200 len 28]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[198 len 30]
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
    else:
        if trustedForwarderAddress != msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[200 len 28]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[198 len 30]
            allowance[address(msg.sender)][address(arg1)] = arg2
            emit Approval(arg2, msg.sender, arg1);
        else:
            if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[200 len 28]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[198 len 30]
            allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] = arg2
            emit Approval(arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
    return 1
}

function sub_a51d2582(?) payable {
    require calldata.size - 4 >= 96
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xb429afeb with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(storA7EC.field_0))
        staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
    idx = 0
    while idx < ('cd', 68).length:
        mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
        mem[32] = 51
        if balanceOf[address(cd[((32 * idx) + cd[68] + 36)])]:
            require idx < ('cd', 68).length
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).totalStakedFor(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[68] + 36)])
            mem[96 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[32]:
                require idx < ('cd', 68).length
                mem[96] = 0x4679856300000000000000000000000000000000000000000000000000000000
                mem[100] = address(cd[36])
                mem[132] = address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0x46798563 with:
                     gas gas_remaining wei
                    args address(cd[36]), address(cd[((32 * idx) + cd[68] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if ext_call.return_data[0] > 0:
                    require idx < ('cd', 68).length
                    mem[96] = 0x4679856300000000000000000000000000000000000000000000000000000000
                    mem[100] = address(cd[36])
                    mem[132] = address(cd[((32 * idx) + cd[68] + 36)])
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0x46798563 with:
                         gas gas_remaining wei
                        args address(cd[36]), address(cd[((32 * idx) + cd[68] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function getPricePerFullShare() payable {
    if not totalSupply:
        return underlyingUnit
    if not strategyAddress:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if protocolFees > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if withdrawalFees > ext_call.return_data[0] - protocolFees:
            revert with 0, 'SafeMath: subtraction overflow'
        if not underlyingUnit:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return (0 / totalSupply)
        else:
            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return ((ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply)
    else:
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.investedUnderlyingBalance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if protocolFees > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if withdrawalFees > ext_call.return_data[0] - protocolFees:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not underlyingUnit:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return (0 / totalSupply)
        else:
            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return ((ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply)
    ('iszero', ('stor', ('name', 'totalSupply', 53)))
    revert
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if calldata.size < 24:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x6545524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7245524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if trustedForwarderAddress != msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x6545524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7245524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x6545524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg2 > balanceOf[Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                revert with 0, 
                            32,
                            38,
                            0x7245524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[Mask(64, 96, cd[(calldata.size - 20)]) << 96] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if calldata.size < 24:
        if arg2 > allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 
                        32,
                        37,
                        0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                        mem[165 len 27],
                        mem[219 len 5]
        if not msg.sender:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
        if not arg1:
            revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
        allowance[address(msg.sender)][address(arg1)] -= arg2
        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    else:
        if trustedForwarderAddress != msg.sender:
            if calldata.size < 24:
                if arg2 > allowance[address(msg.sender)][address(arg1)]:
                    revert with 0, 
                                32,
                                37,
                                0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                                mem[165 len 27],
                                mem[219 len 5]
                if not msg.sender:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                if not arg1:
                    revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                allowance[address(msg.sender)][address(arg1)] -= arg2
                emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
            else:
                if trustedForwarderAddress != msg.sender:
                    if arg2 > allowance[address(msg.sender)][address(arg1)]:
                        revert with 0, 
                                    32,
                                    37,
                                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                                    mem[165 len 27],
                                    mem[219 len 5]
                    if not msg.sender:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                    if not arg1:
                        revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                    allowance[address(msg.sender)][address(arg1)] -= arg2
                    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                else:
                    if arg2 > allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)]:
                        revert with 0, 
                                    32,
                                    37,
                                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                                    mem[165 len 27],
                                    mem[219 len 5]
                    if not msg.sender:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                    if not arg1:
                        revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                    allowance[address(msg.sender)][address(arg1)] = allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] - arg2
                    emit Approval((allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] - arg2), msg.sender, arg1);
        else:
            if calldata.size < 24:
                if arg2 > allowance[address(msg.sender)][address(arg1)]:
                    revert with 0, 
                                32,
                                37,
                                0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                                mem[165 len 27],
                                mem[219 len 5]
                if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                if not arg1:
                    revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] = allowance[address(msg.sender)][address(arg1)] - arg2
                emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
            else:
                if trustedForwarderAddress != msg.sender:
                    if arg2 > allowance[address(msg.sender)][address(arg1)]:
                        revert with 0, 
                                    32,
                                    37,
                                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                                    mem[165 len 27],
                                    mem[219 len 5]
                    if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                    if not arg1:
                        revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                    allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] = allowance[address(msg.sender)][address(arg1)] - arg2
                    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
                else:
                    if arg2 > allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)]:
                        revert with 0, 
                                    32,
                                    37,
                                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                                    mem[165 len 27],
                                    mem[219 len 5]
                    if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                    if not arg1:
                        revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                    allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] -= arg2
                    emit Approval((allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] - arg2), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6545524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7245524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if calldata.size < 24:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    else:
        if trustedForwarderAddress != msg.sender:
            if calldata.size < 24:
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            else:
                if trustedForwarderAddress != msg.sender:
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[264 len 24],
                                    mem[312 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                else:
                    if arg3 > allowance[address(arg1)][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[264 len 24],
                                    mem[312 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][Mask(64, 96, cd[(calldata.size - 20)]) << 96] - arg3
                    emit Approval((allowance[address(arg1)][Mask(64, 96, cd[(calldata.size - 20)]) << 96] - arg3), arg1, msg.sender);
        else:
            if calldata.size < 24:
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                    revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                allowance[address(arg1)][Mask(64, 96, cd[(calldata.size - 20)]) << 96] = allowance[address(arg1)][address(msg.sender)] - arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
            else:
                if trustedForwarderAddress != msg.sender:
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[264 len 24],
                                    mem[312 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                    if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                    allowance[address(arg1)][Mask(64, 96, cd[(calldata.size - 20)]) << 96] = allowance[address(arg1)][address(msg.sender)] - arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
                else:
                    if arg3 > allowance[address(arg1)][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[264 len 24],
                                    mem[312 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                    if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                    allowance[address(arg1)][Mask(64, 96, cd[(calldata.size - 20)]) << 96] -= arg3
                    emit Approval((allowance[address(arg1)][Mask(64, 96, cd[(calldata.size - 20)]) << 96] - arg3), arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if calldata.size < 24:
        if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[200 len 28]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[198 len 30]
        allowance[address(msg.sender)][address(arg1)] += arg2
        emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    else:
        if trustedForwarderAddress != msg.sender:
            if calldata.size < 24:
                if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[200 len 28]
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                34,
                                0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                mem[198 len 30]
                allowance[address(msg.sender)][address(arg1)] += arg2
                emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
            else:
                if trustedForwarderAddress != msg.sender:
                    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    36,
                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                    mem[200 len 28]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                    mem[198 len 30]
                    allowance[address(msg.sender)][address(arg1)] += arg2
                    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
                else:
                    if arg2 + allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] < allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    36,
                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                    mem[200 len 28]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                    mem[198 len 30]
                    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)]
                    emit Approval((arg2 + allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)]), msg.sender, arg1);
        else:
            if calldata.size < 24:
                if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[200 len 28]
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                34,
                                0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                mem[198 len 30]
                allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] = arg2 + allowance[address(msg.sender)][address(arg1)]
                emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
            else:
                if trustedForwarderAddress != msg.sender:
                    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    36,
                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                    mem[200 len 28]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                    mem[198 len 30]
                    allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] = arg2 + allowance[address(msg.sender)][address(arg1)]
                    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
                else:
                    if arg2 + allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] < allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    36,
                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                    mem[200 len 28]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                    mem[198 len 30]
                    allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] += arg2
                    emit Approval((arg2 + allowance[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
    return 1
}

function finalizeUpgrade() payable {
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not nextImplementationAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x656e657874496d706c656d656e746174696f6e2073686f756c64206e6f7420626520656d7074,
                    mem[202 len 26]
    uint256(storB1AC.field_0) = 0
    nextImplementationTimestamp = 0
    if not totalSupply:
        pricePerFullShareCheckpoint = underlyingUnit
    else:
        if not strategyAddress:
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if protocolFees > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                revert with 0, 'SafeMath: subtraction overflow'
            if not underlyingUnit:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                pricePerFullShareCheckpoint = 0 / totalSupply
            else:
                if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
        else:
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.investedUnderlyingBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if protocolFees > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not underlyingUnit:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                pricePerFullShareCheckpoint = 0 / totalSupply
            else:
                if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
    stor22F7 = 0
    stor4215 = 0
    if not totalSupply:
        if pricePerFullShareCheckpoint != underlyingUnit:
            revert with 0, 'share price corrupted'
    else:
        if not strategyAddress:
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if protocolFees > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                revert with 0, 'SafeMath: subtraction overflow'
            if not underlyingUnit:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if pricePerFullShareCheckpoint != 0 / totalSupply:
                    revert with 0, 'share price corrupted'
            else:
                if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if pricePerFullShareCheckpoint != (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                    revert with 0, 'share price corrupted'
        else:
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.investedUnderlyingBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if protocolFees > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not underlyingUnit:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if pricePerFullShareCheckpoint != 0 / totalSupply:
                    revert with 0, 'share price corrupted'
            else:
                if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if pricePerFullShareCheckpoint != (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                    revert with 0, 'share price corrupted'
    if 1 == stor4215:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7977697468647261774265666f72655265696e76657374696e6720697320696e636f72726563,
                    mem[202 len 26]
    if 1 == stor22F7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x64616c6c6f7753686172655072696365446563726561736520697320696e636f72726563,
                    mem[200 len 28]
}

function availableToInvestOut() payable {
    if not strategyAddress:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if protocolFees > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if withdrawalFees > ext_call.return_data[0] - protocolFees:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0] - protocolFees - withdrawalFees:
            if vaultFractionToInvestDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vaultFractionToInvestDenominator
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.investedUnderlyingBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0 / vaultFractionToInvestDenominator:
                return 0
            if ext_call.return_data[0] > 0 / vaultFractionToInvestDenominator:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if protocolFees > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                revert with 0, 'SafeMath: subtraction overflow'
            if (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0] <= ext_call.return_data[0] - protocolFees - withdrawalFees:
                return ((0 / vaultFractionToInvestDenominator) - ext_call.return_data[0])
        else:
            if (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / ext_call.return_data[0] - protocolFees - withdrawalFees != vaultFractionToInvestNumerator:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if vaultFractionToInvestDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vaultFractionToInvestDenominator
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.investedUnderlyingBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator:
                return 0
            if ext_call.return_data[0] > (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if protocolFees > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0] <= ext_call.return_data[0] - protocolFees - withdrawalFees:
                return (((ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0])
    else:
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.investedUnderlyingBalance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if protocolFees > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if withdrawalFees > ext_call.return_data[0] - protocolFees:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
            if vaultFractionToInvestDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vaultFractionToInvestDenominator
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.investedUnderlyingBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0 / vaultFractionToInvestDenominator:
                return 0
            if ext_call.return_data[0] > 0 / vaultFractionToInvestDenominator:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if protocolFees > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                revert with 0, 'SafeMath: subtraction overflow'
            if (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0] <= ext_call.return_data[0] - protocolFees - withdrawalFees:
                return ((0 / vaultFractionToInvestDenominator) - ext_call.return_data[0])
        else:
            if (ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees != vaultFractionToInvestNumerator:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if vaultFractionToInvestDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vaultFractionToInvestDenominator
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.investedUnderlyingBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= (ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator:
                return 0
            if ext_call.return_data[0] > (ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if protocolFees > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0] <= ext_call.return_data[0] - protocolFees - withdrawalFees:
                return (((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0])
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if protocolFees > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if withdrawalFees > ext_call.return_data[0] - protocolFees:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - protocolFees - withdrawalFees)
}

function underlyingBalanceWithInvestmentForHolder(address arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        if pricePerFullShareCheckpoint < underlyingUnit:
            if not balanceOf[address(arg1)]:
                if underlyingUnit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if underlyingUnit:
                    if balanceOf[address(arg1)]:
                        if underlyingUnit * balanceOf[address(arg1)] / balanceOf[address(arg1)] != underlyingUnit:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if underlyingUnit <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if underlyingUnit:
                        return (0 / underlyingUnit)
            else:
                if pricePerFullShareCheckpoint * balanceOf[address(arg1)] / balanceOf[address(arg1)] != pricePerFullShareCheckpoint:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if underlyingUnit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if underlyingUnit:
                    if balanceOf[address(arg1)]:
                        if underlyingUnit * balanceOf[address(arg1)] / balanceOf[address(arg1)] != underlyingUnit:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if underlyingUnit <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if underlyingUnit:
                        return (pricePerFullShareCheckpoint * balanceOf[address(arg1)] / underlyingUnit)
        else:
            if not balanceOf[address(arg1)]:
                if underlyingUnit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if underlyingUnit:
                    if balanceOf[address(arg1)]:
                        if underlyingUnit * balanceOf[address(arg1)] / balanceOf[address(arg1)] != underlyingUnit:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if underlyingUnit <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if underlyingUnit:
                        return (0 / underlyingUnit)
            else:
                if underlyingUnit * balanceOf[address(arg1)] / balanceOf[address(arg1)] != underlyingUnit:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if underlyingUnit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if underlyingUnit:
                    if balanceOf[address(arg1)]:
                        if underlyingUnit * balanceOf[address(arg1)] / balanceOf[address(arg1)] != underlyingUnit:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if underlyingUnit <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if underlyingUnit:
                        return (underlyingUnit * balanceOf[address(arg1)] / underlyingUnit)
    else:
        if not strategyAddress:
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if protocolFees > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                revert with 0, 'SafeMath: subtraction overflow'
            if not underlyingUnit:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply:
                    if pricePerFullShareCheckpoint < 0 / totalSupply:
                        if not balanceOf[address(arg1)]:
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if balanceOf[address(arg1)]:
                                    if 0 / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != 0 / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if underlyingUnit <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if underlyingUnit:
                                    return (0 / underlyingUnit)
                        else:
                            if pricePerFullShareCheckpoint * balanceOf[address(arg1)] / balanceOf[address(arg1)] != pricePerFullShareCheckpoint:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if balanceOf[address(arg1)]:
                                    if 0 / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != 0 / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if underlyingUnit <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if underlyingUnit:
                                    return (pricePerFullShareCheckpoint * balanceOf[address(arg1)] / underlyingUnit)
                    else:
                        if not balanceOf[address(arg1)]:
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if balanceOf[address(arg1)]:
                                    if 0 / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != 0 / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if underlyingUnit <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if underlyingUnit:
                                    return (0 / underlyingUnit)
                        else:
                            if 0 / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != 0 / totalSupply:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if balanceOf[address(arg1)]:
                                    if 0 / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != 0 / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if underlyingUnit <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if underlyingUnit:
                                    return (0 / totalSupply * balanceOf[address(arg1)] / underlyingUnit)
            else:
                if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply:
                    if pricePerFullShareCheckpoint < (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                        if not balanceOf[address(arg1)]:
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if balanceOf[address(arg1)]:
                                    if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if underlyingUnit <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if underlyingUnit:
                                    return (0 / underlyingUnit)
                        else:
                            if pricePerFullShareCheckpoint * balanceOf[address(arg1)] / balanceOf[address(arg1)] != pricePerFullShareCheckpoint:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if balanceOf[address(arg1)]:
                                    if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if underlyingUnit <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if underlyingUnit:
                                    return (pricePerFullShareCheckpoint * balanceOf[address(arg1)] / underlyingUnit)
                    else:
                        if not balanceOf[address(arg1)]:
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if balanceOf[address(arg1)]:
                                    if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if underlyingUnit <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if underlyingUnit:
                                    return (0 / underlyingUnit)
                        else:
                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if balanceOf[address(arg1)]:
                                    if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if underlyingUnit <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if underlyingUnit:
                                    return ((ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * balanceOf[address(arg1)] / underlyingUnit)
        else:
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.investedUnderlyingBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if protocolFees > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not underlyingUnit:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply:
                    if pricePerFullShareCheckpoint < 0 / totalSupply:
                        if not balanceOf[address(arg1)]:
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if balanceOf[address(arg1)]:
                                    if 0 / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != 0 / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if underlyingUnit <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if underlyingUnit:
                                    return (0 / underlyingUnit)
                        else:
                            if pricePerFullShareCheckpoint * balanceOf[address(arg1)] / balanceOf[address(arg1)] != pricePerFullShareCheckpoint:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if balanceOf[address(arg1)]:
                                    if 0 / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != 0 / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if underlyingUnit <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if underlyingUnit:
                                    return (pricePerFullShareCheckpoint * balanceOf[address(arg1)] / underlyingUnit)
                    else:
                        if not balanceOf[address(arg1)]:
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if balanceOf[address(arg1)]:
                                    if 0 / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != 0 / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if underlyingUnit <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if underlyingUnit:
                                    return (0 / underlyingUnit)
                        else:
                            if 0 / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != 0 / totalSupply:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if balanceOf[address(arg1)]:
                                    if 0 / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != 0 / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if underlyingUnit <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if underlyingUnit:
                                    return (0 / totalSupply * balanceOf[address(arg1)] / underlyingUnit)
            else:
                if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply:
                    if pricePerFullShareCheckpoint < (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                        if not balanceOf[address(arg1)]:
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if balanceOf[address(arg1)]:
                                    if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if underlyingUnit <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if underlyingUnit:
                                    return (0 / underlyingUnit)
                        else:
                            if pricePerFullShareCheckpoint * balanceOf[address(arg1)] / balanceOf[address(arg1)] != pricePerFullShareCheckpoint:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if balanceOf[address(arg1)]:
                                    if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if underlyingUnit <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if underlyingUnit:
                                    return (pricePerFullShareCheckpoint * balanceOf[address(arg1)] / underlyingUnit)
                    else:
                        if not balanceOf[address(arg1)]:
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if balanceOf[address(arg1)]:
                                    if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if underlyingUnit <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if underlyingUnit:
                                    return (0 / underlyingUnit)
                        else:
                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if balanceOf[address(arg1)]:
                                    if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] != (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if underlyingUnit <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if underlyingUnit:
                                    return ((ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * balanceOf[address(arg1)] / underlyingUnit)
    revert
}

function getEstimatedWithdrawalAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        if pricePerFullShareCheckpoint < underlyingUnit:
            if not arg1:
                if underlyingUnit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if underlyingUnit:
                    if not arg1:
                        if underlyingUnit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if underlyingUnit:
                            return 0 / underlyingUnit, 0 / underlyingUnit
                    else:
                        if underlyingUnit * arg1 / arg1 != underlyingUnit:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if underlyingUnit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if underlyingUnit:
                            return 0 / underlyingUnit, underlyingUnit * arg1 / underlyingUnit
                    ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
            else:
                if pricePerFullShareCheckpoint * arg1 / arg1 != pricePerFullShareCheckpoint:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if underlyingUnit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if underlyingUnit:
                    if not arg1:
                        if underlyingUnit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if underlyingUnit:
                            return pricePerFullShareCheckpoint * arg1 / underlyingUnit, 0 / underlyingUnit
                    else:
                        if underlyingUnit * arg1 / arg1 != underlyingUnit:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if underlyingUnit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if underlyingUnit:
                            return pricePerFullShareCheckpoint * arg1 / underlyingUnit, underlyingUnit * arg1 / underlyingUnit
                    ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
        else:
            if not arg1:
                if underlyingUnit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if underlyingUnit:
                    if not arg1:
                        if underlyingUnit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if underlyingUnit:
                            return 0 / underlyingUnit, 0 / underlyingUnit
                    else:
                        if underlyingUnit * arg1 / arg1 != underlyingUnit:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if underlyingUnit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if underlyingUnit:
                            return 0 / underlyingUnit, underlyingUnit * arg1 / underlyingUnit
                    ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
            else:
                if underlyingUnit * arg1 / arg1 != underlyingUnit:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if underlyingUnit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if underlyingUnit:
                    if not arg1:
                        if underlyingUnit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if underlyingUnit:
                            return underlyingUnit * arg1 / underlyingUnit, 0 / underlyingUnit
                    else:
                        if underlyingUnit * arg1 / arg1 != underlyingUnit:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if underlyingUnit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if underlyingUnit:
                            return underlyingUnit * arg1 / underlyingUnit, underlyingUnit * arg1 / underlyingUnit
                    ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
    else:
        if not strategyAddress:
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if protocolFees > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                revert with 0, 'SafeMath: subtraction overflow'
            if not underlyingUnit:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply:
                    if pricePerFullShareCheckpoint < 0 / totalSupply:
                        if not arg1:
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if not arg1:
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / underlyingUnit, 0 / underlyingUnit
                                else:
                                    if 0 / totalSupply * arg1 / arg1 != 0 / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / underlyingUnit, 0 / totalSupply * arg1 / underlyingUnit
                                ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
                        else:
                            if pricePerFullShareCheckpoint * arg1 / arg1 != pricePerFullShareCheckpoint:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if not arg1:
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return pricePerFullShareCheckpoint * arg1 / underlyingUnit, 0 / underlyingUnit
                                else:
                                    if 0 / totalSupply * arg1 / arg1 != 0 / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return pricePerFullShareCheckpoint * arg1 / underlyingUnit, 0 / totalSupply * arg1 / underlyingUnit
                                ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
                    else:
                        if not arg1:
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if not arg1:
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / underlyingUnit, 0 / underlyingUnit
                                else:
                                    if 0 / totalSupply * arg1 / arg1 != 0 / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / underlyingUnit, 0 / totalSupply * arg1 / underlyingUnit
                                ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
                        else:
                            if 0 / totalSupply * arg1 / arg1 != 0 / totalSupply:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if not arg1:
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / totalSupply * arg1 / underlyingUnit, 0 / underlyingUnit
                                else:
                                    if 0 / totalSupply * arg1 / arg1 != 0 / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / totalSupply * arg1 / underlyingUnit, 0 / totalSupply * arg1 / underlyingUnit
                                ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
            else:
                if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply:
                    if pricePerFullShareCheckpoint < (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                        if not arg1:
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if not arg1:
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / underlyingUnit, 0 / underlyingUnit
                                else:
                                    if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / arg1 != (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / underlyingUnit, 
                                               (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / underlyingUnit
                                ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
                        else:
                            if pricePerFullShareCheckpoint * arg1 / arg1 != pricePerFullShareCheckpoint:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if not arg1:
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return pricePerFullShareCheckpoint * arg1 / underlyingUnit, 0 / underlyingUnit
                                else:
                                    if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / arg1 != (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return pricePerFullShareCheckpoint * arg1 / underlyingUnit, 
                                               (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / underlyingUnit
                                ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
                    else:
                        if not arg1:
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if not arg1:
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / underlyingUnit, 0 / underlyingUnit
                                else:
                                    if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / arg1 != (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / underlyingUnit, 
                                               (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / underlyingUnit
                                ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
                        else:
                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / arg1 != (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if not arg1:
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / underlyingUnit, 
                                               0 / underlyingUnit
                                else:
                                    if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / arg1 != (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / underlyingUnit, 
                                               (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / underlyingUnit
                                ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
        else:
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.investedUnderlyingBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if protocolFees > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not underlyingUnit:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply:
                    if pricePerFullShareCheckpoint < 0 / totalSupply:
                        if not arg1:
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if not arg1:
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / underlyingUnit, 0 / underlyingUnit
                                else:
                                    if 0 / totalSupply * arg1 / arg1 != 0 / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / underlyingUnit, 0 / totalSupply * arg1 / underlyingUnit
                                ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
                        else:
                            if pricePerFullShareCheckpoint * arg1 / arg1 != pricePerFullShareCheckpoint:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if not arg1:
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return pricePerFullShareCheckpoint * arg1 / underlyingUnit, 0 / underlyingUnit
                                else:
                                    if 0 / totalSupply * arg1 / arg1 != 0 / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return pricePerFullShareCheckpoint * arg1 / underlyingUnit, 0 / totalSupply * arg1 / underlyingUnit
                                ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
                    else:
                        if not arg1:
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if not arg1:
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / underlyingUnit, 0 / underlyingUnit
                                else:
                                    if 0 / totalSupply * arg1 / arg1 != 0 / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / underlyingUnit, 0 / totalSupply * arg1 / underlyingUnit
                                ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
                        else:
                            if 0 / totalSupply * arg1 / arg1 != 0 / totalSupply:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if not arg1:
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / totalSupply * arg1 / underlyingUnit, 0 / underlyingUnit
                                else:
                                    if 0 / totalSupply * arg1 / arg1 != 0 / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / totalSupply * arg1 / underlyingUnit, 0 / totalSupply * arg1 / underlyingUnit
                                ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
            else:
                if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply:
                    if pricePerFullShareCheckpoint < (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                        if not arg1:
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if not arg1:
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / underlyingUnit, 0 / underlyingUnit
                                else:
                                    if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / arg1 != (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / underlyingUnit, 
                                               (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / underlyingUnit
                                ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
                        else:
                            if pricePerFullShareCheckpoint * arg1 / arg1 != pricePerFullShareCheckpoint:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if not arg1:
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return pricePerFullShareCheckpoint * arg1 / underlyingUnit, 0 / underlyingUnit
                                else:
                                    if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / arg1 != (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return pricePerFullShareCheckpoint * arg1 / underlyingUnit, 
                                               (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / underlyingUnit
                                ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
                    else:
                        if not arg1:
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if not arg1:
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / underlyingUnit, 0 / underlyingUnit
                                else:
                                    if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / arg1 != (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return 0 / underlyingUnit, 
                                               (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / underlyingUnit
                                ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
                        else:
                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / arg1 != (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if underlyingUnit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if underlyingUnit:
                                if not arg1:
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / underlyingUnit, 
                                               0 / underlyingUnit
                                else:
                                    if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / arg1 != (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if underlyingUnit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if underlyingUnit:
                                        return (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / underlyingUnit, 
                                               (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply * arg1 / underlyingUnit
                                ('iszero', ('stor', ('name', 'underlyingUnit', 75274348522708049567726312173817634239799947219121571642330030219752853364735)))
    revert
}

function setStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xb429afeb with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not strategyAddress:
            if not arg1:
                revert with 0, 'new _strategy cannot be empty'
            require ext_code.size(arg1)
            staticcall arg1.0x6f307dc3 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != underlyingAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0x6e5661756c7420756e6465726c79696e67206d757374206d6174636820537472617465677920756e6465726c79696e,
                            mem[211 len 17]
            require ext_code.size(arg1)
            staticcall arg1.vault() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x7374686520737472617465677920646f6573206e6f742062656c6f6e6720746f2074686973207661756c,
                            mem[206 len 22]
            emit StrategyChanged(address(arg1), strategyAddress);
            if arg1 == strategyAddress:
                require ext_code.size(address(storA7EC.field_0))
                staticcall address(storA7EC.field_0).0xb429afeb with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(address(storA7EC.field_0))
                    staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    43,
                                    0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                    mem[207 len 21]
            else:
                if not strategyAddress:
                    strategyAddress = arg1
                    Mask(96, 0, storF1A1.field_160) = 0
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, strategyAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x745361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[218 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call underlyingAddress with:
                       funct uint32(storF1A1.field_0)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), -1
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        require ext_code.size(address(storA7EC.field_0))
                        staticcall address(storA7EC.field_0).0xb429afeb with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 32, 43, 0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63, mem[371 len 21]
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
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(address(storA7EC.field_0))
                        staticcall address(storA7EC.field_0).0xb429afeb with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            43,
                                            0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                            mem[ceil32(return_data.size) + 372 len 21]
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                    mem[324 len 0] = 0
                    call underlyingAddress with:
                       funct uint32(storF1A1.field_0)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.withdrawAllToVault() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        strategyAddress = arg1
                        Mask(96, 0, storF1A1.field_160) = 0
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, strategyAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x745361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[382 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = 0, strategyAddress, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call underlyingAddress with:
                           funct uint32(storF1A1.field_0)
                             gas gas_remaining wei
                            args -1, mem[360 len 28], mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                            if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xb429afeb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 32, 43, 0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63, mem[535 len 21]
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
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xb429afeb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                43,
                                                0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                                mem[ceil32(return_data.size) + 536 len 21]
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
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.withdrawAllToVault() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        strategyAddress = arg1
                        Mask(96, 0, storF1A1.field_160) = 0
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, strategyAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x745361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 383 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = 0, strategyAddress, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call underlyingAddress with:
                           funct uint32(storF1A1.field_0)
                             gas gas_remaining wei
                            args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                            if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xb429afeb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                43,
                                                0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                                mem[ceil32(return_data.size) + 536 len 21]
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
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xb429afeb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                43,
                                                0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                                mem[(2 * ceil32(return_data.size)) + 537 len 21]
        else:
            if arg1 != futureStrategyAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x6e5468652073747261746567792065786973747320616e64207377697463682074696d656c6f636b20646964206e6f7420656c61707365207965,
                            mem[222 len 6]
            if block.timestamp <= strategyUpdateTime:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x6e5468652073747261746567792065786973747320616e64207377697463682074696d656c6f636b20646964206e6f7420656c61707365207965,
                            mem[222 len 6]
            if strategyUpdateTime <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x6e5468652073747261746567792065786973747320616e64207377697463682074696d656c6f636b20646964206e6f7420656c61707365207965,
                            mem[222 len 6]
            if not arg1:
                revert with 0, 'new _strategy cannot be empty'
            require ext_code.size(arg1)
            staticcall arg1.0x6f307dc3 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != underlyingAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0x6e5661756c7420756e6465726c79696e67206d757374206d6174636820537472617465677920756e6465726c79696e,
                            mem[211 len 17]
            require ext_code.size(arg1)
            staticcall arg1.vault() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x7374686520737472617465677920646f6573206e6f742062656c6f6e6720746f2074686973207661756c,
                            mem[206 len 22]
            emit StrategyChanged(address(arg1), strategyAddress);
            if arg1 == strategyAddress:
                require ext_code.size(address(storA7EC.field_0))
                staticcall address(storA7EC.field_0).0xb429afeb with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(address(storA7EC.field_0))
                    staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    43,
                                    0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                    mem[207 len 21]
            else:
                if not strategyAddress:
                    strategyAddress = arg1
                    Mask(96, 0, storF1A1.field_160) = 0
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, strategyAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x745361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[218 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[324 len 0] = 0
                    call underlyingAddress with:
                       funct uint32(storF1A1.field_0)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), -1
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        require ext_code.size(address(storA7EC.field_0))
                        staticcall address(storA7EC.field_0).0xb429afeb with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 32, 43, 0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63, mem[371 len 21]
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
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(address(storA7EC.field_0))
                        staticcall address(storA7EC.field_0).0xb429afeb with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            43,
                                            0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                            mem[ceil32(return_data.size) + 372 len 21]
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                    call underlyingAddress with:
                       funct uint32(storF1A1.field_0)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.withdrawAllToVault() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        strategyAddress = arg1
                        Mask(96, 0, storF1A1.field_160) = 0
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, strategyAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x745361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[382 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[488 len 0] = 0
                        call underlyingAddress with:
                           funct uint32(storF1A1.field_0)
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                            if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xb429afeb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 32, 43, 0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63, mem[535 len 21]
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
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xb429afeb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                43,
                                                0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                                mem[ceil32(return_data.size) + 536 len 21]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(strategyAddress)
                            call strategyAddress.withdrawAllToVault() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            strategyAddress = arg1
                            Mask(96, 0, storF1A1.field_160) = 0
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, strategyAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x745361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(return_data.size) + 383 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[ceil32(return_data.size) + 489 len 0] = 0
                            call underlyingAddress with:
                               funct uint32(storF1A1.field_0)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xb429afeb with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require ext_code.size(address(storA7EC.field_0))
                                    staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    43,
                                                    0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                                    mem[ceil32(return_data.size) + 536 len 21]
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
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xb429afeb with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require ext_code.size(address(storA7EC.field_0))
                                    staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    43,
                                                    0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                                    mem[(2 * ceil32(return_data.size)) + 537 len 21]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(strategyAddress)
                            call strategyAddress.withdrawAllToVault() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            strategyAddress = arg1
                            Mask(96, 0, storF1A1.field_160) = 0
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, strategyAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x745361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(return_data.size) + 383 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[ceil32(return_data.size) + 517 len 4] = 0
                            call underlyingAddress with:
                               funct uint32(storF1A1.field_0)
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xb429afeb with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require ext_code.size(address(storA7EC.field_0))
                                    staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    43,
                                                    0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                                    mem[ceil32(return_data.size) + 536 len 21]
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
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xb429afeb with:
                                        gas gas_remaining wei
                                       args msg.sender, mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require ext_code.size(address(storA7EC.field_0))
                                    staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                            gas gas_remaining wei
                                           args msg.sender, mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    43,
                                                    0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                                    mem[(2 * ceil32(return_data.size)) + 537 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 21]
    else:
        require ext_code.size(address(storA7EC.field_0))
        staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
        if not strategyAddress:
            if not arg1:
                revert with 0, 'new _strategy cannot be empty'
            require ext_code.size(arg1)
            staticcall arg1.0x6f307dc3 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != underlyingAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0x6e5661756c7420756e6465726c79696e67206d757374206d6174636820537472617465677920756e6465726c79696e,
                            mem[211 len 17]
            require ext_code.size(arg1)
            staticcall arg1.vault() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x7374686520737472617465677920646f6573206e6f742062656c6f6e6720746f2074686973207661756c,
                            mem[206 len 22]
            emit StrategyChanged(address(arg1), strategyAddress);
            if arg1 == strategyAddress:
                require ext_code.size(address(storA7EC.field_0))
                staticcall address(storA7EC.field_0).0xb429afeb with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(address(storA7EC.field_0))
                    staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    43,
                                    0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                    mem[207 len 21]
            else:
                if not strategyAddress:
                    strategyAddress = arg1
                    Mask(96, 0, storF1A1.field_160) = 0
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, strategyAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x745361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[218 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call underlyingAddress with:
                       funct uint32(storF1A1.field_0)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), -1
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        require ext_code.size(address(storA7EC.field_0))
                        staticcall address(storA7EC.field_0).0xb429afeb with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 32, 43, 0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63, mem[371 len 21]
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
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(address(storA7EC.field_0))
                        staticcall address(storA7EC.field_0).0xb429afeb with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            43,
                                            0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                            mem[ceil32(return_data.size) + 372 len 21]
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                    call underlyingAddress with:
                       funct uint32(storF1A1.field_0)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.withdrawAllToVault() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        strategyAddress = arg1
                        Mask(96, 0, storF1A1.field_160) = 0
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, strategyAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x745361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[382 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call underlyingAddress with:
                           funct uint32(storF1A1.field_0)
                             gas gas_remaining wei
                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                            if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xb429afeb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 32, 43, 0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63, mem[535 len 21]
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
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xb429afeb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                43,
                                                0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                                mem[ceil32(return_data.size) + 536 len 21]
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
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.withdrawAllToVault() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        strategyAddress = arg1
                        Mask(96, 0, storF1A1.field_160) = 0
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, strategyAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x745361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 383 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[ceil32(return_data.size) + 517 len 4] = 0
                        call underlyingAddress with:
                           funct uint32(storF1A1.field_0)
                             gas gas_remaining wei
                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                            if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xb429afeb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                43,
                                                0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                                mem[ceil32(return_data.size) + 536 len 21]
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
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xb429afeb with:
                                    gas gas_remaining wei
                                   args msg.sender, mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                        gas gas_remaining wei
                                       args msg.sender, mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                43,
                                                0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                                mem[(2 * ceil32(return_data.size)) + 537 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 21]
        else:
            if arg1 != futureStrategyAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x6e5468652073747261746567792065786973747320616e64207377697463682074696d656c6f636b20646964206e6f7420656c61707365207965,
                            mem[222 len 6]
            if block.timestamp <= strategyUpdateTime:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x6e5468652073747261746567792065786973747320616e64207377697463682074696d656c6f636b20646964206e6f7420656c61707365207965,
                            mem[222 len 6]
            if strategyUpdateTime <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x6e5468652073747261746567792065786973747320616e64207377697463682074696d656c6f636b20646964206e6f7420656c61707365207965,
                            mem[222 len 6]
            if not arg1:
                revert with 0, 'new _strategy cannot be empty'
            require ext_code.size(arg1)
            staticcall arg1.0x6f307dc3 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != underlyingAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0x6e5661756c7420756e6465726c79696e67206d757374206d6174636820537472617465677920756e6465726c79696e,
                            mem[211 len 17]
            require ext_code.size(arg1)
            staticcall arg1.vault() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x7374686520737472617465677920646f6573206e6f742062656c6f6e6720746f2074686973207661756c,
                            mem[206 len 22]
            emit StrategyChanged(address(arg1), strategyAddress);
            if arg1 == strategyAddress:
                require ext_code.size(address(storA7EC.field_0))
                staticcall address(storA7EC.field_0).0xb429afeb with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(address(storA7EC.field_0))
                    staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    43,
                                    0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                    mem[207 len 21]
            else:
                if not strategyAddress:
                    strategyAddress = arg1
                    Mask(96, 0, storF1A1.field_160) = 0
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, strategyAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x745361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[218 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call underlyingAddress with:
                       funct uint32(storF1A1.field_0)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), -1
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        require ext_code.size(address(storA7EC.field_0))
                        staticcall address(storA7EC.field_0).0xb429afeb with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 32, 43, 0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63, mem[371 len 21]
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
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(address(storA7EC.field_0))
                        staticcall address(storA7EC.field_0).0xb429afeb with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            43,
                                            0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                            mem[ceil32(return_data.size) + 372 len 21]
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                    mem[324 len 0] = 0
                    call underlyingAddress with:
                       funct uint32(storF1A1.field_0)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.withdrawAllToVault() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        strategyAddress = arg1
                        Mask(96, 0, storF1A1.field_160) = 0
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, strategyAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x745361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[382 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = 0, strategyAddress, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call underlyingAddress with:
                           funct uint32(storF1A1.field_0)
                             gas gas_remaining wei
                            args -1, mem[360 len 28], mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                            if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xb429afeb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 32, 43, 0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63, mem[535 len 21]
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
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xb429afeb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                43,
                                                0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                                mem[ceil32(return_data.size) + 536 len 21]
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
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.withdrawAllToVault() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        strategyAddress = arg1
                        Mask(96, 0, storF1A1.field_160) = 0
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, strategyAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x745361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 383 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = 0, strategyAddress, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call underlyingAddress with:
                           funct uint32(storF1A1.field_0)
                             gas gas_remaining wei
                            args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                            if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xb429afeb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                43,
                                                0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                                mem[ceil32(return_data.size) + 536 len 21]
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
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
                            require ext_code.size(address(storA7EC.field_0))
                            staticcall address(storA7EC.field_0).0xb429afeb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(address(storA7EC.field_0))
                                staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                43,
                                                0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                                                mem[(2 * ceil32(return_data.size)) + 537 len 21]
    strategyUpdateTime = 0
    uint256(storB441.field_0) = 0
}

function startSaving() payable {
    if not strategyAddress:
        revert with 0, 'Strategy must be defined'
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xb429afeb with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if stor4215 != 1:
            if not strategyAddress:
                revert with 0, 'Strategy must be defined'
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.investedUnderlyingBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if protocolFees > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                if (ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees != vaultFractionToInvestNumerator:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if vaultFractionToInvestDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vaultFractionToInvestDenominator
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.investedUnderlyingBalance() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= (ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator:
                    require ext_code.size(strategyAddress)
                    call strategyAddress.0x4983aecd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        if stor22F7 != 1:
                            if pricePerFullShareCheckpoint > underlyingUnit:
                                revert with 0, 'Share price should not decrease'
                        pricePerFullShareCheckpoint = underlyingUnit
                    else:
                        if not strategyAddress:
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if protocolFees > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not underlyingUnit:
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > 0 / totalSupply:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = 0 / totalSupply
                            else:
                                if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                        else:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.investedUnderlyingBalance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if protocolFees > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not underlyingUnit:
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > 0 / totalSupply:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = 0 / totalSupply
                            else:
                                if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                else:
                    if ext_call.return_data[0] > (ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if protocolFees > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0] <= ext_call.return_data[0] - protocolFees - withdrawalFees:
                        if not ((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]:
                            require ext_code.size(strategyAddress)
                            call strategyAddress.0x4983aecd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > underlyingUnit:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = underlyingUnit
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), Mask(224, 32, ((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]) >> 32
                            call underlyingAddress with:
                               funct uint32(storF1A1.field_0)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                Mask(224, 0, storF1A1.field_0),
                                                uint32(storF1A1.field_0),
                                                ((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Invest((((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]));
                                require ext_code.size(strategyAddress)
                                call strategyAddress.0x4983aecd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > underlyingUnit:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = underlyingUnit
                                else:
                                    if not strategyAddress:
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                    else:
                                        require ext_code.size(strategyAddress)
                                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
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
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Invest((((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]));
                                require ext_code.size(strategyAddress)
                                call strategyAddress.0x4983aecd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > underlyingUnit:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = underlyingUnit
                                else:
                                    if not strategyAddress:
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                    else:
                                        require ext_code.size(strategyAddress)
                                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                    else:
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if protocolFees > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0] - protocolFees - withdrawalFees:
                            require ext_code.size(strategyAddress)
                            call strategyAddress.0x4983aecd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > underlyingUnit:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = underlyingUnit
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), Mask(224, 32, ext_call.return_data[0] - protocolFees - withdrawalFees) >> 32
                            call underlyingAddress with:
                               funct uint32(storF1A1.field_0)
                                 gas gas_remaining wei
                                args Mask(224, 32, ext_call.return_data[0] - protocolFees - withdrawalFees) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                Mask(224, 0, storF1A1.field_0),
                                                uint32(storF1A1.field_0),
                                                ext_call.return_data[0] - protocolFees - withdrawalFees
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Invest((ext_call.return_data[0] - protocolFees - withdrawalFees));
                                require ext_code.size(strategyAddress)
                                call strategyAddress.0x4983aecd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > underlyingUnit:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = underlyingUnit
                                else:
                                    if not strategyAddress:
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                    else:
                                        require ext_code.size(strategyAddress)
                                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
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
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Invest((ext_call.return_data[0] - protocolFees - withdrawalFees));
                                require ext_code.size(strategyAddress)
                                call strategyAddress.0x4983aecd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > underlyingUnit:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = underlyingUnit
                                else:
                                    if not strategyAddress:
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                    else:
                                        require ext_code.size(strategyAddress)
                                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
            else:
                if vaultFractionToInvestDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vaultFractionToInvestDenominator
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.investedUnderlyingBalance() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0 / vaultFractionToInvestDenominator:
                    require ext_code.size(strategyAddress)
                    call strategyAddress.0x4983aecd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        if stor22F7 != 1:
                            if pricePerFullShareCheckpoint > underlyingUnit:
                                revert with 0, 'Share price should not decrease'
                        pricePerFullShareCheckpoint = underlyingUnit
                    else:
                        if not strategyAddress:
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if protocolFees > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not underlyingUnit:
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > 0 / totalSupply:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = 0 / totalSupply
                            else:
                                if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                        else:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.investedUnderlyingBalance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if protocolFees > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not underlyingUnit:
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > 0 / totalSupply:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = 0 / totalSupply
                            else:
                                if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                else:
                    if ext_call.return_data[0] > 0 / vaultFractionToInvestDenominator:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if protocolFees > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0] <= ext_call.return_data[0] - protocolFees - withdrawalFees:
                        if not (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]:
                            require ext_code.size(strategyAddress)
                            call strategyAddress.0x4983aecd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > underlyingUnit:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = underlyingUnit
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), Mask(224, 32, (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]) >> 32
                            call underlyingAddress with:
                               funct uint32(storF1A1.field_0)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                Mask(224, 0, storF1A1.field_0),
                                                uint32(storF1A1.field_0),
                                                (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Invest(((0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]));
                                require ext_code.size(strategyAddress)
                                call strategyAddress.0x4983aecd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > underlyingUnit:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = underlyingUnit
                                else:
                                    if not strategyAddress:
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                    else:
                                        require ext_code.size(strategyAddress)
                                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
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
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Invest(((0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]));
                                require ext_code.size(strategyAddress)
                                call strategyAddress.0x4983aecd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > underlyingUnit:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = underlyingUnit
                                else:
                                    if not strategyAddress:
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                    else:
                                        require ext_code.size(strategyAddress)
                                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                    else:
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if protocolFees > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0] - protocolFees - withdrawalFees:
                            require ext_code.size(strategyAddress)
                            call strategyAddress.0x4983aecd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > underlyingUnit:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = underlyingUnit
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), Mask(224, 32, ext_call.return_data[0] - protocolFees - withdrawalFees) >> 32
                            mem[324 len 0] = 0
                            call underlyingAddress with:
                               funct uint32(storF1A1.field_0)
                                 gas gas_remaining wei
                                args Mask(224, 32, ext_call.return_data[0] - protocolFees - withdrawalFees) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                Mask(224, 0, storF1A1.field_0),
                                                uint32(storF1A1.field_0),
                                                ext_call.return_data[0] - protocolFees - withdrawalFees
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Invest((ext_call.return_data[0] - protocolFees - withdrawalFees));
                                require ext_code.size(strategyAddress)
                                call strategyAddress.0x4983aecd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > underlyingUnit:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = underlyingUnit
                                else:
                                    if not strategyAddress:
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                    else:
                                        require ext_code.size(strategyAddress)
                                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
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
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Invest((ext_call.return_data[0] - protocolFees - withdrawalFees));
                                require ext_code.size(strategyAddress)
                                call strategyAddress.0x4983aecd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > underlyingUnit:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = underlyingUnit
                                else:
                                    if not strategyAddress:
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                    else:
                                        require ext_code.size(strategyAddress)
                                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
        else:
            require ext_code.size(strategyAddress)
            call strategyAddress.withdrawAllToVault() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not strategyAddress:
                revert with 0, 'Strategy must be defined'
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.investedUnderlyingBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if protocolFees > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                if vaultFractionToInvestDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vaultFractionToInvestDenominator
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.investedUnderlyingBalance() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0 / vaultFractionToInvestDenominator:
                    require ext_code.size(strategyAddress)
                    call strategyAddress.0x4983aecd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        if stor22F7 != 1:
                            if pricePerFullShareCheckpoint > underlyingUnit:
                                revert with 0, 'Share price should not decrease'
                        pricePerFullShareCheckpoint = underlyingUnit
                    else:
                        if not strategyAddress:
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if protocolFees > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not underlyingUnit:
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > 0 / totalSupply:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = 0 / totalSupply
                            else:
                                if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                        else:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.investedUnderlyingBalance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if protocolFees > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not underlyingUnit:
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > 0 / totalSupply:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = 0 / totalSupply
                            else:
                                if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                else:
                    if ext_call.return_data[0] > 0 / vaultFractionToInvestDenominator:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if protocolFees > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0] <= ext_call.return_data[0] - protocolFees - withdrawalFees:
                        if not (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]:
                            require ext_code.size(strategyAddress)
                            call strategyAddress.0x4983aecd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > underlyingUnit:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = underlyingUnit
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), Mask(224, 32, (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]) >> 32
                            call underlyingAddress with:
                               funct uint32(storF1A1.field_0)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                Mask(224, 0, storF1A1.field_0),
                                                uint32(storF1A1.field_0),
                                                (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Invest(((0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]));
                                require ext_code.size(strategyAddress)
                                call strategyAddress.0x4983aecd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > underlyingUnit:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = underlyingUnit
                                else:
                                    if not strategyAddress:
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                    else:
                                        require ext_code.size(strategyAddress)
                                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
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
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Invest(((0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]));
                                require ext_code.size(strategyAddress)
                                call strategyAddress.0x4983aecd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > underlyingUnit:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = underlyingUnit
                                else:
                                    if not strategyAddress:
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                    else:
                                        require ext_code.size(strategyAddress)
                                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                    else:
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if protocolFees > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0] - protocolFees - withdrawalFees:
                            require ext_code.size(strategyAddress)
                            call strategyAddress.0x4983aecd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > underlyingUnit:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = underlyingUnit
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), Mask(224, 32, ext_call.return_data[0] - protocolFees - withdrawalFees) >> 32
                            call underlyingAddress with:
                               funct uint32(storF1A1.field_0)
                                 gas gas_remaining wei
                                args Mask(224, 32, ext_call.return_data[0] - protocolFees - withdrawalFees) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                Mask(224, 0, storF1A1.field_0),
                                                uint32(storF1A1.field_0),
                                                ext_call.return_data[0] - protocolFees - withdrawalFees
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Invest((ext_call.return_data[0] - protocolFees - withdrawalFees));
                                require ext_code.size(strategyAddress)
                                call strategyAddress.0x4983aecd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > underlyingUnit:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = underlyingUnit
                                else:
                                    if not strategyAddress:
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                    else:
                                        require ext_code.size(strategyAddress)
                                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
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
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Invest((ext_call.return_data[0] - protocolFees - withdrawalFees));
                                require ext_code.size(strategyAddress)
                                call strategyAddress.0x4983aecd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > underlyingUnit:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = underlyingUnit
                                else:
                                    if not strategyAddress:
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                    else:
                                        require ext_code.size(strategyAddress)
                                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
            else:
                if (ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees != vaultFractionToInvestNumerator:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if vaultFractionToInvestDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vaultFractionToInvestDenominator
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.investedUnderlyingBalance() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= (ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator:
                    require ext_code.size(strategyAddress)
                    call strategyAddress.0x4983aecd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        if stor22F7 != 1:
                            if pricePerFullShareCheckpoint > underlyingUnit:
                                revert with 0, 'Share price should not decrease'
                        pricePerFullShareCheckpoint = underlyingUnit
                    else:
                        if not strategyAddress:
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if protocolFees > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not underlyingUnit:
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > 0 / totalSupply:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = 0 / totalSupply
                            else:
                                if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                        else:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.investedUnderlyingBalance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if protocolFees > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not underlyingUnit:
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > 0 / totalSupply:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = 0 / totalSupply
                            else:
                                if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                else:
                    if ext_call.return_data[0] > (ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if protocolFees > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0] <= ext_call.return_data[0] - protocolFees - withdrawalFees:
                        if not ((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]:
                            require ext_code.size(strategyAddress)
                            call strategyAddress.0x4983aecd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > underlyingUnit:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = underlyingUnit
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), Mask(224, 32, ((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]) >> 32
                            call underlyingAddress with:
                               funct uint32(storF1A1.field_0)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                Mask(224, 0, storF1A1.field_0),
                                                uint32(storF1A1.field_0),
                                                ((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Invest((((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]));
                                require ext_code.size(strategyAddress)
                                call strategyAddress.0x4983aecd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > underlyingUnit:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = underlyingUnit
                                else:
                                    if not strategyAddress:
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                    else:
                                        require ext_code.size(strategyAddress)
                                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
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
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Invest((((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]));
                                require ext_code.size(strategyAddress)
                                call strategyAddress.0x4983aecd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > underlyingUnit:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = underlyingUnit
                                else:
                                    if not strategyAddress:
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                    else:
                                        require ext_code.size(strategyAddress)
                                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                    else:
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if protocolFees > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0] - protocolFees - withdrawalFees:
                            require ext_code.size(strategyAddress)
                            call strategyAddress.0x4983aecd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > underlyingUnit:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = underlyingUnit
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), Mask(224, 32, ext_call.return_data[0] - protocolFees - withdrawalFees) >> 32
                            call underlyingAddress with:
                               funct uint32(storF1A1.field_0)
                                 gas gas_remaining wei
                                args Mask(224, 32, ext_call.return_data[0] - protocolFees - withdrawalFees) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                Mask(224, 0, storF1A1.field_0),
                                                uint32(storF1A1.field_0),
                                                ext_call.return_data[0] - protocolFees - withdrawalFees
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Invest((ext_call.return_data[0] - protocolFees - withdrawalFees));
                                require ext_code.size(strategyAddress)
                                call strategyAddress.0x4983aecd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > underlyingUnit:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = underlyingUnit
                                else:
                                    if not strategyAddress:
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                    else:
                                        require ext_code.size(strategyAddress)
                                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
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
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Invest((ext_call.return_data[0] - protocolFees - withdrawalFees));
                                require ext_code.size(strategyAddress)
                                call strategyAddress.0x4983aecd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > underlyingUnit:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = underlyingUnit
                                else:
                                    if not strategyAddress:
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                    else:
                                        require ext_code.size(strategyAddress)
                                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(underlyingAddress)
                                        staticcall underlyingAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if protocolFees > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not underlyingUnit:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = 0 / totalSupply
                                        else:
                                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if stor22F7 != 1:
                                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                    revert with 0, 'Share price should not decrease'
                                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
    else:
        require ext_code.size(address(storA7EC.field_0))
        staticcall address(storA7EC.field_0).0xdee1f0e4 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
        if 1 == stor4215:
            require ext_code.size(strategyAddress)
            call strategyAddress.withdrawAllToVault() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if not strategyAddress:
            revert with 0, 'Strategy must be defined'
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.investedUnderlyingBalance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if protocolFees > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if withdrawalFees > ext_call.return_data[0] - protocolFees:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
            if vaultFractionToInvestDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vaultFractionToInvestDenominator
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.investedUnderlyingBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0 / vaultFractionToInvestDenominator:
                require ext_code.size(strategyAddress)
                call strategyAddress.0x4983aecd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not totalSupply:
                    if stor22F7 != 1:
                        if pricePerFullShareCheckpoint > underlyingUnit:
                            revert with 0, 'Share price should not decrease'
                    pricePerFullShareCheckpoint = underlyingUnit
                else:
                    if not strategyAddress:
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if protocolFees > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not underlyingUnit:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if stor22F7 != 1:
                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                    revert with 0, 'Share price should not decrease'
                            pricePerFullShareCheckpoint = 0 / totalSupply
                        else:
                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if stor22F7 != 1:
                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                    revert with 0, 'Share price should not decrease'
                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                    else:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if protocolFees > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not underlyingUnit:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if stor22F7 != 1:
                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                    revert with 0, 'Share price should not decrease'
                            pricePerFullShareCheckpoint = 0 / totalSupply
                        else:
                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if stor22F7 != 1:
                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                    revert with 0, 'Share price should not decrease'
                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
            else:
                if ext_call.return_data[0] > 0 / vaultFractionToInvestDenominator:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if protocolFees > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if withdrawalFees > ext_call.return_data[0] - protocolFees:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0] <= ext_call.return_data[0] - protocolFees - withdrawalFees:
                    if not (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]:
                        require ext_code.size(strategyAddress)
                        call strategyAddress.0x4983aecd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not totalSupply:
                            if stor22F7 != 1:
                                if pricePerFullShareCheckpoint > underlyingUnit:
                                    revert with 0, 'Share price should not decrease'
                            pricePerFullShareCheckpoint = underlyingUnit
                        else:
                            if not strategyAddress:
                                require ext_code.size(underlyingAddress)
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if protocolFees > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not underlyingUnit:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > 0 / totalSupply:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = 0 / totalSupply
                                else:
                                    if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                            else:
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.investedUnderlyingBalance() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(underlyingAddress)
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if protocolFees > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not underlyingUnit:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > 0 / totalSupply:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = 0 / totalSupply
                                else:
                                    if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), Mask(224, 32, (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]) >> 32
                        call underlyingAddress with:
                           funct uint32(storF1A1.field_0)
                             gas gas_remaining wei
                            args Mask(224, 32, (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, storF1A1.field_0),
                                            uint32(storF1A1.field_0),
                                            (0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            emit Invest(((0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]));
                            require ext_code.size(strategyAddress)
                            call strategyAddress.0x4983aecd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > underlyingUnit:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = underlyingUnit
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
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
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            emit Invest(((0 / vaultFractionToInvestDenominator) - ext_call.return_data[0]));
                            require ext_code.size(strategyAddress)
                            call strategyAddress.0x4983aecd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > underlyingUnit:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = underlyingUnit
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                else:
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if protocolFees > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_call.return_data[0] - protocolFees - withdrawalFees:
                        require ext_code.size(strategyAddress)
                        call strategyAddress.0x4983aecd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not totalSupply:
                            if stor22F7 != 1:
                                if pricePerFullShareCheckpoint > underlyingUnit:
                                    revert with 0, 'Share price should not decrease'
                            pricePerFullShareCheckpoint = underlyingUnit
                        else:
                            if not strategyAddress:
                                require ext_code.size(underlyingAddress)
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if protocolFees > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not underlyingUnit:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > 0 / totalSupply:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = 0 / totalSupply
                                else:
                                    if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                            else:
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.investedUnderlyingBalance() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(underlyingAddress)
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if protocolFees > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not underlyingUnit:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > 0 / totalSupply:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = 0 / totalSupply
                                else:
                                    if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), Mask(224, 32, ext_call.return_data[0] - protocolFees - withdrawalFees) >> 32
                        call underlyingAddress with:
                           funct uint32(storF1A1.field_0)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - protocolFees - withdrawalFees) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, storF1A1.field_0),
                                            uint32(storF1A1.field_0),
                                            ext_call.return_data[0] - protocolFees - withdrawalFees
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            emit Invest((ext_call.return_data[0] - protocolFees - withdrawalFees));
                            require ext_code.size(strategyAddress)
                            call strategyAddress.0x4983aecd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > underlyingUnit:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = underlyingUnit
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
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
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            emit Invest((ext_call.return_data[0] - protocolFees - withdrawalFees));
                            require ext_code.size(strategyAddress)
                            call strategyAddress.0x4983aecd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > underlyingUnit:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = underlyingUnit
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
        else:
            if (ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees != vaultFractionToInvestNumerator:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if vaultFractionToInvestDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vaultFractionToInvestDenominator
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.investedUnderlyingBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= (ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator:
                require ext_code.size(strategyAddress)
                call strategyAddress.0x4983aecd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not totalSupply:
                    if stor22F7 != 1:
                        if pricePerFullShareCheckpoint > underlyingUnit:
                            revert with 0, 'Share price should not decrease'
                    pricePerFullShareCheckpoint = underlyingUnit
                else:
                    if not strategyAddress:
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if protocolFees > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not underlyingUnit:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if stor22F7 != 1:
                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                    revert with 0, 'Share price should not decrease'
                            pricePerFullShareCheckpoint = 0 / totalSupply
                        else:
                            if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if stor22F7 != 1:
                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                    revert with 0, 'Share price should not decrease'
                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                    else:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if protocolFees > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if withdrawalFees > ext_call.return_data[0] - protocolFees:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not underlyingUnit:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if stor22F7 != 1:
                                if pricePerFullShareCheckpoint > 0 / totalSupply:
                                    revert with 0, 'Share price should not decrease'
                            pricePerFullShareCheckpoint = 0 / totalSupply
                        else:
                            if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if stor22F7 != 1:
                                if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                    revert with 0, 'Share price should not decrease'
                            pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
            else:
                if ext_call.return_data[0] > (ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if protocolFees > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if withdrawalFees > ext_call.return_data[0] - protocolFees:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0] <= ext_call.return_data[0] - protocolFees - withdrawalFees:
                    if not ((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]:
                        require ext_code.size(strategyAddress)
                        call strategyAddress.0x4983aecd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not totalSupply:
                            if stor22F7 != 1:
                                if pricePerFullShareCheckpoint > underlyingUnit:
                                    revert with 0, 'Share price should not decrease'
                            pricePerFullShareCheckpoint = underlyingUnit
                        else:
                            if not strategyAddress:
                                require ext_code.size(underlyingAddress)
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if protocolFees > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not underlyingUnit:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > 0 / totalSupply:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = 0 / totalSupply
                                else:
                                    if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                            else:
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.investedUnderlyingBalance() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(underlyingAddress)
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if protocolFees > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not underlyingUnit:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > 0 / totalSupply:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = 0 / totalSupply
                                else:
                                    if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), Mask(224, 32, ((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]) >> 32
                        call underlyingAddress with:
                           funct uint32(storF1A1.field_0)
                             gas gas_remaining wei
                            args Mask(224, 32, ((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, storF1A1.field_0),
                                            uint32(storF1A1.field_0),
                                            ((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            emit Invest((((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]));
                            require ext_code.size(strategyAddress)
                            call strategyAddress.0x4983aecd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > underlyingUnit:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = underlyingUnit
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
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
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            emit Invest((((ext_call.return_data[0] * vaultFractionToInvestNumerator) + (ext_call.return_data[0] * vaultFractionToInvestNumerator) - (protocolFees * vaultFractionToInvestNumerator) - (withdrawalFees * vaultFractionToInvestNumerator) / vaultFractionToInvestDenominator) - ext_call.return_data[0]));
                            require ext_code.size(strategyAddress)
                            call strategyAddress.0x4983aecd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > underlyingUnit:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = underlyingUnit
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                else:
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if protocolFees > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_call.return_data[0] - protocolFees - withdrawalFees:
                        require ext_code.size(strategyAddress)
                        call strategyAddress.0x4983aecd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not totalSupply:
                            if stor22F7 != 1:
                                if pricePerFullShareCheckpoint > underlyingUnit:
                                    revert with 0, 'Share price should not decrease'
                            pricePerFullShareCheckpoint = underlyingUnit
                        else:
                            if not strategyAddress:
                                require ext_code.size(underlyingAddress)
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if protocolFees > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not underlyingUnit:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > 0 / totalSupply:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = 0 / totalSupply
                                else:
                                    if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                            else:
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.investedUnderlyingBalance() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(underlyingAddress)
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if protocolFees > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not underlyingUnit:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > 0 / totalSupply:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = 0 / totalSupply
                                else:
                                    if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if stor22F7 != 1:
                                        if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                            revert with 0, 'Share price should not decrease'
                                    pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), Mask(224, 32, ext_call.return_data[0] - protocolFees - withdrawalFees) >> 32
                        call underlyingAddress with:
                           funct uint32(storF1A1.field_0)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - protocolFees - withdrawalFees) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, storF1A1.field_0),
                                            uint32(storF1A1.field_0),
                                            ext_call.return_data[0] - protocolFees - withdrawalFees
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            emit Invest((ext_call.return_data[0] - protocolFees - withdrawalFees));
                            require ext_code.size(strategyAddress)
                            call strategyAddress.0x4983aecd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > underlyingUnit:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = underlyingUnit
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
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
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            emit Invest((ext_call.return_data[0] - protocolFees - withdrawalFees));
                            require ext_code.size(strategyAddress)
                            call strategyAddress.0x4983aecd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if stor22F7 != 1:
                                    if pricePerFullShareCheckpoint > underlyingUnit:
                                        revert with 0, 'Share price should not decrease'
                                pricePerFullShareCheckpoint = underlyingUnit
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != ext_call.return_data[0] - protocolFees - withdrawalFees:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if protocolFees > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if withdrawalFees > ext_call.return_data[0] - protocolFees:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not underlyingUnit:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > 0 / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = 0 / totalSupply
                                    else:
                                        if (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / underlyingUnit != (2 * ext_call.return_data[0]) - protocolFees - withdrawalFees:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if stor22F7 != 1:
                                            if pricePerFullShareCheckpoint > (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply:
                                                revert with 0, 'Share price should not decrease'
                                        pricePerFullShareCheckpoint = (ext_call.return_data[0] * underlyingUnit) + (ext_call.return_data[0] * underlyingUnit) - (protocolFees * underlyingUnit) - (withdrawalFees * underlyingUnit) / totalSupply
}



}
