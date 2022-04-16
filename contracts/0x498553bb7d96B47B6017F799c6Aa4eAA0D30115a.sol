contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
uint256 stor151;
uint256 minFee;
uint256 maxFee;
uint256 minTransferDelay;
uint256 maxTransferDelay;
uint256 feeThreshold;
uint256 transferLockupTime;
uint8 paused; offset 160
uint32 stor158;
address feeAddress;
mapping of uint8 stor159;
mapping of uint8 stor160;
mapping of uint8 stor161;
uint256 lastWithdrawID;
uint256 lastUnlockID;
mapping of uint256 lastTransfer;
mapping of address remoteToken;
mapping of uint256 inTransferFunds;
mapping of uint256 maxAssetTransferSize;
mapping of uint256 minAssetTransferSize;
mapping of struct deposits;

function maxFee() payable {
    return maxFee
}

function maxTransferDelay() payable {
    return maxTransferDelay
}

function minFee() payable {
    return minFee
}

function lastUnlockID() payable {
    return lastUnlockID
}

function deposits(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return deposits[arg1].field_0, deposits[arg1].field_256
}

function feeAddress() payable {
    return feeAddress
}

function hasBeenWithdrawed(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor159[arg1])
}

function lastTransfer(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastTransfer[arg1]
}

function inTransferFunds(address arg1) payable {
    require calldata.size - 4 >= 32
    return inTransferFunds[arg1]
}

function paused() payable {
    return bool(paused)
}

function hasBeenCompleted(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor161[arg1])
}

function minTransferDelay() payable {
    return minTransferDelay
}

function owner() payable {
    return owner
}

function transferLockupTime() payable {
    return transferLockupTime
}

function lastWithdrawID() payable {
    return lastWithdrawID
}

function getRemoteTokenAddress(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return remoteToken[arg1][address(arg2)]
}

function minAssetTransferSize(address arg1) payable {
    require calldata.size - 4 >= 32
    return minAssetTransferSize[arg1]
}

function feeThreshold() payable {
    return feeThreshold
}

function hasBeenUnlocked(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor160[arg1])
}

function remoteTokenAddress(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return remoteToken[arg1][arg2]
}

function maxAssetTransferSize(address arg1) payable {
    require calldata.size - 4 >= 32
    return maxAssetTransferSize[arg1]
}

function _fallback() payable {
    revert
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    paused = 0
    emit Unpause(msg.sender);
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Contract is paused'
    paused = 1
    emit Pause(msg.sender);
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Invalid fee address'
    feeAddress = arg1
    emit FeeAddressChanged(arg1);
}

function setAssetMaxTransferSize(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    maxAssetTransferSize[address(arg1)] = arg2
    emit AssetMaxTransferSizeChanged(arg2, arg1);
}

function setAssetMinTransferSize(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    minAssetTransferSize[address(arg1)] = arg2
    emit AssetMinTransferSizeChanged(arg2, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getCurrentTokenLiquidity(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if inTransferFunds[address(arg1)] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - inTransferFunds[address(arg1)])
}

function setThresholdFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe5468726573686f6c64206665652063616e6e6f74206265206d6f7265207468616e207468726573686f6c6420666163746f,
                    mem[214 len 14]
    feeThreshold = arg1
    emit ThresholdFeeChanged(arg1);
}

function setTransferLockupTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit LockupTimeChanged(address rg1, uint256 rg2, uint256 rg3, string rg4):
                           transferLockupTime,
                           arg1,
                           96,
                           8,
                           0x5472616e73666572000000000000000000000000000000000000000000000000,
                           msg.sender,
    transferLockupTime = arg1
}

function setMinTransferDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= maxTransferDelay:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x6b4d696e205472616e7366657244656c61792063616e6e6f74206265206d6f7265207468616e206d6178205472616e7366657244656c61,
                    mem[219 len 9]
    minTransferDelay = arg1
    emit MinTransferDelayChanged(arg1);
}

function setMaxTransferDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= minTransferDelay:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x654d6178205472616e7366657244656c61792063616e6e6f74206265206c657373207468616e206d696e205472616e7366657244656c61,
                    mem[219 len 9]
    maxTransferDelay = arg1
    emit MaxTransferDelayChanged(arg1);
}

function removeSupportedToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not remoteToken[arg2][address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x79556e737570706f7274656420746f6b656e20696e2074686973206e6574776f72,
                    mem[197 len 31]
    emit TokenRemoved(arg1, remoteToken[arg2][address(arg1)], arg2);
    remoteToken[arg2][address(arg1)] = 0
}

function setMinFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d696e206665652063616e6e6f74206265206d6f7265207468616e2066656520666163746f,
                    mem[202 len 26]
    if arg1 >= maxFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x734d696e206665652063616e6e6f74206265206d6f7265207468616e206d6178206665,
                    mem[199 len 29]
    minFee = arg1
    emit MinFeeChanged(arg1);
}

function setMaxFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724d6178206665652063616e6e6f74206265206d6f7265207468616e2066656520666163746f,
                    mem[202 len 26]
    if arg1 <= minFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x724d6178206665652063616e6e6f74206265206c657373207468616e206d696e206665,
                    mem[199 len 29]
    maxFee = arg1
    emit MaxFeeChanged(arg1);
}

