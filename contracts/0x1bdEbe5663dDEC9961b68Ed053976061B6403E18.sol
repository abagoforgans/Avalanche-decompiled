contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
array of uint8 allocation;
array of uint256 userInfo;
uint256 issueIndex;
uint256 totalAddresses;
uint256 totalAmount;
uint256 lastTimestamp;
array of uint8 winningNumbers;
uint8 drawingPhase;
array of uint8 stor17;
address stormAddress;
address lotteryNFTAddress;
uint8 maxNumber; offset 160
address adminAddress;
uint256 minPrice;
array of uint8 stor6;
array of uint256 lotteryInfo;
array of struct historyAmount;
mapping of uint256 userBuyAmountSum;

function lastTimestamp() payable {
    return lastTimestamp
}

function totalAmount() payable {
    return totalAmount
}

function userInfo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < userInfo[arg1]
    return userInfo[arg1][arg2]
}

function userBuyAmountSum(uint256 arg1, uint64 arg2) payable {
    require calldata.size - 4 >= 64
    return uint256(userBuyAmountSum[arg1][arg2])
}

function maxNumber() payable {
    return maxNumber
}

function drawingPhase() payable {
    return bool(drawingPhase)
}

function winningNumbers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return uint8(winningNumbers[uint8(arg1)].field_0)
}

function historyNumbers(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < 4
    return historyNumbers[uint8(arg2)]
}

function lotteryInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < lotteryInfo[arg1]
    return lotteryInfo[arg1][arg2]
}

function issueIndex() payable {
    return issueIndex
}

function allocation(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return allocation[uint8(arg1)]
}

function owner() payable {
    return owner
}

function storm() payable {
    return stormAddress
}

function historyAmount(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(historyAmount[arg1].field_0)
    return uint256(historyAmount[arg1][arg2].field_0)
}

function totalAddresses() payable {
    return totalAddresses
}

function getMatchingRewardAmount(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require -arg2 + 5 < uint256(historyAmount[arg1].field_0)
    return uint256(historyAmount[arg1][arg2].field_1280)
}

function minPrice() payable {
    return minPrice
}

function lotteryNFT() payable {
    return lotteryNFTAddress
}

function adminAddress() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function drawed() payable {
    return not not winningNumbers.length
}

function setMaxNumber(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    maxNumber = arg1
}

function setMinPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    minPrice = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg1
}

function enterDrawingPhase() payable {
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if winningNumbers.length:
        revert with 0, 'drawed'
    drawingPhase = 1
}

function getTotalRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > issueIndex:
        revert with 0, '_issueIndex <= issueIndex'
    if not winningNumbers.length:
        if arg1 == issueIndex:
            return totalAmount
    require 0 < uint256(historyAmount[arg1].field_0)
    return uint256(historyAmount[arg1].field_0)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setAllocation(uint8 arg1, uint8 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    mem[96] = arg1
    mem[128] = arg2
    mem[160] = arg3
    s = 0
    idx = 96
    while 192 > idx:
        allocation.length = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and allocation.length
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 3
    s = 1
    while idx:
        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = -(None + 3 / 32) + (None * None + 3 / 32) + 1
    while 2 > idx:
        uint8(stor[idx]) = 0
        idx = idx + 1
        continue 
}

function generateNumberIndexKey(uint8[4] arg1) payable {
    require calldata.size - 4 >= 128
    return (uint8(call.data[4]) << 48) + (uint8(call.data[36]) << 32) + (uint8(call.data[68]) << 16) + uint8(call.data[100]) + 1099545182976 << 192, 
           (uint8(call.data[4]) << 32) + (uint8(call.data[36]) << 16) + uint8(call.data[68]) + 16777728 << 192,
           (uint8(call.data[4]) << 32) + (uint8(call.data[36]) << 16) + uint8(call.data[100]) + 16777984 << 192,
           (uint8(call.data[4]) << 32) + (uint8(call.data[68]) << 16) + uint8(call.data[100]) + 33555200 << 192,
           (uint8(call.data[36]) << 32) + (uint8(call.data[68]) << 16) + uint8(call.data[100]) + 1099545182976 << 192,
           (uint8(call.data[4]) << 16) + uint8(call.data[36]) + 256 << 192,
           (uint8(call.data[4]) << 16) + uint8(call.data[68]) + 512 << 192,
           (uint8(call.data[4]) << 16) + uint8(call.data[100]) + 768 << 192,
           (uint8(call.data[36]) << 16) + uint8(call.data[68]) + 16777728 << 192,
           (uint8(call.data[36]) << 16) + uint8(call.data[100]) + 16777984 << 192,
           uint64((uint8(call.data[68]) << 16) + uint8(call.data[100]) + 33555200)
}

function adminWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if ext_code.size(stormAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call stormAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit DevWithdraw(arg1, msg.sender);
}

function initialize(address arg1, address arg2, uint256 arg3, uint8 arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    if not uint8(stor0.field_168):
        if ext_code.size(this.address):
            if uint8(stor0.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_168):
            Mask(88, 0, stor0.field_168) = 1
            Mask(96, 0, stor0.field_160) = 1
    stormAddress = arg1
    lotteryNFTAddress = arg2
    minPrice = arg3
    maxNumber = arg4
    adminAddress = arg6
    lastTimestamp = block.timestamp
    mem[96] = 60
    mem[128] = 20
    mem[160] = 10
    s = 0
    idx = 96
    while 192 > idx:
        allocation.length = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and allocation.length
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 3
    s = 1
    while idx:
        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = -(None + 3 / 32) + (None * None + 3 / 32) + 1
    while 2 > idx:
        uint8(stor[idx]) = 0
        idx = idx + 1
        continue 
    owner = arg5
    emit OwnershipTransferred(0, arg5);
    if not uint8(stor0.field_168):
        Mask(88, 0, stor0.field_168) = 0
}

