contract main {




// =====================  Runtime code  =====================


#
#  - updateAllRewards(address arg1)
#  - getAllRewards()
#  - getRewardFor(address arg1, address arg2)
#  - getAllRewardsFor(address arg1)
#  - getReward(address arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address vaultAddress;
mapping of uint8 stor52;
mapping of struct yieldInfo;
array of struct stor54;
mapping of uint256 stor55;
uint128 stor23BD; offset 160
address storeAddress;

function yieldInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return yieldInfo[arg1].field_0, 
           yieldInfo[arg1].field_256,
           yieldInfo[arg1].field_512,
           yieldInfo[arg1].field_768,
           yieldInfo[arg1].field_1024,
           bool(yieldInfo[arg1].field_1792)
}

function vaultAddress() payable {
    return vaultAddress
}

function store() payable {
    return storeAddress
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < yieldInfo[address(arg1)].field_0:
        return block.timestamp
    return yieldInfo[address(arg1)].field_0
}

function totalSupply() payable {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function treasury() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x61d027b3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function registry() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x7b103999 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
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

function swapCenter() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xce41fdc3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x24d7806c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x6d70f7ae with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function storageFetchUint256(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x426e56f8 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function storageFetchBool(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x3b7bfda0 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function storageFetchAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.addressStorage(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function storageFetchUint256InArray(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xd85338db with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function storageFetchBoolInArray(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xa203e8cc with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function storageFetchAddressInArray(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x36cb6592 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if storeAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7753746f726167655631436f6e73756d65725570677261646561626c653a20496e697469616c697a65,
                    mem[205 len 23]
    storeAddress = arg1
    stor23BD = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function setRewardDistribution(address[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6453746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d69,
                        mem[217 len 11]
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 52
        stor52[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        idx = idx + 1
        continue 
}

function addReward(address arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6453746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d69,
                        mem[217 len 11]
    if stor55[address(arg1)]:
        revert with 0, 'Token is already in the set'
    yieldInfo[address(arg1)].field_512 = arg2
    yieldInfo[address(arg1)].field_1792 = uint8(arg3)
    if not stor55[address(arg1)]:
        stor54.length++
        stor54[stor54.length].field_0 = arg1
        stor54[stor54.length].field_160 = 0
        stor55[address(arg1)] = stor54.length
    emit RewardAdded(arg1);
}

function removeReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6453746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d69,
                        mem[217 len 11]
    if not stor55[address(arg1)]:
        revert with 0, 'Token is not in the set'
    if block.timestamp <= yieldInfo[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x647374696c6c20646973747269627574696e672c2063616e6e6f742072656d6f76,
                    mem[197 len 31]
    if stor54.length <= 1:
        revert with 0, 'Cannot remove the last yield'
    if stor55[address(arg1)]:
        require stor54.length - 1 < stor54.length
        require stor55[address(arg1)] - 1 < stor54.length
        stor54[stor55[address(arg1)]].field_0 = stor54[stor54.length].field_0
        stor55[stor54[stor54.length].field_0] = stor55[address(arg1)]
        require stor54.length
        stor54[stor54.length].field_0 = 0
        stor54.length--
        stor55[address(arg1)] = 0
    emit RewardRemoved(arg1);
}

function initialize(address arg1, address arg2, address arg3, address arg4, uint256 arg5, bool arg6) payable {
    require calldata.size - 4 >= 192
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x77496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
    if storeAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7753746f726167655631436f6e73756d65725570677261646561626c653a20496e697469616c697a65,
                    mem[205 len 23]
    storeAddress = arg1
    stor23BD = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
    stor52[address(arg2)] = 1
    stor52[arg3] = 1
    vaultAddress = arg3
    if not stor55[address(arg4)]:
        stor54.length++
        stor54[stor54.length].field_0 = arg4
        stor54[stor54.length].field_160 = 0
        stor55[address(arg4)] = stor54.length
    yieldInfo[address(arg4)].field_512 = arg5
    yieldInfo[address(arg4)].field_1792 = uint8(arg6)
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function notifyTargetRewardAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor52[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6543616c6c6572206973206e6f742052657761726473446973747269627574696f,
                    mem[197 len 31]
    if arg2 >= 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x6c746865206e6f746966696564207265776172642063616e6e6f7420696e766f6b65206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[221 len 7]
    if not stor55[address(arg1)]:
        revert with 0, 'yield token doesn't exist.'
    if block.timestamp >= yieldInfo[address(arg1)].field_0:
        if not yieldInfo[address(arg1)].field_512:
            revert with 0, 'SafeMath: division by zero'
        yieldInfo[address(arg1)].field_256 = arg2 / yieldInfo[address(arg1)].field_512
    else:
        if block.timestamp > yieldInfo[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not yieldInfo[address(arg1)].field_0 - block.timestamp:
            if arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            if not yieldInfo[address(arg1)].field_512:
                revert with 0, 'SafeMath: division by zero'
            yieldInfo[address(arg1)].field_256 = arg2 / yieldInfo[address(arg1)].field_512
            if arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            if not yieldInfo[address(arg1)].field_512:
                revert with 0, 'SafeMath: division by zero'
            yieldInfo[address(arg1)].field_256 = arg2 / yieldInfo[address(arg1)].field_512
        else:
            if (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (block.timestamp * yieldInfo[address(arg1)].field_256) / yieldInfo[address(arg1)].field_0 - block.timestamp != yieldInfo[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (block.timestamp * yieldInfo[address(arg1)].field_256) + arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            if not yieldInfo[address(arg1)].field_512:
                revert with 0, 'SafeMath: division by zero'
            yieldInfo[address(arg1)].field_256 = (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (block.timestamp * yieldInfo[address(arg1)].field_256) + arg2 / yieldInfo[address(arg1)].field_512
            if (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (block.timestamp * yieldInfo[address(arg1)].field_256) + arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            if not yieldInfo[address(arg1)].field_512:
                revert with 0, 'SafeMath: division by zero'
            yieldInfo[address(arg1)].field_256 = (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (block.timestamp * yieldInfo[address(arg1)].field_256) + arg2 / yieldInfo[address(arg1)].field_512
    yieldInfo[address(arg1)].field_768 = block.timestamp
    if yieldInfo[address(arg1)].field_512 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    yieldInfo[address(arg1)].field_0 = yieldInfo[address(arg1)].field_512 + block.timestamp
    emit RewardNotified(address(arg1), arg2);
}

function rewardPerToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return yieldInfo[address(arg1)].field_1024
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < yieldInfo[address(arg1)].field_0:
        if yieldInfo[address(arg1)].field_768 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - yieldInfo[address(arg1)].field_768:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024)
        if (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / block.timestamp - yieldInfo[address(arg1)].field_768 != yieldInfo[address(arg1)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024)
        if (10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024)
    if yieldInfo[address(arg1)].field_768 > yieldInfo[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not yieldInfo[address(arg1)].field_0 - yieldInfo[address(arg1)].field_768:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024)
    if (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / yieldInfo[address(arg1)].field_0 - yieldInfo[address(arg1)].field_768 != yieldInfo[address(arg1)].field_256:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024)
    if (10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) != 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024)
}

function earned(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if yieldInfo[address(arg1)][5][address(arg2)].field_0 > yieldInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return yieldInfo[address(arg1)][6][address(arg2)].field_0
        if (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < yieldInfo[address(arg1)].field_0:
        if yieldInfo[address(arg1)].field_768 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - yieldInfo[address(arg1)].field_768:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if yieldInfo[address(arg1)][5][address(arg2)].field_0 > (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return yieldInfo[address(arg1)][6][address(arg2)].field_0
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
        if (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / block.timestamp - yieldInfo[address(arg1)].field_768 != yieldInfo[address(arg1)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if yieldInfo[address(arg1)][5][address(arg2)].field_0 > (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return yieldInfo[address(arg1)][6][address(arg2)].field_0
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
        if (10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if yieldInfo[address(arg1)][5][address(arg2)].field_0 > ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return yieldInfo[address(arg1)][6][address(arg2)].field_0
        if ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if yieldInfo[address(arg1)][6][address(arg2)].field_0 + (((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (yieldInfo[address(arg1)][6][address(arg2)].field_0 + (((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
    if yieldInfo[address(arg1)].field_768 > yieldInfo[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not yieldInfo[address(arg1)].field_0 - yieldInfo[address(arg1)].field_768:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if yieldInfo[address(arg1)][5][address(arg2)].field_0 > (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return yieldInfo[address(arg1)][6][address(arg2)].field_0
        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
    if (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / yieldInfo[address(arg1)].field_0 - yieldInfo[address(arg1)].field_768 != yieldInfo[address(arg1)].field_256:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if yieldInfo[address(arg1)][5][address(arg2)].field_0 > (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return yieldInfo[address(arg1)][6][address(arg2)].field_0
        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
    if (10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) != 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if yieldInfo[address(arg1)][5][address(arg2)].field_0 > ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return yieldInfo[address(arg1)][6][address(arg2)].field_0
    if ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if yieldInfo[address(arg1)][6][address(arg2)].field_0 + (((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (yieldInfo[address(arg1)][6][address(arg2)].field_0 + (((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
}

function earnedUnwrapped(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if yieldInfo[address(arg1)][5][address(arg2)].field_0 > yieldInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not yieldInfo[address(arg1)].field_1792:
                return yieldInfo[address(arg1)][6][address(arg2)].field_0
            require ext_code.size(arg1)
            staticcall arg1.shareToBaseAsset(uint256 arg1) with:
                    gas gas_remaining wei
                   args yieldInfo[address(arg1)][6][address(arg2)].field_0
        else:
            if (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not yieldInfo[address(arg1)].field_1792:
                return (yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
            require ext_code.size(arg1)
            staticcall arg1.shareToBaseAsset(uint256 arg1) with:
                    gas gas_remaining wei
                   args (yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
    else:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < yieldInfo[address(arg1)].field_0:
            if yieldInfo[address(arg1)].field_768 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - yieldInfo[address(arg1)].field_768:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if yieldInfo[address(arg1)][5][address(arg2)].field_0 > (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not yieldInfo[address(arg1)].field_1792:
                        return yieldInfo[address(arg1)][6][address(arg2)].field_0
                    require ext_code.size(arg1)
                    staticcall arg1.shareToBaseAsset(uint256 arg1) with:
                            gas gas_remaining wei
                           args yieldInfo[address(arg1)][6][address(arg2)].field_0
                else:
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if not yieldInfo[address(arg1)].field_1792:
                        return (yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
                    require ext_code.size(arg1)
                    staticcall arg1.shareToBaseAsset(uint256 arg1) with:
                            gas gas_remaining wei
                           args (yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
            else:
                if (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / block.timestamp - yieldInfo[address(arg1)].field_768 != yieldInfo[address(arg1)].field_256:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if yieldInfo[address(arg1)][5][address(arg2)].field_0 > (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not yieldInfo[address(arg1)].field_1792:
                            return yieldInfo[address(arg1)][6][address(arg2)].field_0
                        require ext_code.size(arg1)
                        staticcall arg1.shareToBaseAsset(uint256 arg1) with:
                                gas gas_remaining wei
                               args yieldInfo[address(arg1)][6][address(arg2)].field_0
                    else:
                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if not yieldInfo[address(arg1)].field_1792:
                            return (yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
                        require ext_code.size(arg1)
                        staticcall arg1.shareToBaseAsset(uint256 arg1) with:
                                gas gas_remaining wei
                               args (yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
                else:
                    if (10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if yieldInfo[address(arg1)][5][address(arg2)].field_0 > ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not yieldInfo[address(arg1)].field_1792:
                            return yieldInfo[address(arg1)][6][address(arg2)].field_0
                        require ext_code.size(arg1)
                        staticcall arg1.shareToBaseAsset(uint256 arg1) with:
                                gas gas_remaining wei
                               args yieldInfo[address(arg1)][6][address(arg2)].field_0
                    else:
                        if ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if yieldInfo[address(arg1)][6][address(arg2)].field_0 + (((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if not yieldInfo[address(arg1)].field_1792:
                            return (yieldInfo[address(arg1)][6][address(arg2)].field_0 + (((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
                        require ext_code.size(arg1)
                        staticcall arg1.shareToBaseAsset(uint256 arg1) with:
                                gas gas_remaining wei
                               args (yieldInfo[address(arg1)][6][address(arg2)].field_0 + (((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
        else:
            if yieldInfo[address(arg1)].field_768 > yieldInfo[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not yieldInfo[address(arg1)].field_0 - yieldInfo[address(arg1)].field_768:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if yieldInfo[address(arg1)][5][address(arg2)].field_0 > (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not yieldInfo[address(arg1)].field_1792:
                        return yieldInfo[address(arg1)][6][address(arg2)].field_0
                    require ext_code.size(arg1)
                    staticcall arg1.shareToBaseAsset(uint256 arg1) with:
                            gas gas_remaining wei
                           args yieldInfo[address(arg1)][6][address(arg2)].field_0
                else:
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if not yieldInfo[address(arg1)].field_1792:
                        return (yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
                    require ext_code.size(arg1)
                    staticcall arg1.shareToBaseAsset(uint256 arg1) with:
                            gas gas_remaining wei
                           args (yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
            else:
                if (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / yieldInfo[address(arg1)].field_0 - yieldInfo[address(arg1)].field_768 != yieldInfo[address(arg1)].field_256:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if yieldInfo[address(arg1)][5][address(arg2)].field_0 > (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not yieldInfo[address(arg1)].field_1792:
                            return yieldInfo[address(arg1)][6][address(arg2)].field_0
                        require ext_code.size(arg1)
                        staticcall arg1.shareToBaseAsset(uint256 arg1) with:
                                gas gas_remaining wei
                               args yieldInfo[address(arg1)][6][address(arg2)].field_0
                    else:
                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if not yieldInfo[address(arg1)].field_1792:
                            return (yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
                        require ext_code.size(arg1)
                        staticcall arg1.shareToBaseAsset(uint256 arg1) with:
                                gas gas_remaining wei
                               args (yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
                else:
                    if (10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if yieldInfo[address(arg1)][5][address(arg2)].field_0 > ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not yieldInfo[address(arg1)].field_1792:
                            return yieldInfo[address(arg1)][6][address(arg2)].field_0
                        require ext_code.size(arg1)
                        staticcall arg1.shareToBaseAsset(uint256 arg1) with:
                                gas gas_remaining wei
                               args yieldInfo[address(arg1)][6][address(arg2)].field_0
                    else:
                        if ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if yieldInfo[address(arg1)][6][address(arg2)].field_0 + (((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if not yieldInfo[address(arg1)].field_1792:
                            return (yieldInfo[address(arg1)][6][address(arg2)].field_0 + (((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
                        require ext_code.size(arg1)
                        staticcall arg1.shareToBaseAsset(uint256 arg1) with:
                                gas gas_remaining wei
                               args (yieldInfo[address(arg1)][6][address(arg2)].field_0 + (((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function updateReward(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if block.timestamp < yieldInfo[address(arg1)].field_0:
            yieldInfo[address(arg1)].field_768 = block.timestamp
        else:
            yieldInfo[address(arg1)].field_768 = yieldInfo[address(arg1)].field_0
        if arg2:
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if yieldInfo[address(arg1)][5][address(arg2)].field_0 > yieldInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    yieldInfo[address(arg1)][6][address(arg2)].field_0 += (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18
            else:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < yieldInfo[address(arg1)].field_0:
                    if yieldInfo[address(arg1)].field_768 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - yieldInfo[address(arg1)].field_768:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if yieldInfo[address(arg1)][5][address(arg2)].field_0 > (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            yieldInfo[address(arg1)][6][address(arg2)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18
                    else:
                        if (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / block.timestamp - yieldInfo[address(arg1)].field_768 != yieldInfo[address(arg1)].field_256:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if yieldInfo[address(arg1)][5][address(arg2)].field_0 > (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                yieldInfo[address(arg1)][6][address(arg2)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18
                        else:
                            if (10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if yieldInfo[address(arg1)][5][address(arg2)].field_0 > ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if yieldInfo[address(arg1)][6][address(arg2)].field_0 + (((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                yieldInfo[address(arg1)][6][address(arg2)].field_0 += ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18
                else:
                    if yieldInfo[address(arg1)].field_768 > yieldInfo[address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not yieldInfo[address(arg1)].field_0 - yieldInfo[address(arg1)].field_768:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if yieldInfo[address(arg1)][5][address(arg2)].field_0 > (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            yieldInfo[address(arg1)][6][address(arg2)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18
                    else:
                        if (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / yieldInfo[address(arg1)].field_0 - yieldInfo[address(arg1)].field_768 != yieldInfo[address(arg1)].field_256:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if yieldInfo[address(arg1)][5][address(arg2)].field_0 > (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                yieldInfo[address(arg1)][6][address(arg2)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18
                        else:
                            if (10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if yieldInfo[address(arg1)][5][address(arg2)].field_0 > ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if yieldInfo[address(arg1)][6][address(arg2)].field_0 + (((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                yieldInfo[address(arg1)][6][address(arg2)].field_0 += ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18
            yieldInfo[address(arg1)][5][address(arg2)].field_0 = yieldInfo[address(arg1)].field_1024
    else:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < yieldInfo[address(arg1)].field_0:
            if yieldInfo[address(arg1)].field_768 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - yieldInfo[address(arg1)].field_768:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                yieldInfo[address(arg1)].field_1024 += 0 / ext_call.return_data[0]
            else:
                if (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / block.timestamp - yieldInfo[address(arg1)].field_768 != yieldInfo[address(arg1)].field_256:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    yieldInfo[address(arg1)].field_1024 += 0 / ext_call.return_data[0]
                else:
                    if (10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    yieldInfo[address(arg1)].field_1024 += (10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]
        else:
            if yieldInfo[address(arg1)].field_768 > yieldInfo[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not yieldInfo[address(arg1)].field_0 - yieldInfo[address(arg1)].field_768:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                yieldInfo[address(arg1)].field_1024 += 0 / ext_call.return_data[0]
            else:
                if (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / yieldInfo[address(arg1)].field_0 - yieldInfo[address(arg1)].field_768 != yieldInfo[address(arg1)].field_256:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    yieldInfo[address(arg1)].field_1024 += 0 / ext_call.return_data[0]
                else:
                    if (10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    yieldInfo[address(arg1)].field_1024 += (10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]
        if block.timestamp < yieldInfo[address(arg1)].field_0:
            yieldInfo[address(arg1)].field_768 = block.timestamp
        else:
            yieldInfo[address(arg1)].field_768 = yieldInfo[address(arg1)].field_0
        if arg2:
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if yieldInfo[address(arg1)][5][address(arg2)].field_0 > yieldInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    yieldInfo[address(arg1)][6][address(arg2)].field_0 += (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18
            else:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < yieldInfo[address(arg1)].field_0:
                    if yieldInfo[address(arg1)].field_768 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - yieldInfo[address(arg1)].field_768:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if yieldInfo[address(arg1)][5][address(arg2)].field_0 > (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            yieldInfo[address(arg1)][6][address(arg2)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18
                    else:
                        if (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / block.timestamp - yieldInfo[address(arg1)].field_768 != yieldInfo[address(arg1)].field_256:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if yieldInfo[address(arg1)][5][address(arg2)].field_0 > (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                yieldInfo[address(arg1)][6][address(arg2)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18
                        else:
                            if (10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / (block.timestamp * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if yieldInfo[address(arg1)][5][address(arg2)].field_0 > ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if yieldInfo[address(arg1)][6][address(arg2)].field_0 + (((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                yieldInfo[address(arg1)][6][address(arg2)].field_0 += ((10^18 * block.timestamp * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18
                else:
                    if yieldInfo[address(arg1)].field_768 > yieldInfo[address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not yieldInfo[address(arg1)].field_0 - yieldInfo[address(arg1)].field_768:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if yieldInfo[address(arg1)][5][address(arg2)].field_0 > (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            yieldInfo[address(arg1)][6][address(arg2)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18
                    else:
                        if (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / yieldInfo[address(arg1)].field_0 - yieldInfo[address(arg1)].field_768 != yieldInfo[address(arg1)].field_256:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if yieldInfo[address(arg1)][5][address(arg2)].field_0 > (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if yieldInfo[address(arg1)][6][address(arg2)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                yieldInfo[address(arg1)][6][address(arg2)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18
                        else:
                            if (10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / (yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 < yieldInfo[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if yieldInfo[address(arg1)][5][address(arg2)].field_0 > ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if yieldInfo[address(arg1)][6][address(arg2)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0]) + yieldInfo[address(arg1)].field_1024 - yieldInfo[address(arg1)][5][address(arg2)].field_0:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if yieldInfo[address(arg1)][6][address(arg2)].field_0 + (((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18) < ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                yieldInfo[address(arg1)][6][address(arg2)].field_0 += ((10^18 * yieldInfo[address(arg1)].field_0 * yieldInfo[address(arg1)].field_256) - (10^18 * yieldInfo[address(arg1)].field_768 * yieldInfo[address(arg1)].field_256) / ext_call.return_data[0] * ext_call.return_data[0]) + (yieldInfo[address(arg1)].field_1024 * ext_call.return_data[0]) - (yieldInfo[address(arg1)][5][address(arg2)].field_0 * ext_call.return_data[0]) / 10^18
            yieldInfo[address(arg1)][5][address(arg2)].field_0 = yieldInfo[address(arg1)].field_1024
}



}