function unlockInTransferFunds(address arg1, uint256 arg2, bytes32 arg3) payable {
    require calldata.size - 4 >= 96
    if paused:
        revert with 0, 'Contract is paused'
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor161[arg3]:
        revert with 0, 'Already completed'
    if arg2 > inTransferFunds[address(arg1)]:
        revert with 0, 'More amount than available'
    if deposits[arg3].field_0 != arg1:
        revert with 0, 'Deposit not registered'
    if arg2 != deposits[arg3].field_256:
        revert with 0, 'Deposit not registered'
    stor161[arg3] = 1
    if arg2 > inTransferFunds[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    inTransferFunds[address(arg1)] -= arg2
    emit TransferFundsUnlocked(arg2, arg3, arg1);
}

function addSupportedToken(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Invalid token address'
    if not arg2:
        revert with 0, 'Invalid token address'
    if arg3 <= 0:
        revert with 0, 'Invalid network ID'
    if arg4 <= arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x644d6178207472616e736665722073697a65206d75737420626520626967676572207468616e206d69,
                    mem[205 len 23]
    remoteToken[arg3][address(arg1)] = arg2
    maxAssetTransferSize[address(arg1)] = arg4
    minAssetTransferSize[address(arg1)] = arg5
    emit TokenAdded(arg4, arg5, arg1, arg2, arg3);
}

function saveFunds(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if bool(paused) != 1:
        revert with 0, 'contract is not paused'
    if not arg1:
        revert with 0, 'invalid _token address'
    if not arg2:
        revert with 0, 'invalid _to address'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'nothing to transfer'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit LiquidityMoved(ext_call.return_data[0], msg.sender, arg2);
}

function unlockFunds(address arg1, address arg2, uint256 arg3, bytes32 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if stor160[arg4]:
        revert with 0, 'Already unlocked'
    stor160[arg4] = 1
    lastUnlockID = arg4
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit FundsUnlocked(arg3, arg1, arg2, arg4);
    if not stor161[arg4]:
        if paused:
            revert with 0, 'Contract is paused'
        if owner != msg.sender:
            revert with 0, 'wOwnable: caller is not the owne'
        if stor161[arg4]:
            revert with 0, 'Already completed'
        if arg3 > inTransferFunds[address(arg1)]:
            revert with 0, 'More amount than available'
        if deposits[arg4].field_0 != arg1:
            revert with 0, 'Deposit not registered'
        if arg3 != deposits[arg4].field_256:
            revert with 0, 'Deposit not registered'
        stor161[arg4] = 1
        if arg3 > inTransferFunds[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        inTransferFunds[address(arg1)] -= arg3
        emit TransferFundsUnlocked(arg3, arg4, arg1);
    stor101 = 1
}

function depositERC20(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if not remoteToken[arg4][address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x79556e737570706f7274656420746f6b656e20696e2074686973206e6574776f72,
                    mem[197 len 31]
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Contract is paused'
    if not arg1:
        revert with 0, 'Amount cannot be zero'
    if transferLockupTime + lastTransfer[msg.sender] < lastTransfer[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    if transferLockupTime + lastTransfer[msg.sender] >= block.timestamp:
        revert with 0, 'Transfer not yet possible'
    if arg5 < minTransferDelay:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x725472616e736665722064656c61792069732062656c6f7720746865206d696e696d756d2072657175697265,
                    mem[208 len 20]
    if arg5 > maxTransferDelay:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x655472616e736665722064656c61792069732062656c6f7720746865206d6178696d756d2072657175697265,
                    mem[208 len 20]
    if arg1 > maxAssetTransferSize[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x645472616e7366657220616d6f756e742069732061626f7665206d6178207472616e736665722073697a6520666f7220746869732061737365,
                    mem[221 len 7]
    if arg1 > maxAssetTransferSize[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x645472616e7366657220616d6f756e742069732061626f7665206d6178207472616e736665722073697a6520666f7220746869732061737365,
                    mem[221 len 7]
    if arg1 < minAssetTransferSize[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x795472616e7366657220616d6f756e742069732062656c6f77206d696e207472616e736665722073697a6520666f7220746869732061737365,
                    mem[221 len 7]
    if arg1 + inTransferFunds[address(arg2)] < inTransferFunds[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    inTransferFunds[address(arg2)] += arg1
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    lastTransfer[msg.sender] = block.timestamp
    stor151++
    deposits[block.number][Mask(160, 96, this.address) >> 96][chainid][arg4][stor151].field_0 = arg2
    deposits[block.number][Mask(160, 96, this.address) >> 96][chainid][arg4][stor151].field_256 = arg1
    if arg3:
        emit DepositCompleted(arg4, address(arg3), arg1, sha3(block.number, Mask(160, 96, this.address) >> 96, chainid, arg4, stor151), arg5, msg.sender, arg2, remoteToken[arg4][address(arg2)]);
    else:
        emit DepositCompleted(arg4, msg.sender, arg1, sha3(block.number, Mask(160, 96, this.address) >> 96, chainid, arg4, stor151), arg5, msg.sender, arg2, remoteToken[arg4][address(arg2)]);
    stor101 = 1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        stor151 = 0
        minFee = 25
        maxFee = 400
        minTransferDelay = 0
        maxTransferDelay = 24 * 3600
        feeThreshold = 50
        transferLockupTime = 300
        stor101 = 1
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        feeAddress = arg1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            stor151 = 0
            minFee = 25
            maxFee = 400
            minTransferDelay = 0
            maxTransferDelay = 24 * 3600
            feeThreshold = 50
            transferLockupTime = 300
            stor101 = 1
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            feeAddress = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            stor151 = 0
            minFee = 25
            maxFee = 400
            minTransferDelay = 0
            maxTransferDelay = 24 * 3600
            feeThreshold = 50
            transferLockupTime = 300
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                stor101 = 1
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                feeAddress = arg1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    stor101 = 1
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    feeAddress = arg1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    stor101 = 1
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        feeAddress = arg1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            feeAddress = arg1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                owner = msg.sender
                                emit OwnershipTransferred(0, msg.sender);
                                feeAddress = arg1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                owner = msg.sender
                                emit OwnershipTransferred(0, msg.sender);
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                feeAddress = arg1
                                uint8(stor0.field_8) = 0
}

function calculateFeePercentage(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if inTransferFunds[address(arg1)] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - inTransferFunds[address(arg1)]:
        return maxFee
    if not arg2:
        if ext_call.return_data[0] - inTransferFunds[address(arg1)] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0] - inTransferFunds[address(arg1)]
        if 0 / ext_call.return_data[0] - inTransferFunds[address(arg1)] > feeThreshold:
            return maxFee
    else:
        if 100 * arg2 / arg2 != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] - inTransferFunds[address(arg1)] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0] - inTransferFunds[address(arg1)]
        if 100 * arg2 / ext_call.return_data[0] - inTransferFunds[address(arg1)] > feeThreshold:
            return maxFee
    if not ext_call.return_data[0] - inTransferFunds[address(arg1)]:
        if arg2:
            if 100 * arg2 / arg2 != 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        revert with 0, 'SafeMath: division by zero'
    if (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / ext_call.return_data[0] - inTransferFunds[address(arg1)] != feeThreshold:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg2:
        if (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100
        if not minFee:
            if minFee > maxFee:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100:
                return 0
            if (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100) / 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100 != maxFee - minFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100) / 100)
        if 100 * minFee / minFee != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if minFee > maxFee:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100:
            if 100 * minFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (100 * minFee / 100)
        if (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100) / 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100 != maxFee - minFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 100 * minFee < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100) / 100)
    if 100 * arg2 / arg2 != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100
    if not minFee:
        if minFee > maxFee:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100:
            return 0
        if (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100) / 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100 != maxFee - minFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100) / 100)
    if 100 * minFee / minFee != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if minFee > maxFee:
        revert with 0, 'SafeMath: subtraction overflow'
    if not 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100:
        if 100 * minFee < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (100 * minFee / 100)
    if (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100) / 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100 != maxFee - minFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if 100 * minFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg1)] * feeThreshold) / 100) / 100)
}