function buy(uint256 arg1, uint8[4] arg2) payable {
    require calldata.size - 4 >= 160
    mem[96 len 128] = call.data[36 len 128]
    mem[224] = 0
    if winningNumbers.length:
        revert with 0, 'drawed, can not buy now'
    if drawingPhase:
        revert with 0, 'drawing, can not buy now'
    if arg1 < minPrice:
        revert with 0, 'price must above minPrice'
    idx = 0
    while idx < 4:
        if mem[(32 * idx) + 127 len 1] > maxNumber:
            revert with 0, 'exceed number scope'
        idx = idx + 1
        continue 
    require ext_code.size(lotteryNFTAddress)
    call lotteryNFTAddress.0x37391c00 with:
         gas gas_remaining wei
        args msg.sender, call.data[36 len 128], arg1, issueIndex
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    lotteryInfo[stor11]++
    lotteryInfo[stor11][lotteryInfo[stor11]] = ext_call.return_data[0]
    if not userInfo[address(msg.sender)]:
        totalAddresses++
    userInfo[address(msg.sender)]++
    userInfo[address(msg.sender)][userInfo[address(msg.sender)]] = ext_call.return_data[0]
    if totalAmount + arg1 < totalAmount:
        revert with 0, 'SafeMath: addition overflow'
    totalAmount += arg1
    lastTimestamp = block.timestamp
    mem[224 len 352] = call.data[calldata.size len 352]
    mem[576 len 352] = call.data[calldata.size len 352]
    mem[928] = call.data[67 len 1]
    mem[960] = call.data[99 len 1]
    mem[992] = call.data[131 len 1]
    mem[1024] = call.data[163 len 1]
    mem[1056] = uint64((call.data[67 len 1] << 48) + (4294967296 * call.data[99 len 1]) + (65536 * call.data[131 len 1]) + call.data[163 len 1] + 1099545182976)
    mem[1088] = uint64((4294967296 * call.data[67 len 1]) + (65536 * call.data[99 len 1]) + call.data[131 len 1] + 16777728)
    mem[1120] = uint64((4294967296 * call.data[67 len 1]) + (65536 * call.data[99 len 1]) + call.data[163 len 1] + 16777984)
    mem[1152] = uint64((4294967296 * call.data[67 len 1]) + (65536 * call.data[131 len 1]) + call.data[163 len 1] + 33555200)
    mem[1184] = uint64((4294967296 * call.data[99 len 1]) + (65536 * call.data[131 len 1]) + call.data[163 len 1] + 1099545182976)
    mem[1216] = uint64((65536 * call.data[67 len 1]) + call.data[99 len 1] + 256)
    mem[1248] = uint64((65536 * call.data[67 len 1]) + call.data[131 len 1] + 512)
    mem[1280] = uint64((65536 * call.data[67 len 1]) + call.data[163 len 1] + 768)
    mem[1312] = uint64((65536 * call.data[99 len 1]) + call.data[131 len 1] + 16777728)
    mem[1344] = uint64((65536 * call.data[99 len 1]) + call.data[163 len 1] + 16777984)
    mem[1376] = uint64((65536 * call.data[131 len 1]) + call.data[163 len 1] + 33555200)
    idx = 0
    while idx < 11:
        if uint256(userBuyAmountSum[stor11][mem[(32 * idx) + 1080 len 8]]) + arg1 < uint256(userBuyAmountSum[stor11][mem[(32 * idx) + 1080 len 8]]):
            revert with 0, 'SafeMath: addition overflow'
        require idx < 11
        mem[0] = mem[(32 * idx) + 1080 len 8]
        mem[32] = sha3(issueIndex, 9)
        uint256(userBuyAmountSum[stor11][mem[(32 * idx) + 1080 len 8]]) += arg1
        idx = idx + 1
        continue 
    mem[1444] = msg.sender
    mem[1476] = this.address
    mem[1508] = arg1
    mem[1408] = 100
    mem[1440 len 4] = unknown_0x23b872dd(?????)
    mem[1540] = 32
    mem[1572] = 'SafeERC20: low-level call failed'
    if ext_code.size(stormAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[1604 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[1728 len 4] = 0
    call stormAddress with:
         gas gas_remaining wei
        args arg1, 32, Mask(224, 32, 'SafeERC20: low-level call failed') >> 32, mem[1700 len 4]
    if not return_data.size:
        if not ext_call.success:
            if call.data[36] > 0:
                revert with memory
                  from 128
                   len call.data[36]
            revert with 0, 'SafeERC20: low-level call failed'
        if call.data[36] > 0:
            require call.data[36] >= 32
            if not call.data[68]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[1714 len 14],
                            0,
                            mem[1732 len 4]
    else:
        mem[1636 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[1636]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 1715 len 22]
    emit Buy(ext_call.return_data[0], msg.sender);
}

function drawing(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if winningNumbers.length:
        revert with 0, 'reset?'
    if not drawingPhase:
        revert with 0, 'enter drawing phase first'
    idx = 0
    while idx < 10:
        if issueIndex > issueIndex:
            revert with 0, '_issueIndex <= issueIndex'
        if winningNumbers.length:
            mem[32] = 8
            require 0 < uint256(historyAmount[stor11].field_0)
            mem[0] = sha3(issueIndex, 8)
        else:
            if issueIndex != issueIndex:
                mem[32] = 8
                require 0 < uint256(historyAmount[stor11].field_0)
                mem[0] = sha3(issueIndex, 8)
        idx = idx + 1
        continue 
    winningNumbers.length = uint8((sha3(block.hash(block.number - 1), totalAddresses, gas_remaining, arg1) % maxNumber) + 1)
    uint8(winningNumbers.length.field_8) = uint8((sha3(block.hash(block.number - 1), totalAmount, gas_remaining, arg1) % maxNumber) + 1)
    uint8(winningNumbers.length.field_16) = uint8((sha3(block.hash(block.number - 1), lastTimestamp, gas_remaining, arg1) % maxNumber) + 1)
    uint8(winningNumbers.length.field_24) = uint8((sha3(block.hash(block.number - 1), gas_remaining, arg1) % maxNumber) + 1)
    uint256(stor6[stor11]) = winningNumbers.length
    idx = 1
    while 1 > idx:
        uint8(stor6[stor11][idx]) = 0
        idx = idx + 1
        continue 
    idx = 1184
    s = 0
    while 1312 > idx + 32:
        mem[idx + 32] = uint8(winningNumbers[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1].field_0)
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    if 2 * uint256(userBuyAmountSum[stor11][0]) < uint256(userBuyAmountSum[stor11][0]):
        revert with 0, 'SafeMath: addition overflow'
    if uint256(userBuyAmountSum[stor11][0]) < 0:
        revert with 0, 'SafeMath: addition overflow'
    if uint256(userBuyAmountSum[stor11][0]) < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not uint256(userBuyAmountSum[stor11][0]):
        if 0 > 4 * uint256(userBuyAmountSum[stor11][0]):
            revert with 0, 'SafeMath: subtraction overflow'
        if 2 * uint256(userBuyAmountSum[stor11][0]) < uint256(userBuyAmountSum[stor11][0]):
            revert with 0, 'SafeMath: addition overflow'
        if uint256(userBuyAmountSum[stor11][0]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if uint256(userBuyAmountSum[stor11][0]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if uint256(userBuyAmountSum[stor11][0]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if uint256(userBuyAmountSum[stor11][0]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not Mask(254, 0, userBuyAmountSum[stor11][0]):
            if not uint256(userBuyAmountSum[stor11][0]):
                if 0 > 6 * uint256(userBuyAmountSum[stor11][0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[2272] = totalAmount
                mem[2304] = uint256(userBuyAmountSum[stor11][0])
                mem[2336] = 4 * uint256(userBuyAmountSum[stor11][0])
                mem[2368] = 6 * uint256(userBuyAmountSum[stor11][0])
            else:
                require uint256(userBuyAmountSum[stor11][0])
                if 6 * uint256(userBuyAmountSum[stor11][0]) / uint256(userBuyAmountSum[stor11][0]) != 6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2309 len 31]
                if 6 * uint256(userBuyAmountSum[stor11][0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > 12 * uint256(userBuyAmountSum[stor11][0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[2272] = totalAmount
                mem[2304] = uint256(userBuyAmountSum[stor11][0])
                mem[2336] = 4 * uint256(userBuyAmountSum[stor11][0])
                mem[2368] = 12 * uint256(userBuyAmountSum[stor11][0])
        else:
            require 4 * uint256(userBuyAmountSum[stor11][0])
            if 12 * uint256(userBuyAmountSum[stor11][0]) / 4 * uint256(userBuyAmountSum[stor11][0]) != 3:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2309 len 31]
            if not uint256(userBuyAmountSum[stor11][0]):
                if 12 * uint256(userBuyAmountSum[stor11][0]) > 6 * uint256(userBuyAmountSum[stor11][0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[2272] = totalAmount
                mem[2304] = uint256(userBuyAmountSum[stor11][0])
                mem[2336] = 4 * uint256(userBuyAmountSum[stor11][0])
                mem[2368] = -6 * uint256(userBuyAmountSum[stor11][0])
            else:
                require uint256(userBuyAmountSum[stor11][0])
                if 6 * uint256(userBuyAmountSum[stor11][0]) / uint256(userBuyAmountSum[stor11][0]) != 6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2309 len 31]
                if 6 * uint256(userBuyAmountSum[stor11][0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 12 * uint256(userBuyAmountSum[stor11][0]) > 12 * uint256(userBuyAmountSum[stor11][0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[2272] = totalAmount
                mem[2304] = uint256(userBuyAmountSum[stor11][0])
                mem[2336] = 4 * uint256(userBuyAmountSum[stor11][0])
                mem[2368] = 0
    else:
        require uint256(userBuyAmountSum[stor11][0])
        if 4 * uint256(userBuyAmountSum[stor11][0]) / uint256(userBuyAmountSum[stor11][0]) != 4:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2245 len 31]
        if 4 * uint256(userBuyAmountSum[stor11][0]) > 4 * uint256(userBuyAmountSum[stor11][0]):
            revert with 0, 'SafeMath: subtraction overflow'
        if 2 * uint256(userBuyAmountSum[stor11][0]) < uint256(userBuyAmountSum[stor11][0]):
            revert with 0, 'SafeMath: addition overflow'
        if uint256(userBuyAmountSum[stor11][0]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if uint256(userBuyAmountSum[stor11][0]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if uint256(userBuyAmountSum[stor11][0]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if uint256(userBuyAmountSum[stor11][0]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not Mask(254, 0, userBuyAmountSum[stor11][0]):
            if not uint256(userBuyAmountSum[stor11][0]):
                if 0 > 6 * uint256(userBuyAmountSum[stor11][0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[2272] = totalAmount
                mem[2304] = uint256(userBuyAmountSum[stor11][0])
                mem[2336] = 7 * uint256(userBuyAmountSum[stor11][0])
                mem[2368] = 6 * uint256(userBuyAmountSum[stor11][0])
            else:
                require uint256(userBuyAmountSum[stor11][0])
                if 6 * uint256(userBuyAmountSum[stor11][0]) / uint256(userBuyAmountSum[stor11][0]) != 6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2309 len 31]
                if 6 * uint256(userBuyAmountSum[stor11][0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > 12 * uint256(userBuyAmountSum[stor11][0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[2272] = totalAmount
                mem[2304] = uint256(userBuyAmountSum[stor11][0])
                mem[2336] = 7 * uint256(userBuyAmountSum[stor11][0])
                mem[2368] = 12 * uint256(userBuyAmountSum[stor11][0])
        else:
            require 4 * uint256(userBuyAmountSum[stor11][0])
            if 12 * uint256(userBuyAmountSum[stor11][0]) / 4 * uint256(userBuyAmountSum[stor11][0]) != 3:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2309 len 31]
            if not uint256(userBuyAmountSum[stor11][0]):
                if 12 * uint256(userBuyAmountSum[stor11][0]) > 6 * uint256(userBuyAmountSum[stor11][0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[2272] = totalAmount
                mem[2304] = uint256(userBuyAmountSum[stor11][0])
                mem[2336] = 7 * uint256(userBuyAmountSum[stor11][0])
                mem[2368] = -6 * uint256(userBuyAmountSum[stor11][0])
            else:
                require uint256(userBuyAmountSum[stor11][0])
                if 6 * uint256(userBuyAmountSum[stor11][0]) / uint256(userBuyAmountSum[stor11][0]) != 6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2309 len 31]
                if 6 * uint256(userBuyAmountSum[stor11][0]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 12 * uint256(userBuyAmountSum[stor11][0]) > 12 * uint256(userBuyAmountSum[stor11][0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[2272] = totalAmount
                mem[2304] = uint256(userBuyAmountSum[stor11][0])
                mem[2336] = 7 * uint256(userBuyAmountSum[stor11][0])
                mem[2368] = 0
    uint256(historyAmount[stor11].field_0) = 4
    s = 0
    idx = 2272
    while 2400 > idx:
        uint256(historyAmount[stor11][s].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 4
    while uint256(historyAmount[stor11].field_0) > idx:
        uint256(historyAmount[stor11][idx].field_0) = 0
        idx = idx + 1
        continue 
    drawingPhase = 0
    idx = 2400
    s = 0
    while 2528 > idx + 32:
        mem[idx + 32] = uint8(winningNumbers[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1].field_0)
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    emit Drawing(uint256 rg1, uint8[4] rg2):
                 winningNumbers.length,
                 mem[2432 len 96],
                 issueIndex,
}

function multiBuy(uint256 arg1, uint8[4][] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (128 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    s = 128
    idx = 0
    while idx < arg2.length:
        _67 = mem[64]
        mem[64] = mem[64] + 128
        mem[_67 len 128] = call.data[(128 * idx) + arg2 + 36 len 128]
        mem[_67 + 128] = 0
        mem[s] = _67
        s = s + 32
        idx = idx + 1
        continue 
    if winningNumbers.length:
        revert with 0, 'drawed, can not buy now'
    if arg1 < minPrice:
        revert with 0, 'price must above minPrice'
    _322 = mem[96]
    idx = 0
    s = 0
    while idx < _322:
        t = 0
        while t < 4:
            require idx < mem[96]
            require t < 4
            if mem[(32 * t) + mem[(32 * idx) + 128] + 31 len 1] > maxNumber:
                revert with 0, 'exceed number scope'
            require idx < mem[96]
            require t < 4
            if mem[(32 * t) + mem[(32 * idx) + 128] + 31 len 1] <= 0:
                revert with 0, 'exceed number scope'
            _322 = mem[96]
            t = t + 1
            continue 
        require idx < mem[96]
        _389 = mem[(32 * idx) + 128]
        _390 = mem[64]
        mem[mem[64]] = 0x37391c0000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        t = 0
        while t < 128:
            mem[_390 + t + 36] = mem[_389 + t]
            _322 = mem[96]
            t = t + 32
            continue 
        mem[_390 + 164] = arg1
        mem[_390 + 196] = issueIndex
        require ext_code.size(lotteryNFTAddress)
        call lotteryNFTAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _390 + -mem[64] + 224]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        lotteryInfo[stor11]++
        lotteryInfo[stor11][lotteryInfo[stor11]] = ext_call.return_data[0]
        if userInfo[address(msg.sender)]:
            mem[32] = 10
            userInfo[address(msg.sender)]++
            mem[0] = sha3(address(msg.sender), 10)
            userInfo[address(msg.sender)][userInfo[address(msg.sender)]] = ext_call.return_data[0]
            if totalAmount + arg1 < totalAmount:
                revert with 0, 'SafeMath: addition overflow'
            totalAmount += arg1
            lastTimestamp = block.timestamp
            if s + arg1 < s:
                revert with 0, 'SafeMath: addition overflow'
            _464 = mem[64]
            mem[64] = mem[64] + 352
            mem[_464 len 352] = call.data[calldata.size len 352]
            require idx < mem[96]
            _467 = mem[(32 * idx) + 128]
            _470 = mem[64]
            mem[64] = mem[64] + 352
            mem[_470 len 352] = call.data[calldata.size len 352]
            _472 = mem[64]
            mem[64] = mem[64] + 128
            mem[_472 len 128] = call.data[calldata.size len 128]
            mem[_472] = mem[_467 + 31 len 1]
            mem[_472 + 32] = mem[_467 + 63 len 1]
            mem[_472 + 64] = mem[_467 + 95 len 1]
            mem[_472 + 96] = mem[_467 + 127 len 1]
            _482 = mem[64]
            mem[64] = mem[64] + 352
            mem[_482 len 352] = call.data[calldata.size len 352]
            mem[_482] = uint64((mem[_472] << 48) + (4294967296 * mem[_472 + 32]) + (65536 * mem[_472 + 64]) + mem[_472 + 96] + 1099545182976)
            mem[_482 + 32] = uint64((4294967296 * mem[_472]) + (65536 * mem[_472 + 32]) + mem[_472 + 64] + 16777728)
            mem[_482 + 64] = uint64((4294967296 * mem[_472]) + (65536 * mem[_472 + 32]) + mem[_472 + 96] + 16777984)
            mem[_482 + 96] = uint64((4294967296 * mem[_472]) + (65536 * mem[_472 + 64]) + mem[_472 + 96] + 33555200)
            mem[_482 + 128] = uint64((4294967296 * mem[_472 + 32]) + (65536 * mem[_472 + 64]) + mem[_472 + 96] + 1099545182976)
            mem[_482 + 160] = uint64((65536 * mem[_472]) + mem[_472 + 32] + 256)
            mem[_482 + 192] = uint64((65536 * mem[_472]) + mem[_472 + 64] + 512)
            mem[_482 + 224] = uint64((65536 * mem[_472]) + mem[_472 + 96] + 768)
            mem[_482 + 256] = uint64((65536 * mem[_472 + 32]) + mem[_472 + 64] + 16777728)
            mem[_482 + 288] = uint64((65536 * mem[_472 + 32]) + mem[_472 + 96] + 16777984)
            mem[_482 + 320] = uint64((65536 * mem[_472 + 64]) + mem[_472 + 96] + 33555200)
            t = 0
            while t < 11:
                mem[0] = issueIndex
                mem[32] = 9
                mem[0] = mem[(32 * t) + _482 + 24 len 8]
                _559 = sha3(mem[0], sha3(issueIndex, 9))
                if uint256(userBuyAmountSum[stor11][mem[0]]) + arg1 < uint256(userBuyAmountSum[stor11][mem[0]]):
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = issueIndex
                mem[32] = 9
                require t < 11
                mem[0] = mem[(32 * t) + _482 + 24 len 8]
                mem[32] = sha3(issueIndex, 9)
                uint256(userBuyAmountSum[stor11][mem[0]]) = uint256(stor[_559]) + arg1
                _322 = mem[96]
                t = t + 1
                continue 
        else:
            totalAddresses++
            mem[32] = 10
            userInfo[address(msg.sender)]++
            mem[0] = sha3(address(msg.sender), 10)
            userInfo[address(msg.sender)][userInfo[address(msg.sender)]] = ext_call.return_data[0]
            if totalAmount + arg1 < totalAmount:
                revert with 0, 'SafeMath: addition overflow'
            totalAmount += arg1
            lastTimestamp = block.timestamp
            if s + arg1 < s:
                revert with 0, 'SafeMath: addition overflow'
            _466 = mem[64]
            mem[64] = mem[64] + 352
            mem[_466 len 352] = call.data[calldata.size len 352]
            require idx < mem[96]
            _469 = mem[(32 * idx) + 128]
            _471 = mem[64]
            mem[64] = mem[64] + 352
            mem[_471 len 352] = call.data[calldata.size len 352]
            _473 = mem[64]
            mem[64] = mem[64] + 128
            mem[_473 len 128] = call.data[calldata.size len 128]
            mem[_473] = mem[_469 + 31 len 1]
            mem[_473 + 32] = mem[_469 + 63 len 1]
            mem[_473 + 64] = mem[_469 + 95 len 1]
            mem[_473 + 96] = mem[_469 + 127 len 1]
            _483 = mem[64]
            mem[64] = mem[64] + 352
            mem[_483 len 352] = call.data[calldata.size len 352]
            mem[_483] = uint64((mem[_473] << 48) + (4294967296 * mem[_473 + 32]) + (65536 * mem[_473 + 64]) + mem[_473 + 96] + 1099545182976)
            mem[_483 + 32] = uint64((4294967296 * mem[_473]) + (65536 * mem[_473 + 32]) + mem[_473 + 64] + 16777728)
            mem[_483 + 64] = uint64((4294967296 * mem[_473]) + (65536 * mem[_473 + 32]) + mem[_473 + 96] + 16777984)
            mem[_483 + 96] = uint64((4294967296 * mem[_473]) + (65536 * mem[_473 + 64]) + mem[_473 + 96] + 33555200)
            mem[_483 + 128] = uint64((4294967296 * mem[_473 + 32]) + (65536 * mem[_473 + 64]) + mem[_473 + 96] + 1099545182976)
            mem[_483 + 160] = uint64((65536 * mem[_473]) + mem[_473 + 32] + 256)
            mem[_483 + 192] = uint64((65536 * mem[_473]) + mem[_473 + 64] + 512)
            mem[_483 + 224] = uint64((65536 * mem[_473]) + mem[_473 + 96] + 768)
            mem[_483 + 256] = uint64((65536 * mem[_473 + 32]) + mem[_473 + 64] + 16777728)
            mem[_483 + 288] = uint64((65536 * mem[_473 + 32]) + mem[_473 + 96] + 16777984)
            mem[_483 + 320] = uint64((65536 * mem[_473 + 64]) + mem[_473 + 96] + 33555200)
            t = 0
            while t < 11:
                mem[0] = issueIndex
                mem[32] = 9
                mem[0] = mem[(32 * t) + _483 + 24 len 8]
                _561 = sha3(mem[0], sha3(issueIndex, 9))
                if uint256(userBuyAmountSum[stor11][mem[0]]) + arg1 < uint256(userBuyAmountSum[stor11][mem[0]]):
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = issueIndex
                mem[32] = 9
                require t < 11
                mem[0] = mem[(32 * t) + _483 + 24 len 8]
                mem[32] = sha3(issueIndex, 9)
                uint256(userBuyAmountSum[stor11][mem[0]]) = uint256(stor[_561]) + arg1
                _322 = mem[96]
                t = t + 1
                continue 
        _322 = mem[96]
        idx = idx + 1
        s = s + arg1
        continue 
    _323 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = s
    _324 = mem[64]
    mem[mem[64]] = 100
    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
    mem[64] = mem[64] + 196
    mem[_323 + 132] = 32
    mem[_323 + 164] = 'SafeERC20: low-level call failed'
    if ext_code.size(stormAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    _335 = mem[_324]
    mem[_323 + 196 len floor32(mem[_324])] = mem[_324 + 32 len floor32(mem[_324])]
    var27001 = _324 + floor32(mem[_324]) + 32
    mem[_323 + floor32(mem[_324]) + -(mem[_324] % 32) + 228 len mem[_324] % 32] = mem[_324 + floor32(mem[_324]) + -(mem[_324] % 32) + 64 len mem[_324] % 32]
    call stormAddress with:
         gas gas_remaining wei
        args mem[_323 + 200 len _335 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96] > 0:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[_323 + 306 len 22]
    else:
        mem[_323 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[_323 + 228]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[_323 + ceil32(return_data.size) + 307 len 22]
    emit MultiBuy(s, msg.sender);
}

function reset() payable {
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if not winningNumbers.length:
        revert with 0, 'drawed?'
    lastTimestamp = block.timestamp
    totalAddresses = 0
    totalAmount = 0
    winningNumbers.length = 0
    uint8(winningNumbers.length.field_8) = 0
    uint8(winningNumbers.length.field_16) = 0
    uint8(winningNumbers.length.field_24) = 0
    drawingPhase = 0
    issueIndex++
    require 1 < uint256(historyAmount[stor11 - 1].field_0)
    if not uint256(historyAmount[stor11 - 1].field_256):
        if issueIndex - 1 > issueIndex:
            revert with 0, '_issueIndex <= issueIndex'
        if winningNumbers.length:
            require 0 < uint256(historyAmount[stor11 - 1].field_0)
            if not uint256(historyAmount[stor11 - 1].field_0):
                mem[160] = stor17.length
                idx = 160
                s = 0
                while 288 > idx + 32:
                    mem[idx + 32] = stor17[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                if winningNumbers.length:
                    revert with 0, 'drawed, can not buy now'
                idx = 0
                while idx < 4:
                    if mem[(32 * idx) + 191 len 1] > maxNumber:
                        revert with 0, 'exceed the maximum'
                    idx = idx + 1
                    continue 
                require ext_code.size(lotteryNFTAddress)
                call lotteryNFTAddress.0x37391c00 with:
                     gas gas_remaining wei
                    args address(this.address), mem[192 len 96] >> 768, 0, issueIndex
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                lotteryInfo[stor11]++
                lotteryInfo[stor11][lotteryInfo[stor11]] = ext_call.return_data[0]
                if totalAmount < totalAmount:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require uint256(historyAmount[stor11 - 1].field_0)
                if uint256(historyAmount[stor11 - 1].field_0) * allocation.length / uint256(historyAmount[stor11 - 1].field_0) != allocation.length:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                mem[160] = stor17.length
                idx = 160
                s = 0
                while 288 > idx + 32:
                    mem[idx + 32] = stor17[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                if winningNumbers.length:
                    revert with 0, 'drawed, can not buy now'
                idx = 0
                while idx < 4:
                    if mem[(32 * idx) + 191 len 1] > maxNumber:
                        revert with 0, 'exceed the maximum'
                    idx = idx + 1
                    continue 
                require ext_code.size(lotteryNFTAddress)
                call lotteryNFTAddress.0x37391c00 with:
                     gas gas_remaining wei
                    args address(this.address), mem[192 len 96] >> 768, uint256(historyAmount[stor11 - 1].field_0) * allocation.length / 100, issueIndex
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                lotteryInfo[stor11]++
                lotteryInfo[stor11][lotteryInfo[stor11]] = ext_call.return_data[0]
                if totalAmount + (uint256(historyAmount[stor11 - 1].field_0) * allocation.length / 100) < totalAmount:
                    revert with 0, 'SafeMath: addition overflow'
                totalAmount += uint256(historyAmount[stor11 - 1].field_0) * allocation.length / 100
        else:
            if issueIndex - 1 == issueIndex:
                if not totalAmount:
                    mem[160] = stor17.length
                    idx = 160
                    s = 0
                    while 288 > idx + 32:
                        mem[idx + 32] = stor17[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    if winningNumbers.length:
                        revert with 0, 'drawed, can not buy now'
                    idx = 0
                    while idx < 4:
                        if mem[(32 * idx) + 191 len 1] > maxNumber:
                            revert with 0, 'exceed the maximum'
                        idx = idx + 1
                        continue 
                    require ext_code.size(lotteryNFTAddress)
                    call lotteryNFTAddress.0x37391c00 with:
                         gas gas_remaining wei
                        args address(this.address), mem[192 len 96] >> 768, 0, issueIndex
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    lotteryInfo[stor11]++
                    lotteryInfo[stor11][lotteryInfo[stor11]] = ext_call.return_data[0]
                    if totalAmount < totalAmount:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require totalAmount
                    if totalAmount * allocation.length / totalAmount != allocation.length:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    mem[160] = stor17.length
                    idx = 160
                    s = 0
                    while 288 > idx + 32:
                        mem[idx + 32] = stor17[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    if winningNumbers.length:
                        revert with 0, 'drawed, can not buy now'
                    idx = 0
                    while idx < 4:
                        if mem[(32 * idx) + 191 len 1] > maxNumber:
                            revert with 0, 'exceed the maximum'
                        idx = idx + 1
                        continue 
                    require ext_code.size(lotteryNFTAddress)
                    call lotteryNFTAddress.0x37391c00 with:
                         gas gas_remaining wei
                        args address(this.address), mem[192 len 96] >> 768, totalAmount * allocation.length / 100, issueIndex
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    lotteryInfo[stor11]++
                    lotteryInfo[stor11][lotteryInfo[stor11]] = ext_call.return_data[0]
                    if totalAmount + (totalAmount * allocation.length / 100) < totalAmount:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAmount += totalAmount * allocation.length / 100
            else:
                require 0 < uint256(historyAmount[stor11 - 1].field_0)
                if not uint256(historyAmount[stor11 - 1].field_0):
                    mem[160] = stor17.length
                    idx = 160
                    s = 0
                    while 288 > idx + 32:
                        mem[idx + 32] = stor17[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    if winningNumbers.length:
                        revert with 0, 'drawed, can not buy now'
                    idx = 0
                    while idx < 4:
                        if mem[(32 * idx) + 191 len 1] > maxNumber:
                            revert with 0, 'exceed the maximum'
                        idx = idx + 1
                        continue 
                    require ext_code.size(lotteryNFTAddress)
                    call lotteryNFTAddress.0x37391c00 with:
                         gas gas_remaining wei
                        args address(this.address), mem[192 len 96] >> 768, 0, issueIndex
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    lotteryInfo[stor11]++
                    lotteryInfo[stor11][lotteryInfo[stor11]] = ext_call.return_data[0]
                    if totalAmount < totalAmount:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require uint256(historyAmount[stor11 - 1].field_0)
                    if uint256(historyAmount[stor11 - 1].field_0) * allocation.length / uint256(historyAmount[stor11 - 1].field_0) != allocation.length:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    mem[160] = stor17.length
                    idx = 160
                    s = 0
                    while 288 > idx + 32:
                        mem[idx + 32] = stor17[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    if winningNumbers.length:
                        revert with 0, 'drawed, can not buy now'
                    idx = 0
                    while idx < 4:
                        if mem[(32 * idx) + 191 len 1] > maxNumber:
                            revert with 0, 'exceed the maximum'
                        idx = idx + 1
                        continue 
                    require ext_code.size(lotteryNFTAddress)
                    call lotteryNFTAddress.0x37391c00 with:
                         gas gas_remaining wei
                        args address(this.address), mem[192 len 96] >> 768, uint256(historyAmount[stor11 - 1].field_0) * allocation.length / 100, issueIndex
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    lotteryInfo[stor11]++
                    lotteryInfo[stor11][lotteryInfo[stor11]] = ext_call.return_data[0]
                    if totalAmount + (uint256(historyAmount[stor11 - 1].field_0) * allocation.length / 100) < totalAmount:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAmount += uint256(historyAmount[stor11 - 1].field_0) * allocation.length / 100
        lastTimestamp = block.timestamp
        emit Buy(ext_call.return_data[0], this.address);
    emit Reset(issueIndex);
}

function getRewardView(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(lotteryNFTAddress)
    staticcall lotteryNFTAddress.0x1bf1e00f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lotteryNFTAddress)
    staticcall lotteryNFTAddress.0x5f8e26a7 with:
            gas gas_remaining wei
           args arg1
    mem[224 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    mem[ceil32(return_data.size) + 224 len 128] = call.data[calldata.size len 128]
    mem[ceil32(return_data.size) + 352] = uint8(stor6[ext_call.return_data[0]])
    idx = ceil32(return_data.size) + 352
    s = 0
    while ceil32(return_data.size) + 480 > idx + 32:
        mem[idx + 32] = stor('map', ('ext_call.return_data', 0, 32), ('name', 'stor6', 6))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    if not uint8(stor6[ext_call.return_data[0]]):
        revert with 0, 'not drawed'
    idx = 0
    s = 0
    while idx < 4:
        if mem[(32 * idx) + ceil32(return_data.size) + 383 len 1] != mem[(32 * idx) + 255 len 1]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s <= 1:
        return 0
    require ext_code.size(lotteryNFTAddress)
    staticcall lotteryNFTAddress.0xf7a0c0ca with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require -s + 4 < 3
    if ext_call.return_data[0] > issueIndex:
        revert with 0, '_issueIndex <= issueIndex'
    if not winningNumbers.length:
        if ext_call.return_data[0] == issueIndex:
            if not totalAmount:
                require -s + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                if not ext_call.return_data[0]:
                    if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                    if 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                        require 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                        if 0 / 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 709 len 31]
                else:
                    require ext_call.return_data[0]
                    if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 645 len 31]
                    if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                    if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                        require 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                        if 0 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 709 len 31]
                return 0
            require totalAmount
            if totalAmount * allocation[uint8(-s + 4)] / totalAmount != allocation[uint8(-s + 4)]:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 581 len 31]
            require -s + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
            if not ext_call.return_data[0]:
                if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                if not 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                    return 0
                require 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                if 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * totalAmount * allocation[uint8(-s + 4)] / 100 / 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) != totalAmount * allocation[uint8(-s + 4)] / 100:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 709 len 31]
                return (0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * totalAmount * allocation[uint8(-s + 4)] / 100 / 10^12)
            require ext_call.return_data[0]
            if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 645 len 31]
            if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
            if not 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                return 0
            require 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
            if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * totalAmount * allocation[uint8(-s + 4)] / 100 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) != totalAmount * allocation[uint8(-s + 4)] / 100:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 709 len 31]
            return (10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * totalAmount * allocation[uint8(-s + 4)] / 100 / 10^12)
    require 0 < uint256(historyAmount[ext_call.return_data[0]].field_0)
    if not uint256(historyAmount[ext_call.return_data[0]].field_0):
        require -s + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
        if not ext_call.return_data[0]:
            if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
            if 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                require 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                if 0 / 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 709 len 31]
        else:
            require ext_call.return_data[0]
            if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 645 len 31]
            if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
            if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                require 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                if 0 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 709 len 31]
        return 0
    require uint256(historyAmount[ext_call.return_data[0]].field_0)
    if uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / uint256(historyAmount[ext_call.return_data[0]].field_0) != allocation[uint8(-s + 4)]:
        revert with 0, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[ceil32(return_data.size) + 581 len 31]
    require -s + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
    if not ext_call.return_data[0]:
        if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
        if not 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
            return 0
        require 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
        if 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) != uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100:
            revert with 0, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 709 len 31]
        return (0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12)
    require ext_call.return_data[0]
    if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
        revert with 0, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[ceil32(return_data.size) + 645 len 31]
    if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
    if not 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
        return 0
    require 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
    if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) != uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100:
        revert with 0, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[ceil32(return_data.size) + 709 len 31]
    return (10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12)
}

function multiClaim(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _263 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(lotteryNFTAddress)
        staticcall lotteryNFTAddress.0x6352211e with:
                gas gas_remaining wei
               args _263
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0, 'not from owner'
        require idx < mem[96]
        _275 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(lotteryNFTAddress)
        staticcall lotteryNFTAddress.0x36dbd2f9 with:
                gas gas_remaining wei
               args _275
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'claimed'
        require idx < mem[96]
        _283 = mem[(32 * idx) + 128]
        require ext_code.size(lotteryNFTAddress)
        staticcall lotteryNFTAddress.0x1bf1e00f with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _288 = mem[64]
        mem[64] = mem[64] + 128
        mem[_288 len 128] = call.data[calldata.size len 128]
        require ext_code.size(lotteryNFTAddress)
        staticcall lotteryNFTAddress.0x5f8e26a7 with:
                gas gas_remaining wei
               args _283
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _291 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _292 = mem[64]
        mem[64] = mem[64] + 128
        mem[_292 len 128] = call.data[calldata.size len 128]
        mem[0] = ext_call.return_data[0]
        mem[32] = 6
        _294 = mem[64]
        mem[64] = mem[64] + 128
        mem[_294] = uint8(stor6[ext_call.return_data[0]])
        s = _294
        t = 0
        while _294 + 128 > s + 32:
            mem[s + 32] = stor('map', ('ext_call.return_data', 0, 32), ('name', 'stor6', 6))[-(0.03125 / t + 1) + t + (-1 * 0.03125 / t + 1 * t) + 1]
            s = s + 32
            t = -(t + 1 / 32) + t + (-1 * t + 1 / 32 * t) + 1
            continue 
        if not uint8(stor6[ext_call.return_data[0]]):
            revert with 0, 'not drawed'
        s = 0
        t = 0
        while s < 4:
            if mem[(32 * s) + _294 + 31 len 1] != mem[(32 * s) + _291 + 31 len 1]:
                s = s + 1
                t = t
                continue 
            s = s + 1
            t = t + 1
            continue 
        if t <= 1:
            _312 = mem[64]
            mem[64] = mem[64] + 64
            mem[_312] = 26
            mem[_312 + 32] = 'SafeMath: division by zero'
        else:
            mem[mem[64] + 4] = _283
            require ext_code.size(lotteryNFTAddress)
            staticcall lotteryNFTAddress.0xf7a0c0ca with:
                    gas gas_remaining wei
                   args _283
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require -t + 4 < 3
            if ext_call.return_data[0] > issueIndex:
                revert with 0, '_issueIndex <= issueIndex'
            if winningNumbers.length:
                mem[32] = 8
                require 0 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                mem[0] = sha3(ext_call.return_data[0], 8)
                if not uint256(historyAmount[ext_call.return_data[0]].field_0):
                    _326 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_326] = 26
                    mem[_326 + 32] = 'SafeMath: division by zero'
                    mem[32] = 8
                    require -t + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                    mem[0] = sha3(ext_call.return_data[0], 8)
                    if not ext_call.return_data[0]:
                        _350 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_350] = 26
                        mem[_350 + 32] = 'SafeMath: division by zero'
                        if uint256(historyAmount[ext_call.return_data[0]][t].field_1280) <= 0:
                            _361 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_361 + idx + 68] = mem[_350 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_361 + 68] = mem[_361 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _361 + -mem[64] + 100
                        require uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                        if not 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                            _463 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_463] = 26
                            mem[_463 + 32] = 'SafeMath: division by zero'
                        else:
                            require 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                            if 0 / 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _479 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_479] = 26
                            mem[_479 + 32] = 'SafeMath: division by zero'
                    else:
                        require ext_call.return_data[0]
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _360 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_360] = 26
                        mem[_360 + 32] = 'SafeMath: division by zero'
                        if uint256(historyAmount[ext_call.return_data[0]][t].field_1280) <= 0:
                            _380 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_380 + idx + 68] = mem[_360 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_380 + 68] = mem[_380 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _380 + -mem[64] + 100
                        require uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                        if not 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                            _478 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_478] = 26
                            mem[_478 + 32] = 'SafeMath: division by zero'
                        else:
                            require 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                            if 0 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _492 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_492] = 26
                            mem[_492 + 32] = 'SafeMath: division by zero'
                else:
                    require uint256(historyAmount[ext_call.return_data[0]].field_0)
                    if uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / uint256(historyAmount[ext_call.return_data[0]].field_0) != allocation[uint8(-t + 4)]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _331 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_331] = 26
                    mem[_331 + 32] = 'SafeMath: division by zero'
                    mem[32] = 8
                    require -t + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                    mem[0] = sha3(ext_call.return_data[0], 8)
                    if not ext_call.return_data[0]:
                        _359 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_359] = 26
                        mem[_359 + 32] = 'SafeMath: division by zero'
                        if uint256(historyAmount[ext_call.return_data[0]][t].field_1280) <= 0:
                            _377 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_377 + idx + 68] = mem[_359 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_377 + 68] = mem[_377 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _377 + -mem[64] + 100
                        require uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                        if not 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                            _477 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_477] = 26
                            mem[_477 + 32] = 'SafeMath: division by zero'
                        else:
                            require 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                            if 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100 / 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) != uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _491 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_491] = 26
                            mem[_491 + 32] = 'SafeMath: division by zero'
                            if 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100 / 10^12 > 0:
                                if 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100 / 10^12 < 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100 / 10^12:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        require ext_call.return_data[0]
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _376 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_376] = 26
                        mem[_376 + 32] = 'SafeMath: division by zero'
                        if uint256(historyAmount[ext_call.return_data[0]][t].field_1280) <= 0:
                            _404 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_404 + idx + 68] = mem[_376 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_404 + 68] = mem[_404 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _404 + -mem[64] + 100
                        require uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                        if not 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                            _490 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_490] = 26
                            mem[_490 + 32] = 'SafeMath: division by zero'
                        else:
                            require 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                            if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) != uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _499 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_499] = 26
                            mem[_499 + 32] = 'SafeMath: division by zero'
                            if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100 / 10^12 > 0:
                                if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100 / 10^12 < 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100 / 10^12:
                                    revert with 0, 'SafeMath: addition overflow'
            else:
                if ext_call.return_data[0] == issueIndex:
                    if not totalAmount:
                        _329 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_329] = 26
                        mem[_329 + 32] = 'SafeMath: division by zero'
                        mem[32] = 8
                        require -t + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                        mem[0] = sha3(ext_call.return_data[0], 8)
                        if not ext_call.return_data[0]:
                            _353 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_353] = 26
                            mem[_353 + 32] = 'SafeMath: division by zero'
                            if uint256(historyAmount[ext_call.return_data[0]][t].field_1280) <= 0:
                                _368 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_368 + idx + 68] = mem[_353 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_368 + 68] = mem[_368 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _368 + -mem[64] + 100
                            require uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                            if not 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                                _469 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_469] = 26
                                mem[_469 + 32] = 'SafeMath: division by zero'
                            else:
                                require 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                                if 0 / 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _484 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_484] = 26
                                mem[_484 + 32] = 'SafeMath: division by zero'
                        else:
                            require ext_call.return_data[0]
                            if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _367 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_367] = 26
                            mem[_367 + 32] = 'SafeMath: division by zero'
                            if uint256(historyAmount[ext_call.return_data[0]][t].field_1280) <= 0:
                                _388 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_388 + idx + 68] = mem[_367 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_388 + 68] = mem[_388 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _388 + -mem[64] + 100
                            require uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                            if not 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                                _483 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_483] = 26
                                mem[_483 + 32] = 'SafeMath: division by zero'
                            else:
                                require 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                                if 0 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _495 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_495] = 26
                                mem[_495 + 32] = 'SafeMath: division by zero'
                    else:
                        require totalAmount
                        if totalAmount * allocation[uint8(-t + 4)] / totalAmount != allocation[uint8(-t + 4)]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _332 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_332] = 26
                        mem[_332 + 32] = 'SafeMath: division by zero'
                        mem[32] = 8
                        require -t + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                        mem[0] = sha3(ext_call.return_data[0], 8)
                        if not ext_call.return_data[0]:
                            _366 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_366] = 26
                            mem[_366 + 32] = 'SafeMath: division by zero'
                            if uint256(historyAmount[ext_call.return_data[0]][t].field_1280) <= 0:
                                _385 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_385 + idx + 68] = mem[_366 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_385 + 68] = mem[_385 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _385 + -mem[64] + 100
                            require uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                            if not 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                                _482 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_482] = 26
                                mem[_482 + 32] = 'SafeMath: division by zero'
                            else:
                                require 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                                if 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * totalAmount * allocation[uint8(-t + 4)] / 100 / 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) != totalAmount * allocation[uint8(-t + 4)] / 100:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _494 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_494] = 26
                                mem[_494 + 32] = 'SafeMath: division by zero'
                                if 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * totalAmount * allocation[uint8(-t + 4)] / 100 / 10^12 > 0:
                                    if 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * totalAmount * allocation[uint8(-t + 4)] / 100 / 10^12 < 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * totalAmount * allocation[uint8(-t + 4)] / 100 / 10^12:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ext_call.return_data[0]
                            if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _384 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_384] = 26
                            mem[_384 + 32] = 'SafeMath: division by zero'
                            if uint256(historyAmount[ext_call.return_data[0]][t].field_1280) <= 0:
                                _412 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_412 + idx + 68] = mem[_384 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_412 + 68] = mem[_412 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _412 + -mem[64] + 100
                            require uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                            if not 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                                _493 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_493] = 26
                                mem[_493 + 32] = 'SafeMath: division by zero'
                            else:
                                require 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                                if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * totalAmount * allocation[uint8(-t + 4)] / 100 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) != totalAmount * allocation[uint8(-t + 4)] / 100:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _500 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_500] = 26
                                mem[_500 + 32] = 'SafeMath: division by zero'
                                if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * totalAmount * allocation[uint8(-t + 4)] / 100 / 10^12 > 0:
                                    if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * totalAmount * allocation[uint8(-t + 4)] / 100 / 10^12 < 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * totalAmount * allocation[uint8(-t + 4)] / 100 / 10^12:
                                        revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[32] = 8
                    require 0 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                    mem[0] = sha3(ext_call.return_data[0], 8)
                    if not uint256(historyAmount[ext_call.return_data[0]].field_0):
                        _330 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_330] = 26
                        mem[_330 + 32] = 'SafeMath: division by zero'
                        mem[32] = 8
                        require -t + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                        mem[0] = sha3(ext_call.return_data[0], 8)
                        if not ext_call.return_data[0]:
                            _356 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_356] = 26
                            mem[_356 + 32] = 'SafeMath: division by zero'
                            if uint256(historyAmount[ext_call.return_data[0]][t].field_1280) <= 0:
                                _373 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_373 + idx + 68] = mem[_356 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_373 + 68] = mem[_373 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _373 + -mem[64] + 100
                            require uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                            if not 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                                _474 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_474] = 26
                                mem[_474 + 32] = 'SafeMath: division by zero'
                            else:
                                require 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                                if 0 / 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _489 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_489] = 26
                                mem[_489 + 32] = 'SafeMath: division by zero'
                        else:
                            require ext_call.return_data[0]
                            if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _372 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_372] = 26
                            mem[_372 + 32] = 'SafeMath: division by zero'
                            if uint256(historyAmount[ext_call.return_data[0]][t].field_1280) <= 0:
                                _398 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_398 + idx + 68] = mem[_372 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_398 + 68] = mem[_398 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _398 + -mem[64] + 100
                            require uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                            if not 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                                _488 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_488] = 26
                                mem[_488 + 32] = 'SafeMath: division by zero'
                            else:
                                require 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                                if 0 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _498 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_498] = 26
                                mem[_498 + 32] = 'SafeMath: division by zero'
                    else:
                        require uint256(historyAmount[ext_call.return_data[0]].field_0)
                        if uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / uint256(historyAmount[ext_call.return_data[0]].field_0) != allocation[uint8(-t + 4)]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _333 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_333] = 26
                        mem[_333 + 32] = 'SafeMath: division by zero'
                        mem[32] = 8
                        require -t + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                        mem[0] = sha3(ext_call.return_data[0], 8)
                        if not ext_call.return_data[0]:
                            _371 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_371] = 26
                            mem[_371 + 32] = 'SafeMath: division by zero'
                            if uint256(historyAmount[ext_call.return_data[0]][t].field_1280) <= 0:
                                _395 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_395 + idx + 68] = mem[_371 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_395 + 68] = mem[_395 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _395 + -mem[64] + 100
                            require uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                            if not 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                                _487 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_487] = 26
                                mem[_487 + 32] = 'SafeMath: division by zero'
                            else:
                                require 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                                if 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100 / 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) != uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _497 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_497] = 26
                                mem[_497 + 32] = 'SafeMath: division by zero'
                                if 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100 / 10^12 > 0:
                                    if 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100 / 10^12 < 0 / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100 / 10^12:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ext_call.return_data[0]
                            if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _394 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_394] = 26
                            mem[_394 + 32] = 'SafeMath: division by zero'
                            if uint256(historyAmount[ext_call.return_data[0]][t].field_1280) <= 0:
                                _422 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_422 + idx + 68] = mem[_394 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_422 + 68] = mem[_422 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _422 + -mem[64] + 100
                            require uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                            if not 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280):
                                _496 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_496] = 26
                                mem[_496 + 32] = 'SafeMath: division by zero'
                            else:
                                require 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280)
                                if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) != uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _501 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_501] = 26
                                mem[_501 + 32] = 'SafeMath: division by zero'
                                if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100 / 10^12 > 0:
                                    if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100 / 10^12 < 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][t].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-t + 4)] / 100 / 10^12:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x7431035500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[96]
    mem[mem[64] + 68 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    require ext_code.size(lotteryNFTAddress)
    call lotteryNFTAddress.0x74310355 with:
         gas gas_remaining wei
        args 32, mem[mem[64] + 36 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit MultiClaim(0, msg.sender);
}

function claimReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(lotteryNFTAddress)
    staticcall lotteryNFTAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not from owner'
    require ext_code.size(lotteryNFTAddress)
    staticcall lotteryNFTAddress.0x36dbd2f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'claimed'
    require ext_code.size(lotteryNFTAddress)
    staticcall lotteryNFTAddress.0x1bf1e00f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96 len 128] = call.data[calldata.size len 128]
    require ext_code.size(lotteryNFTAddress)
    staticcall lotteryNFTAddress.0x5f8e26a7 with:
            gas gas_remaining wei
           args arg1
    mem[224 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    mem[ceil32(return_data.size) + 224 len 128] = call.data[calldata.size len 128]
    mem[ceil32(return_data.size) + 352] = uint8(stor6[ext_call.return_data[0]])
    idx = ceil32(return_data.size) + 352
    s = 0
    while ceil32(return_data.size) + 480 > idx + 32:
        mem[idx + 32] = stor('map', ('ext_call.return_data', 0, 32), ('name', 'stor6', 6))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    if not uint8(stor6[ext_call.return_data[0]]):
        revert with 0, 'not drawed'
    idx = 0
    s = 0
    while idx < 4:
        if mem[(32 * idx) + ceil32(return_data.size) + 383 len 1] != mem[(32 * idx) + 255 len 1]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require ext_code.size(lotteryNFTAddress)
    if s <= 1:
        call lotteryNFTAddress.0xae169a50 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Claim(arg1, 0, msg.sender);
    else:
        staticcall lotteryNFTAddress.0xf7a0c0ca with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require -s + 4 < 3
        if ext_call.return_data[0] > issueIndex:
            revert with 0, '_issueIndex <= issueIndex'
        if winningNumbers.length:
            require 0 < uint256(historyAmount[ext_call.return_data[0]].field_0)
            if not uint256(historyAmount[ext_call.return_data[0]].field_0):
                require -s + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                if not ext_call.return_data[0]:
                    if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                    if 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                        require 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                        if 0 / 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 709 len 31]
                else:
                    require ext_call.return_data[0]
                    if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 645 len 31]
                    if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                    if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                        require 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                        if 0 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 709 len 31]
                require ext_code.size(lotteryNFTAddress)
                call lotteryNFTAddress.0xae169a50 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(arg1, 0, msg.sender);
            else:
                require uint256(historyAmount[ext_call.return_data[0]].field_0)
                if uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / uint256(historyAmount[ext_call.return_data[0]].field_0) != allocation[uint8(-s + 4)]:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 581 len 31]
                mem[ceil32(return_data.size) + 480] = 26
                mem[ceil32(return_data.size) + 512] = 'SafeMath: division by zero'
                require -s + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                if not ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 544] = 26
                    mem[ceil32(return_data.size) + 576] = 'SafeMath: division by zero'
                    if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                    if not 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                        require ext_code.size(lotteryNFTAddress)
                        call lotteryNFTAddress.0xae169a50 with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claim(arg1, 0, msg.sender);
                    else:
                        require 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                        if 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) != uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 709 len 31]
                        mem[ceil32(return_data.size) + 608] = 26
                        mem[ceil32(return_data.size) + 640] = 'SafeMath: division by zero'
                        require ext_code.size(lotteryNFTAddress)
                        call lotteryNFTAddress.0xae169a50 with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12 > 0:
                            mem[ceil32(return_data.size) + 708] = msg.sender
                            mem[ceil32(return_data.size) + 740] = 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12
                            mem[ceil32(return_data.size) + 672] = 68
                            mem[ceil32(return_data.size) + 704 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 772] = 32
                            mem[ceil32(return_data.size) + 804] = 'SafeERC20: low-level call failed'
                            if ext_code.size(stormAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 836 len 64] = 0, msg.sender, Mask(224, 32, 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12) >> 32
                            mem[ceil32(return_data.size) + 928 len 4] = 0
                            call stormAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12, 0, mem[ceil32(return_data.size) + 900 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if call.data[calldata.size] > 0:
                                        revert with memory
                                          from 128
                                           len call.data[calldata.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if call.data[calldata.size] > 0:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 946 len 22]
                            else:
                                mem[ceil32(return_data.size) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 868]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 947 len 22]
                        emit Claim(arg1, 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12, msg.sender);
                else:
                    require ext_call.return_data[0]
                    if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 645 len 31]
                    mem[ceil32(return_data.size) + 544] = 26
                    mem[ceil32(return_data.size) + 576] = 'SafeMath: division by zero'
                    if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                    if not 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                        require ext_code.size(lotteryNFTAddress)
                        call lotteryNFTAddress.0xae169a50 with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claim(arg1, 0, msg.sender);
                    else:
                        require 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                        if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) != uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 709 len 31]
                        mem[ceil32(return_data.size) + 608] = 26
                        mem[ceil32(return_data.size) + 640] = 'SafeMath: division by zero'
                        require ext_code.size(lotteryNFTAddress)
                        call lotteryNFTAddress.0xae169a50 with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12 > 0:
                            mem[ceil32(return_data.size) + 708] = msg.sender
                            mem[ceil32(return_data.size) + 740] = 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12
                            mem[ceil32(return_data.size) + 672] = 68
                            mem[ceil32(return_data.size) + 704 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 772] = 32
                            mem[ceil32(return_data.size) + 804] = 'SafeERC20: low-level call failed'
                            if ext_code.size(stormAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 836 len 64] = 0, msg.sender, Mask(224, 32, 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12) >> 32
                            mem[ceil32(return_data.size) + 928 len 4] = 0
                            call stormAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12, 0, mem[ceil32(return_data.size) + 900 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if call.data[calldata.size] > 0:
                                        revert with memory
                                          from 128
                                           len call.data[calldata.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if call.data[calldata.size] > 0:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 946 len 22]
                            else:
                                mem[ceil32(return_data.size) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 868]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 947 len 22]
                        emit Claim(arg1, 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12, msg.sender);
        else:
            if ext_call.return_data[0] == issueIndex:
                if not totalAmount:
                    require -s + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                    if not ext_call.return_data[0]:
                        if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                        if 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                            require 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                            if 0 / 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 709 len 31]
                    else:
                        require ext_call.return_data[0]
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 645 len 31]
                        if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                        if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                            require 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                            if 0 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 709 len 31]
                    require ext_code.size(lotteryNFTAddress)
                    call lotteryNFTAddress.0xae169a50 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(arg1, 0, msg.sender);
                else:
                    require totalAmount
                    if totalAmount * allocation[uint8(-s + 4)] / totalAmount != allocation[uint8(-s + 4)]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 581 len 31]
                    mem[ceil32(return_data.size) + 480] = 26
                    mem[ceil32(return_data.size) + 512] = 'SafeMath: division by zero'
                    require -s + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                    if not ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 544] = 26
                        mem[ceil32(return_data.size) + 576] = 'SafeMath: division by zero'
                        if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                        if not 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                            require ext_code.size(lotteryNFTAddress)
                            call lotteryNFTAddress.0xae169a50 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Claim(arg1, 0, msg.sender);
                        else:
                            require 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                            if 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * totalAmount * allocation[uint8(-s + 4)] / 100 / 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) != totalAmount * allocation[uint8(-s + 4)] / 100:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 709 len 31]
                            mem[ceil32(return_data.size) + 608] = 26
                            mem[ceil32(return_data.size) + 640] = 'SafeMath: division by zero'
                            require ext_code.size(lotteryNFTAddress)
                            call lotteryNFTAddress.0xae169a50 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * totalAmount * allocation[uint8(-s + 4)] / 100 / 10^12 > 0:
                                mem[ceil32(return_data.size) + 708] = msg.sender
                                mem[ceil32(return_data.size) + 740] = 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * totalAmount * allocation[uint8(-s + 4)] / 100 / 10^12
                                mem[ceil32(return_data.size) + 672] = 68
                                mem[ceil32(return_data.size) + 704 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 772] = 32
                                mem[ceil32(return_data.size) + 804] = 'SafeERC20: low-level call failed'
                                if ext_code.size(stormAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 836 len 64] = 0, msg.sender, Mask(224, 32, 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * totalAmount * allocation[uint8(-s + 4)] / 100 / 10^12) >> 32
                                mem[ceil32(return_data.size) + 928 len 4] = 0
                                call stormAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * totalAmount * allocation[uint8(-s + 4)] / 100 / 10^12, 0, mem[ceil32(return_data.size) + 900 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if call.data[calldata.size] > 0:
                                            revert with memory
                                              from 128
                                               len call.data[calldata.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if call.data[calldata.size] > 0:
                                        require call.data[calldata.size] >= 32
                                        if not call.data[calldata.size + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 946 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 868]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 947 len 22]
                            emit Claim(arg1, 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * totalAmount * allocation[uint8(-s + 4)] / 100 / 10^12, msg.sender);
                    else:
                        require ext_call.return_data[0]
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 645 len 31]
                        mem[ceil32(return_data.size) + 544] = 26
                        mem[ceil32(return_data.size) + 576] = 'SafeMath: division by zero'
                        if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                        if not 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                            require ext_code.size(lotteryNFTAddress)
                            call lotteryNFTAddress.0xae169a50 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Claim(arg1, 0, msg.sender);
                        else:
                            require 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                            if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * totalAmount * allocation[uint8(-s + 4)] / 100 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) != totalAmount * allocation[uint8(-s + 4)] / 100:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 709 len 31]
                            mem[ceil32(return_data.size) + 608] = 26
                            mem[ceil32(return_data.size) + 640] = 'SafeMath: division by zero'
                            require ext_code.size(lotteryNFTAddress)
                            call lotteryNFTAddress.0xae169a50 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * totalAmount * allocation[uint8(-s + 4)] / 100 / 10^12 > 0:
                                mem[ceil32(return_data.size) + 708] = msg.sender
                                mem[ceil32(return_data.size) + 740] = 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * totalAmount * allocation[uint8(-s + 4)] / 100 / 10^12
                                mem[ceil32(return_data.size) + 672] = 68
                                mem[ceil32(return_data.size) + 704 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 772] = 32
                                mem[ceil32(return_data.size) + 804] = 'SafeERC20: low-level call failed'
                                if ext_code.size(stormAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 836 len 64] = 0, msg.sender, Mask(224, 32, 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * totalAmount * allocation[uint8(-s + 4)] / 100 / 10^12) >> 32
                                mem[ceil32(return_data.size) + 928 len 4] = 0
                                call stormAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * totalAmount * allocation[uint8(-s + 4)] / 100 / 10^12, 0, mem[ceil32(return_data.size) + 900 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if call.data[calldata.size] > 0:
                                            revert with memory
                                              from 128
                                               len call.data[calldata.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if call.data[calldata.size] > 0:
                                        require call.data[calldata.size] >= 32
                                        if not call.data[calldata.size + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 946 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 868]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 947 len 22]
                            emit Claim(arg1, 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * totalAmount * allocation[uint8(-s + 4)] / 100 / 10^12, msg.sender);
            else:
                require 0 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                if not uint256(historyAmount[ext_call.return_data[0]].field_0):
                    require -s + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                    if not ext_call.return_data[0]:
                        if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                        if 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                            require 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                            if 0 / 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 709 len 31]
                    else:
                        require ext_call.return_data[0]
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 645 len 31]
                        if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                        if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                            require 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                            if 0 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 709 len 31]
                    require ext_code.size(lotteryNFTAddress)
                    call lotteryNFTAddress.0xae169a50 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(arg1, 0, msg.sender);
                else:
                    require uint256(historyAmount[ext_call.return_data[0]].field_0)
                    if uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / uint256(historyAmount[ext_call.return_data[0]].field_0) != allocation[uint8(-s + 4)]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 581 len 31]
                    mem[ceil32(return_data.size) + 480] = 26
                    mem[ceil32(return_data.size) + 512] = 'SafeMath: division by zero'
                    require -s + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                    if not ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 544] = 26
                        mem[ceil32(return_data.size) + 576] = 'SafeMath: division by zero'
                        if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                        if not 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                            require ext_code.size(lotteryNFTAddress)
                            call lotteryNFTAddress.0xae169a50 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Claim(arg1, 0, msg.sender);
                        else:
                            require 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                            if 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) != uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 709 len 31]
                            mem[ceil32(return_data.size) + 608] = 26
                            mem[ceil32(return_data.size) + 640] = 'SafeMath: division by zero'
                            require ext_code.size(lotteryNFTAddress)
                            call lotteryNFTAddress.0xae169a50 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12 > 0:
                                mem[ceil32(return_data.size) + 708] = msg.sender
                                mem[ceil32(return_data.size) + 740] = 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12
                                mem[ceil32(return_data.size) + 672] = 68
                                mem[ceil32(return_data.size) + 704 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 772] = 32
                                mem[ceil32(return_data.size) + 804] = 'SafeERC20: low-level call failed'
                                if ext_code.size(stormAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 836 len 64] = 0, msg.sender, Mask(224, 32, 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12) >> 32
                                mem[ceil32(return_data.size) + 928 len 4] = 0
                                call stormAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12, 0, mem[ceil32(return_data.size) + 900 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if call.data[calldata.size] > 0:
                                            revert with memory
                                              from 128
                                               len call.data[calldata.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if call.data[calldata.size] > 0:
                                        require call.data[calldata.size] >= 32
                                        if not call.data[calldata.size + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 946 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 868]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 947 len 22]
                            emit Claim(arg1, 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12, msg.sender);
                    else:
                        require ext_call.return_data[0]
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 645 len 31]
                        mem[ceil32(return_data.size) + 544] = 26
                        mem[ceil32(return_data.size) + 576] = 'SafeMath: division by zero'
                        if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                        if not 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                            require ext_code.size(lotteryNFTAddress)
                            call lotteryNFTAddress.0xae169a50 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Claim(arg1, 0, msg.sender);
                        else:
                            require 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                            if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) != uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 709 len 31]
                            mem[ceil32(return_data.size) + 608] = 26
                            mem[ceil32(return_data.size) + 640] = 'SafeMath: division by zero'
                            require ext_code.size(lotteryNFTAddress)
                            call lotteryNFTAddress.0xae169a50 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12 > 0:
                                mem[ceil32(return_data.size) + 708] = msg.sender
                                mem[ceil32(return_data.size) + 740] = 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12
                                mem[ceil32(return_data.size) + 672] = 68
                                mem[ceil32(return_data.size) + 704 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 772] = 32
                                mem[ceil32(return_data.size) + 804] = 'SafeERC20: low-level call failed'
                                if ext_code.size(stormAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 836 len 64] = 0, msg.sender, Mask(224, 32, 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12) >> 32
                                mem[ceil32(return_data.size) + 928 len 4] = 0
                                call stormAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12, 0, mem[ceil32(return_data.size) + 900 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if call.data[calldata.size] > 0:
                                            revert with memory
                                              from 128
                                               len call.data[calldata.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if call.data[calldata.size] > 0:
                                        require call.data[calldata.size] >= 32
                                        if not call.data[calldata.size + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 946 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 868]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 947 len 22]
                            emit Claim(arg1, 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) * uint256(historyAmount[ext_call.return_data[0]].field_0) * allocation[uint8(-s + 4)] / 100 / 10^12, msg.sender);
}



}
