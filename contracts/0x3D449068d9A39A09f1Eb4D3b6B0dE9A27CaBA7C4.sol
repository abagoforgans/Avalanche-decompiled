contract main {




// =====================  Runtime code  =====================


const sub_2ba3725a(?) = 500000

const sub_61d07569(?) = (120 * 24 * 3600)

const sub_8a39735a(?) = 200

const MAX_FEE_BASIS_POINTS = 300

const PRICE_PRECISION = 1000000000000 * 10^18


uint256 buffer;
address adminAddress;
address tokenManagerAddress;
address rewardManagerAddress;
address mintReceiverAddress;
uint256 maxTokenSupply;
mapping of uint256 sub_e30569e5;
mapping of uint8 stor7;

function rewardManager() payable {
    return rewardManagerAddress
}

function tokenManager() payable {
    return tokenManagerAddress
}

function maxTokenSupply() payable {
    return maxTokenSupply
}

function sub_5dae8841(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function mintReceiver() payable {
    return mintReceiverAddress
}

function sub_e30569e5(?) payable {
    require calldata.size - 4 >= 32
    return sub_e30569e5[arg1]
}

function buffer() payable {
    return buffer
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if tokenManagerAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    adminAddress = arg1
}

function addExcludedToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    stor7[address(arg1)] = 1
}

function cancelAction(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if not sub_e30569e5[arg1]:
        revert with 0, 'Timelock: invalid _action'
    sub_e30569e5[arg1] = 0
    emit ClearAction(arg1);
}

function sub_21bd0592(?) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.0xf07bbf77 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_47de43e2(?) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.0x4453a374 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_df3a66d9(?) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.0xefa10a6e with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeAdmin(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.removeAdmin(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setUseV2Pricing(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.setUseV2Pricing(bool arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setIsAmmEnabled(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.setIsAmmEnabled(bool arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setIsSwapEnabled(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.setIsSwapEnabled(bool arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFavorPrimaryPrice(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.setFavorPrimaryPrice(bool arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setIsLeverageEnabled(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.setIsLeverageEnabled(bool arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setIsSecondaryPriceEnabled(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.setIsSecondaryPriceEnabled(bool arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMaxStrictPriceDeviation(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.setMaxStrictPriceDeviation(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSpreadThresholdBasisPoints(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.setSpreadThresholdBasisPoints(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function managedSetMinter(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if rewardManagerAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.setMinter(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function managedSetHandler(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if rewardManagerAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.setHandler(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0191c237(?) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if buffer + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    sub_e30569e5['redeemUsdg'][arg1][arg2][arg3] = buffer + block.timestamp
    emit SignalPendingAction(sha3('redeemUsdg', arg1, arg2, arg3));
    emit 0xe6bd553b: address(arg1), address(arg2), arg3
}

function setSpreadBasisPoints(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.setSpreadBasisPoints(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferIn(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function signalSetGov(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if buffer + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    sub_e30569e5[0][arg1][arg2] = buffer + block.timestamp
    emit SignalPendingAction(sha3(0, arg1, arg2));
    emit SignalSetGov(address(arg1), address(arg2), sha3(0, arg1, arg2));
}

function setExternalAdmin(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if this.address == arg1:
        revert with 0, 'Timelock: invalid _target'
    require ext_code.size(arg1)
    call arg1.0x704b6c02 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function signalAddPlugin(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if buffer + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    sub_e30569e5[0][arg1][arg2] = buffer + block.timestamp
    emit SignalPendingAction(sha3(0, arg1, arg2));
    emit SignalAddPlugin(address(arg1), address(arg2), sha3(0, arg1, arg2));
}

function setAdjustment(address arg1, address arg2, bool arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.setAdjustment(address arg1, bool arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMaxGasPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if arg2 <= 5 * 10^9:
        revert with 0, 'Invalid _maxGasPrice'
    require ext_code.size(arg1)
    call arg1.setMaxGasPrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawFees(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.withdrawFees(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function signalSetPriceFeed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if buffer + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    sub_e30569e5[0][arg1][arg2] = buffer + block.timestamp
    emit SignalPendingAction(sha3(0, arg1, arg2));
    emit SignalSetPriceFeed(address(arg1), address(arg2), sha3(0, arg1, arg2));
}

function setPriceSampleSpace(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if arg2 > 5:
        revert with 0, 'Invalid _priceSampleSpace'
    require ext_code.size(arg1)
    call arg1.setPriceSampleSpace(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMaxLeverage(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if arg2 <= 500000:
        revert with 0, 'Timelock: invalid _maxLeverage'
    require ext_code.size(arg1)
    call arg1.setMaxLeverage(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4cd23f3b(?) payable {
    require calldata.size - 4 >= 128
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if buffer + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    sub_e30569e5[0][arg1][arg2][arg3][arg4] = buffer + block.timestamp
    emit SignalPendingAction(sha3(0, arg1, arg2, arg3, arg4));
    emit 0x9ed7b0f0: address(arg1), address(arg2), address(arg3), arg4, sha3(0, arg1, arg2, arg3, arg4)
}

function signalMint(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if buffer + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    sub_e30569e5[0][arg1][arg2][arg3] = buffer + block.timestamp
    emit SignalPendingAction(sha3(0, arg1, arg2, arg3));
    emit SignalMint(address(arg1), address(arg2), arg3, sha3(0, arg1, arg2, arg3));
}

function signalApprove(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if buffer + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    sub_e30569e5['approve'][arg1][arg2][arg3] = buffer + block.timestamp
    emit SignalPendingAction(sha3('approve', arg1, arg2, arg3));
    emit SignalApprove(address(arg1), address(arg2), arg3, sha3('approve', arg1, arg2, arg3));
}

function setBuffer(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if arg1 > 120 * 24 * 3600:
        revert with 0, 'Timelock: invalid _buffer'
    if arg1 <= buffer:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6454696d656c6f636b3a206275666665722063616e6e6f74206265206465637265617365,
                    mem[200 len 28]
    buffer = arg1
}

function sub_384cae73(?) payable {
    require calldata.size - 4 >= 160
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if buffer + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    sub_e30569e5['priceFeedSetTokenConfig'][arg1][arg2][arg3][arg4][Mask(8, 248, arg5) >> 248] = buffer + block.timestamp
    emit SignalPendingAction(sha3('priceFeedSetTokenConfig', arg1, arg2, arg3, arg4, Mask(8, 248, arg5) >> 248));
    emit 0x1b2ddf35: address(arg1), address(arg2), address(arg3), arg4, arg5
}

function signalSetHandler(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if buffer + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    sub_e30569e5[0][arg1][arg2][Mask(8, 248, arg3) >> 248] = buffer + block.timestamp
    emit SignalPendingAction(sha3(0, arg1, arg2, Mask(8, 248, arg3) >> 248));
    emit SignalSetHandler(address(arg1), address(arg2), arg3, sha3(0, arg1, arg2, Mask(8, 248, arg3) >> 248));
}

function setInPrivateTransferMode(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if stor7[address(arg1)]:
        if arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x6454696d656c6f636b3a20696e76616c6964205f696e507269766174655472616e736665724d6f64,
                        mem[204 len 24]
    require ext_code.size(arg1)
    call arg1.setInPrivateTransferMode(bool arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function signalVaultSetTokenConfig(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, bool arg7, bool arg8) payable {
    require calldata.size - 4 >= 256
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if buffer + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    sub_e30569e5['vaultSetTokenConfig'][arg1][arg2][arg3][arg4][arg5][arg6][Mask(8, 248, arg7) >> 248][Mask(8, 248, arg8) >> 248] = buffer + block.timestamp
    emit SignalPendingAction(sha3('vaultSetTokenConfig', arg1, arg2, arg3, arg4, arg5, arg6, Mask(8, 248, arg7) >> 248, Mask(8, 248, arg8) >> 248));
    emit SignalVaultSetTokenConfig(address(arg1), address(arg2), arg3, arg4, arg5, arg6, arg7, arg8);
}

function setGov(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if not sub_e30569e5[0][arg1][arg2]:
        revert with 0, 'Timelock: action not signalled'
    if block.timestamp <= sub_e30569e5[0][arg1][arg2]:
        revert with 0, 32, 36, 0x7354696d656c6f636b3a20616374696f6e2074696d65206e6f7420796574207061737365, mem[278 len 28]
    if not sub_e30569e5[0][arg1][arg2]:
        revert with 0, 'Timelock: invalid _action'
    sub_e30569e5[0][arg1][arg2] = 0
    emit ClearAction(sha3(0, arg1, arg2));
    require ext_code.size(arg1)
    call arg1.setGov(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addPlugin(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if not sub_e30569e5[0][arg1][arg2]:
        revert with 0, 'Timelock: action not signalled'
    if block.timestamp <= sub_e30569e5[0][arg1][arg2]:
        revert with 0, 32, 36, 0x7354696d656c6f636b3a20616374696f6e2074696d65206e6f7420796574207061737365, mem[281 len 28]
    if not sub_e30569e5[0][arg1][arg2]:
        revert with 0, 'Timelock: invalid _action'
    sub_e30569e5[0][arg1][arg2] = 0
    emit ClearAction(sha3(0, arg1, arg2));
    require ext_code.size(arg1)
    call arg1.addPlugin(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPriceFeed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if not sub_e30569e5[0][arg1][arg2]:
        revert with 0, 'Timelock: action not signalled'
    if block.timestamp <= sub_e30569e5[0][arg1][arg2]:
        revert with 0, 32, 36, 0x7354696d656c6f636b3a20616374696f6e2074696d65206e6f7420796574207061737365, mem[284 len 28]
    if not sub_e30569e5[0][arg1][arg2]:
        revert with 0, 'Timelock: invalid _action'
    sub_e30569e5[0][arg1][arg2] = 0
    emit ClearAction(sha3(0, arg1, arg2));
    require ext_code.size(arg1)
    call arg1.setPriceFeed(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_21754d9e(?) payable {
    require calldata.size - 4 >= 128
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if not sub_e30569e5[0][arg1][arg2][arg3][arg4]:
        revert with 0, 'Timelock: action not signalled'
    if block.timestamp <= sub_e30569e5[0][arg1][arg2][arg3][arg4]:
        revert with 0, 32, 36, 0x7354696d656c6f636b3a20616374696f6e2074696d65206e6f7420796574207061737365, mem[337 len 28]
    if not sub_e30569e5[0][arg1][arg2][arg3][arg4]:
        revert with 0, 'Timelock: invalid _action'
    sub_e30569e5[0][arg1][arg2][arg3][arg4] = 0
    emit ClearAction(sha3(0, arg1, arg2, arg3, arg4));
    require ext_code.size(arg1)
    call arg1.withdrawToken(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_227f03eb(?) payable {
    require calldata.size - 4 >= 128
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if arg3 >= 200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354696d656c6f636b3a20696e76616c6964205f66756e64696e6752617465466163746f,
                    mem[200 len 28]
    if arg4 >= 200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6454696d656c6f636b3a20696e76616c6964205f737461626c6546756e64696e6752617465466163746f,
                    mem[206 len 22]
    require ext_code.size(arg1)
    call arg1.0x8a27d468 with:
         gas gas_remaining wei
        args arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if not sub_e30569e5['approve'][arg1][arg2][arg3]:
        revert with 0, 'Timelock: action not signalled'
    if block.timestamp <= sub_e30569e5['approve'][arg1][arg2][arg3]:
        revert with 0, 32, 36, 0x7354696d656c6f636b3a20616374696f6e2074696d65206e6f7420796574207061737365, mem[311 len 28]
    if not sub_e30569e5['approve'][arg1][arg2][arg3]:
        revert with 0, 'Timelock: invalid _action'
    sub_e30569e5['approve'][arg1][arg2][arg3] = 0
    emit ClearAction(sha3('approve', arg1, arg2, arg3));
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setHandler(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if not sub_e30569e5[0][arg1][arg2][Mask(8, 248, arg3) >> 248]:
        revert with 0, 'Timelock: action not signalled'
    if block.timestamp <= sub_e30569e5[0][arg1][arg2][Mask(8, 248, arg3) >> 248]:
        revert with 0, 32, 36, 0x7354696d656c6f636b3a20616374696f6e2074696d65206e6f7420796574207061737365, mem[283 len 28]
    if not sub_e30569e5[0][arg1][arg2][Mask(8, 248, arg3) >> 248]:
        revert with 0, 'Timelock: invalid _action'
    sub_e30569e5[0][arg1][arg2][Mask(8, 248, arg3) >> 248] = 0
    emit ClearAction(sha3(0, arg1, arg2, Mask(8, 248, arg3) >> 248));
    require ext_code.size(arg1)
    call arg1.setHandler(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3335e38a(?) payable {
    require calldata.size - 4 >= 160
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if not sub_e30569e5['priceFeedSetTokenConfig'][arg1][arg2][arg3][arg4][Mask(8, 248, arg5) >> 248]:
        revert with 0, 'Timelock: action not signalled'
    if block.timestamp <= sub_e30569e5['priceFeedSetTokenConfig'][arg1][arg2][arg3][arg4][Mask(8, 248, arg5) >> 248]:
        revert with 0, 32, 36, 0x7354696d656c6f636b3a20616374696f6e2074696d65206e6f7420796574207061737365, mem[348 len 28]
    if not sub_e30569e5['priceFeedSetTokenConfig'][arg1][arg2][arg3][arg4][Mask(8, 248, arg5) >> 248]:
        revert with 0, 'Timelock: invalid _action'
    sub_e30569e5['priceFeedSetTokenConfig'][arg1][arg2][arg3][arg4][Mask(8, 248, arg5) >> 248] = 0
    emit ClearAction(sha3('priceFeedSetTokenConfig', arg1, arg2, arg3, arg4, Mask(8, 248, arg5) >> 248));
    require ext_code.size(arg1)
    call arg1.setTokenConfig(address arg1, address arg2, uint256 arg3, bool arg4) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    require ext_code.size(arg1)
    call arg1.isMinter(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if not ext_call.return_data[0]:
        call arg1.setMinter(address arg1, bool arg2) with:
             gas gas_remaining wei
            args this.address, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call arg1.0x40c10f19 with:
         gas gas_remaining wei
        args mintReceiverAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > maxTokenSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x54696d656c6f636b3a206d6178546f6b656e537570706c79206578636565646500,
                    mem[197 len 31]
}

function vaultSetTokenConfig(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, bool arg7, bool arg8) payable {
    require calldata.size - 4 >= 256
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if not sub_e30569e5['vaultSetTokenConfig'][arg1][arg2][arg3][arg4][arg5][arg6][Mask(8, 248, arg7) >> 248][Mask(8, 248, arg8) >> 248]:
        revert with 0, 'Timelock: action not signalled'
    if block.timestamp <= sub_e30569e5['vaultSetTokenConfig'][arg1][arg2][arg3][arg4][arg5][arg6][Mask(8, 248, arg7) >> 248][Mask(8, 248, arg8) >> 248]:
        revert with 0, 32, 36, 0x7354696d656c6f636b3a20616374696f6e2074696d65206e6f7420796574207061737365, mem[421 len 28]
    if not sub_e30569e5['vaultSetTokenConfig'][arg1][arg2][arg3][arg4][arg5][arg6][Mask(8, 248, arg7) >> 248][Mask(8, 248, arg8) >> 248]:
        revert with 0, 'Timelock: invalid _action'
    sub_e30569e5['vaultSetTokenConfig'][arg1][arg2][arg3][arg4][arg5][arg6][Mask(8, 248, arg7) >> 248][Mask(8, 248, arg8) >> 248] = 0
    emit ClearAction(sha3('vaultSetTokenConfig', arg1, arg2, arg3, arg4, arg5, arg6, Mask(8, 248, arg7) >> 248, Mask(8, 248, arg8) >> 248));
    require ext_code.size(arg1)
    call arg1.setTokenConfig(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6, bool arg7) with:
         gas gas_remaining wei
        args address(arg2), arg3, arg4, arg5, arg6, arg7, arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function processMint(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if not sub_e30569e5[0][arg1][arg2][arg3]:
        revert with 0, 'Timelock: action not signalled'
    if block.timestamp <= sub_e30569e5[0][arg1][arg2][arg3]:
        revert with 0, 32, 36, 0x7354696d656c6f636b3a20616374696f6e2074696d65206e6f7420796574207061737365, mem[308 len 28]
    if not sub_e30569e5[0][arg1][arg2][arg3]:
        revert with 0, 'Timelock: invalid _action'
    sub_e30569e5[0][arg1][arg2][arg3] = 0
    emit ClearAction(sha3(0, arg1, arg2, arg3));
    require ext_code.size(arg1)
    call arg1.isMinter(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if not ext_call.return_data[0]:
        call arg1.setMinter(address arg1, bool arg2) with:
             gas gas_remaining wei
            args this.address, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call arg1.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > maxTokenSupply:
        revert with 0, 32, 33, 0x54696d656c6f636b3a206d6178546f6b656e537570706c79206578636565646500, mem[305 len 31]
}

function sub_0e0dc426(?) payable {
    require calldata.size - 4 >= 224
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if arg4 > 500:
        revert with 0, 'Timelock: invalid _minProfitBps'
    require ext_code.size(arg1)
    staticcall arg1.whitelistedTokens(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7354696d656c6f636b3a20746f6b656e206e6f74207965742077686974656c69737465,
                    mem[199 len 29]
    require ext_code.size(arg1)
    staticcall arg1.tokenDecimals(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.stableTokens(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.shortableTokens(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.setTokenConfig(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6, bool arg7) with:
         gas gas_remaining wei
        args 0, 0, ext_call.return_data[0], arg3, arg4, arg5, bool(ext_call.return_data[0]), bool(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.setBufferAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0xd66b000d with:
         gas gas_remaining wei
        args address(arg2), arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, bool arg10) payable {
    require calldata.size - 4 >= 320
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if arg2 >= 300:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7354696d656c6f636b3a20696e76616c6964205f7461784261736973506f696e74,
                    mem[197 len 31]
    if arg3 >= 300:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6554696d656c6f636b3a20696e76616c6964205f737461626c655461784261736973506f696e74,
                    mem[203 len 25]
    if arg4 >= 300:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7354696d656c6f636b3a20696e76616c6964205f6d696e744275726e4665654261736973506f696e74,
                    mem[205 len 23]
    if arg5 >= 300:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe54696d656c6f636b3a20696e76616c6964205f737761704665654261736973506f696e74,
                    mem[201 len 27]
    if arg6 >= 300:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x7254696d656c6f636b3a20696e76616c6964205f737461626c65537761704665654261736973506f696e74,
                    mem[207 len 21]
    if arg7 >= 300:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x7254696d656c6f636b3a20696e76616c6964205f6d617267696e4665654261736973506f696e74,
                    mem[203 len 25]
    if arg8 >= 10000000000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6454696d656c6f636b3a20696e76616c6964205f6c69717569646174696f6e4665655573,
                    mem[200 len 28]
    require ext_code.size(arg1)
    call arg1.setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, bool arg9) with:
         gas gas_remaining wei
        args 0, uint32(arg2), arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_70ac0a93(?) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if not sub_e30569e5['redeemUsdg'][arg1][arg2][arg3]:
        revert with 0, 'Timelock: action not signalled'
    if block.timestamp <= sub_e30569e5['redeemUsdg'][arg1][arg2][arg3]:
        revert with 0, 32, 36, 0x7354696d656c6f636b3a20616374696f6e2074696d65206e6f7420796574207061737365, mem[314 len 28]
    if not sub_e30569e5['redeemUsdg'][arg1][arg2][arg3]:
        revert with 0, 'Timelock: invalid _action'
    sub_e30569e5['redeemUsdg'][arg1][arg2][arg3] = 0
    emit ClearAction(sha3('redeemUsdg', arg1, arg2, arg3));
    require ext_code.size(arg1)
    staticcall arg1.usdg() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.setManager(address arg1, bool arg2) with:
         gas gas_remaining wei
        args this.address, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addVault(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x40c10f19 with:
         gas gas_remaining wei
        args this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.sellUSDG(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg2), mintReceiverAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.setManager(address arg1, bool arg2) with:
         gas gas_remaining wei
        args this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).removeVault(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_009a698e(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if adminAddress != msg.sender:
        revert with 0, 'dTimelock: forbidden'
    if arg2.length != arg3.length:
        revert with 0, 'Timelock: invalid lengths'
    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = this.address
    require ext_code.size(arg1)
    call arg1.isHandler(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _35 = mem[(32 * idx) + 128]
            require idx < arg3.length
            _39 = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x41f2272400000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + (32 * arg3.length) + 164] = address(_35)
            mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _39
            require ext_code.size(arg1)
            call arg1.setBonusRewards(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_35), _39
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x9cb7de4b00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = this.address
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = 1
        require ext_code.size(arg1)
        call arg1.setHandler(address arg1, bool arg2) with:
             gas gas_remaining wei
            args this.address, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _37 = mem[(32 * idx) + 128]
            require idx < arg3.length
            _42 = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x41f2272400000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + (32 * arg3.length) + 164] = address(_37)
            mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _42
            require ext_code.size(arg1)
            call arg1.setBonusRewards(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_37), _42
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}



}