function withdrawTo(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    if not remoteToken[arg4][address(arg3)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x79556e737570706f7274656420746f6b656e20696e2074686973206e6574776f72,
                    mem[197 len 31]
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Contract is paused'
    if stor159[arg5]:
        revert with 0, 'Already withdrawed'
    stor159[arg5] = 1
    lastWithdrawID = arg5
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - inTransferFunds[address(arg3)]:
        if not arg2:
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(arg3)
            staticcall arg3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                revert with 0, 'Not enough tokens on balance'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg3):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
            mem[324 len 0] = 0
            call arg3 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                         arg2,
                                         arg2,
                                         0,
                                         0,
                                         arg1,
                                         arg3,
                                         arg5,
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
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
        else:
            if maxFee * arg2 / arg2 != maxFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if maxFee * arg2 / 10000 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(arg3)
            staticcall arg3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                revert with 0, 'Not enough tokens on balance'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg3):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - (maxFee * arg2 / 10000)) >> 32
            mem[324 len 0] = 0
            call arg3 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2 - (maxFee * arg2 / 10000)) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (maxFee * arg2 / 10000)
                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if not maxFee * arg2 / 10000:
                    emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                             arg2,
                                             arg2 - (maxFee * arg2 / 10000),
                                             0,
                                             maxFee * arg2 / 10000,
                                             arg1,
                                             arg3,
                                             arg5,
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                    if not ext_code.size(arg3):
                        revert with 0, 'Address: call to non-contract'
                    mem[424 len 64] = 0, feeAddress, Mask(224, 32, maxFee * arg2 / 10000) >> 32
                    call arg3 with:
                       funct stor158
                         gas gas_remaining wei
                        args maxFee * arg2 / 10000, mem[360 len 28], mem[488 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (maxFee * arg2 / 10000)
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                    emit FeeTaken(arg2, maxFee * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                    emit WithdrawalCompleted(arg2, arg2 - (maxFee * arg2 / 10000), maxFee * arg2 / 10000, arg1, arg3, arg5);
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
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                if not maxFee * arg2 / 10000:
                    emit WithdrawalCompleted(arg2, arg2 - (maxFee * arg2 / 10000), maxFee * arg2 / 10000, arg1, arg3, arg5);
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if not ext_code.size(arg3):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, feeAddress, Mask(224, 32, maxFee * arg2 / 10000) >> 32
                    call arg3 with:
                       funct stor158
                         gas gas_remaining wei
                        args maxFee * arg2 / 10000, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (maxFee * arg2 / 10000)
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        emit FeeTaken(arg2, maxFee * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                        emit WithdrawalCompleted(arg2, arg2 - (maxFee * arg2 / 10000), maxFee * arg2 / 10000, arg1, arg3, arg5);
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
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        emit FeeTaken(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, bytes32 rg6):
                                      arg2,
                                      maxFee * arg2 / 10000,
                                      arg5,
                                      mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                      msg.sender,
                                      arg1,
                                      arg3,
                        emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                 arg2,
                                                 arg2 - (maxFee * arg2 / 10000),
                                                 maxFee * arg2 / 10000,
                                                 mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 arg1,
                                                 arg3,
                                                 arg5,
    else:
        if not arg2:
            if ext_call.return_data[0] - inTransferFunds[address(arg3)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0] - inTransferFunds[address(arg3)]
            if 0 / ext_call.return_data[0] - inTransferFunds[address(arg3)] > feeThreshold:
                if not arg2:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                        revert with 0, 'Not enough tokens on balance'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg3):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                    mem[324 len 0] = 0
                    call arg3 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                 arg2,
                                                 arg2,
                                                 0,
                                                 0,
                                                 arg1,
                                                 arg3,
                                                 arg5,
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
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                else:
                    if maxFee * arg2 / arg2 != maxFee:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if maxFee * arg2 / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                        revert with 0, 'Not enough tokens on balance'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg3):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - (maxFee * arg2 / 10000)) >> 32
                    mem[324 len 0] = 0
                    call arg3 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - (maxFee * arg2 / 10000)) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (maxFee * arg2 / 10000)
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if not maxFee * arg2 / 10000:
                            emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                     arg2,
                                                     arg2 - (maxFee * arg2 / 10000),
                                                     0,
                                                     maxFee * arg2 / 10000,
                                                     arg1,
                                                     arg3,
                                                     arg5,
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[424 len 64] = 0, feeAddress, Mask(224, 32, maxFee * arg2 / 10000) >> 32
                            call arg3 with:
                               funct stor158
                                 gas gas_remaining wei
                                args maxFee * arg2 / 10000, mem[360 len 28], mem[488 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (maxFee * arg2 / 10000)
                                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                            emit FeeTaken(arg2, maxFee * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                            emit WithdrawalCompleted(arg2, arg2 - (maxFee * arg2 / 10000), maxFee * arg2 / 10000, arg1, arg3, arg5);
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
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        if not maxFee * arg2 / 10000:
                            emit WithdrawalCompleted(arg2, arg2 - (maxFee * arg2 / 10000), maxFee * arg2 / 10000, arg1, arg3, arg5);
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = 0, feeAddress, Mask(224, 32, maxFee * arg2 / 10000) >> 32
                            call arg3 with:
                               funct stor158
                                 gas gas_remaining wei
                                args maxFee * arg2 / 10000, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (maxFee * arg2 / 10000)
                                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                                emit FeeTaken(arg2, maxFee * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                emit WithdrawalCompleted(arg2, arg2 - (maxFee * arg2 / 10000), maxFee * arg2 / 10000, arg1, arg3, arg5);
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
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                emit FeeTaken(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, bytes32 rg6):
                                              arg2,
                                              maxFee * arg2 / 10000,
                                              arg5,
                                              mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                              msg.sender,
                                              arg1,
                                              arg3,
                                emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                         arg2,
                                                         arg2 - (maxFee * arg2 / 10000),
                                                         maxFee * arg2 / 10000,
                                                         mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         arg1,
                                                         arg3,
                                                         arg5,
            else:
                if not ext_call.return_data[0] - inTransferFunds[address(arg3)]:
                    if arg2:
                        if 100 * arg2 / arg2 != 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    revert with 0, 'SafeMath: division by zero'
                if (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / ext_call.return_data[0] - inTransferFunds[address(arg3)] != feeThreshold:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not arg2:
                    if (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100
                    if not minFee:
                        if minFee > maxFee:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100:
                            if arg2:
                                if 0 / arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                revert with 0, 'Not enough tokens on balance'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                            mem[324 len 0] = 0
                            call arg3 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                         arg2,
                                                         arg2,
                                                         0,
                                                         0,
                                                         arg1,
                                                         arg3,
                                                         arg5,
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
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                        else:
                            if (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100 != maxFee - minFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                             arg2,
                                                             arg2,
                                                             0,
                                                             0,
                                                             arg1,
                                                             arg3,
                                                             arg5,
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                            else:
                                if (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / arg2 != (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    address(arg1) << 64,
                                                    0,
                                                    arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if not (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                 arg2,
                                                                 arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000),
                                                                 0,
                                                                 (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                                 arg1,
                                                                 arg3,
                                                                 arg5,
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[424 len 64] = 0, feeAddress, Mask(224, 32, (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, mem[360 len 28], mem[488 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            address(arg1) << 64,
                                                            0,
                                                            arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 535 len 22]
                                        emit FeeTaken(arg2, (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                        emit WithdrawalCompleted(arg2, arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    if not (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(arg2, arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 531 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 425 len 64] = 0, feeAddress, Mask(224, 32, (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            address(arg1) << 64,
                                                            0,
                                                            arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 535 len 22]
                                            emit FeeTaken(arg2, (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                            emit WithdrawalCompleted(arg2, arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            emit FeeTaken(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, bytes32 rg6):
                                                          arg2,
                                                          (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                          arg5,
                                                          mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                          msg.sender,
                                                          arg1,
                                                          arg3,
                                            emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                     arg2,
                                                                     arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000),
                                                                     (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                                     mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                     arg1,
                                                                     arg3,
                                                                     arg5,
                    else:
                        if 100 * minFee / minFee != 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if minFee > maxFee:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100:
                            if 100 * minFee < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                             arg2,
                                                             arg2,
                                                             0,
                                                             0,
                                                             arg1,
                                                             arg3,
                                                             arg5,
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                            else:
                                if 100 * minFee / 100 * arg2 / arg2 != 100 * minFee / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 100 * minFee / 100 * arg2 / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - (100 * minFee / 100 * arg2 / 10000)) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 - (100 * minFee / 100 * arg2 / 10000)) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (100 * minFee / 100 * arg2 / 10000)
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if not 100 * minFee / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                 arg2,
                                                                 arg2 - (100 * minFee / 100 * arg2 / 10000),
                                                                 0,
                                                                 100 * minFee / 100 * arg2 / 10000,
                                                                 arg1,
                                                                 arg3,
                                                                 arg5,
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[424 len 64] = 0, feeAddress, Mask(224, 32, 100 * minFee / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args 100 * minFee / 100 * arg2 / 10000, mem[360 len 28], mem[488 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (100 * minFee / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 535 len 22]
                                        emit FeeTaken(arg2, 100 * minFee / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                        emit WithdrawalCompleted(arg2, arg2 - (100 * minFee / 100 * arg2 / 10000), 100 * minFee / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    if not 100 * minFee / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(arg2, arg2 - (100 * minFee / 100 * arg2 / 10000), 100 * minFee / 100 * arg2 / 10000, arg1, arg3, arg5);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 531 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 425 len 64] = 0, feeAddress, Mask(224, 32, 100 * minFee / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args 100 * minFee / 100 * arg2 / 10000, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (100 * minFee / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 535 len 22]
                                            emit FeeTaken(arg2, 100 * minFee / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                            emit WithdrawalCompleted(arg2, arg2 - (100 * minFee / 100 * arg2 / 10000), 100 * minFee / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            emit FeeTaken(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, bytes32 rg6):
                                                          arg2,
                                                          100 * minFee / 100 * arg2 / 10000,
                                                          arg5,
                                                          mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                          msg.sender,
                                                          arg1,
                                                          arg3,
                                            emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                     arg2,
                                                                     arg2 - (100 * minFee / 100 * arg2 / 10000),
                                                                     100 * minFee / 100 * arg2 / 10000,
                                                                     mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                     arg1,
                                                                     arg3,
                                                                     arg5,
                        else:
                            if (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100 != maxFee - minFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 100 * minFee < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                             arg2,
                                                             arg2,
                                                             0,
                                                             0,
                                                             arg1,
                                                             arg3,
                                                             arg5,
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                            else:
                                if (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / arg2 != (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    address(arg1) << 64,
                                                    0,
                                                    arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if not (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                 arg2,
                                                                 arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000),
                                                                 0,
                                                                 (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                                 arg1,
                                                                 arg3,
                                                                 arg5,
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[424 len 64] = 0, feeAddress, Mask(224, 32, (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, mem[360 len 28], mem[488 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            address(arg1) << 64,
                                                            0,
                                                            arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 535 len 22]
                                        emit FeeTaken(arg2, (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                        emit WithdrawalCompleted(arg2, arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    if not (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(arg2, arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 531 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 425 len 64] = 0, feeAddress, Mask(224, 32, (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            address(arg1) << 64,
                                                            0,
                                                            arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 535 len 22]
                                            emit FeeTaken(arg2, (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                            emit WithdrawalCompleted(arg2, arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            emit FeeTaken(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, bytes32 rg6):
                                                          arg2,
                                                          (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                          arg5,
                                                          mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                          msg.sender,
                                                          arg1,
                                                          arg3,
                                            emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                     arg2,
                                                                     arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000),
                                                                     (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                                     mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                     arg1,
                                                                     arg3,
                                                                     arg5,
                else:
                    if 100 * arg2 / arg2 != 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100
                    if not minFee:
                        if minFee > maxFee:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100:
                            if arg2:
                                if 0 / arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                revert with 0, 'Not enough tokens on balance'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                            mem[324 len 0] = 0
                            call arg3 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                         arg2,
                                                         arg2,
                                                         0,
                                                         0,
                                                         arg1,
                                                         arg3,
                                                         arg5,
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
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                        else:
                            if (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100 != maxFee - minFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                             arg2,
                                                             arg2,
                                                             0,
                                                             0,
                                                             arg1,
                                                             arg3,
                                                             arg5,
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                            else:
                                if (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / arg2 != (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    address(arg1) << 64,
                                                    0,
                                                    arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if not (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                 arg2,
                                                                 arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000),
                                                                 0,
                                                                 (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                                 arg1,
                                                                 arg3,
                                                                 arg5,
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[424 len 64] = 0, feeAddress, Mask(224, 32, (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, mem[360 len 28], mem[488 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            address(arg1) << 64,
                                                            0,
                                                            arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 535 len 22]
                                        emit FeeTaken(arg2, (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                        emit WithdrawalCompleted(arg2, arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    if not (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(arg2, arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 531 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 425 len 64] = 0, feeAddress, Mask(224, 32, (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            address(arg1) << 64,
                                                            0,
                                                            arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 535 len 22]
                                            emit FeeTaken(arg2, (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                            emit WithdrawalCompleted(arg2, arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            emit FeeTaken(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, bytes32 rg6):
                                                          arg2,
                                                          (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                          arg5,
                                                          mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                          msg.sender,
                                                          arg1,
                                                          arg3,
                                            emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                     arg2,
                                                                     arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000),
                                                                     (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                                     mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                     arg1,
                                                                     arg3,
                                                                     arg5,
                    else:
                        if 100 * minFee / minFee != 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if minFee > maxFee:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100:
                            if 100 * minFee < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                             arg2,
                                                             arg2,
                                                             0,
                                                             0,
                                                             arg1,
                                                             arg3,
                                                             arg5,
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                            else:
                                if 100 * minFee / 100 * arg2 / arg2 != 100 * minFee / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 100 * minFee / 100 * arg2 / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - (100 * minFee / 100 * arg2 / 10000)) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 - (100 * minFee / 100 * arg2 / 10000)) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (100 * minFee / 100 * arg2 / 10000)
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if not 100 * minFee / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                 arg2,
                                                                 arg2 - (100 * minFee / 100 * arg2 / 10000),
                                                                 0,
                                                                 100 * minFee / 100 * arg2 / 10000,
                                                                 arg1,
                                                                 arg3,
                                                                 arg5,
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[424 len 64] = 0, feeAddress, Mask(224, 32, 100 * minFee / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args 100 * minFee / 100 * arg2 / 10000, mem[360 len 28], mem[488 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (100 * minFee / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 535 len 22]
                                        emit FeeTaken(arg2, 100 * minFee / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                        emit WithdrawalCompleted(arg2, arg2 - (100 * minFee / 100 * arg2 / 10000), 100 * minFee / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    if not 100 * minFee / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(arg2, arg2 - (100 * minFee / 100 * arg2 / 10000), 100 * minFee / 100 * arg2 / 10000, arg1, arg3, arg5);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 531 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 425 len 64] = 0, feeAddress, Mask(224, 32, 100 * minFee / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args 100 * minFee / 100 * arg2 / 10000, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (100 * minFee / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 535 len 22]
                                            emit FeeTaken(arg2, 100 * minFee / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                            emit WithdrawalCompleted(arg2, arg2 - (100 * minFee / 100 * arg2 / 10000), 100 * minFee / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            emit FeeTaken(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, bytes32 rg6):
                                                          arg2,
                                                          100 * minFee / 100 * arg2 / 10000,
                                                          arg5,
                                                          mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                          msg.sender,
                                                          arg1,
                                                          arg3,
                                            emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                     arg2,
                                                                     arg2 - (100 * minFee / 100 * arg2 / 10000),
                                                                     100 * minFee / 100 * arg2 / 10000,
                                                                     mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                     arg1,
                                                                     arg3,
                                                                     arg5,
                        else:
                            if (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100 != maxFee - minFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 100 * minFee < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                             arg2,
                                                             arg2,
                                                             0,
                                                             0,
                                                             arg1,
                                                             arg3,
                                                             arg5,
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                            else:
                                if (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / arg2 != (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    address(arg1) << 64,
                                                    0,
                                                    arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if not (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                 arg2,
                                                                 arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000),
                                                                 0,
                                                                 (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                                 arg1,
                                                                 arg3,
                                                                 arg5,
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[424 len 64] = 0, feeAddress, Mask(224, 32, (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, mem[360 len 28], mem[488 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            address(arg1) << 64,
                                                            0,
                                                            arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 535 len 22]
                                        emit FeeTaken(arg2, (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                        emit WithdrawalCompleted(arg2, arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    if not (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(arg2, arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 531 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 425 len 64] = 0, feeAddress, Mask(224, 32, (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            address(arg1) << 64,
                                                            0,
                                                            arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 535 len 22]
                                            emit FeeTaken(arg2, (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                            emit WithdrawalCompleted(arg2, arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            emit FeeTaken(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, bytes32 rg6):
                                                          arg2,
                                                          (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                          arg5,
                                                          mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                          msg.sender,
                                                          arg1,
                                                          arg3,
                                            emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                     arg2,
                                                                     arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000),
                                                                     (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                                     mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                     arg1,
                                                                     arg3,
                                                                     arg5,
        else:
            if 100 * arg2 / arg2 != 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] - inTransferFunds[address(arg3)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0] - inTransferFunds[address(arg3)]
            if 100 * arg2 / ext_call.return_data[0] - inTransferFunds[address(arg3)] > feeThreshold:
                if not arg2:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                        revert with 0, 'Not enough tokens on balance'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg3):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                    mem[324 len 0] = 0
                    call arg3 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                 arg2,
                                                 arg2,
                                                 0,
                                                 0,
                                                 arg1,
                                                 arg3,
                                                 arg5,
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
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                else:
                    if maxFee * arg2 / arg2 != maxFee:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if maxFee * arg2 / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                        revert with 0, 'Not enough tokens on balance'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg3):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - (maxFee * arg2 / 10000)) >> 32
                    mem[324 len 0] = 0
                    call arg3 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - (maxFee * arg2 / 10000)) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (maxFee * arg2 / 10000)
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if not maxFee * arg2 / 10000:
                            emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                     arg2,
                                                     arg2 - (maxFee * arg2 / 10000),
                                                     0,
                                                     maxFee * arg2 / 10000,
                                                     arg1,
                                                     arg3,
                                                     arg5,
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[424 len 64] = 0, feeAddress, Mask(224, 32, maxFee * arg2 / 10000) >> 32
                            call arg3 with:
                               funct stor158
                                 gas gas_remaining wei
                                args maxFee * arg2 / 10000, mem[360 len 28], mem[488 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (maxFee * arg2 / 10000)
                                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                            emit FeeTaken(arg2, maxFee * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                            emit WithdrawalCompleted(arg2, arg2 - (maxFee * arg2 / 10000), maxFee * arg2 / 10000, arg1, arg3, arg5);
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
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        if not maxFee * arg2 / 10000:
                            emit WithdrawalCompleted(arg2, arg2 - (maxFee * arg2 / 10000), maxFee * arg2 / 10000, arg1, arg3, arg5);
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = 0, feeAddress, Mask(224, 32, maxFee * arg2 / 10000) >> 32
                            call arg3 with:
                               funct stor158
                                 gas gas_remaining wei
                                args maxFee * arg2 / 10000, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (maxFee * arg2 / 10000)
                                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                                emit FeeTaken(arg2, maxFee * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                emit WithdrawalCompleted(arg2, arg2 - (maxFee * arg2 / 10000), maxFee * arg2 / 10000, arg1, arg3, arg5);
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
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                emit FeeTaken(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, bytes32 rg6):
                                              arg2,
                                              maxFee * arg2 / 10000,
                                              arg5,
                                              mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                              msg.sender,
                                              arg1,
                                              arg3,
                                emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                         arg2,
                                                         arg2 - (maxFee * arg2 / 10000),
                                                         maxFee * arg2 / 10000,
                                                         mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         arg1,
                                                         arg3,
                                                         arg5,
            else:
                if not ext_call.return_data[0] - inTransferFunds[address(arg3)]:
                    if arg2:
                        if 100 * arg2 / arg2 != 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    revert with 0, 'SafeMath: division by zero'
                if (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / ext_call.return_data[0] - inTransferFunds[address(arg3)] != feeThreshold:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not arg2:
                    if (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100
                    if not minFee:
                        if minFee > maxFee:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100:
                            if arg2:
                                if 0 / arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                revert with 0, 'Not enough tokens on balance'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                            mem[324 len 0] = 0
                            call arg3 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                         arg2,
                                                         arg2,
                                                         0,
                                                         0,
                                                         arg1,
                                                         arg3,
                                                         arg5,
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
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                        else:
                            if (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100 != maxFee - minFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                             arg2,
                                                             arg2,
                                                             0,
                                                             0,
                                                             arg1,
                                                             arg3,
                                                             arg5,
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                            else:
                                if (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / arg2 != (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    address(arg1) << 64,
                                                    0,
                                                    arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if not (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                 arg2,
                                                                 arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000),
                                                                 0,
                                                                 (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                                 arg1,
                                                                 arg3,
                                                                 arg5,
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[424 len 64] = 0, feeAddress, Mask(224, 32, (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, mem[360 len 28], mem[488 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            address(arg1) << 64,
                                                            0,
                                                            arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 535 len 22]
                                        emit FeeTaken(arg2, (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                        emit WithdrawalCompleted(arg2, arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    if not (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(arg2, arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 531 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 425 len 64] = 0, feeAddress, Mask(224, 32, (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            address(arg1) << 64,
                                                            0,
                                                            arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 535 len 22]
                                            emit FeeTaken(arg2, (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                            emit WithdrawalCompleted(arg2, arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            emit FeeTaken(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, bytes32 rg6):
                                                          arg2,
                                                          (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                          arg5,
                                                          mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                          msg.sender,
                                                          arg1,
                                                          arg3,
                                            emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                     arg2,
                                                                     arg2 - ((maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000),
                                                                     (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                                     mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                     arg1,
                                                                     arg3,
                                                                     arg5,
                    else:
                        if 100 * minFee / minFee != 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if minFee > maxFee:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100:
                            if 100 * minFee < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                             arg2,
                                                             arg2,
                                                             0,
                                                             0,
                                                             arg1,
                                                             arg3,
                                                             arg5,
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                            else:
                                if 100 * minFee / 100 * arg2 / arg2 != 100 * minFee / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 100 * minFee / 100 * arg2 / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - (100 * minFee / 100 * arg2 / 10000)) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 - (100 * minFee / 100 * arg2 / 10000)) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (100 * minFee / 100 * arg2 / 10000)
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if not 100 * minFee / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                 arg2,
                                                                 arg2 - (100 * minFee / 100 * arg2 / 10000),
                                                                 0,
                                                                 100 * minFee / 100 * arg2 / 10000,
                                                                 arg1,
                                                                 arg3,
                                                                 arg5,
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[424 len 64] = 0, feeAddress, Mask(224, 32, 100 * minFee / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args 100 * minFee / 100 * arg2 / 10000, mem[360 len 28], mem[488 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (100 * minFee / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 535 len 22]
                                        emit FeeTaken(arg2, 100 * minFee / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                        emit WithdrawalCompleted(arg2, arg2 - (100 * minFee / 100 * arg2 / 10000), 100 * minFee / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    if not 100 * minFee / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(arg2, arg2 - (100 * minFee / 100 * arg2 / 10000), 100 * minFee / 100 * arg2 / 10000, arg1, arg3, arg5);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 531 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 425 len 64] = 0, feeAddress, Mask(224, 32, 100 * minFee / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args 100 * minFee / 100 * arg2 / 10000, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (100 * minFee / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 535 len 22]
                                            emit FeeTaken(arg2, 100 * minFee / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                            emit WithdrawalCompleted(arg2, arg2 - (100 * minFee / 100 * arg2 / 10000), 100 * minFee / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            emit FeeTaken(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, bytes32 rg6):
                                                          arg2,
                                                          100 * minFee / 100 * arg2 / 10000,
                                                          arg5,
                                                          mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                          msg.sender,
                                                          arg1,
                                                          arg3,
                                            emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                     arg2,
                                                                     arg2 - (100 * minFee / 100 * arg2 / 10000),
                                                                     100 * minFee / 100 * arg2 / 10000,
                                                                     mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                     arg1,
                                                                     arg3,
                                                                     arg5,
                        else:
                            if (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100 != maxFee - minFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 100 * minFee < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                             arg2,
                                                             arg2,
                                                             0,
                                                             0,
                                                             arg1,
                                                             arg3,
                                                             arg5,
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                            else:
                                if (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / arg2 != (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    address(arg1) << 64,
                                                    0,
                                                    arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if not (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                 arg2,
                                                                 arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000),
                                                                 0,
                                                                 (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                                 arg1,
                                                                 arg3,
                                                                 arg5,
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[424 len 64] = 0, feeAddress, Mask(224, 32, (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, mem[360 len 28], mem[488 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            address(arg1) << 64,
                                                            0,
                                                            arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 535 len 22]
                                        emit FeeTaken(arg2, (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                        emit WithdrawalCompleted(arg2, arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    if not (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(arg2, arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 531 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 425 len 64] = 0, feeAddress, Mask(224, 32, (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            address(arg1) << 64,
                                                            0,
                                                            arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 535 len 22]
                                            emit FeeTaken(arg2, (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                            emit WithdrawalCompleted(arg2, arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            emit FeeTaken(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, bytes32 rg6):
                                                          arg2,
                                                          (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                          arg5,
                                                          mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                          msg.sender,
                                                          arg1,
                                                          arg3,
                                            emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                     arg2,
                                                                     arg2 - ((100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000),
                                                                     (100 * minFee) + (maxFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 0 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                                     mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                     arg1,
                                                                     arg3,
                                                                     arg5,
                else:
                    if 100 * arg2 / arg2 != 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100
                    if not minFee:
                        if minFee > maxFee:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100:
                            if arg2:
                                if 0 / arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                revert with 0, 'Not enough tokens on balance'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                            mem[324 len 0] = 0
                            call arg3 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                         arg2,
                                                         arg2,
                                                         0,
                                                         0,
                                                         arg1,
                                                         arg3,
                                                         arg5,
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
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                        else:
                            if (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100 != maxFee - minFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                             arg2,
                                                             arg2,
                                                             0,
                                                             0,
                                                             arg1,
                                                             arg3,
                                                             arg5,
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                            else:
                                if (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / arg2 != (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    address(arg1) << 64,
                                                    0,
                                                    arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if not (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                 arg2,
                                                                 arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000),
                                                                 0,
                                                                 (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                                 arg1,
                                                                 arg3,
                                                                 arg5,
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[424 len 64] = 0, feeAddress, Mask(224, 32, (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, mem[360 len 28], mem[488 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            address(arg1) << 64,
                                                            0,
                                                            arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 535 len 22]
                                        emit FeeTaken(arg2, (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                        emit WithdrawalCompleted(arg2, arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    if not (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(arg2, arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 531 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 425 len 64] = 0, feeAddress, Mask(224, 32, (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            address(arg1) << 64,
                                                            0,
                                                            arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 535 len 22]
                                            emit FeeTaken(arg2, (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                            emit WithdrawalCompleted(arg2, arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            emit FeeTaken(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, bytes32 rg6):
                                                          arg2,
                                                          (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                          arg5,
                                                          mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                          msg.sender,
                                                          arg1,
                                                          arg3,
                                            emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                     arg2,
                                                                     arg2 - ((maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000),
                                                                     (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                                     mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                     arg1,
                                                                     arg3,
                                                                     arg5,
                    else:
                        if 100 * minFee / minFee != 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if minFee > maxFee:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100:
                            if 100 * minFee < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                             arg2,
                                                             arg2,
                                                             0,
                                                             0,
                                                             arg1,
                                                             arg3,
                                                             arg5,
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                            else:
                                if 100 * minFee / 100 * arg2 / arg2 != 100 * minFee / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 100 * minFee / 100 * arg2 / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - (100 * minFee / 100 * arg2 / 10000)) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 - (100 * minFee / 100 * arg2 / 10000)) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (100 * minFee / 100 * arg2 / 10000)
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if not 100 * minFee / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                 arg2,
                                                                 arg2 - (100 * minFee / 100 * arg2 / 10000),
                                                                 0,
                                                                 100 * minFee / 100 * arg2 / 10000,
                                                                 arg1,
                                                                 arg3,
                                                                 arg5,
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[424 len 64] = 0, feeAddress, Mask(224, 32, 100 * minFee / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args 100 * minFee / 100 * arg2 / 10000, mem[360 len 28], mem[488 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (100 * minFee / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 535 len 22]
                                        emit FeeTaken(arg2, 100 * minFee / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                        emit WithdrawalCompleted(arg2, arg2 - (100 * minFee / 100 * arg2 / 10000), 100 * minFee / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    if not 100 * minFee / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(arg2, arg2 - (100 * minFee / 100 * arg2 / 10000), 100 * minFee / 100 * arg2 / 10000, arg1, arg3, arg5);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 531 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 425 len 64] = 0, feeAddress, Mask(224, 32, 100 * minFee / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args 100 * minFee / 100 * arg2 / 10000, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (100 * minFee / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 535 len 22]
                                            emit FeeTaken(arg2, 100 * minFee / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                            emit WithdrawalCompleted(arg2, arg2 - (100 * minFee / 100 * arg2 / 10000), 100 * minFee / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            emit FeeTaken(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, bytes32 rg6):
                                                          arg2,
                                                          100 * minFee / 100 * arg2 / 10000,
                                                          arg5,
                                                          mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                          msg.sender,
                                                          arg1,
                                                          arg3,
                                            emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                     arg2,
                                                                     arg2 - (100 * minFee / 100 * arg2 / 10000),
                                                                     100 * minFee / 100 * arg2 / 10000,
                                                                     mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                     arg1,
                                                                     arg3,
                                                                     arg5,
                        else:
                            if (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100 != maxFee - minFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 100 * minFee < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                             arg2,
                                                             arg2,
                                                             0,
                                                             0,
                                                             arg1,
                                                             arg3,
                                                             arg5,
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    emit WithdrawalCompleted(arg2, arg2, 0, arg1, arg3, arg5);
                            else:
                                if (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / arg2 != (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if inTransferFunds[address(arg3)] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - inTransferFunds[address(arg3)] < arg2:
                                    revert with 0, 'Not enough tokens on balance'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg3):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)) >> 32
                                mem[324 len 0] = 0
                                call arg3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    address(arg1) << 64,
                                                    0,
                                                    arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if not (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                 arg2,
                                                                 arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000),
                                                                 0,
                                                                 (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                                 arg1,
                                                                 arg3,
                                                                 arg5,
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[424 len 64] = 0, feeAddress, Mask(224, 32, (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, mem[360 len 28], mem[488 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            address(arg1) << 64,
                                                            0,
                                                            arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 535 len 22]
                                        emit FeeTaken(arg2, (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                        emit WithdrawalCompleted(arg2, arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    if not (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000:
                                        emit WithdrawalCompleted(arg2, arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 531 len 26]
                                        if not ext_code.size(arg3):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 425 len 64] = 0, feeAddress, Mask(224, 32, (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000) >> 32
                                        call arg3 with:
                                           funct stor158
                                             gas gas_remaining wei
                                            args (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            address(arg1) << 64,
                                                            0,
                                                            arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000)
                                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 535 len 22]
                                            emit FeeTaken(arg2, (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg5, msg.sender, arg1, arg3);
                                            emit WithdrawalCompleted(arg2, arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000), (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000, arg1, arg3, arg5);
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
                                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            emit FeeTaken(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, bytes32 rg6):
                                                          arg2,
                                                          (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                          arg5,
                                                          mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                          msg.sender,
                                                          arg1,
                                                          arg3,
                                            emit WithdrawalCompleted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, bytes32 rg6):
                                                                     arg2,
                                                                     arg2 - ((100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000),
                                                                     (100 * minFee) + (maxFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) - (minFee * 100 * arg2 / (ext_call.return_data[0] * feeThreshold) - (inTransferFunds[address(arg3)] * feeThreshold) / 100) / 100 * arg2 / 10000,
                                                                     mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                     arg1,
                                                                     arg3,
                                                                     arg5,
    stor101 = 1
}



}
