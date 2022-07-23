contract main {




// =====================  Runtime code  =====================


#
#  - applyPendingRewards(address arg1)
#  - sub_12adf0c2(?)
#  - sub_27fb7d89(?)
#  - sub_28bd6ec1(?)
#  - sub_35a058b4(?)
#  - sub_3bc8913e(?)
#  - sub_f180b6f0(?)
#
const sub_0e8307f8(?) = 5 * 10^15

const getMCR = 11 * 10^17

const sub_553b186b(?) = 5 * 10^15

const sub_683c6142(?) = (5 * 10^17 * 3600)

const sub_bb409522(?) = 15 * 10^17

const sub_d894c9f8(?) = 200 * 10^18

const MAX_BORROWING_FEE = 5 * 10^16

const DECIMAL_PRECISION = 10^18

const NAME = 0x54726f76654d616e616765720000000000000000000000000000000000000000

const BOOTSTRAP_PERIOD = (336 * 24 * 3600)

const MINUTE_DECAY_FACTOR = 999037758833783000


address stor0;
address stor50;
address stor51;
uint256 stor150;
address stor200;
address stor202;
address stor203;
address stor204;
uint256 baseRate;
uint256 lastFeeOperationTime;
mapping of struct troveStatus;
mapping of uint256 totalStake;
mapping of uint256 sub_af3700dc;
mapping of uint256 sub_de665835;
mapping of uint256 sub_693c781c;
mapping of uint256 sub_cde04799;
mapping of uint256 sub_50953b62;
array of address troveFromTroveOwnersArray;
mapping of uint256 sub_328e1404;
mapping of uint256 sub_9cbf3979;
uint8 stor217;
array of address stor104667138407455286898410558216952396144679297639369867041799913677098318052829;

function getTotalStake(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalStake[address(arg1)]
}

function baseRate() payable {
    return baseRate
}

function getTroveStatus(address arg1) payable {
    require calldata.size - 4 >= 32
    require uint8(troveStatus[address(arg1)].field_1024) <= 4
    return uint8(troveStatus[address(arg1)].field_1024)
}

function sub_328e1404(?) payable {
    require calldata.size - 4 >= 32
    return sub_328e1404[arg1]
}

function getTroveOwnersCount() payable {
    return troveFromTroveOwnersArray.length
}

function sub_50953b62(?) payable {
    require calldata.size - 4 >= 64
    return sub_50953b62[address(arg1)][1][address(arg2)]
}

function sub_693c781c(?) payable {
    require calldata.size - 4 >= 32
    return sub_693c781c[arg1]
}

function TroveOwners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < troveFromTroveOwnersArray.length
    return troveFromTroveOwnersArray[arg1]
}

function sub_9cbf3979(?) payable {
    require calldata.size - 4 >= 32
    return sub_9cbf3979[arg1]
}

function sub_af3700dc(?) payable {
    require calldata.size - 4 >= 32
    return sub_af3700dc[arg1]
}

function sub_ba6e79f7(?) payable {
    require calldata.size - 4 >= 64
    return sub_50953b62[address(arg1)][address(arg2)]
}

function sub_cde04799(?) payable {
    require calldata.size - 4 >= 32
    return sub_cde04799[address(arg1)]
}

function lastFeeOperationTime() payable {
    return lastFeeOperationTime
}

function getTroveDebt(address arg1) payable {
    require calldata.size - 4 >= 32
    return troveStatus[address(arg1)].field_512
}

function getTroveFromTroveOwnersArray(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < troveFromTroveOwnersArray.length
    return troveFromTroveOwnersArray[arg1]
}

function sub_dbebddce(?) payable {
    require calldata.size - 4 >= 32
    return sub_cde04799[arg1]
}

function sub_dc3fe76f(?) payable {
    require calldata.size - 4 >= 64
    return troveStatus[address(arg1)][3][address(arg2)].field_0
}

function sub_de665835(?) payable {
    require calldata.size - 4 >= 32
    return sub_de665835[arg1]
}

function totalStakes(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalStake[arg1]
}

function sub_fefa753d(?) payable {
    require calldata.size - 4 >= 32
    return sub_693c781c[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_31bafd9b(?) payable {
    require calldata.size - 4 >= 64
    if stor202 != msg.sender:
        revert with 0, 'WFC'
    troveStatus[address(arg1)].field_512 = arg2
}

function sub_3735aa20(?) payable {
    require calldata.size - 4 >= 32
    require uint8(troveStatus[address(arg1)].field_1024) <= 4
    return (uint8(troveStatus[address(arg1)].field_1024) == 1)
}

function getRedemptionRate() payable {
    if baseRate + 5 * 10^15 < 5 * 10^15:
        revert with 0, 'add overflow'
    if baseRate + 5 * 10^15 < 10^18:
        return (baseRate + 5 * 10^15)
    return 10^18
}

function getBorrowingRate() payable {
    if baseRate + 5 * 10^15 < 5 * 10^15:
        revert with 0, 'add overflow'
    if baseRate + 5 * 10^15 < 5 * 10^16:
        return (baseRate + 5 * 10^15)
    return 5 * 10^16
}

function setTroveStatus(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor200 != msg.sender:
        revert with 0, 'WFC'
    require arg2 <= 4
    troveStatus[address(arg1)].field_1024 = arg2 or Mask(248, 8, troveStatus[address(arg1)].field_1024)
}

function getEntireSystemColl() payable {
    require ext_code.size(stor50)
    staticcall stor50.0x651340c4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function decreaseTroveDebt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor200 != msg.sender:
        revert with 0, 'WFC'
    if arg2 > troveStatus[address(arg1)].field_512:
        revert with 0, 'sub overflow'
    troveStatus[address(arg1)].field_512 -= arg2
    return (troveStatus[address(arg1)].field_512 - arg2)
}

function increaseTroveDebt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor200 != msg.sender:
        revert with 0, 'WFC'
    if arg2 + troveStatus[address(arg1)].field_512 < troveStatus[address(arg1)].field_512:
        revert with 0, 'add overflow'
    troveStatus[address(arg1)].field_512 += arg2
    return (arg2 + troveStatus[address(arg1)].field_512)
}

function sub_13312d59(?) payable {
    require calldata.size - 4 >= 224
    if stor150 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor150 = 2
    require ext_code.size(stor202)
    call stor202.0xc2f6202d with:
         gas gas_remaining wei
        args 0, arg1, arg2, address(arg3), arg4, address(arg5), arg6, arg7, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor150 = 1
}

function addTroveOwnerToArray(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor200 != msg.sender:
        revert with 0, 'WFC'
    troveFromTroveOwnersArray.length++
    storE767[stor214.length] = arg1
    if 1 > troveFromTroveOwnersArray.length:
        revert with 0, 'sub overflow'
    uint128(troveStatus[address(arg1)].field_1032) = uint128(troveFromTroveOwnersArray.length - 1)
    return uint128(troveFromTroveOwnersArray.length - 1)
}

function sub_330283aa(?) payable {
    require calldata.size - 4 >= 32
    if stor202 != msg.sender:
        revert with 0, 'WFC'
    if not arg1:
        revert with 0, 'TM:BR!=0'
    baseRate = arg1
    emit BaseRateUpdated(arg1);
    if lastFeeOperationTime > block.timestamp:
        revert with 0, 'sub overflow'
    if block.timestamp - lastFeeOperationTime >= 60:
        lastFeeOperationTime = block.timestamp
        emit LastFeeOpTimeUpdated(block.timestamp);
}

function sub_43338372(?) payable {
    require calldata.size - 4 >= 224
    if stor150 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor150 = 2
    require ext_code.size(stor202)
    call stor202.0x1ddbf26c with:
         gas gas_remaining wei
        args 0, arg1, arg2, address(arg3), arg4, address(arg5), arg6, address(arg7), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor150 = 1
}

function getBorrowingFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if baseRate + 5 * 10^15 < 5 * 10^15:
        revert with 0, 'add overflow'
    if baseRate + 5 * 10^15 >= 5 * 10^16:
        if 5 * 10^16 * arg1 / 5 * 10^16 != arg1:
            revert with 0, 'mul overflow'
        return (5 * 10^16 * arg1 / 10^18)
    if not baseRate + 5 * 10^15:
        return 0
    if (5 * 10^15 * arg1) + (baseRate * arg1) / baseRate + 5 * 10^15 != arg1:
        revert with 0, 'mul overflow'
    return ((5 * 10^15 * arg1) + (baseRate * arg1) / 10^18)
}

function liquidate(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor150 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor150 = 2
    require uint8(troveStatus[address(arg1)].field_1024) <= 4
    if uint8(troveStatus[address(arg1)].field_1024) != 1:
        revert with 0, 'TM:trove inactive'
    mem[260 len 0] = None
    require ext_code.size(stor203)
    call stor203.0xe369e4ab with:
         gas gas_remaining wei
        args Array(len=1, data=mem[260]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor150 = 1
}

function getEntireSystemDebt() payable {
    require ext_code.size(stor50)
    staticcall stor50.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor51)
    staticcall stor51.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add overflow'
    return (2 * ext_call.return_data[0])
}

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    if stor217:
        revert with 0, 'Addresses already set'
    stor217 = 1
    if stor150:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0xfe5265656e7472616e637947756172645570677261646561626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                    mem[223 len 5]
    stor150 = 1
    stor200 = arg1
    stor50 = arg2
    stor51 = arg3
    stor0 = arg5
    stor204 = arg4
    stor202 = arg6
    stor203 = arg7
}

function updateTroveRewardSnapshots(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor200 != msg.sender:
        revert with 0, 'WFC'
    if troveStatus[address(arg1)].field_0:
        mem[128] = address(troveStatus[address(arg1)].field_0)
        idx = 128
        s = 0
        while (32 * troveStatus[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = address(troveStatus[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < troveStatus[address(arg1)].field_0:
        require idx < troveStatus[address(arg1)].field_0
        mem[0] = mem[(32 * idx) + 140 len 20]
        sub_50953b62[address(arg1)][address(mem[(32 * idx) + 128])] = sub_693c781c[mem[(32 * idx) + 140 len 20]]
        mem[32] = sha3(address(arg1), 213) + 1
        sub_50953b62[address(arg1)][1][address(mem[(32 * idx) + 128])] = sub_cde04799[address(mem[(32 * idx) + 128])]
        idx = idx + 1
        continue 
    emit 0x82bbdd53: block.timestamp
}

function hasPendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require uint8(troveStatus[address(arg1)].field_1024) <= 4
    if uint8(troveStatus[address(arg1)].field_1024) == 1:
        if troveStatus[address(arg1)].field_0:
            mem[128] = address(troveStatus[address(arg1)].field_0)
            idx = 128
            s = 0
            while (32 * troveStatus[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = address(troveStatus[address(arg1)][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
        idx = 0
        while idx < troveStatus[address(arg1)].field_0:
            require idx < troveStatus[address(arg1)].field_0
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(address(arg1), 213)
            if sub_50953b62[address(arg1)][address(mem[(32 * idx) + 128])] >= sub_693c781c[mem[(32 * idx) + 140 len 20]]:
                idx = idx + 1
                continue 
            return 1
        return 0
    else:
        return 0
}

function sub_e369e4ab(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if stor150 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor150 = 2
    mem[(32 * arg1.length) + 128] = 0xe369e4ab00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 132] = 64
    mem[(32 * arg1.length) + 196] = arg1.length
    if Mask(251, 0, arg1.length):
        mem[(32 * arg1.length) + 228] = mem[128]
        mem[(32 * arg1.length) + 260 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
    require ext_code.size(stor203)
    call stor203.0xe369e4ab with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=mem[(32 * arg1.length) + 228 len 32 * arg1.length]), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor150 = 1
}

function getTCR() payable {
    require ext_code.size(stor50)
    staticcall stor50.0x896a0089 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(stor50)
    staticcall stor50.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor51)
    staticcall stor51.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add overflow'
    if not uint255(ext_call.return_data[0]):
        return -1
    if not ext_call.return_data[32]:
        if not 2 * ext_call.return_data[0]:
            revert with 0, ''
        return (0 / 2 * ext_call.return_data[0])
    if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10^18:
        revert with 0, 'mul overflow'
    if not 2 * ext_call.return_data[0]:
        revert with 0, ''
    return (10^18 * ext_call.return_data[32] / 2 * ext_call.return_data[0])
}

function sub_43a124fa(?) payable {
    require ext_code.size(stor50)
    staticcall stor50.0x896a0089 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(stor50)
    staticcall stor50.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor51)
    staticcall stor51.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add overflow'
    if not uint255(ext_call.return_data[0]):
        return 0
    if not ext_call.return_data[32]:
        if not 2 * ext_call.return_data[0]:
            revert with 0, ''
        return (0 / 2 * ext_call.return_data[0] < 15 * 10^17)
    if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10^18:
        revert with 0, 'mul overflow'
    if not 2 * ext_call.return_data[0]:
        revert with 0, ''
    return (10^18 * ext_call.return_data[32] / 2 * ext_call.return_data[0] < 15 * 10^17)
}

function sub_99723784(?) payable {
    require calldata.size - 4 >= 32
    if troveStatus[address(arg1)].field_0:
        mem[128] = address(troveStatus[address(arg1)].field_0)
        idx = 128
        s = 0
        while (32 * troveStatus[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = address(troveStatus[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    if troveStatus[address(arg1)].field_256:
        mem[(32 * troveStatus[address(arg1)].field_0) + 160] = troveStatus[address(arg1)][1].field_0
        idx = (32 * troveStatus[address(arg1)].field_0) + 160
        s = 0
        while (32 * troveStatus[address(arg1)].field_0) + (32 * troveStatus[address(arg1)].field_256) + 128 > idx:
            mem[idx + 32] = troveStatus[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * troveStatus[address(arg1)].field_0) + (32 * troveStatus[address(arg1)].field_256) + 256 len floor32(troveStatus[address(arg1)].field_0)] = mem[128 len floor32(troveStatus[address(arg1)].field_0)]
    mem[(64 * troveStatus[address(arg1)].field_0) + (32 * troveStatus[address(arg1)].field_256) + 256] = troveStatus[address(arg1)].field_256
    mem[(64 * troveStatus[address(arg1)].field_0) + (32 * troveStatus[address(arg1)].field_256) + 288 len floor32(troveStatus[address(arg1)].field_256)] = mem[(32 * troveStatus[address(arg1)].field_0) + 160 len floor32(troveStatus[address(arg1)].field_256)]
    return Array(len=troveStatus[address(arg1)].field_0, data=mem[128 len floor32(troveStatus[address(arg1)].field_0)], mem[(32 * troveStatus[address(arg1)].field_0) + (32 * troveStatus[address(arg1)].field_256) + floor32(troveStatus[address(arg1)].field_0) + 256 len (32 * troveStatus[address(arg1)].field_0) + (32 * troveStatus[address(arg1)].field_256) + -floor32(troveStatus[address(arg1)].field_0) + 32]), 
           (32 * troveStatus[address(arg1)].field_0) + 96
}

function sub_c6179445(?) payable {
    require calldata.size - 4 >= 32
    if troveStatus[address(arg1)].field_0:
        mem[192] = address(troveStatus[address(arg1)].field_0)
        idx = 192
        s = 0
        while (32 * troveStatus[address(arg1)].field_0) + 192 > idx + 32:
            mem[idx + 32] = address(troveStatus[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    if troveStatus[address(arg1)].field_256:
        mem[(32 * troveStatus[address(arg1)].field_0) + 224] = troveStatus[address(arg1)][1].field_0
        idx = (32 * troveStatus[address(arg1)].field_0) + 224
        s = 0
        while (32 * troveStatus[address(arg1)].field_0) + (32 * troveStatus[address(arg1)].field_256) + 192 > idx:
            mem[idx + 32] = troveStatus[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * troveStatus[address(arg1)].field_0) + (32 * troveStatus[address(arg1)].field_256) + 324 len floor32(troveStatus[address(arg1)].field_0)] = mem[192 len floor32(troveStatus[address(arg1)].field_0)]
    mem[(64 * troveStatus[address(arg1)].field_0) + (32 * troveStatus[address(arg1)].field_256) + 324] = troveStatus[address(arg1)].field_256
    mem[(64 * troveStatus[address(arg1)].field_0) + (32 * troveStatus[address(arg1)].field_256) + 356 len floor32(troveStatus[address(arg1)].field_256)] = mem[(32 * troveStatus[address(arg1)].field_0) + 224 len floor32(troveStatus[address(arg1)].field_256)]
    require ext_code.size(stor0)
    staticcall stor0.0x97a4b9f7 with:
            gas gas_remaining wei
           args Array(len=troveStatus[address(arg1)].field_0, data=mem[192 len floor32(troveStatus[address(arg1)].field_0)], mem[(32 * troveStatus[address(arg1)].field_0) + (32 * troveStatus[address(arg1)].field_256) + floor32(troveStatus[address(arg1)].field_0) + 324 len (32 * troveStatus[address(arg1)].field_0) + (32 * troveStatus[address(arg1)].field_256) + -floor32(troveStatus[address(arg1)].field_0) + 32]), (32 * troveStatus[address(arg1)].field_0) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_22962f65(?) payable {
    require calldata.size - 4 >= 32
    if stor203 != msg.sender:
        revert with 0, 'WFC'
    require ext_code.size(stor204)
    call stor204.0x265eb84f with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if troveFromTroveOwnersArray.length <= 1:
        revert with 0, 'TM:last trove'
    mem[128] = 96
    mem[160] = troveStatus[address(arg1)].field_0
    if troveStatus[address(arg1)].field_0:
        mem[192] = address(troveStatus[address(arg1)].field_0)
        idx = 192
        s = 0
        while (32 * troveStatus[address(arg1)].field_0) + 160 > idx:
            mem[idx + 32] = address(troveStatus[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < troveStatus[address(arg1)].field_0:
        require idx < troveStatus[address(arg1)].field_0
        mem[0] = mem[(32 * idx) + 204 len 20]
        sub_50953b62[address(arg1)][address(mem[(32 * idx) + 192])] = 0
        mem[32] = sha3(address(arg1), 213) + 1
        sub_50953b62[address(arg1)][1][address(mem[(32 * idx) + 192])] = 0
        idx = idx + 1
        continue 
    uint8(troveStatus[address(arg1)].field_1024) = 3
    troveStatus[address(arg1)].field_0 = 96
    s = 0
    idx = 128
    while 3200 > idx:
        address(troveStatus[address(arg1)][s].field_0) = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 96
    while troveStatus[address(arg1)].field_0 > idx:
        address(troveStatus[address(arg1)][idx].field_0) = 0
        idx = idx + 1
        continue 
    troveStatus[address(arg1)].field_256 = 96
    s = 0
    idx = 128
    while 3200 > idx:
        troveStatus[address(arg1)][s + 1].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 96
    while troveStatus[address(arg1)].field_256 > idx:
        troveStatus[address(arg1)][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    troveStatus[address(arg1)].field_512 = 0
    require uint8(troveStatus[address(arg1)].field_1024) <= 4
    if not uint8(troveStatus[address(arg1)].field_1024):
        revert with 0, 'TM:invalid trove'
    require uint8(troveStatus[address(arg1)].field_1024) <= 4
    if uint8(troveStatus[address(arg1)].field_1024) == 1:
        revert with 0, 'TM:invalid trove'
    if 1 > troveFromTroveOwnersArray.length:
        revert with 0, 'sub overflow'
    if uint128(troveStatus[address(arg1)].field_1032) > troveFromTroveOwnersArray.length - 1:
        revert with 0, 'TM:index>last'
    require troveFromTroveOwnersArray.length - 1 < troveFromTroveOwnersArray.length
    require uint128(troveStatus[address(arg1)].field_1032) < troveFromTroveOwnersArray.length
    troveFromTroveOwnersArray[uint128(stor207[address(arg1)].field_1032)] = troveFromTroveOwnersArray[troveFromTroveOwnersArray.length]
    Mask(248, 0, troveStatus[stor214[stor214.length]].field_1032) = uint128(troveStatus[address(arg1)].field_1032)
    emit TroveIndexUpdated(troveFromTroveOwnersArray[troveFromTroveOwnersArray.length], uint128(troveStatus[address(arg1)].field_1032));
    require troveFromTroveOwnersArray.length
    troveFromTroveOwnersArray[troveFromTroveOwnersArray.length] = 0
    troveFromTroveOwnersArray.length--
    require ext_code.size(stor204)
    call stor204.0x29092d0e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bd5ef3f9(?) payable {
    require calldata.size - 4 >= 32
    if stor202 != msg.sender:
        revert with 0, 'WFC'
    require ext_code.size(stor204)
    call stor204.0x265eb84f with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if troveFromTroveOwnersArray.length <= 1:
        revert with 0, 'TM:last trove'
    mem[128] = 96
    mem[160] = troveStatus[address(arg1)].field_0
    if troveStatus[address(arg1)].field_0:
        mem[192] = address(troveStatus[address(arg1)].field_0)
        idx = 192
        s = 0
        while (32 * troveStatus[address(arg1)].field_0) + 160 > idx:
            mem[idx + 32] = address(troveStatus[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < troveStatus[address(arg1)].field_0:
        require idx < troveStatus[address(arg1)].field_0
        mem[0] = mem[(32 * idx) + 204 len 20]
        sub_50953b62[address(arg1)][address(mem[(32 * idx) + 192])] = 0
        mem[32] = sha3(address(arg1), 213) + 1
        sub_50953b62[address(arg1)][1][address(mem[(32 * idx) + 192])] = 0
        idx = idx + 1
        continue 
    uint8(troveStatus[address(arg1)].field_1024) = 4
    troveStatus[address(arg1)].field_0 = 96
    s = 0
    idx = 128
    while 3200 > idx:
        address(troveStatus[address(arg1)][s].field_0) = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 96
    while troveStatus[address(arg1)].field_0 > idx:
        address(troveStatus[address(arg1)][idx].field_0) = 0
        idx = idx + 1
        continue 
    troveStatus[address(arg1)].field_256 = 96
    s = 0
    idx = 128
    while 3200 > idx:
        troveStatus[address(arg1)][s + 1].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 96
    while troveStatus[address(arg1)].field_256 > idx:
        troveStatus[address(arg1)][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    troveStatus[address(arg1)].field_512 = 0
    require uint8(troveStatus[address(arg1)].field_1024) <= 4
    if not uint8(troveStatus[address(arg1)].field_1024):
        revert with 0, 'TM:invalid trove'
    require uint8(troveStatus[address(arg1)].field_1024) <= 4
    if uint8(troveStatus[address(arg1)].field_1024) == 1:
        revert with 0, 'TM:invalid trove'
    if 1 > troveFromTroveOwnersArray.length:
        revert with 0, 'sub overflow'
    if uint128(troveStatus[address(arg1)].field_1032) > troveFromTroveOwnersArray.length - 1:
        revert with 0, 'TM:index>last'
    require troveFromTroveOwnersArray.length - 1 < troveFromTroveOwnersArray.length
    require uint128(troveStatus[address(arg1)].field_1032) < troveFromTroveOwnersArray.length
    troveFromTroveOwnersArray[uint128(stor207[address(arg1)].field_1032)] = troveFromTroveOwnersArray[troveFromTroveOwnersArray.length]
    Mask(248, 0, troveStatus[stor214[stor214.length]].field_1032) = uint128(troveStatus[address(arg1)].field_1032)
    emit TroveIndexUpdated(troveFromTroveOwnersArray[troveFromTroveOwnersArray.length], uint128(troveStatus[address(arg1)].field_1032));
    require troveFromTroveOwnersArray.length
    troveFromTroveOwnersArray[troveFromTroveOwnersArray.length] = 0
    troveFromTroveOwnersArray.length--
    require ext_code.size(stor204)
    call stor204.0x29092d0e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e1f18250(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if stor203 != msg.sender:
        revert with 0, 'WFC'
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x3824174c00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = 32
    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(arg1)
    staticcall arg1.0x3824174c with:
            gas gas_remaining wei
           args mem[(32 * arg2.length) + (32 * arg3.length) + 164 len (96 * arg2.length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 160
    require return_data.size >= 32
    _39 = mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0
    require mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 <= 4294967296
    require mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 + 32 <= return_data.size
    require mem[(32 * arg2.length) + (32 * arg3.length) + mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 + 160] <= 4294967296 and mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 + 160]) + 32 <= return_data.size
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 160] = mem[(32 * arg2.length) + (32 * arg3.length) + mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 + 160]
    _42 = mem[(32 * arg2.length) + (32 * arg3.length) + _39 + 160]
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + _39 + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + _39 + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + _39 + 160])]
    mem[64] = (32 * _42) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 192
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _89 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 209
        sub_af3700dc[mem[(32 * idx) + 140 len 20]] = totalStake[mem[(32 * idx) + 140 len 20]]
        require idx < mem[(32 * arg2.length) + 128]
        _93 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require idx < mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 160]
        _95 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 192]
        _96 = mem[64]
        mem[64] = mem[64] + 64
        mem[_96] = 12
        mem[_96 + 32] = 'sub overflow' << 160
        if _93 <= _95:
            mem[0] = address(_89)
            mem[32] = 210
            sub_de665835[address(_89)] = _95 - _93
            idx = idx + 1
            continue 
        _97 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 12
        idx = 0
        while idx < 12:
            mem[idx + _97 + 68] = mem[idx + _96 + 32]
            idx = idx + 32
            continue 
        mem[_97 + 68] = mem[_97 + 88 len 12]
        revert with memory
          from mem[64]
           len _97 + -mem[64] + 100
    emit 0x523f4c1c: block.timestamp
}

function removeStake(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == stor203:
        mem[0] = arg1
        mem[32] = 207
        mem[64] = (32 * troveStatus[address(arg1)].field_0) + 128
        mem[96] = troveStatus[address(arg1)].field_0
        if not troveStatus[address(arg1)].field_0:
            idx = 0
            while idx < troveStatus[address(arg1)].field_0:
                require idx < mem[96]
                _45 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 140 len 20]
                _47 = sha3(address(mem[(32 * idx) + 128]), sha3(address(arg1), 207) + 3)
                mem[32] = 208
                _48 = sha3(address(mem[(32 * idx) + 128]), 208)
                _53 = mem[64]
                mem[64] = mem[64] + 64
                mem[_53] = 12
                mem[_53 + 32] = 'sub overflow' << 160
                if stor[_47] <= stor[_48]:
                    totalStake[address(_45)] = stor[_48] - stor[_47]
                    mem[0] = address(_45)
                    mem[32] = sha3(address(arg1), 207) + 3
                    troveStatus[address(arg1)][3][address(_45)].field_0 = 0
                    idx = idx + 1
                    continue 
                _55 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _55 + 68] = mem[idx + _53 + 32]
                    idx = idx + 32
                    continue 
                mem[_55 + 68] = mem[_55 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _55 + -mem[64] + 100
        else:
            mem[0] = sha3(address(arg1), 207)
            mem[128] = address(troveStatus[address(arg1)].field_0)
            idx = 128
            s = 0
            while (32 * troveStatus[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = address(troveStatus[address(arg1)][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            while idx < troveStatus[address(arg1)].field_0:
                require idx < mem[96]
                _119 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 140 len 20]
                _121 = sha3(address(mem[(32 * idx) + 128]), sha3(address(arg1), 207) + 3)
                mem[32] = 208
                _122 = sha3(address(mem[(32 * idx) + 128]), 208)
                _127 = mem[64]
                mem[64] = mem[64] + 64
                mem[_127] = 12
                mem[_127 + 32] = 'sub overflow' << 160
                if stor[_121] <= stor[_122]:
                    totalStake[address(_119)] = stor[_122] - stor[_121]
                    mem[0] = address(_119)
                    mem[32] = sha3(address(arg1), 207) + 3
                    troveStatus[address(arg1)][3][address(_119)].field_0 = 0
                    idx = idx + 1
                    continue 
                _129 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _129 + 68] = mem[idx + _127 + 32]
                    idx = idx + 32
                    continue 
                mem[_129 + 68] = mem[_129 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _129 + -mem[64] + 100
    else:
        if stor202 != msg.sender:
            revert with 0, 'WFC'
        mem[0] = arg1
        mem[32] = 207
        mem[64] = (32 * troveStatus[address(arg1)].field_0) + 128
        mem[96] = troveStatus[address(arg1)].field_0
        if not troveStatus[address(arg1)].field_0:
            idx = 0
            while idx < troveStatus[address(arg1)].field_0:
                require idx < mem[96]
                _49 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 140 len 20]
                _51 = sha3(address(mem[(32 * idx) + 128]), sha3(address(arg1), 207) + 3)
                mem[32] = 208
                _52 = sha3(address(mem[(32 * idx) + 128]), 208)
                _54 = mem[64]
                mem[64] = mem[64] + 64
                mem[_54] = 12
                mem[_54 + 32] = 'sub overflow' << 160
                if stor[_51] <= stor[_52]:
                    totalStake[address(_49)] = stor[_52] - stor[_51]
                    mem[0] = address(_49)
                    mem[32] = sha3(address(arg1), 207) + 3
                    troveStatus[address(arg1)][3][address(_49)].field_0 = 0
                    idx = idx + 1
                    continue 
                _58 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _58 + 68] = mem[idx + _54 + 32]
                    idx = idx + 32
                    continue 
                mem[_58 + 68] = mem[_58 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _58 + -mem[64] + 100
        else:
            mem[0] = sha3(address(arg1), 207)
            mem[128] = address(troveStatus[address(arg1)].field_0)
            idx = 128
            s = 0
            while (32 * troveStatus[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = address(troveStatus[address(arg1)][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            while idx < troveStatus[address(arg1)].field_0:
                require idx < mem[96]
                _123 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 140 len 20]
                _125 = sha3(address(mem[(32 * idx) + 128]), sha3(address(arg1), 207) + 3)
                mem[32] = 208
                _126 = sha3(address(mem[(32 * idx) + 128]), 208)
                _128 = mem[64]
                mem[64] = mem[64] + 64
                mem[_128] = 12
                mem[_128 + 32] = 'sub overflow' << 160
                if stor[_125] <= stor[_126]:
                    totalStake[address(_123)] = stor[_126] - stor[_125]
                    mem[0] = address(_123)
                    mem[32] = sha3(address(arg1), 207) + 3
                    troveStatus[address(arg1)][3][address(_123)].field_0 = 0
                    idx = idx + 1
                    continue 
                _132 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _132 + 68] = mem[idx + _128 + 32]
                    idx = idx + 32
                    continue 
                mem[_132 + 68] = mem[_132 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _132 + -mem[64] + 100
}

function getPendingYUSDDebtReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require uint8(troveStatus[address(arg1)].field_1024) <= 4
    if uint8(troveStatus[address(arg1)].field_1024) == 1:
        mem[0] = arg1
        mem[32] = 207
        mem[64] = (32 * troveStatus[address(arg1)].field_0) + 128
        mem[96] = troveStatus[address(arg1)].field_0
        if not troveStatus[address(arg1)].field_0:
            idx = 0
            while idx < troveStatus[address(arg1)].field_0:
                require idx < mem[96]
                _64 = mem[(32 * idx) + 128]
                _66 = sha3(address(mem[(32 * idx) + 128]), sha3(address(arg1), 213) + 1)
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 212
                _69 = sha3(mem[(32 * idx) + 140 len 20], 212)
                _70 = mem[64]
                mem[64] = mem[64] + 64
                mem[_70] = 12
                mem[_70 + 32] = 'sub overflow' << 160
                if stor[_66] > stor[_69]:
                    _71 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _71 + 68] = mem[idx + _70 + 32]
                        idx = idx + 32
                        continue 
                    mem[_71 + 68] = mem[_71 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _71 + -mem[64] + 100
                if not stor[_69] - stor[_66]:
                    idx = idx + 1
                    continue 
                mem[0] = address(_64)
                mem[32] = sha3(address(arg1), 207) + 3
                require ext_code.size(address(_64))
                staticcall address(_64).decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not troveStatus[address(arg1)][3][address(_64)].field_0:
                    _86 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_86] = 8
                    mem[_86 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    if 10^uint8(ext_call.return_data[0]):
                        if 0 / 10^uint8(ext_call.return_data[0]) < 0:
                            revert with 0, 'add overflow'
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 8
                    mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = 32
                    while idx < 8:
                        mem[idx + mem[64] + 68] = mem[idx + _86 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if (stor[_69] * troveStatus[address(arg1)][3][address(_64)].field_0) - (stor[_66] * troveStatus[address(arg1)][3][address(_64)].field_0) / troveStatus[address(arg1)][3][address(_64)].field_0 != stor[_69] - stor[_66]:
                        revert with 0, 'mul overflow'
                    _87 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_87] = 8
                    mem[_87 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    if 10^uint8(ext_call.return_data[0]):
                        if (stor[_69] * troveStatus[address(arg1)][3][address(_64)].field_0) - (stor[_66] * troveStatus[address(arg1)][3][address(_64)].field_0) / 10^uint8(ext_call.return_data[0]) < 0:
                            revert with 0, 'add overflow'
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 8
                    mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = 32
                    while idx < 8:
                        mem[idx + mem[64] + 68] = mem[idx + _87 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, ''
        else:
            mem[0] = sha3(address(arg1), 207)
            mem[128] = address(troveStatus[address(arg1)].field_0)
            idx = 128
            s = 0
            while (32 * troveStatus[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = address(troveStatus[address(arg1)][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            while idx < troveStatus[address(arg1)].field_0:
                require idx < mem[96]
                _183 = mem[(32 * idx) + 128]
                _185 = sha3(address(mem[(32 * idx) + 128]), sha3(address(arg1), 213) + 1)
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 212
                _188 = sha3(mem[(32 * idx) + 140 len 20], 212)
                _189 = mem[64]
                mem[64] = mem[64] + 64
                mem[_189] = 12
                mem[_189 + 32] = 'sub overflow' << 160
                if stor[_185] > stor[_188]:
                    _190 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _190 + 68] = mem[idx + _189 + 32]
                        idx = idx + 32
                        continue 
                    mem[_190 + 68] = mem[_190 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _190 + -mem[64] + 100
                if not stor[_188] - stor[_185]:
                    idx = idx + 1
                    continue 
                mem[0] = address(_183)
                mem[32] = sha3(address(arg1), 207) + 3
                require ext_code.size(address(_183))
                staticcall address(_183).decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not troveStatus[address(arg1)][3][address(_183)].field_0:
                    _205 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_205] = 8
                    mem[_205 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    if 10^uint8(ext_call.return_data[0]):
                        if 0 / 10^uint8(ext_call.return_data[0]) < 0:
                            revert with 0, 'add overflow'
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 8
                    mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = 32
                    while idx < 8:
                        mem[idx + mem[64] + 68] = mem[idx + _205 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if (stor[_188] * troveStatus[address(arg1)][3][address(_183)].field_0) - (stor[_185] * troveStatus[address(arg1)][3][address(_183)].field_0) / troveStatus[address(arg1)][3][address(_183)].field_0 != stor[_188] - stor[_185]:
                        revert with 0, 'mul overflow'
                    _206 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_206] = 8
                    mem[_206 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    if 10^uint8(ext_call.return_data[0]):
                        if (stor[_188] * troveStatus[address(arg1)][3][address(_183)].field_0) - (stor[_185] * troveStatus[address(arg1)][3][address(_183)].field_0) / 10^uint8(ext_call.return_data[0]) < 0:
                            revert with 0, 'add overflow'
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 8
                    mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = 32
                    while idx < 8:
                        mem[idx + mem[64] + 68] = mem[idx + _206 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, ''
        return 0
    else:
        return 0
}

function sub_45979978(?) payable {
    mem[96] = 12
    mem[128] = 'sub overflow' << 160
    if lastFeeOperationTime > block.timestamp:
        revert with 0, 'sub overflow'
    mem[64] = 224
    mem[160] = 8
    mem[192] = 0x6469762062792030000000000000000000000000000000000000000000000000
    if block.timestamp - lastFeeOperationTime / 60 > 146000 * 3600:
        idx = 146000 * 3600
        s = 999037758833783000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _77 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_77] = 8
                    mem[_77 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _83 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_83] = 8
                    mem[_83 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _81 = mem[64]
                mem[64] = mem[64] + 64
                mem[_81] = 8
                mem[_81 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _85 = mem[64]
                mem[64] = mem[64] + 64
                mem[_85] = 8
                mem[_85 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _76 = mem[64]
                mem[64] = mem[64] + 64
                mem[_76] = 8
                mem[_76 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not s:
                    _119 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_119] = 8
                    mem[_119 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _143 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_143] = 12
                    mem[_143 + 32] = 'sub overflow' << 160
                    if 1 <= idx:
                        _183 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_183] = 8
                        mem[_183 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _153 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _153 + 68] = mem[idx + _143 + 32]
                        idx = idx + 32
                        continue 
                    mem[_153 + 68] = mem[_153 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _153 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _123 = mem[64]
                mem[64] = mem[64] + 64
                mem[_123] = 8
                mem[_123 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _147 = mem[64]
                mem[64] = mem[64] + 64
                mem[_147] = 12
                mem[_147 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _198 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_198] = 8
                    mem[_198 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _165 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _165 + 68] = mem[idx + _147 + 32]
                    idx = idx + 32
                    continue 
                mem[_165 + 68] = mem[_165 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _165 + -mem[64] + 100
            if 10^18 * s / s != 10^18:
                revert with 0, 'mul overflow'
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'add overflow'
            _80 = mem[64]
            mem[64] = mem[64] + 64
            mem[_80] = 8
            mem[_80 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if not s:
                _122 = mem[64]
                mem[64] = mem[64] + 64
                mem[_122] = 8
                mem[_122 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _146 = mem[64]
                mem[64] = mem[64] + 64
                mem[_146] = 12
                mem[_146 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _195 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_195] = 8
                    mem[_195 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = 0
                    continue 
                _162 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _162 + 68] = mem[idx + _146 + 32]
                    idx = idx + 32
                    continue 
                mem[_162 + 68] = mem[_162 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _162 + -mem[64] + 100
            if s * s / s != s:
                revert with 0, 'mul overflow'
            if (s * s) + 5 * 10^17 < s * s:
                revert with 0, 'add overflow'
            _129 = mem[64]
            mem[64] = mem[64] + 64
            mem[_129] = 8
            mem[_129 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            _152 = mem[64]
            mem[64] = mem[64] + 64
            mem[_152] = 12
            mem[_152 + 32] = 'sub overflow' << 160
            if 1 <= idx:
                _207 = mem[64]
                mem[64] = mem[64] + 64
                mem[_207] = 8
                mem[_207 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx - 1 / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            _172 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 12
            idx = 0
            while idx < 12:
                mem[idx + _172 + 68] = mem[idx + _152 + 32]
                idx = idx + 32
                continue 
            mem[_172 + 68] = mem[_172 + 88 len 12]
            revert with memory
              from mem[64]
               len _172 + -mem[64] + 100
    else:
        if not block.timestamp - lastFeeOperationTime / 60:
            if not baseRate:
                return 0
            if 10^18 * baseRate / baseRate != 10^18:
                revert with 0, 'mul overflow'
            return (10^18 * baseRate / 10^18)
        idx = block.timestamp - lastFeeOperationTime / 60
        s = 999037758833783000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _74 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_74] = 8
                    mem[_74 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _82 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_82] = 8
                    mem[_82 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _79 = mem[64]
                mem[64] = mem[64] + 64
                mem[_79] = 8
                mem[_79 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _84 = mem[64]
                mem[64] = mem[64] + 64
                mem[_84] = 8
                mem[_84 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _73 = mem[64]
                mem[64] = mem[64] + 64
                mem[_73] = 8
                mem[_73 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not s:
                    _116 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_116] = 8
                    mem[_116 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _142 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_142] = 12
                    mem[_142 + 32] = 'sub overflow' << 160
                    if 1 <= idx:
                        _178 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_178] = 8
                        mem[_178 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _149 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _149 + 68] = mem[idx + _142 + 32]
                        idx = idx + 32
                        continue 
                    mem[_149 + 68] = mem[_149 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _149 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _121 = mem[64]
                mem[64] = mem[64] + 64
                mem[_121] = 8
                mem[_121 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _145 = mem[64]
                mem[64] = mem[64] + 64
                mem[_145] = 12
                mem[_145 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _190 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_190] = 8
                    mem[_190 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _159 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _159 + 68] = mem[idx + _145 + 32]
                    idx = idx + 32
                    continue 
                mem[_159 + 68] = mem[_159 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _159 + -mem[64] + 100
            if 10^18 * s / s != 10^18:
                revert with 0, 'mul overflow'
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'add overflow'
            _78 = mem[64]
            mem[64] = mem[64] + 64
            mem[_78] = 8
            mem[_78 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if not s:
                _120 = mem[64]
                mem[64] = mem[64] + 64
                mem[_120] = 8
                mem[_120 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _144 = mem[64]
                mem[64] = mem[64] + 64
                mem[_144] = 12
                mem[_144 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _187 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_187] = 8
                    mem[_187 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = 0
                    continue 
                _156 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _156 + 68] = mem[idx + _144 + 32]
                    idx = idx + 32
                    continue 
                mem[_156 + 68] = mem[_156 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _156 + -mem[64] + 100
            if s * s / s != s:
                revert with 0, 'mul overflow'
            if (s * s) + 5 * 10^17 < s * s:
                revert with 0, 'add overflow'
            _126 = mem[64]
            mem[64] = mem[64] + 64
            mem[_126] = 8
            mem[_126 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            _148 = mem[64]
            mem[64] = mem[64] + 64
            mem[_148] = 12
            mem[_148 + 32] = 'sub overflow' << 160
            if 1 <= idx:
                _202 = mem[64]
                mem[64] = mem[64] + 64
                mem[_202] = 8
                mem[_202 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx - 1 / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 12
            idx = 0
            while idx < 12:
                mem[idx + _168 + 68] = mem[idx + _148 + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 88 len 12]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
    if not s:
        if baseRate:
            if 0 / baseRate:
                revert with 0, 'mul overflow'
            else:
                return 0
        else:
            return 0
    if 10^18 * s / s != 10^18:
        revert with 0, 'mul overflow'
    if (10^18 * s) + 5 * 10^17 < 10^18 * s:
        revert with 0, 'add overflow'
    if not baseRate:
        return 0
    if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
        revert with 0, 'mul overflow'
    return ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18)
}

function getBorrowingFeeWithDecay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 12
    mem[128] = 'sub overflow' << 160
    if lastFeeOperationTime > block.timestamp:
        revert with 0, 'sub overflow'
    mem[64] = 224
    mem[160] = 8
    mem[192] = 0x6469762062792030000000000000000000000000000000000000000000000000
    if block.timestamp - lastFeeOperationTime / 60 > 146000 * 3600:
        idx = 146000 * 3600
        s = 999037758833783000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _109 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_109] = 8
                    mem[_109 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _115 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_115] = 8
                    mem[_115 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _113 = mem[64]
                mem[64] = mem[64] + 64
                mem[_113] = 8
                mem[_113 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _117 = mem[64]
                mem[64] = mem[64] + 64
                mem[_117] = 8
                mem[_117 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_108] = 8
                mem[_108 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not s:
                    _151 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_151] = 8
                    mem[_151 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _159 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_159] = 12
                    mem[_159 + 32] = 'sub overflow' << 160
                    if 1 <= idx:
                        _203 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_203] = 8
                        mem[_203 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _173 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _173 + 68] = mem[idx + _159 + 32]
                        idx = idx + 32
                        continue 
                    mem[_173 + 68] = mem[_173 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _173 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _155 = mem[64]
                mem[64] = mem[64] + 64
                mem[_155] = 8
                mem[_155 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_167] = 12
                mem[_167 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _218 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_218] = 8
                    mem[_218 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _185 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _185 + 68] = mem[idx + _167 + 32]
                    idx = idx + 32
                    continue 
                mem[_185 + 68] = mem[_185 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _185 + -mem[64] + 100
            if 10^18 * s / s != 10^18:
                revert with 0, 'mul overflow'
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'add overflow'
            _112 = mem[64]
            mem[64] = mem[64] + 64
            mem[_112] = 8
            mem[_112 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if not s:
                _154 = mem[64]
                mem[64] = mem[64] + 64
                mem[_154] = 8
                mem[_154 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _166 = mem[64]
                mem[64] = mem[64] + 64
                mem[_166] = 12
                mem[_166 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _215 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_215] = 8
                    mem[_215 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = 0
                    continue 
                _182 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _182 + 68] = mem[idx + _166 + 32]
                    idx = idx + 32
                    continue 
                mem[_182 + 68] = mem[_182 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _182 + -mem[64] + 100
            if s * s / s != s:
                revert with 0, 'mul overflow'
            if (s * s) + 5 * 10^17 < s * s:
                revert with 0, 'add overflow'
            _157 = mem[64]
            mem[64] = mem[64] + 64
            mem[_157] = 8
            mem[_157 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            _172 = mem[64]
            mem[64] = mem[64] + 64
            mem[_172] = 12
            mem[_172 + 32] = 'sub overflow' << 160
            if 1 <= idx:
                _227 = mem[64]
                mem[64] = mem[64] + 64
                mem[_227] = 8
                mem[_227 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx - 1 / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            _192 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 12
            idx = 0
            while idx < 12:
                mem[idx + _192 + 68] = mem[idx + _172 + 32]
                idx = idx + 32
                continue 
            mem[_192 + 68] = mem[_192 + 88 len 12]
            revert with memory
              from mem[64]
               len _192 + -mem[64] + 100
    else:
        if not block.timestamp - lastFeeOperationTime / 60:
            if not baseRate:
                if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
                    revert with 0, 'mul overflow'
                return (5 * 10^15 * arg1 / 10^18)
            if 10^18 * baseRate / baseRate != 10^18:
                revert with 0, 'mul overflow'
            if (10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
                revert with 0, 'add overflow'
            if (10^18 * baseRate / 10^18) + 5 * 10^15 >= 5 * 10^16:
                if 5 * 10^16 * arg1 / 5 * 10^16 != arg1:
                    revert with 0, 'mul overflow'
                return (5 * 10^16 * arg1 / 10^18)
            if not (10^18 * baseRate / 10^18) + 5 * 10^15:
                return 0
            if (5 * 10^15 * arg1) + (10^18 * baseRate / 10^18 * arg1) / (10^18 * baseRate / 10^18) + 5 * 10^15 != arg1:
                revert with 0, 'mul overflow'
            return ((5 * 10^15 * arg1) + (10^18 * baseRate / 10^18 * arg1) / 10^18)
        idx = block.timestamp - lastFeeOperationTime / 60
        s = 999037758833783000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _106 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_106] = 8
                    mem[_106 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _114 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_114] = 8
                    mem[_114 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _111 = mem[64]
                mem[64] = mem[64] + 64
                mem[_111] = 8
                mem[_111 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _116 = mem[64]
                mem[64] = mem[64] + 64
                mem[_116] = 8
                mem[_116 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _105 = mem[64]
                mem[64] = mem[64] + 64
                mem[_105] = 8
                mem[_105 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not s:
                    _148 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_148] = 8
                    mem[_148 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _158 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_158] = 12
                    mem[_158 + 32] = 'sub overflow' << 160
                    if 1 <= idx:
                        _198 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_198] = 8
                        mem[_198 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _169 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _169 + 68] = mem[idx + _158 + 32]
                        idx = idx + 32
                        continue 
                    mem[_169 + 68] = mem[_169 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _169 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _153 = mem[64]
                mem[64] = mem[64] + 64
                mem[_153] = 8
                mem[_153 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _163 = mem[64]
                mem[64] = mem[64] + 64
                mem[_163] = 12
                mem[_163 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _210 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_210] = 8
                    mem[_210 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _179 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _179 + 68] = mem[idx + _163 + 32]
                    idx = idx + 32
                    continue 
                mem[_179 + 68] = mem[_179 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _179 + -mem[64] + 100
            if 10^18 * s / s != 10^18:
                revert with 0, 'mul overflow'
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'add overflow'
            _110 = mem[64]
            mem[64] = mem[64] + 64
            mem[_110] = 8
            mem[_110 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if not s:
                _152 = mem[64]
                mem[64] = mem[64] + 64
                mem[_152] = 8
                mem[_152 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _162 = mem[64]
                mem[64] = mem[64] + 64
                mem[_162] = 12
                mem[_162 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _207 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_207] = 8
                    mem[_207 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = 0
                    continue 
                _176 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _176 + 68] = mem[idx + _162 + 32]
                    idx = idx + 32
                    continue 
                mem[_176 + 68] = mem[_176 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _176 + -mem[64] + 100
            if s * s / s != s:
                revert with 0, 'mul overflow'
            if (s * s) + 5 * 10^17 < s * s:
                revert with 0, 'add overflow'
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 8
            mem[_156 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            _168 = mem[64]
            mem[64] = mem[64] + 64
            mem[_168] = 12
            mem[_168 + 32] = 'sub overflow' << 160
            if 1 <= idx:
                _222 = mem[64]
                mem[64] = mem[64] + 64
                mem[_222] = 8
                mem[_222 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx - 1 / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            _188 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 12
            idx = 0
            while idx < 12:
                mem[idx + _188 + 68] = mem[idx + _168 + 32]
                idx = idx + 32
                continue 
            mem[_188 + 68] = mem[_188 + 88 len 12]
            revert with memory
              from mem[64]
               len _188 + -mem[64] + 100
    if not s:
        if baseRate:
            if 0 / baseRate:
                revert with 0, 'mul overflow'
        if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
            revert with 0, 'mul overflow'
        return (5 * 10^15 * arg1 / 10^18)
    if 10^18 * s / s != 10^18:
        revert with 0, 'mul overflow'
    if (10^18 * s) + 5 * 10^17 < 10^18 * s:
        revert with 0, 'add overflow'
    if not baseRate:
        if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
            revert with 0, 'mul overflow'
        return (5 * 10^15 * arg1 / 10^18)
    if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
        revert with 0, 'mul overflow'
    if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
        revert with 0, 'add overflow'
    if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 >= 5 * 10^16:
        if 5 * 10^16 * arg1 / 5 * 10^16 != arg1:
            revert with 0, 'mul overflow'
        return (5 * 10^16 * arg1 / 10^18)
    if not ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15:
        return 0
    if (5 * 10^15 * arg1) + ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18 * arg1) / ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 != arg1:
        revert with 0, 'mul overflow'
    return ((5 * 10^15 * arg1) + ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18 * arg1) / 10^18)
}

function getRedemptionRateWithDecay() payable {
    mem[96] = 12
    mem[128] = 'sub overflow' << 160
    if lastFeeOperationTime > block.timestamp:
        revert with 0, 'sub overflow'
    mem[64] = 224
    mem[160] = 8
    mem[192] = 0x6469762062792030000000000000000000000000000000000000000000000000
    if block.timestamp - lastFeeOperationTime / 60 > 146000 * 3600:
        idx = 146000 * 3600
        s = 999037758833783000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _85 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_85] = 8
                    mem[_85 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _91 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_91] = 8
                    mem[_91 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _89 = mem[64]
                mem[64] = mem[64] + 64
                mem[_89] = 8
                mem[_89 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _93 = mem[64]
                mem[64] = mem[64] + 64
                mem[_93] = 8
                mem[_93 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _84 = mem[64]
                mem[64] = mem[64] + 64
                mem[_84] = 8
                mem[_84 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not s:
                    _127 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_127] = 8
                    mem[_127 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _135 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_135] = 12
                    mem[_135 + 32] = 'sub overflow' << 160
                    if 1 <= idx:
                        _183 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_183] = 8
                        mem[_183 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _149 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _149 + 68] = mem[idx + _135 + 32]
                        idx = idx + 32
                        continue 
                    mem[_149 + 68] = mem[_149 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _149 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_131] = 8
                mem[_131 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _143 = mem[64]
                mem[64] = mem[64] + 64
                mem[_143] = 12
                mem[_143 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _206 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_206] = 8
                    mem[_206 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _161 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _161 + 68] = mem[idx + _143 + 32]
                    idx = idx + 32
                    continue 
                mem[_161 + 68] = mem[_161 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _161 + -mem[64] + 100
            if 10^18 * s / s != 10^18:
                revert with 0, 'mul overflow'
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'add overflow'
            _88 = mem[64]
            mem[64] = mem[64] + 64
            mem[_88] = 8
            mem[_88 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if not s:
                _130 = mem[64]
                mem[64] = mem[64] + 64
                mem[_130] = 8
                mem[_130 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _142 = mem[64]
                mem[64] = mem[64] + 64
                mem[_142] = 12
                mem[_142 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _203 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_203] = 8
                    mem[_203 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = 0
                    continue 
                _158 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _158 + 68] = mem[idx + _142 + 32]
                    idx = idx + 32
                    continue 
                mem[_158 + 68] = mem[_158 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _158 + -mem[64] + 100
            if s * s / s != s:
                revert with 0, 'mul overflow'
            if (s * s) + 5 * 10^17 < s * s:
                revert with 0, 'add overflow'
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = 8
            mem[_133 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            _148 = mem[64]
            mem[64] = mem[64] + 64
            mem[_148] = 12
            mem[_148 + 32] = 'sub overflow' << 160
            if 1 <= idx:
                _219 = mem[64]
                mem[64] = mem[64] + 64
                mem[_219] = 8
                mem[_219 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx - 1 / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 12
            idx = 0
            while idx < 12:
                mem[idx + _168 + 68] = mem[idx + _148 + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 88 len 12]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        if not s:
            if baseRate:
                if 0 / baseRate:
                    revert with 0, 'mul overflow'
            return 5 * 10^15
        if 10^18 * s / s != 10^18:
            revert with 0, 'mul overflow'
        if (10^18 * s) + 5 * 10^17 < 10^18 * s:
            revert with 0, 'add overflow'
        if not baseRate:
            return 5 * 10^15
        if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
            revert with 0, 'mul overflow'
        if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
            revert with 0, 'add overflow'
        if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 10^18:
            return (((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15)
    else:
        if not block.timestamp - lastFeeOperationTime / 60:
            if not baseRate:
                return 5 * 10^15
            if 10^18 * baseRate / baseRate != 10^18:
                revert with 0, 'mul overflow'
            if (10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
                revert with 0, 'add overflow'
            if (10^18 * baseRate / 10^18) + 5 * 10^15 < 10^18:
                return ((10^18 * baseRate / 10^18) + 5 * 10^15)
        else:
            idx = block.timestamp - lastFeeOperationTime / 60
            s = 999037758833783000
            while idx > 1:
                if not bool(idx):
                    if not s:
                        _82 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_82] = 8
                        mem[_82 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        _90 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_90] = 8
                        mem[_90 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx / 2
                        s = 0
                        continue 
                    if s * s / s != s:
                        revert with 0, 'mul overflow'
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'add overflow'
                    _87 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_87] = 8
                    mem[_87 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _92 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_92] = 8
                    mem[_92 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                if not s:
                    _81 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_81] = 8
                    mem[_81 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    if not s:
                        _124 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_124] = 8
                        mem[_124 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        _134 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_134] = 12
                        mem[_134 + 32] = 'sub overflow' << 160
                        if 1 <= idx:
                            _176 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_176] = 8
                            mem[_176 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            idx = idx - 1 / 2
                            s = 0
                            continue 
                        _145 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 12
                        idx = 0
                        while idx < 12:
                            mem[idx + _145 + 68] = mem[idx + _134 + 32]
                            idx = idx + 32
                            continue 
                        mem[_145 + 68] = mem[_145 + 88 len 12]
                        revert with memory
                          from mem[64]
                           len _145 + -mem[64] + 100
                    if s * s / s != s:
                        revert with 0, 'mul overflow'
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'add overflow'
                    _129 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_129] = 8
                    mem[_129 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _139 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_139] = 12
                    mem[_139 + 32] = 'sub overflow' << 160
                    if 1 <= idx:
                        _194 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_194] = 8
                        mem[_194 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    _155 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _155 + 68] = mem[idx + _139 + 32]
                        idx = idx + 32
                        continue 
                    mem[_155 + 68] = mem[_155 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _155 + -mem[64] + 100
                if 10^18 * s / s != 10^18:
                    revert with 0, 'mul overflow'
                if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                    revert with 0, 'add overflow'
                _86 = mem[64]
                mem[64] = mem[64] + 64
                mem[_86] = 8
                mem[_86 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not s:
                    _128 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_128] = 8
                    mem[_128 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _138 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_138] = 12
                    mem[_138 + 32] = 'sub overflow' << 160
                    if 1 <= idx:
                        _191 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_191] = 8
                        mem[_191 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _152 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _152 + 68] = mem[idx + _138 + 32]
                        idx = idx + 32
                        continue 
                    mem[_152 + 68] = mem[_152 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _152 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _132 = mem[64]
                mem[64] = mem[64] + 64
                mem[_132] = 8
                mem[_132 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _144 = mem[64]
                mem[64] = mem[64] + 64
                mem[_144] = 12
                mem[_144 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _212 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_212] = 8
                    mem[_212 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _164 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _164 + 68] = mem[idx + _144 + 32]
                    idx = idx + 32
                    continue 
                mem[_164 + 68] = mem[_164 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _164 + -mem[64] + 100
            if not s:
                if baseRate:
                    if 0 / baseRate:
                        revert with 0, 'mul overflow'
                return 5 * 10^15
            if 10^18 * s / s != 10^18:
                revert with 0, 'mul overflow'
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'add overflow'
            if not baseRate:
                return 5 * 10^15
            if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
                revert with 0, 'mul overflow'
            if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
                revert with 0, 'add overflow'
            if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 10^18:
                return (((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15)
    return 10^18
}

function getBorrowingRateWithDecay() payable {
    mem[96] = 12
    mem[128] = 'sub overflow' << 160
    if lastFeeOperationTime > block.timestamp:
        revert with 0, 'sub overflow'
    mem[64] = 224
    mem[160] = 8
    mem[192] = 0x6469762062792030000000000000000000000000000000000000000000000000
    if block.timestamp - lastFeeOperationTime / 60 > 146000 * 3600:
        idx = 146000 * 3600
        s = 999037758833783000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _85 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_85] = 8
                    mem[_85 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _91 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_91] = 8
                    mem[_91 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _89 = mem[64]
                mem[64] = mem[64] + 64
                mem[_89] = 8
                mem[_89 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _93 = mem[64]
                mem[64] = mem[64] + 64
                mem[_93] = 8
                mem[_93 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _84 = mem[64]
                mem[64] = mem[64] + 64
                mem[_84] = 8
                mem[_84 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not s:
                    _127 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_127] = 8
                    mem[_127 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _135 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_135] = 12
                    mem[_135 + 32] = 'sub overflow' << 160
                    if 1 <= idx:
                        _183 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_183] = 8
                        mem[_183 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _149 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _149 + 68] = mem[idx + _135 + 32]
                        idx = idx + 32
                        continue 
                    mem[_149 + 68] = mem[_149 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _149 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_131] = 8
                mem[_131 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _143 = mem[64]
                mem[64] = mem[64] + 64
                mem[_143] = 12
                mem[_143 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _206 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_206] = 8
                    mem[_206 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _161 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _161 + 68] = mem[idx + _143 + 32]
                    idx = idx + 32
                    continue 
                mem[_161 + 68] = mem[_161 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _161 + -mem[64] + 100
            if 10^18 * s / s != 10^18:
                revert with 0, 'mul overflow'
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'add overflow'
            _88 = mem[64]
            mem[64] = mem[64] + 64
            mem[_88] = 8
            mem[_88 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if not s:
                _130 = mem[64]
                mem[64] = mem[64] + 64
                mem[_130] = 8
                mem[_130 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _142 = mem[64]
                mem[64] = mem[64] + 64
                mem[_142] = 12
                mem[_142 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _203 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_203] = 8
                    mem[_203 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = 0
                    continue 
                _158 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _158 + 68] = mem[idx + _142 + 32]
                    idx = idx + 32
                    continue 
                mem[_158 + 68] = mem[_158 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _158 + -mem[64] + 100
            if s * s / s != s:
                revert with 0, 'mul overflow'
            if (s * s) + 5 * 10^17 < s * s:
                revert with 0, 'add overflow'
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = 8
            mem[_133 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            _148 = mem[64]
            mem[64] = mem[64] + 64
            mem[_148] = 12
            mem[_148 + 32] = 'sub overflow' << 160
            if 1 <= idx:
                _219 = mem[64]
                mem[64] = mem[64] + 64
                mem[_219] = 8
                mem[_219 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx - 1 / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 12
            idx = 0
            while idx < 12:
                mem[idx + _168 + 68] = mem[idx + _148 + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 88 len 12]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        if not s:
            if baseRate:
                if 0 / baseRate:
                    revert with 0, 'mul overflow'
            return 5 * 10^15
        if 10^18 * s / s != 10^18:
            revert with 0, 'mul overflow'
        if (10^18 * s) + 5 * 10^17 < 10^18 * s:
            revert with 0, 'add overflow'
        if not baseRate:
            return 5 * 10^15
        if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
            revert with 0, 'mul overflow'
        if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
            revert with 0, 'add overflow'
        if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^16:
            return (((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15)
    else:
        if not block.timestamp - lastFeeOperationTime / 60:
            if not baseRate:
                return 5 * 10^15
            if 10^18 * baseRate / baseRate != 10^18:
                revert with 0, 'mul overflow'
            if (10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
                revert with 0, 'add overflow'
            if (10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^16:
                return ((10^18 * baseRate / 10^18) + 5 * 10^15)
        else:
            idx = block.timestamp - lastFeeOperationTime / 60
            s = 999037758833783000
            while idx > 1:
                if not bool(idx):
                    if not s:
                        _82 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_82] = 8
                        mem[_82 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        _90 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_90] = 8
                        mem[_90 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx / 2
                        s = 0
                        continue 
                    if s * s / s != s:
                        revert with 0, 'mul overflow'
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'add overflow'
                    _87 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_87] = 8
                    mem[_87 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _92 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_92] = 8
                    mem[_92 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                if not s:
                    _81 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_81] = 8
                    mem[_81 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    if not s:
                        _124 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_124] = 8
                        mem[_124 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        _134 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_134] = 12
                        mem[_134 + 32] = 'sub overflow' << 160
                        if 1 <= idx:
                            _176 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_176] = 8
                            mem[_176 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            idx = idx - 1 / 2
                            s = 0
                            continue 
                        _145 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 12
                        idx = 0
                        while idx < 12:
                            mem[idx + _145 + 68] = mem[idx + _134 + 32]
                            idx = idx + 32
                            continue 
                        mem[_145 + 68] = mem[_145 + 88 len 12]
                        revert with memory
                          from mem[64]
                           len _145 + -mem[64] + 100
                    if s * s / s != s:
                        revert with 0, 'mul overflow'
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'add overflow'
                    _129 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_129] = 8
                    mem[_129 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _139 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_139] = 12
                    mem[_139 + 32] = 'sub overflow' << 160
                    if 1 <= idx:
                        _194 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_194] = 8
                        mem[_194 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    _155 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _155 + 68] = mem[idx + _139 + 32]
                        idx = idx + 32
                        continue 
                    mem[_155 + 68] = mem[_155 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _155 + -mem[64] + 100
                if 10^18 * s / s != 10^18:
                    revert with 0, 'mul overflow'
                if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                    revert with 0, 'add overflow'
                _86 = mem[64]
                mem[64] = mem[64] + 64
                mem[_86] = 8
                mem[_86 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not s:
                    _128 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_128] = 8
                    mem[_128 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _138 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_138] = 12
                    mem[_138 + 32] = 'sub overflow' << 160
                    if 1 <= idx:
                        _191 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_191] = 8
                        mem[_191 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _152 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _152 + 68] = mem[idx + _138 + 32]
                        idx = idx + 32
                        continue 
                    mem[_152 + 68] = mem[_152 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _152 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _132 = mem[64]
                mem[64] = mem[64] + 64
                mem[_132] = 8
                mem[_132 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _144 = mem[64]
                mem[64] = mem[64] + 64
                mem[_144] = 12
                mem[_144 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _212 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_212] = 8
                    mem[_212 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _164 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _164 + 68] = mem[idx + _144 + 32]
                    idx = idx + 32
                    continue 
                mem[_164 + 68] = mem[_164 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _164 + -mem[64] + 100
            if not s:
                if baseRate:
                    if 0 / baseRate:
                        revert with 0, 'mul overflow'
                return 5 * 10^15
            if 10^18 * s / s != 10^18:
                revert with 0, 'mul overflow'
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'add overflow'
            if not baseRate:
                return 5 * 10^15
            if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
                revert with 0, 'mul overflow'
            if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
                revert with 0, 'add overflow'
            if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^16:
                return (((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15)
    return 5 * 10^16
}

function getRedemptionFeeWithDecay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 12
    mem[128] = 'sub overflow' << 160
    if lastFeeOperationTime > block.timestamp:
        revert with 0, 'sub overflow'
    mem[64] = 224
    mem[160] = 8
    mem[192] = 0x6469762062792030000000000000000000000000000000000000000000000000
    if block.timestamp - lastFeeOperationTime / 60 > 146000 * 3600:
        idx = 146000 * 3600
        s = 999037758833783000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _125 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_125] = 8
                    mem[_125 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _131 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_131] = 8
                    mem[_131 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _129 = mem[64]
                mem[64] = mem[64] + 64
                mem[_129] = 8
                mem[_129 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_133] = 8
                mem[_133 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _124 = mem[64]
                mem[64] = mem[64] + 64
                mem[_124] = 8
                mem[_124 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not s:
                    _167 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_167] = 8
                    mem[_167 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _175 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_175] = 12
                    mem[_175 + 32] = 'sub overflow' << 160
                    if 1 <= idx:
                        _219 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_219] = 8
                        mem[_219 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _189 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _189 + 68] = mem[idx + _175 + 32]
                        idx = idx + 32
                        continue 
                    mem[_189 + 68] = mem[_189 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _189 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_171] = 8
                mem[_171 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _183 = mem[64]
                mem[64] = mem[64] + 64
                mem[_183] = 12
                mem[_183 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_234] = 8
                    mem[_234 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _201 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _201 + 68] = mem[idx + _183 + 32]
                    idx = idx + 32
                    continue 
                mem[_201 + 68] = mem[_201 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _201 + -mem[64] + 100
            if 10^18 * s / s != 10^18:
                revert with 0, 'mul overflow'
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'add overflow'
            _128 = mem[64]
            mem[64] = mem[64] + 64
            mem[_128] = 8
            mem[_128 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if not s:
                _170 = mem[64]
                mem[64] = mem[64] + 64
                mem[_170] = 8
                mem[_170 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _182 = mem[64]
                mem[64] = mem[64] + 64
                mem[_182] = 12
                mem[_182 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _231 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_231] = 8
                    mem[_231 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = 0
                    continue 
                _198 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _198 + 68] = mem[idx + _182 + 32]
                    idx = idx + 32
                    continue 
                mem[_198 + 68] = mem[_198 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _198 + -mem[64] + 100
            if s * s / s != s:
                revert with 0, 'mul overflow'
            if (s * s) + 5 * 10^17 < s * s:
                revert with 0, 'add overflow'
            _173 = mem[64]
            mem[64] = mem[64] + 64
            mem[_173] = 8
            mem[_173 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            _188 = mem[64]
            mem[64] = mem[64] + 64
            mem[_188] = 12
            mem[_188 + 32] = 'sub overflow' << 160
            if 1 <= idx:
                _243 = mem[64]
                mem[64] = mem[64] + 64
                mem[_243] = 8
                mem[_243 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx - 1 / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            _208 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 12
            idx = 0
            while idx < 12:
                mem[idx + _208 + 68] = mem[idx + _188 + 32]
                idx = idx + 32
                continue 
            mem[_208 + 68] = mem[_208 + 88 len 12]
            revert with memory
              from mem[64]
               len _208 + -mem[64] + 100
    else:
        if not block.timestamp - lastFeeOperationTime / 60:
            if not baseRate:
                if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
                    revert with 0, 'mul overflow'
                if 5 * 10^15 * arg1 / 10^18 >= arg1:
                    revert with 0, 'TM:RedempFee>colls'
                return (5 * 10^15 * arg1 / 10^18)
            if 10^18 * baseRate / baseRate != 10^18:
                revert with 0, 'mul overflow'
            if (10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
                revert with 0, 'add overflow'
            if (10^18 * baseRate / 10^18) + 5 * 10^15 >= 10^18:
                if 10^18 * arg1 / 10^18 != arg1:
                    revert with 0, 'mul overflow'
                if 10^18 * arg1 / 10^18 >= arg1:
                    revert with 0, 'TM:RedempFee>colls'
                return (10^18 * arg1 / 10^18)
            if not (10^18 * baseRate / 10^18) + 5 * 10^15:
                if 0 >= arg1:
                    revert with 0, 'TM:RedempFee>colls'
                else:
                    return 0
            if (5 * 10^15 * arg1) + (10^18 * baseRate / 10^18 * arg1) / (10^18 * baseRate / 10^18) + 5 * 10^15 != arg1:
                revert with 0, 'mul overflow'
            if (5 * 10^15 * arg1) + (10^18 * baseRate / 10^18 * arg1) / 10^18 >= arg1:
                revert with 0, 'TM:RedempFee>colls'
            return ((5 * 10^15 * arg1) + (10^18 * baseRate / 10^18 * arg1) / 10^18)
        idx = block.timestamp - lastFeeOperationTime / 60
        s = 999037758833783000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _122 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_122] = 8
                    mem[_122 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _130 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_130] = 8
                    mem[_130 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _127 = mem[64]
                mem[64] = mem[64] + 64
                mem[_127] = 8
                mem[_127 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _132 = mem[64]
                mem[64] = mem[64] + 64
                mem[_132] = 8
                mem[_132 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _121 = mem[64]
                mem[64] = mem[64] + 64
                mem[_121] = 8
                mem[_121 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not s:
                    _164 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_164] = 8
                    mem[_164 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _174 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_174] = 12
                    mem[_174 + 32] = 'sub overflow' << 160
                    if 1 <= idx:
                        _214 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_214] = 8
                        mem[_214 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _185 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _185 + 68] = mem[idx + _174 + 32]
                        idx = idx + 32
                        continue 
                    mem[_185 + 68] = mem[_185 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _185 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _169 = mem[64]
                mem[64] = mem[64] + 64
                mem[_169] = 8
                mem[_169 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _179 = mem[64]
                mem[64] = mem[64] + 64
                mem[_179] = 12
                mem[_179 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _226 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_226] = 8
                    mem[_226 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _195 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _195 + 68] = mem[idx + _179 + 32]
                    idx = idx + 32
                    continue 
                mem[_195 + 68] = mem[_195 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _195 + -mem[64] + 100
            if 10^18 * s / s != 10^18:
                revert with 0, 'mul overflow'
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'add overflow'
            _126 = mem[64]
            mem[64] = mem[64] + 64
            mem[_126] = 8
            mem[_126 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if not s:
                _168 = mem[64]
                mem[64] = mem[64] + 64
                mem[_168] = 8
                mem[_168 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _178 = mem[64]
                mem[64] = mem[64] + 64
                mem[_178] = 12
                mem[_178 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _223 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_223] = 8
                    mem[_223 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = 0
                    continue 
                _192 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _192 + 68] = mem[idx + _178 + 32]
                    idx = idx + 32
                    continue 
                mem[_192 + 68] = mem[_192 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _192 + -mem[64] + 100
            if s * s / s != s:
                revert with 0, 'mul overflow'
            if (s * s) + 5 * 10^17 < s * s:
                revert with 0, 'add overflow'
            _172 = mem[64]
            mem[64] = mem[64] + 64
            mem[_172] = 8
            mem[_172 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            _184 = mem[64]
            mem[64] = mem[64] + 64
            mem[_184] = 12
            mem[_184 + 32] = 'sub overflow' << 160
            if 1 <= idx:
                _238 = mem[64]
                mem[64] = mem[64] + 64
                mem[_238] = 8
                mem[_238 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx - 1 / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            _204 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 12
            idx = 0
            while idx < 12:
                mem[idx + _204 + 68] = mem[idx + _184 + 32]
                idx = idx + 32
                continue 
            mem[_204 + 68] = mem[_204 + 88 len 12]
            revert with memory
              from mem[64]
               len _204 + -mem[64] + 100
    if not s:
        if baseRate:
            if 0 / baseRate:
                revert with 0, 'mul overflow'
        if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
            revert with 0, 'mul overflow'
        if 5 * 10^15 * arg1 / 10^18 >= arg1:
            revert with 0, 'TM:RedempFee>colls'
        return (5 * 10^15 * arg1 / 10^18)
    if 10^18 * s / s != 10^18:
        revert with 0, 'mul overflow'
    if (10^18 * s) + 5 * 10^17 < 10^18 * s:
        revert with 0, 'add overflow'
    if not baseRate:
        if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
            revert with 0, 'mul overflow'
        if 5 * 10^15 * arg1 / 10^18 >= arg1:
            revert with 0, 'TM:RedempFee>colls'
        return (5 * 10^15 * arg1 / 10^18)
    if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
        revert with 0, 'mul overflow'
    if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
        revert with 0, 'add overflow'
    if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 >= 10^18:
        if 10^18 * arg1 / 10^18 != arg1:
            revert with 0, 'mul overflow'
        if 10^18 * arg1 / 10^18 >= arg1:
            revert with 0, 'TM:RedempFee>colls'
        return (10^18 * arg1 / 10^18)
    if not ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15:
        if 0 >= arg1:
            revert with 0, 'TM:RedempFee>colls'
        else:
            return 0
    if (5 * 10^15 * arg1) + ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18 * arg1) / ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 != arg1:
        revert with 0, 'mul overflow'
    if (5 * 10^15 * arg1) + ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18 * arg1) / 10^18 >= arg1:
        revert with 0, 'TM:RedempFee>colls'
    return ((5 * 10^15 * arg1) + ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18 * arg1) / 10^18)
}

function sub_de162391(?) payable {
    require calldata.size - 4 >= 32
    if stor200 != msg.sender:
        revert with 0, 'WFC'
    mem[96] = 12
    mem[128] = 'sub overflow' << 160
    if lastFeeOperationTime > block.timestamp:
        revert with 0, 'sub overflow'
    mem[64] = 224
    mem[160] = 8
    mem[192] = 0x6469762062792030000000000000000000000000000000000000000000000000
    if block.timestamp - lastFeeOperationTime / 60 > 146000 * 3600:
        idx = 146000 * 3600
        s = 999037758833783000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _251 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_251] = 8
                    mem[_251 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _257 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_257] = 8
                    mem[_257 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _255 = mem[64]
                mem[64] = mem[64] + 64
                mem[_255] = 8
                mem[_255 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _259 = mem[64]
                mem[64] = mem[64] + 64
                mem[_259] = 8
                mem[_259 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _250 = mem[64]
                mem[64] = mem[64] + 64
                mem[_250] = 8
                mem[_250 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not s:
                    _293 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_293] = 8
                    mem[_293 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _335 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_335] = 12
                    mem[_335 + 32] = 'sub overflow' << 160
                    if 1 <= idx:
                        _439 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_439] = 8
                        mem[_439 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _365 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _365 + 68] = mem[idx + _335 + 32]
                        idx = idx + 32
                        continue 
                    mem[_365 + 68] = mem[_365 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _365 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _297 = mem[64]
                mem[64] = mem[64] + 64
                mem[_297] = 8
                mem[_297 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_351] = 12
                mem[_351 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _456 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_456] = 8
                    mem[_456 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _389 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _389 + 68] = mem[idx + _351 + 32]
                    idx = idx + 32
                    continue 
                mem[_389 + 68] = mem[_389 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _389 + -mem[64] + 100
            if 10^18 * s / s != 10^18:
                revert with 0, 'mul overflow'
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'add overflow'
            _254 = mem[64]
            mem[64] = mem[64] + 64
            mem[_254] = 8
            mem[_254 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if not s:
                _296 = mem[64]
                mem[64] = mem[64] + 64
                mem[_296] = 8
                mem[_296 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _350 = mem[64]
                mem[64] = mem[64] + 64
                mem[_350] = 12
                mem[_350 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _453 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_453] = 8
                    mem[_453 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = 0
                    continue 
                _386 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _386 + 68] = mem[idx + _350 + 32]
                    idx = idx + 32
                    continue 
                mem[_386 + 68] = mem[_386 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _386 + -mem[64] + 100
            if s * s / s != s:
                revert with 0, 'mul overflow'
            if (s * s) + 5 * 10^17 < s * s:
                revert with 0, 'add overflow'
            _299 = mem[64]
            mem[64] = mem[64] + 64
            mem[_299] = 8
            mem[_299 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            _364 = mem[64]
            mem[64] = mem[64] + 64
            mem[_364] = 12
            mem[_364 + 32] = 'sub overflow' << 160
            if 1 <= idx:
                _465 = mem[64]
                mem[64] = mem[64] + 64
                mem[_465] = 8
                mem[_465 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = idx - 1 / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            _416 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 12
            idx = 0
            while idx < 12:
                mem[idx + _416 + 68] = mem[idx + _364 + 32]
                idx = idx + 32
                continue 
            mem[_416 + 68] = mem[_416 + 88 len 12]
            revert with memory
              from mem[64]
               len _416 + -mem[64] + 100
        if not s:
            if baseRate:
                if 0 / baseRate:
                    revert with 0, 'mul overflow'
            baseRate = 0
            emit BaseRateUpdated(0);
        else:
            if 10^18 * s / s != 10^18:
                revert with 0, 'mul overflow'
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'add overflow'
            if not baseRate:
                baseRate = 0
                emit BaseRateUpdated(0);
            else:
                if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
                    revert with 0, 'mul overflow'
                if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18 > 10^18:
                    revert with 0, 'TM:BR>1e18'
                baseRate = (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18
                emit BaseRateUpdated(((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18));
    else:
        if not block.timestamp - lastFeeOperationTime / 60:
            if not baseRate:
                baseRate = 0
                emit BaseRateUpdated(0);
            else:
                if 10^18 * baseRate / baseRate != 10^18:
                    revert with 0, 'mul overflow'
                if 10^18 * baseRate / 10^18 > 10^18:
                    revert with 0, 'TM:BR>1e18'
                baseRate = 10^18 * baseRate / 10^18
                emit BaseRateUpdated((10^18 * baseRate / 10^18));
        else:
            idx = block.timestamp - lastFeeOperationTime / 60
            s = 999037758833783000
            while idx > 1:
                if not bool(idx):
                    if not s:
                        _248 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_248] = 8
                        mem[_248 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        _256 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_256] = 8
                        mem[_256 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx / 2
                        s = 0
                        continue 
                    if s * s / s != s:
                        revert with 0, 'mul overflow'
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'add overflow'
                    _253 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_253] = 8
                    mem[_253 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _258 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_258] = 8
                    mem[_258 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                if not s:
                    _247 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_247] = 8
                    mem[_247 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    if not s:
                        _290 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_290] = 8
                        mem[_290 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        _330 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_330] = 12
                        mem[_330 + 32] = 'sub overflow' << 160
                        if 1 <= idx:
                            _428 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_428] = 8
                            mem[_428 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            idx = idx - 1 / 2
                            s = 0
                            continue 
                        _357 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 12
                        idx = 0
                        while idx < 12:
                            mem[idx + _357 + 68] = mem[idx + _330 + 32]
                            idx = idx + 32
                            continue 
                        mem[_357 + 68] = mem[_357 + 88 len 12]
                        revert with memory
                          from mem[64]
                           len _357 + -mem[64] + 100
                    if s * s / s != s:
                        revert with 0, 'mul overflow'
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'add overflow'
                    _295 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_295] = 8
                    mem[_295 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _343 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_343] = 12
                    mem[_343 + 32] = 'sub overflow' << 160
                    if 1 <= idx:
                        _447 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_447] = 8
                        mem[_447 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    _377 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _377 + 68] = mem[idx + _343 + 32]
                        idx = idx + 32
                        continue 
                    mem[_377 + 68] = mem[_377 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _377 + -mem[64] + 100
                if 10^18 * s / s != 10^18:
                    revert with 0, 'mul overflow'
                if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                    revert with 0, 'add overflow'
                _252 = mem[64]
                mem[64] = mem[64] + 64
                mem[_252] = 8
                mem[_252 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not s:
                    _294 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_294] = 8
                    mem[_294 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    _342 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_342] = 12
                    mem[_342 + 32] = 'sub overflow' << 160
                    if 1 <= idx:
                        _444 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_444] = 8
                        mem[_444 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _374 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _374 + 68] = mem[idx + _342 + 32]
                        idx = idx + 32
                        continue 
                    mem[_374 + 68] = mem[_374 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _374 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _298 = mem[64]
                mem[64] = mem[64] + 64
                mem[_298] = 8
                mem[_298 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                _356 = mem[64]
                mem[64] = mem[64] + 64
                mem[_356] = 12
                mem[_356 + 32] = 'sub overflow' << 160
                if 1 <= idx:
                    _460 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_460] = 8
                    mem[_460 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _402 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _402 + 68] = mem[idx + _356 + 32]
                    idx = idx + 32
                    continue 
                mem[_402 + 68] = mem[_402 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _402 + -mem[64] + 100
            if not s:
                if baseRate:
                    if 0 / baseRate:
                        revert with 0, 'mul overflow'
                baseRate = 0
                emit BaseRateUpdated(0);
            else:
                if 10^18 * s / s != 10^18:
                    revert with 0, 'mul overflow'
                if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                    revert with 0, 'add overflow'
                if not baseRate:
                    baseRate = 0
                    emit BaseRateUpdated(0);
                else:
                    if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
                        revert with 0, 'mul overflow'
                    if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18 > 10^18:
                        revert with 0, 'TM:BR>1e18'
                    baseRate = (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18
                    emit BaseRateUpdated(((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18));
    if lastFeeOperationTime > block.timestamp:
        revert with 0, 'sub overflow'
    if block.timestamp - lastFeeOperationTime >= 60:
        lastFeeOperationTime = block.timestamp
        emit LastFeeOpTimeUpdated(block.timestamp);
    if baseRate + 5 * 10^15 < 5 * 10^15:
        revert with 0, 'add overflow'
    if baseRate + 5 * 10^15 >= 5 * 10^16:
        if 5 * 10^16 * arg1 / 5 * 10^16 != arg1:
            revert with 0, 'mul overflow'
        return (5 * 10^16 * arg1 / 10^18)
    if not baseRate + 5 * 10^15:
        return 0
    if (5 * 10^15 * arg1) + (baseRate * arg1) / baseRate + 5 * 10^15 != arg1:
        revert with 0, 'mul overflow'
    return ((5 * 10^15 * arg1) + (baseRate * arg1) / 10^18)
}

function sub_8e201a14(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 96
    mem[128] = 96
    require uint8(troveStatus[address(arg1)].field_1024) <= 4
    if uint8(troveStatus[address(arg1)].field_1024) != 1:
        return 64, 3168, 96, 96, 96, 96 >> 512, mem[480 len 2976], 96, 96, 96, 96 >> 512, mem[3584 len 2976]
    mem[0] = arg1
    mem[32] = 207
    mem[224] = troveStatus[address(arg1)].field_0
    if not troveStatus[address(arg1)].field_0:
        require troveStatus[address(arg1)].field_0 <= test266151307()
        mem[(32 * troveStatus[address(arg1)].field_0) + 256] = troveStatus[address(arg1)].field_0
        mem[64] = (64 * troveStatus[address(arg1)].field_0) + 288
        if not troveStatus[address(arg1)].field_0:
            mem[192] = (32 * troveStatus[address(arg1)].field_0) + 256
            mem[160] = 224
            idx = 0
            while idx < troveStatus[address(arg1)].field_0:
                require idx < mem[224]
                _151 = mem[(32 * idx) + 256]
                mem[0] = mem[(32 * idx) + 268 len 20]
                _153 = sha3(address(mem[(32 * idx) + 256]), sha3(address(arg1), 213))
                mem[32] = 211
                _154 = sha3(address(mem[(32 * idx) + 256]), 211)
                _164 = mem[64]
                mem[64] = mem[64] + 64
                mem[_164] = 12
                mem[_164 + 32] = 'sub overflow' << 160
                if stor[_153] > stor[_154]:
                    _174 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _174 + 68] = mem[idx + _164 + 32]
                        idx = idx + 32
                        continue 
                    mem[_174 + 68] = mem[_174 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _174 + -mem[64] + 100
                if not stor[_154] - stor[_153]:
                    require idx < mem[mem[192]]
                    mem[(32 * idx) + mem[192] + 32] = 0
                    idx = idx + 1
                    continue 
                mem[0] = address(_151)
                mem[32] = sha3(address(arg1), 207) + 3
                require ext_code.size(address(_151))
                staticcall address(_151).decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not troveStatus[address(arg1)][3][address(_151)].field_0:
                    _215 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_215] = 8
                    mem[_215 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    if 10^uint8(ext_call.return_data[0]):
                        require idx < mem[mem[192]]
                        mem[(32 * idx) + mem[192] + 32] = 0 / 10^uint8(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 8
                    mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = 32
                    while idx < 8:
                        mem[idx + mem[64] + 68] = mem[idx + _215 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if (stor[_154] * troveStatus[address(arg1)][3][address(_151)].field_0) - (stor[_153] * troveStatus[address(arg1)][3][address(_151)].field_0) / troveStatus[address(arg1)][3][address(_151)].field_0 != stor[_154] - stor[_153]:
                        revert with 0, 'mul overflow'
                    _217 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_217] = 8
                    mem[_217 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    if 10^uint8(ext_call.return_data[0]):
                        require idx < mem[mem[192]]
                        mem[(32 * idx) + mem[192] + 32] = (stor[_154] * troveStatus[address(arg1)][3][address(_151)].field_0) - (stor[_153] * troveStatus[address(arg1)][3][address(_151)].field_0) / 10^uint8(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 8
                    mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = 32
                    while idx < 8:
                        mem[idx + mem[64] + 68] = mem[idx + _217 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, ''
            _149 = mem[160]
            _150 = mem[192]
            _161 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[_149]
            _163 = mem[_149]
            mem[mem[64] + 96 len floor32(mem[_149])] = mem[_149 + 32 len floor32(mem[_149])]
            mem[mem[64] + 32] = (32 * _163) + 96
            mem[(32 * _163) + _161 + 96] = mem[_150]
            _273 = mem[_150]
            mem[(32 * _163) + _161 + 128 len floor32(mem[_150])] = mem[_150 + 32 len floor32(mem[_150])]
            return memory
              from mem[64]
               len (32 * _273) + (32 * _163) + _161 + -mem[64] + 128
        mem[(32 * troveStatus[address(arg1)].field_0) + 288 len 32 * troveStatus[address(arg1)].field_0] = call.data[calldata.size len 32 * troveStatus[address(arg1)].field_0]
        mem[192] = (32 * troveStatus[address(arg1)].field_0) + 256
        mem[160] = 224
        idx = 0
        while idx < troveStatus[address(arg1)].field_0:
            require idx < mem[224]
            _157 = mem[(32 * idx) + 256]
            mem[0] = mem[(32 * idx) + 268 len 20]
            _159 = sha3(address(mem[(32 * idx) + 256]), sha3(address(arg1), 213))
            mem[32] = 211
            _160 = sha3(address(mem[(32 * idx) + 256]), 211)
            _168 = mem[64]
            mem[64] = mem[64] + 64
            mem[_168] = 12
            mem[_168 + 32] = 'sub overflow' << 160
            if stor[_159] > stor[_160]:
                _180 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _180 + 68] = mem[idx + _168 + 32]
                    idx = idx + 32
                    continue 
                mem[_180 + 68] = mem[_180 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _180 + -mem[64] + 100
            if not stor[_160] - stor[_159]:
                require idx < mem[mem[192]]
                mem[(32 * idx) + mem[192] + 32] = 0
                idx = idx + 1
                continue 
            mem[0] = address(_157)
            mem[32] = sha3(address(arg1), 207) + 3
            require ext_code.size(address(_157))
            staticcall address(_157).decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)][3][address(_157)].field_0:
                _216 = mem[64]
                mem[64] = mem[64] + 64
                mem[_216] = 8
                mem[_216 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if 10^uint8(ext_call.return_data[0]):
                    require idx < mem[mem[192]]
                    mem[(32 * idx) + mem[192] + 32] = 0 / 10^uint8(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 8
                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = 32
                while idx < 8:
                    mem[idx + mem[64] + 68] = mem[idx + _216 + 32]
                    idx = idx + 32
                    continue 
            else:
                if (stor[_160] * troveStatus[address(arg1)][3][address(_157)].field_0) - (stor[_159] * troveStatus[address(arg1)][3][address(_157)].field_0) / troveStatus[address(arg1)][3][address(_157)].field_0 != stor[_160] - stor[_159]:
                    revert with 0, 'mul overflow'
                _218 = mem[64]
                mem[64] = mem[64] + 64
                mem[_218] = 8
                mem[_218 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if 10^uint8(ext_call.return_data[0]):
                    require idx < mem[mem[192]]
                    mem[(32 * idx) + mem[192] + 32] = (stor[_160] * troveStatus[address(arg1)][3][address(_157)].field_0) - (stor[_159] * troveStatus[address(arg1)][3][address(_157)].field_0) / 10^uint8(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 8
                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = 32
                while idx < 8:
                    mem[idx + mem[64] + 68] = mem[idx + _218 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, ''
        _155 = mem[160]
        _156 = mem[192]
        _165 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[_155]
        _167 = mem[_155]
        mem[mem[64] + 96 len floor32(mem[_155])] = mem[_155 + 32 len floor32(mem[_155])]
        mem[mem[64] + 32] = (32 * _167) + 96
        mem[(32 * _167) + _165 + 96] = mem[_156]
        _279 = mem[_156]
        mem[(32 * _167) + _165 + 128 len floor32(mem[_156])] = mem[_156 + 32 len floor32(mem[_156])]
        return memory
          from mem[64]
           len (32 * _279) + (32 * _167) + _165 + -mem[64] + 128
    mem[0] = sha3(address(arg1), 207)
    mem[256] = address(troveStatus[address(arg1)].field_0)
    idx = 256
    s = 0
    while (32 * troveStatus[address(arg1)].field_0) + 224 > idx:
        mem[idx + 32] = address(troveStatus[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    require troveStatus[address(arg1)].field_0 <= test266151307()
    mem[(32 * troveStatus[address(arg1)].field_0) + 256] = troveStatus[address(arg1)].field_0
    mem[64] = (64 * troveStatus[address(arg1)].field_0) + 288
    if not troveStatus[address(arg1)].field_0:
        mem[192] = (32 * troveStatus[address(arg1)].field_0) + 256
        mem[160] = 224
        idx = 0
        while idx < troveStatus[address(arg1)].field_0:
            require idx < mem[224]
            _441 = mem[(32 * idx) + 256]
            mem[0] = mem[(32 * idx) + 268 len 20]
            _443 = sha3(address(mem[(32 * idx) + 256]), sha3(address(arg1), 213))
            mem[32] = 211
            _444 = sha3(address(mem[(32 * idx) + 256]), 211)
            _454 = mem[64]
            mem[64] = mem[64] + 64
            mem[_454] = 12
            mem[_454 + 32] = 'sub overflow' << 160
            if stor[_443] > stor[_444]:
                _462 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _462 + 68] = mem[idx + _454 + 32]
                    idx = idx + 32
                    continue 
                mem[_462 + 68] = mem[_462 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _462 + -mem[64] + 100
            if not stor[_444] - stor[_443]:
                require idx < mem[mem[192]]
                mem[(32 * idx) + mem[192] + 32] = 0
                idx = idx + 1
                continue 
            mem[0] = address(_441)
            mem[32] = sha3(address(arg1), 207) + 3
            require ext_code.size(address(_441))
            staticcall address(_441).decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)][3][address(_441)].field_0:
                _503 = mem[64]
                mem[64] = mem[64] + 64
                mem[_503] = 8
                mem[_503 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if 10^uint8(ext_call.return_data[0]):
                    require idx < mem[mem[192]]
                    mem[(32 * idx) + mem[192] + 32] = 0 / 10^uint8(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 8
                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = 32
                while idx < 8:
                    mem[idx + mem[64] + 68] = mem[idx + _503 + 32]
                    idx = idx + 32
                    continue 
            else:
                if (stor[_444] * troveStatus[address(arg1)][3][address(_441)].field_0) - (stor[_443] * troveStatus[address(arg1)][3][address(_441)].field_0) / troveStatus[address(arg1)][3][address(_441)].field_0 != stor[_444] - stor[_443]:
                    revert with 0, 'mul overflow'
                _505 = mem[64]
                mem[64] = mem[64] + 64
                mem[_505] = 8
                mem[_505 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if 10^uint8(ext_call.return_data[0]):
                    require idx < mem[mem[192]]
                    mem[(32 * idx) + mem[192] + 32] = (stor[_444] * troveStatus[address(arg1)][3][address(_441)].field_0) - (stor[_443] * troveStatus[address(arg1)][3][address(_441)].field_0) / 10^uint8(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 8
                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = 32
                while idx < 8:
                    mem[idx + mem[64] + 68] = mem[idx + _505 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, ''
        _439 = mem[160]
        _440 = mem[192]
        _451 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[_439]
        _453 = mem[_439]
        mem[mem[64] + 96 len floor32(mem[_439])] = mem[_439 + 32 len floor32(mem[_439])]
        mem[mem[64] + 32] = (32 * _453) + 96
        mem[(32 * _453) + _451 + 96] = mem[_440]
        _560 = mem[_440]
        mem[(32 * _453) + _451 + 128 len floor32(mem[_440])] = mem[_440 + 32 len floor32(mem[_440])]
        var28001 = floor32(_560)
        return memory
          from mem[64]
           len (32 * _560) + (32 * _453) + _451 + -mem[64] + 128
    mem[(32 * troveStatus[address(arg1)].field_0) + 288 len 32 * troveStatus[address(arg1)].field_0] = call.data[calldata.size len 32 * troveStatus[address(arg1)].field_0]
    mem[192] = (32 * troveStatus[address(arg1)].field_0) + 256
    mem[160] = 224
    idx = 0
    while idx < troveStatus[address(arg1)].field_0:
        require idx < mem[224]
        _447 = mem[(32 * idx) + 256]
        mem[0] = mem[(32 * idx) + 268 len 20]
        _449 = sha3(address(mem[(32 * idx) + 256]), sha3(address(arg1), 213))
        mem[32] = 211
        _450 = sha3(address(mem[(32 * idx) + 256]), 211)
        _458 = mem[64]
        mem[64] = mem[64] + 64
        mem[_458] = 12
        mem[_458 + 32] = 'sub overflow' << 160
        if stor[_449] > stor[_450]:
            _468 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 12
            idx = 0
            while idx < 12:
                mem[idx + _468 + 68] = mem[idx + _458 + 32]
                idx = idx + 32
                continue 
            mem[_468 + 68] = mem[_468 + 88 len 12]
            revert with memory
              from mem[64]
               len _468 + -mem[64] + 100
        if not stor[_450] - stor[_449]:
            require idx < mem[mem[192]]
            mem[(32 * idx) + mem[192] + 32] = 0
            idx = idx + 1
            continue 
        mem[0] = address(_447)
        mem[32] = sha3(address(arg1), 207) + 3
        require ext_code.size(address(_447))
        staticcall address(_447).decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)][3][address(_447)].field_0:
            _504 = mem[64]
            mem[64] = mem[64] + 64
            mem[_504] = 8
            mem[_504 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if 10^uint8(ext_call.return_data[0]):
                require idx < mem[mem[192]]
                mem[(32 * idx) + mem[192] + 32] = 0 / 10^uint8(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 8
            mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
            idx = 32
            while idx < 8:
                mem[idx + mem[64] + 68] = mem[idx + _504 + 32]
                idx = idx + 32
                continue 
        else:
            if (stor[_450] * troveStatus[address(arg1)][3][address(_447)].field_0) - (stor[_449] * troveStatus[address(arg1)][3][address(_447)].field_0) / troveStatus[address(arg1)][3][address(_447)].field_0 != stor[_450] - stor[_449]:
                revert with 0, 'mul overflow'
            _506 = mem[64]
            mem[64] = mem[64] + 64
            mem[_506] = 8
            mem[_506 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if 10^uint8(ext_call.return_data[0]):
                require idx < mem[mem[192]]
                mem[(32 * idx) + mem[192] + 32] = (stor[_450] * troveStatus[address(arg1)][3][address(_447)].field_0) - (stor[_449] * troveStatus[address(arg1)][3][address(_447)].field_0) / 10^uint8(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 8
            mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
            idx = 32
            while idx < 8:
                mem[idx + mem[64] + 68] = mem[idx + _506 + 32]
                idx = idx + 32
                continue 
        revert with 0, ''
    _445 = mem[160]
    _446 = mem[192]
    _455 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[_445]
    _457 = mem[_445]
    mem[mem[64] + 96 len floor32(mem[_445])] = mem[_445 + 32 len floor32(mem[_445])]
    mem[mem[64] + 32] = (32 * _457) + 96
    mem[(32 * _457) + _455 + 96] = mem[_446]
    _566 = mem[_446]
    mem[(32 * _457) + _455 + 128 len floor32(mem[_446])] = mem[_446 + 32 len floor32(mem[_446])]
    var29001 = floor32(_566)
    return memory
      from mem[64]
       len (32 * _566) + (32 * _457) + _455 + -mem[64] + 128
}

function sub_66849aed(?) payable {
    require calldata.size - 4 >= 32
    if stor200 != msg.sender:
        revert with 0, 'WFC'
    mem[0] = arg1
    mem[32] = 207
    mem[64] = (32 * troveStatus[address(arg1)].field_0) + 128
    mem[96] = troveStatus[address(arg1)].field_0
    if not troveStatus[address(arg1)].field_0:
        idx = 0
        while idx < troveStatus[address(arg1)].field_0:
            require idx < mem[96]
            _152 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            _154 = sha3(address(mem[(32 * idx) + 128]), sha3(address(arg1), 207) + 3)
            mem[32] = 208
            _155 = sha3(address(mem[(32 * idx) + 128]), 208)
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 12
            mem[_156 + 32] = 'sub overflow' << 160
            if stor[_154] <= stor[_155]:
                totalStake[address(_152)] = stor[_155] - stor[_154]
                mem[0] = address(_152)
                mem[32] = sha3(address(arg1), 207) + 3
                troveStatus[address(arg1)][3][address(_152)].field_0 = 0
                idx = idx + 1
                continue 
            _157 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 12
            idx = 0
            while idx < 12:
                mem[idx + _157 + 68] = mem[idx + _156 + 32]
                idx = idx + 32
                continue 
            mem[_157 + 68] = mem[_157 + 88 len 12]
            revert with memory
              from mem[64]
               len _157 + -mem[64] + 100
        mem[mem[64]] = 0x265eb84f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 0
        require ext_code.size(stor204)
        call stor204.0x265eb84f with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if troveFromTroveOwnersArray.length <= 1:
            revert with 0, 'TM:last trove'
        _171 = mem[64]
        mem[64] = mem[64] + 64
        mem[_171] = 96
        mem[_171 + 32] = 96
        mem[0] = arg1
        mem[32] = 207
        _173 = mem[64]
        mem[64] = mem[64] + (32 * troveStatus[address(arg1)].field_0) + 32
        mem[_173] = troveStatus[address(arg1)].field_0
        if not troveStatus[address(arg1)].field_0:
            idx = 0
            while idx < troveStatus[address(arg1)].field_0:
                require idx < mem[_173]
                _302 = mem[(32 * idx) + _173 + 32]
                mem[0] = mem[(32 * idx) + _173 + 44 len 20]
                sub_50953b62[address(arg1)][address(mem[(32 * idx) + _173 + 32])] = 0
                mem[32] = sha3(address(arg1), 213) + 1
                sub_50953b62[address(arg1)][1][address(_302)] = 0
                idx = idx + 1
                continue 
            uint8(troveStatus[address(arg1)].field_1024) = 2
            mem[0] = arg1
            mem[32] = 207
            _300 = mem[_171]
            _301 = mem[mem[_171]]
            troveStatus[address(arg1)].field_0 = mem[mem[_171]]
            mem[0] = sha3(address(arg1), 207)
            if not _301:
                idx = 0
                while troveStatus[address(arg1)].field_0 > idx:
                    address(troveStatus[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                _580 = mem[_171 + 32]
                _581 = mem[mem[_171 + 32]]
                troveStatus[address(arg1)].field_256 = mem[mem[_171 + 32]]
                mem[0] = sha3(address(arg1), 207) + 1
                if not _581:
                    idx = 0
                    while troveStatus[address(arg1)].field_256 > idx:
                        troveStatus[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = _580 + 32
                    while _580 + (32 * _581) + 32 > idx:
                        troveStatus[address(arg1)][s + 1].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * _581) + 31) >> 5
                    while troveStatus[address(arg1)].field_256 > idx:
                        troveStatus[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                s = 0
                idx = _300 + 32
                while _300 + (32 * _301) + 32 > idx:
                    address(troveStatus[address(arg1)][s].field_0) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * _301) + 31) >> 5
                while troveStatus[address(arg1)].field_0 > idx:
                    address(troveStatus[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                _962 = mem[_171 + 32]
                _963 = mem[mem[_171 + 32]]
                troveStatus[address(arg1)].field_256 = mem[mem[_171 + 32]]
                mem[0] = sha3(address(arg1), 207) + 1
                if not _963:
                    idx = 0
                    while troveStatus[address(arg1)].field_256 > idx:
                        troveStatus[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = _962 + 32
                    while _962 + (32 * _963) + 32 > idx:
                        troveStatus[address(arg1)][s + 1].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * _963) + 31) >> 5
                    while troveStatus[address(arg1)].field_256 > idx:
                        troveStatus[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            mem[0] = sha3(address(arg1), 207)
            mem[_173 + 32] = address(troveStatus[address(arg1)].field_0)
            idx = _173 + 32
            s = 0
            while _173 + (32 * troveStatus[address(arg1)].field_0) > idx:
                mem[idx + 32] = address(troveStatus[address(arg1)][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            while idx < troveStatus[address(arg1)].field_0:
                require idx < mem[_173]
                _945 = mem[(32 * idx) + _173 + 32]
                mem[0] = mem[(32 * idx) + _173 + 44 len 20]
                sub_50953b62[address(arg1)][address(mem[(32 * idx) + _173 + 32])] = 0
                mem[32] = sha3(address(arg1), 213) + 1
                sub_50953b62[address(arg1)][1][address(_945)] = 0
                idx = idx + 1
                continue 
            uint8(troveStatus[address(arg1)].field_1024) = 2
            mem[0] = arg1
            mem[32] = 207
            _943 = mem[_171]
            _944 = mem[mem[_171]]
            troveStatus[address(arg1)].field_0 = mem[mem[_171]]
            mem[0] = sha3(address(arg1), 207)
            if not _944:
                idx = 0
                while troveStatus[address(arg1)].field_0 > idx:
                    address(troveStatus[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                _1302 = mem[_171 + 32]
                _1303 = mem[mem[_171 + 32]]
                troveStatus[address(arg1)].field_256 = mem[mem[_171 + 32]]
                mem[0] = sha3(address(arg1), 207) + 1
                if not _1303:
                    idx = 0
                    while troveStatus[address(arg1)].field_256 > idx:
                        troveStatus[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = _1302 + 32
                    while _1302 + (32 * _1303) + 32 > idx:
                        troveStatus[address(arg1)][s + 1].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * _1303) + 31) >> 5
                    while troveStatus[address(arg1)].field_256 > idx:
                        troveStatus[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                s = 0
                idx = _943 + 32
                while _943 + (32 * _944) + 32 > idx:
                    address(troveStatus[address(arg1)][s].field_0) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * _944) + 31) >> 5
                while troveStatus[address(arg1)].field_0 > idx:
                    address(troveStatus[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                _1723 = mem[_171 + 32]
                _1724 = mem[mem[_171 + 32]]
                troveStatus[address(arg1)].field_256 = mem[mem[_171 + 32]]
                mem[0] = sha3(address(arg1), 207) + 1
                if not _1724:
                    idx = 0
                    while troveStatus[address(arg1)].field_256 > idx:
                        troveStatus[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = _1723 + 32
                    while _1723 + (32 * _1724) + 32 > idx:
                        troveStatus[address(arg1)][s + 1].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * _1724) + 31) >> 5
                    while troveStatus[address(arg1)].field_256 > idx:
                        troveStatus[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        mem[0] = sha3(address(arg1), 207)
        mem[128] = address(troveStatus[address(arg1)].field_0)
        idx = 128
        s = 0
        while (32 * troveStatus[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = address(troveStatus[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < troveStatus[address(arg1)].field_0:
            require idx < mem[96]
            _568 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            _570 = sha3(address(mem[(32 * idx) + 128]), sha3(address(arg1), 207) + 3)
            mem[32] = 208
            _571 = sha3(address(mem[(32 * idx) + 128]), 208)
            _579 = mem[64]
            mem[64] = mem[64] + 64
            mem[_579] = 12
            mem[_579 + 32] = 'sub overflow' << 160
            if stor[_570] <= stor[_571]:
                totalStake[address(_568)] = stor[_571] - stor[_570]
                mem[0] = address(_568)
                mem[32] = sha3(address(arg1), 207) + 3
                troveStatus[address(arg1)][3][address(_568)].field_0 = 0
                idx = idx + 1
                continue 
            _584 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 12
            idx = 0
            while idx < 12:
                mem[idx + _584 + 68] = mem[idx + _579 + 32]
                idx = idx + 32
                continue 
            mem[_584 + 68] = mem[_584 + 88 len 12]
            revert with memory
              from mem[64]
               len _584 + -mem[64] + 100
        mem[mem[64]] = 0x265eb84f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 0
        require ext_code.size(stor204)
        call stor204.0x265eb84f with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if troveFromTroveOwnersArray.length <= 1:
            revert with 0, 'TM:last trove'
        _619 = mem[64]
        mem[64] = mem[64] + 64
        mem[_619] = 96
        mem[_619 + 32] = 96
        mem[0] = arg1
        mem[32] = 207
        _623 = mem[64]
        mem[64] = mem[64] + (32 * troveStatus[address(arg1)].field_0) + 32
        mem[_623] = troveStatus[address(arg1)].field_0
        if not troveStatus[address(arg1)].field_0:
            idx = 0
            while idx < troveStatus[address(arg1)].field_0:
                require idx < mem[_623]
                _952 = mem[(32 * idx) + _623 + 32]
                mem[0] = mem[(32 * idx) + _623 + 44 len 20]
                sub_50953b62[address(arg1)][address(mem[(32 * idx) + _623 + 32])] = 0
                mem[32] = sha3(address(arg1), 213) + 1
                sub_50953b62[address(arg1)][1][address(_952)] = 0
                idx = idx + 1
                continue 
            uint8(troveStatus[address(arg1)].field_1024) = 2
            mem[0] = arg1
            mem[32] = 207
            _950 = mem[_619]
            _951 = mem[mem[_619]]
            troveStatus[address(arg1)].field_0 = mem[mem[_619]]
            mem[0] = sha3(address(arg1), 207)
            if not _951:
                idx = 0
                while troveStatus[address(arg1)].field_0 > idx:
                    address(troveStatus[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                _1304 = mem[_619 + 32]
                _1305 = mem[mem[_619 + 32]]
                troveStatus[address(arg1)].field_256 = mem[mem[_619 + 32]]
                mem[0] = sha3(address(arg1), 207) + 1
                if not _1305:
                    idx = 0
                    while troveStatus[address(arg1)].field_256 > idx:
                        troveStatus[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = _1304 + 32
                    while _1304 + (32 * _1305) + 32 > idx:
                        troveStatus[address(arg1)][s + 1].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * _1305) + 31) >> 5
                    while troveStatus[address(arg1)].field_256 > idx:
                        troveStatus[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                s = 0
                idx = _950 + 32
                while _950 + (32 * _951) + 32 > idx:
                    address(troveStatus[address(arg1)][s].field_0) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * _951) + 31) >> 5
                while troveStatus[address(arg1)].field_0 > idx:
                    address(troveStatus[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                _1726 = mem[_619 + 32]
                _1727 = mem[mem[_619 + 32]]
                troveStatus[address(arg1)].field_256 = mem[mem[_619 + 32]]
                mem[0] = sha3(address(arg1), 207) + 1
                if not _1727:
                    idx = 0
                    while troveStatus[address(arg1)].field_256 > idx:
                        troveStatus[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = _1726 + 32
                    while _1726 + (32 * _1727) + 32 > idx:
                        troveStatus[address(arg1)][s + 1].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * _1727) + 31) >> 5
                    while troveStatus[address(arg1)].field_256 > idx:
                        troveStatus[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            mem[0] = sha3(address(arg1), 207)
            mem[_623 + 32] = address(troveStatus[address(arg1)].field_0)
            idx = _623 + 32
            s = 0
            while _623 + (32 * troveStatus[address(arg1)].field_0) > idx:
                mem[idx + 32] = address(troveStatus[address(arg1)][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            while idx < troveStatus[address(arg1)].field_0:
                require idx < mem[_623]
                _1714 = mem[(32 * idx) + _623 + 32]
                mem[0] = mem[(32 * idx) + _623 + 44 len 20]
                sub_50953b62[address(arg1)][address(mem[(32 * idx) + _623 + 32])] = 0
                mem[32] = sha3(address(arg1), 213) + 1
                sub_50953b62[address(arg1)][1][address(_1714)] = 0
                idx = idx + 1
                continue 
            uint8(troveStatus[address(arg1)].field_1024) = 2
            mem[0] = arg1
            mem[32] = 207
            _1712 = mem[_619]
            _1713 = mem[mem[_619]]
            troveStatus[address(arg1)].field_0 = mem[mem[_619]]
            mem[0] = sha3(address(arg1), 207)
            if not _1713:
                idx = 0
                while troveStatus[address(arg1)].field_0 > idx:
                    address(troveStatus[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                _2082 = mem[_619 + 32]
                _2083 = mem[mem[_619 + 32]]
                troveStatus[address(arg1)].field_256 = mem[mem[_619 + 32]]
                mem[0] = sha3(address(arg1), 207) + 1
                if not _2083:
                    idx = 0
                    while troveStatus[address(arg1)].field_256 > idx:
                        troveStatus[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = _2082 + 32
                    while _2082 + (32 * _2083) + 32 > idx:
                        troveStatus[address(arg1)][s + 1].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * _2083) + 31) >> 5
                    while troveStatus[address(arg1)].field_256 > idx:
                        troveStatus[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                s = 0
                idx = _1712 + 32
                while _1712 + (32 * _1713) + 32 > idx:
                    address(troveStatus[address(arg1)][s].field_0) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * _1713) + 31) >> 5
                while troveStatus[address(arg1)].field_0 > idx:
                    address(troveStatus[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                _2356 = mem[_619 + 32]
                _2357 = mem[mem[_619 + 32]]
                troveStatus[address(arg1)].field_256 = mem[mem[_619 + 32]]
                mem[0] = sha3(address(arg1), 207) + 1
                if not _2357:
                    idx = 0
                    while troveStatus[address(arg1)].field_256 > idx:
                        troveStatus[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = _2356 + 32
                    while _2356 + (32 * _2357) + 32 > idx:
                        troveStatus[address(arg1)][s + 1].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * _2357) + 31) >> 5
                    while troveStatus[address(arg1)].field_256 > idx:
                        troveStatus[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
    troveStatus[address(arg1)].field_512 = 0
    require uint8(troveStatus[address(arg1)].field_1024) <= 4
    if not uint8(troveStatus[address(arg1)].field_1024):
        revert with 0, 'TM:invalid trove'
    require uint8(troveStatus[address(arg1)].field_1024) <= 4
    if uint8(troveStatus[address(arg1)].field_1024) == 1:
        revert with 0, 'TM:invalid trove'
    if 1 > troveFromTroveOwnersArray.length:
        revert with 0, 'sub overflow'
    if uint128(troveStatus[address(arg1)].field_1032) > troveFromTroveOwnersArray.length - 1:
        revert with 0, 'TM:index>last'
    require troveFromTroveOwnersArray.length - 1 < troveFromTroveOwnersArray.length
    require uint128(troveStatus[address(arg1)].field_1032) < troveFromTroveOwnersArray.length
    troveFromTroveOwnersArray[uint128(stor207[address(arg1)].field_1032)] = troveFromTroveOwnersArray[troveFromTroveOwnersArray.length]
    Mask(248, 0, troveStatus[stor214[stor214.length]].field_1032) = uint128(troveStatus[address(arg1)].field_1032)
    emit TroveIndexUpdated(troveFromTroveOwnersArray[troveFromTroveOwnersArray.length], uint128(troveStatus[address(arg1)].field_1032));
    require troveFromTroveOwnersArray.length
    troveFromTroveOwnersArray[troveFromTroveOwnersArray.length] = 0
    troveFromTroveOwnersArray.length--
    require ext_code.size(stor204)
    call stor204.0x29092d0e with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2899aa4f(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if msg.sender == stor200:
        if arg2.length != arg3.length:
            revert with 0, 'TM:Len input'
        troveStatus[address(arg1)].field_256 = arg3.length
        if not arg3.length:
            idx = 0
            while troveStatus[address(arg1)].field_256 > idx:
                troveStatus[address(arg1)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            troveStatus[address(arg1)].field_0 = arg2.length
            if not arg2.length:
                idx = 0
                while troveStatus[address(arg1)].field_0 > idx:
                    address(troveStatus[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = 207
                idx = 0
                while idx < troveStatus[address(arg1)].field_0:
                    require idx < troveStatus[address(arg1)].field_0
                    require idx < troveStatus[address(arg1)].field_256
                    if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = troveStatus[address(arg1)][idx + 1].field_0
                        mem[32] = 208
                        _2131 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2131] = 12
                        mem[_2131 + 32] = 'sub overflow' << 160
                        if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                            _2149 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 12
                            idx = 0
                            while idx < 12:
                                mem[idx + _2149 + 68] = mem[idx + _2131 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2149 + 68] = mem[_2149 + 88 len 12]
                            revert with memory
                              from mem[64]
                               len _2149 + -mem[64] + 100
                        if troveStatus[address(arg1)][idx + 1].field_0 < 0:
                            revert with 0, 'add overflow'
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[32] = 208
                        totalStake[address(stor207[address(arg1)][idx].field_0)] = troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[mem[64] + 32] = troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                    else:
                        if not sub_af3700dc[address(stor207[address(arg1)][idx].field_0)]:
                            revert with 0, 'TM:stake=0'
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[32] = 209
                        if not troveStatus[address(arg1)][idx + 1].field_0:
                            _2163 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2163] = 8
                            mem[_2163 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _2163 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = 0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]
                            mem[32] = 208
                            _2318 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2318] = 12
                            mem[_2318 + 32] = 'sub overflow' << 160
                            if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                                _2369 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _2369 + 68] = mem[idx + _2318 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2369 + 68] = mem[_2369 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _2369 + -mem[64] + 100
                            if 0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)] < 0:
                                revert with 0, 'add overflow'
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[32] = 208
                            totalStake[address(stor207[address(arg1)][idx].field_0)] = (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[mem[64] + 32] = (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        else:
                            if sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / troveStatus[address(arg1)][idx + 1].field_0 != sub_af3700dc[address(stor207[address(arg1)][idx].field_0)]:
                                revert with 0, 'mul overflow'
                            _2173 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2173] = 8
                            mem[_2173 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _2173 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]
                            mem[32] = 208
                            _2335 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2335] = 12
                            mem[_2335 + 32] = 'sub overflow' << 160
                            if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                                _2405 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _2405 + 68] = mem[idx + _2335 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2405 + 68] = mem[_2405 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _2405 + -mem[64] + 100
                            if sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)] < 0:
                                revert with 0, 'add overflow'
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[32] = 208
                            totalStake[address(stor207[address(arg1)][idx].field_0)] = (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[mem[64] + 32] = (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg2.length) + 128 > idx:
                    address(troveStatus[address(arg1)][s].field_0) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while troveStatus[address(arg1)].field_0 > idx:
                    address(troveStatus[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = 207
                idx = 0
                while idx < troveStatus[address(arg1)].field_0:
                    require idx < troveStatus[address(arg1)].field_0
                    require idx < troveStatus[address(arg1)].field_256
                    if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = troveStatus[address(arg1)][idx + 1].field_0
                        mem[32] = 208
                        _2871 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2871] = 12
                        mem[_2871 + 32] = 'sub overflow' << 160
                        if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                            _2883 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 12
                            idx = 0
                            while idx < 12:
                                mem[idx + _2883 + 68] = mem[idx + _2871 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2883 + 68] = mem[_2883 + 88 len 12]
                            revert with memory
                              from mem[64]
                               len _2883 + -mem[64] + 100
                        if troveStatus[address(arg1)][idx + 1].field_0 < 0:
                            revert with 0, 'add overflow'
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[32] = 208
                        totalStake[address(stor207[address(arg1)][idx].field_0)] = troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[mem[64] + 32] = troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                    else:
                        if not sub_af3700dc[address(stor207[address(arg1)][idx].field_0)]:
                            revert with 0, 'TM:stake=0'
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[32] = 209
                        if not troveStatus[address(arg1)][idx + 1].field_0:
                            _2903 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2903] = 8
                            mem[_2903 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _2903 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = 0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]
                            mem[32] = 208
                            _3066 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3066] = 12
                            mem[_3066 + 32] = 'sub overflow' << 160
                            if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                                _3111 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _3111 + 68] = mem[idx + _3066 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3111 + 68] = mem[_3111 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _3111 + -mem[64] + 100
                            if 0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)] < 0:
                                revert with 0, 'add overflow'
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[32] = 208
                            totalStake[address(stor207[address(arg1)][idx].field_0)] = (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[mem[64] + 32] = (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        else:
                            if sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / troveStatus[address(arg1)][idx + 1].field_0 != sub_af3700dc[address(stor207[address(arg1)][idx].field_0)]:
                                revert with 0, 'mul overflow'
                            _2909 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2909] = 8
                            mem[_2909 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _2909 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]
                            mem[32] = 208
                            _3093 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3093] = 12
                            mem[_3093 + 32] = 'sub overflow' << 160
                            if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                                _3137 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _3137 + 68] = mem[idx + _3093 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3137 + 68] = mem[_3137 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _3137 + -mem[64] + 100
                            if sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)] < 0:
                                revert with 0, 'add overflow'
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[32] = 208
                            totalStake[address(stor207[address(arg1)][idx].field_0)] = (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[mem[64] + 32] = (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                    idx = idx + 1
                    continue 
        else:
            s = 0
            idx = (32 * arg2.length) + 160
            while (32 * arg2.length) + (32 * arg3.length) + 160 > idx:
                troveStatus[address(arg1)][s + 1].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            while troveStatus[address(arg1)].field_256 > idx:
                troveStatus[address(arg1)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            troveStatus[address(arg1)].field_0 = arg2.length
            if not arg2.length:
                idx = 0
                while troveStatus[address(arg1)].field_0 > idx:
                    address(troveStatus[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = 207
                idx = 0
                while idx < troveStatus[address(arg1)].field_0:
                    require idx < troveStatus[address(arg1)].field_0
                    require idx < troveStatus[address(arg1)].field_256
                    if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = troveStatus[address(arg1)][idx + 1].field_0
                        mem[32] = 208
                        _2872 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2872] = 12
                        mem[_2872 + 32] = 'sub overflow' << 160
                        if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                            _2888 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 12
                            idx = 0
                            while idx < 12:
                                mem[idx + _2888 + 68] = mem[idx + _2872 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2888 + 68] = mem[_2888 + 88 len 12]
                            revert with memory
                              from mem[64]
                               len _2888 + -mem[64] + 100
                        if troveStatus[address(arg1)][idx + 1].field_0 < 0:
                            revert with 0, 'add overflow'
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[32] = 208
                        totalStake[address(stor207[address(arg1)][idx].field_0)] = troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[mem[64] + 32] = troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                    else:
                        if not sub_af3700dc[address(stor207[address(arg1)][idx].field_0)]:
                            revert with 0, 'TM:stake=0'
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[32] = 209
                        if not troveStatus[address(arg1)][idx + 1].field_0:
                            _2904 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2904] = 8
                            mem[_2904 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _2904 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = 0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]
                            mem[32] = 208
                            _3073 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3073] = 12
                            mem[_3073 + 32] = 'sub overflow' << 160
                            if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                                _3114 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _3114 + 68] = mem[idx + _3073 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3114 + 68] = mem[_3114 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _3114 + -mem[64] + 100
                            if 0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)] < 0:
                                revert with 0, 'add overflow'
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[32] = 208
                            totalStake[address(stor207[address(arg1)][idx].field_0)] = (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[mem[64] + 32] = (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        else:
                            if sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / troveStatus[address(arg1)][idx + 1].field_0 != sub_af3700dc[address(stor207[address(arg1)][idx].field_0)]:
                                revert with 0, 'mul overflow'
                            _2911 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2911] = 8
                            mem[_2911 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _2911 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]
                            mem[32] = 208
                            _3095 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3095] = 12
                            mem[_3095 + 32] = 'sub overflow' << 160
                            if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                                _3140 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _3140 + 68] = mem[idx + _3095 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3140 + 68] = mem[_3140 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _3140 + -mem[64] + 100
                            if sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)] < 0:
                                revert with 0, 'add overflow'
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[32] = 208
                            totalStake[address(stor207[address(arg1)][idx].field_0)] = (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[mem[64] + 32] = (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg2.length) + 128 > idx:
                    address(troveStatus[address(arg1)][s].field_0) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while troveStatus[address(arg1)].field_0 > idx:
                    address(troveStatus[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = 207
                idx = 0
                while idx < troveStatus[address(arg1)].field_0:
                    require idx < troveStatus[address(arg1)].field_0
                    require idx < troveStatus[address(arg1)].field_256
                    if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = troveStatus[address(arg1)][idx + 1].field_0
                        mem[32] = 208
                        _3427 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3427] = 12
                        mem[_3427 + 32] = 'sub overflow' << 160
                        if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                            _3431 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 12
                            idx = 0
                            while idx < 12:
                                mem[idx + _3431 + 68] = mem[idx + _3427 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3431 + 68] = mem[_3431 + 88 len 12]
                            revert with memory
                              from mem[64]
                               len _3431 + -mem[64] + 100
                        if troveStatus[address(arg1)][idx + 1].field_0 < 0:
                            revert with 0, 'add overflow'
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[32] = 208
                        totalStake[address(stor207[address(arg1)][idx].field_0)] = troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[mem[64] + 32] = troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                    else:
                        if not sub_af3700dc[address(stor207[address(arg1)][idx].field_0)]:
                            revert with 0, 'TM:stake=0'
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[32] = 209
                        if not troveStatus[address(arg1)][idx + 1].field_0:
                            _3439 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3439] = 8
                            mem[_3439 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _3439 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = 0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]
                            mem[32] = 208
                            _3508 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3508] = 12
                            mem[_3508 + 32] = 'sub overflow' << 160
                            if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                                _3521 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _3521 + 68] = mem[idx + _3508 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3521 + 68] = mem[_3521 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _3521 + -mem[64] + 100
                            if 0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)] < 0:
                                revert with 0, 'add overflow'
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[32] = 208
                            totalStake[address(stor207[address(arg1)][idx].field_0)] = (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[mem[64] + 32] = (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        else:
                            if sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / troveStatus[address(arg1)][idx + 1].field_0 != sub_af3700dc[address(stor207[address(arg1)][idx].field_0)]:
                                revert with 0, 'mul overflow'
                            _3441 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3441] = 8
                            mem[_3441 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _3441 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]
                            mem[32] = 208
                            _3517 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3517] = 12
                            mem[_3517 + 32] = 'sub overflow' << 160
                            if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                                _3527 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _3527 + 68] = mem[idx + _3517 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3527 + 68] = mem[_3527 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _3527 + -mem[64] + 100
                            if sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)] < 0:
                                revert with 0, 'add overflow'
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[32] = 208
                            totalStake[address(stor207[address(arg1)][idx].field_0)] = (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[mem[64] + 32] = (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                    idx = idx + 1
                    continue 
    else:
        if stor202 != msg.sender:
            revert with 0, 'WFC'
        if arg2.length != arg3.length:
            revert with 0, 'TM:Len input'
        troveStatus[address(arg1)].field_256 = arg3.length
        if not arg3.length:
            idx = 0
            while troveStatus[address(arg1)].field_256 > idx:
                troveStatus[address(arg1)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            troveStatus[address(arg1)].field_0 = arg2.length
            if not arg2.length:
                idx = 0
                while troveStatus[address(arg1)].field_0 > idx:
                    address(troveStatus[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = 207
                idx = 0
                while idx < troveStatus[address(arg1)].field_0:
                    require idx < troveStatus[address(arg1)].field_0
                    require idx < troveStatus[address(arg1)].field_256
                    if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = troveStatus[address(arg1)][idx + 1].field_0
                        mem[32] = 208
                        _2137 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2137] = 12
                        mem[_2137 + 32] = 'sub overflow' << 160
                        if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                            _2157 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 12
                            idx = 0
                            while idx < 12:
                                mem[idx + _2157 + 68] = mem[idx + _2137 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2157 + 68] = mem[_2157 + 88 len 12]
                            revert with memory
                              from mem[64]
                               len _2157 + -mem[64] + 100
                        if troveStatus[address(arg1)][idx + 1].field_0 < 0:
                            revert with 0, 'add overflow'
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[32] = 208
                        totalStake[address(stor207[address(arg1)][idx].field_0)] = troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[mem[64] + 32] = troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                    else:
                        if not sub_af3700dc[address(stor207[address(arg1)][idx].field_0)]:
                            revert with 0, 'TM:stake=0'
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[32] = 209
                        if not troveStatus[address(arg1)][idx + 1].field_0:
                            _2168 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2168] = 8
                            mem[_2168 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _2168 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = 0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]
                            mem[32] = 208
                            _2329 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2329] = 12
                            mem[_2329 + 32] = 'sub overflow' << 160
                            if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                                _2387 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _2387 + 68] = mem[idx + _2329 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2387 + 68] = mem[_2387 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _2387 + -mem[64] + 100
                            if 0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)] < 0:
                                revert with 0, 'add overflow'
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[32] = 208
                            totalStake[address(stor207[address(arg1)][idx].field_0)] = (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[mem[64] + 32] = (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        else:
                            if sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / troveStatus[address(arg1)][idx + 1].field_0 != sub_af3700dc[address(stor207[address(arg1)][idx].field_0)]:
                                revert with 0, 'mul overflow'
                            _2184 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2184] = 8
                            mem[_2184 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _2184 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]
                            mem[32] = 208
                            _2352 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2352] = 12
                            mem[_2352 + 32] = 'sub overflow' << 160
                            if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                                _2422 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _2422 + 68] = mem[idx + _2352 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2422 + 68] = mem[_2422 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _2422 + -mem[64] + 100
                            if sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)] < 0:
                                revert with 0, 'add overflow'
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[32] = 208
                            totalStake[address(stor207[address(arg1)][idx].field_0)] = (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[mem[64] + 32] = (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg2.length) + 128 > idx:
                    address(troveStatus[address(arg1)][s].field_0) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while troveStatus[address(arg1)].field_0 > idx:
                    address(troveStatus[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = 207
                idx = 0
                while idx < troveStatus[address(arg1)].field_0:
                    require idx < troveStatus[address(arg1)].field_0
                    require idx < troveStatus[address(arg1)].field_256
                    if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = troveStatus[address(arg1)][idx + 1].field_0
                        mem[32] = 208
                        _2875 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2875] = 12
                        mem[_2875 + 32] = 'sub overflow' << 160
                        if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                            _2894 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 12
                            idx = 0
                            while idx < 12:
                                mem[idx + _2894 + 68] = mem[idx + _2875 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2894 + 68] = mem[_2894 + 88 len 12]
                            revert with memory
                              from mem[64]
                               len _2894 + -mem[64] + 100
                        if troveStatus[address(arg1)][idx + 1].field_0 < 0:
                            revert with 0, 'add overflow'
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[32] = 208
                        totalStake[address(stor207[address(arg1)][idx].field_0)] = troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[mem[64] + 32] = troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                    else:
                        if not sub_af3700dc[address(stor207[address(arg1)][idx].field_0)]:
                            revert with 0, 'TM:stake=0'
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[32] = 209
                        if not troveStatus[address(arg1)][idx + 1].field_0:
                            _2906 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2906] = 8
                            mem[_2906 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _2906 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = 0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]
                            mem[32] = 208
                            _3082 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3082] = 12
                            mem[_3082 + 32] = 'sub overflow' << 160
                            if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                                _3124 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _3124 + 68] = mem[idx + _3082 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3124 + 68] = mem[_3124 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _3124 + -mem[64] + 100
                            if 0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)] < 0:
                                revert with 0, 'add overflow'
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[32] = 208
                            totalStake[address(stor207[address(arg1)][idx].field_0)] = (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[mem[64] + 32] = (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        else:
                            if sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / troveStatus[address(arg1)][idx + 1].field_0 != sub_af3700dc[address(stor207[address(arg1)][idx].field_0)]:
                                revert with 0, 'mul overflow'
                            _2917 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2917] = 8
                            mem[_2917 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _2917 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]
                            mem[32] = 208
                            _3102 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3102] = 12
                            mem[_3102 + 32] = 'sub overflow' << 160
                            if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                                _3149 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _3149 + 68] = mem[idx + _3102 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3149 + 68] = mem[_3149 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _3149 + -mem[64] + 100
                            if sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)] < 0:
                                revert with 0, 'add overflow'
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[32] = 208
                            totalStake[address(stor207[address(arg1)][idx].field_0)] = (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[mem[64] + 32] = (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                    idx = idx + 1
                    continue 
        else:
            s = 0
            idx = (32 * arg2.length) + 160
            while (32 * arg2.length) + (32 * arg3.length) + 160 > idx:
                troveStatus[address(arg1)][s + 1].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            while troveStatus[address(arg1)].field_256 > idx:
                troveStatus[address(arg1)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            troveStatus[address(arg1)].field_0 = arg2.length
            if not arg2.length:
                idx = 0
                while troveStatus[address(arg1)].field_0 > idx:
                    address(troveStatus[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = 207
                idx = 0
                while idx < troveStatus[address(arg1)].field_0:
                    require idx < troveStatus[address(arg1)].field_0
                    require idx < troveStatus[address(arg1)].field_256
                    if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = troveStatus[address(arg1)][idx + 1].field_0
                        mem[32] = 208
                        _2876 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2876] = 12
                        mem[_2876 + 32] = 'sub overflow' << 160
                        if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                            _2899 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 12
                            idx = 0
                            while idx < 12:
                                mem[idx + _2899 + 68] = mem[idx + _2876 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2899 + 68] = mem[_2899 + 88 len 12]
                            revert with memory
                              from mem[64]
                               len _2899 + -mem[64] + 100
                        if troveStatus[address(arg1)][idx + 1].field_0 < 0:
                            revert with 0, 'add overflow'
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[32] = 208
                        totalStake[address(stor207[address(arg1)][idx].field_0)] = troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[mem[64] + 32] = troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                    else:
                        if not sub_af3700dc[address(stor207[address(arg1)][idx].field_0)]:
                            revert with 0, 'TM:stake=0'
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[32] = 209
                        if not troveStatus[address(arg1)][idx + 1].field_0:
                            _2907 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2907] = 8
                            mem[_2907 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _2907 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = 0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]
                            mem[32] = 208
                            _3089 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3089] = 12
                            mem[_3089 + 32] = 'sub overflow' << 160
                            if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                                _3127 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _3127 + 68] = mem[idx + _3089 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3127 + 68] = mem[_3127 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _3127 + -mem[64] + 100
                            if 0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)] < 0:
                                revert with 0, 'add overflow'
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[32] = 208
                            totalStake[address(stor207[address(arg1)][idx].field_0)] = (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[mem[64] + 32] = (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        else:
                            if sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / troveStatus[address(arg1)][idx + 1].field_0 != sub_af3700dc[address(stor207[address(arg1)][idx].field_0)]:
                                revert with 0, 'mul overflow'
                            _2919 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2919] = 8
                            mem[_2919 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _2919 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]
                            mem[32] = 208
                            _3104 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3104] = 12
                            mem[_3104 + 32] = 'sub overflow' << 160
                            if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                                _3152 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _3152 + 68] = mem[idx + _3104 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3152 + 68] = mem[_3152 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _3152 + -mem[64] + 100
                            if sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)] < 0:
                                revert with 0, 'add overflow'
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[32] = 208
                            totalStake[address(stor207[address(arg1)][idx].field_0)] = (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[mem[64] + 32] = (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg2.length) + 128 > idx:
                    address(troveStatus[address(arg1)][s].field_0) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while troveStatus[address(arg1)].field_0 > idx:
                    address(troveStatus[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = 207
                idx = 0
                while idx < troveStatus[address(arg1)].field_0:
                    require idx < troveStatus[address(arg1)].field_0
                    require idx < troveStatus[address(arg1)].field_256
                    if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = troveStatus[address(arg1)][idx + 1].field_0
                        mem[32] = 208
                        _3428 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3428] = 12
                        mem[_3428 + 32] = 'sub overflow' << 160
                        if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                            _3436 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 12
                            idx = 0
                            while idx < 12:
                                mem[idx + _3436 + 68] = mem[idx + _3428 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3436 + 68] = mem[_3436 + 88 len 12]
                            revert with memory
                              from mem[64]
                               len _3436 + -mem[64] + 100
                        if troveStatus[address(arg1)][idx + 1].field_0 < 0:
                            revert with 0, 'add overflow'
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[32] = 208
                        totalStake[address(stor207[address(arg1)][idx].field_0)] = troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[mem[64] + 32] = troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), troveStatus[address(arg1)][idx + 1].field_0 + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                    else:
                        if not sub_af3700dc[address(stor207[address(arg1)][idx].field_0)]:
                            revert with 0, 'TM:stake=0'
                        mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                        mem[32] = 209
                        if not troveStatus[address(arg1)][idx + 1].field_0:
                            _3440 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3440] = 8
                            mem[_3440 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _3440 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = 0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]
                            mem[32] = 208
                            _3515 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3515] = 12
                            mem[_3515 + 32] = 'sub overflow' << 160
                            if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                                _3524 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _3524 + 68] = mem[idx + _3515 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3524 + 68] = mem[_3524 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _3524 + -mem[64] + 100
                            if 0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)] < 0:
                                revert with 0, 'add overflow'
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[32] = 208
                            totalStake[address(stor207[address(arg1)][idx].field_0)] = (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[mem[64] + 32] = (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), (0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                        else:
                            if sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / troveStatus[address(arg1)][idx + 1].field_0 != sub_af3700dc[address(stor207[address(arg1)][idx].field_0)]:
                                revert with 0, 'mul overflow'
                            _3443 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3443] = 8
                            mem[_3443 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not sub_de665835[address(stor207[address(arg1)][idx].field_0)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _3443 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 = sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]
                            mem[32] = 208
                            _3519 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3519] = 12
                            mem[_3519 + 32] = 'sub overflow' << 160
                            if troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0 > totalStake[address(stor207[address(arg1)][idx].field_0)]:
                                _3530 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _3530 + 68] = mem[idx + _3519 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3530 + 68] = mem[_3530 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _3530 + -mem[64] + 100
                            if sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)] < 0:
                                revert with 0, 'add overflow'
                            mem[0] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[32] = 208
                            totalStake[address(stor207[address(arg1)][idx].field_0)] = (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            mem[mem[64]] = address(troveStatus[address(arg1)][idx].field_0)
                            mem[mem[64] + 32] = (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                            emit 0xd5630907: address(troveStatus[address(arg1)][idx].field_0), (sub_af3700dc[address(stor207[address(arg1)][idx].field_0)] * troveStatus[address(arg1)][idx + 1].field_0 / sub_de665835[address(stor207[address(arg1)][idx].field_0)]) + totalStake[address(stor207[address(arg1)][idx].field_0)] - troveStatus[address(arg1)][3][address(troveStatus[address(arg1)][idx].field_0)].field_0
                    idx = idx + 1
                    continue 
}

function sub_e34f6d44(?) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if stor203 != msg.sender:
        revert with 0, 'WFC'
    if arg4.length != arg5.length:
        revert with 0, 'TM:Len input'
    if arg3:
        mem[(32 * arg4.length) + (32 * arg5.length) + 260 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[(64 * arg4.length) + (32 * arg5.length) + 260] = arg5.length
        mem[(64 * arg4.length) + (32 * arg5.length) + 292 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
        require ext_code.size(stor0)
        staticcall stor0.0x97a4b9f7 with:
                gas gas_remaining wei
               args Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + (32 * arg5.length) + floor32(arg4.length) + 260 len (32 * arg4.length) + (32 * arg5.length) + -floor32(arg4.length) + 32]), (32 * arg4.length) + 96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0xa055852300000000000000000000000000000000000000000000000000000000
        mem[(32 * arg4.length) + (32 * arg5.length) + 164] = 64
        mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg4.length
        mem[(32 * arg4.length) + (32 * arg5.length) + 260 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[(32 * arg4.length) + (32 * arg5.length) + 196] = (32 * arg4.length) + 96
        mem[(64 * arg4.length) + (32 * arg5.length) + 260] = arg5.length
        mem[(64 * arg4.length) + (32 * arg5.length) + 292 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
        require ext_code.size(stor0)
        staticcall stor0.0xa0558523 with:
                gas gas_remaining wei
               args Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + (32 * arg5.length) + floor32(arg4.length) + 260 len (32 * arg4.length) + (32 * arg5.length) + -floor32(arg4.length) + 32]), (32 * arg4.length) + 96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg4.length) + (32 * arg5.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160
        require return_data.size >= 32
        _13526 = mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0
        require mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 <= 4294967296
        require mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 + 32 <= return_data.size
        require mem[(32 * arg4.length) + (32 * arg5.length) + mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 + 160] <= 4294967296 and mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 + (32 * mem[(32 * arg4.length) + (32 * arg5.length) + mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 + 160]) + 32 <= return_data.size
        mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 + 160]
        _13529 = mem[(32 * arg4.length) + (32 * arg5.length) + _13526 + 160]
        mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + _13526 + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + _13526 + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + _13526 + 160])]
        mem[64] = (32 * _13529) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192
        idx = 0
        while idx < arg4.length:
            require idx < mem[96]
            _20255 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160]
            _20259 = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]
            if not mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]:
                _20268 = mem[64]
                mem[64] = mem[64] + 64
                mem[_20268] = 8
                mem[_20268 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 8
                    mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = 32
                    while idx < 8:
                        mem[idx + mem[64] + 68] = mem[idx + _20268 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, ''
                if not 0 / ext_call.return_data[0]:
                    if sub_9cbf3979[address(_20255)] < 0:
                        revert with 0, 'add overflow'
                    mem[0] = address(_20255)
                    mem[32] = 208
                    if not totalStake[address(_20255)]:
                        mem[mem[64]] = 0x1d4c200e00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor0)
                        staticcall stor0.0x1d4c200e with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20327 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _20337 = mem[_20327]
                        require mem[_20327] <= 4294967296
                        require mem[_20327] + 32 <= return_data.size
                        require mem[_20327 + mem[_20327]] <= 4294967296 and mem[_20327] + (32 * mem[_20327 + mem[_20327]]) + 32 <= return_data.size
                        mem[_20327 + ceil32(return_data.size)] = mem[_20327 + mem[_20327]]
                        _20361 = mem[_20327 + _20337]
                        s = 0
                        while s < 32 * _20361:
                            mem[s + _20327 + ceil32(return_data.size) + 32] = mem[s + _20327 + _20337 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _20361) + _20327 + ceil32(return_data.size) + 32
                        _23721 = mem[_20327 + 32]
                        require mem[_20327 + 32] <= 4294967296
                        require mem[_20327 + 32] + 32 <= return_data.size
                        require mem[_20327 + mem[_20327 + 32]] <= 4294967296 and mem[_20327 + 32] + (32 * mem[_20327 + mem[_20327 + 32]]) + 32 <= return_data.size
                        mem[(32 * _20361) + _20327 + ceil32(return_data.size) + 32] = mem[_20327 + mem[_20327 + 32]]
                        _24156 = mem[_20327 + _23721]
                        s = 0
                        while s < 32 * _24156:
                            mem[s + (32 * _20361) + _20327 + ceil32(return_data.size) + 64] = mem[s + _20327 + _23721 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _24156) + (32 * _20361) + _20327 + ceil32(return_data.size) + 64
                        _26466 = mem[_20327 + ceil32(return_data.size)]
                        s = 0
                        t = 0
                        while s < _26466:
                            require s < mem[_20327 + ceil32(return_data.size)]
                            mem[0] = mem[(32 * s) + _20327 + ceil32(return_data.size) + 44 len 20]
                            mem[32] = 208
                            if totalStake[mem[0]] != 0:
                                _26466 = mem[_20327 + ceil32(return_data.size)]
                                s = s + 1
                                t = t
                                continue 
                            require s < mem[(32 * _20361) + _20327 + ceil32(return_data.size) + 32]
                            _26509 = mem[(32 * s) + (32 * _20361) + _20327 + ceil32(return_data.size) + 64]
                            require s < mem[(32 * _20361) + _20327 + ceil32(return_data.size) + 32]
                            mem[(32 * s) + (32 * _20361) + _20327 + ceil32(return_data.size) + 64] = 0
                            _26466 = mem[_20327 + ceil32(return_data.size)]
                            s = s + 1
                            t = t + _26509
                            continue 
                        if not mem[_20327 + ceil32(return_data.size)]:
                            revert with 0, 'TM:absCollsInvalid'
                        if 10^18 == t:
                            revert with 0, 'TM:absCollsInvalid'
                        _28682 = mem[_20327 + ceil32(return_data.size)]
                        s = 0
                        while s < _28682:
                            require s < mem[(32 * _20361) + _20327 + ceil32(return_data.size) + 32]
                            if mem[(32 * s) + (32 * _20361) + _20327 + ceil32(return_data.size) + 64] != 0:
                                require s < mem[_20327 + ceil32(return_data.size)]
                                _28718 = mem[(32 * s) + _20327 + ceil32(return_data.size) + 32]
                                if 0 == t:
                                    mem[0] = mem[(32 * s) + _20327 + ceil32(return_data.size) + 44 len 20]
                                    mem[32] = 216
                                    _28740 = sha3(mem[0], 216)
                                    require s < mem[(32 * _20361) + _20327 + ceil32(return_data.size) + 32]
                                    _28749 = mem[(32 * s) + (32 * _20361) + _20327 + ceil32(return_data.size) + 64]
                                    if not 0 / ext_call.return_data[0]:
                                        if sub_9cbf3979[mem[0]] < 0:
                                            revert with 0, 'add overflow'
                                        require ext_code.size(address(_28718))
                                        staticcall address(_28718).decimals() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(_28718)
                                        mem[32] = 208
                                        if uint8(ext_call.return_data[0]) <= 18:
                                            if not totalStake[address(_28718)]:
                                                _29014 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29014] = 8
                                                mem[_29014 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29014 + 32]
                                                    _28682 = mem[_20327 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] / totalStake[address(_28718)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                                revert with 0, 'mul overflow'
                                            _29059 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29059] = 8
                                            mem[_29059 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29059 + 32]
                                                    _28682 = mem[_20327 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not stor[_28740] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]:
                                                _29712 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29712] = 12
                                                mem[_29712 + 32] = 'sub overflow' << 160
                                                if 0 > stor[_28740]:
                                                    _29786 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29786 + 68] = mem[idx + _29712 + 32]
                                                        _28682 = mem[_20327 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29786 + 68] = mem[_29786 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29786 + -mem[64] + 100
                                                sub_9cbf3979[address(_28718)] = stor[_28740]
                                            else:
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] * stor[_28740] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] / stor[_28740] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]:
                                                    revert with 0, 'mul overflow'
                                                _29746 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29746] = 12
                                                mem[_29746 + 32] = 'sub overflow' << 160
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] * stor[_28740] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] > stor[_28740]:
                                                    _29844 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29844 + 68] = mem[idx + _29746 + 32]
                                                        _28682 = mem[_20327 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29844 + 68] = mem[_29844 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29844 + -mem[64] + 100
                                                sub_9cbf3979[address(_28718)] = stor[_28740] - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] * stor[_28740] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)])
                                            if (stor[_28740] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]) + sub_cde04799[address(_28718)] < sub_cde04799[address(_28718)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28718)] += stor[_28740] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]
                                        else:
                                            _28887 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_28887] = 8
                                            mem[_28887 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28887 + 32]
                                                    _28682 = mem[_20327 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            _29112 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29112] = 8
                                            mem[_29112 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29112 + 32]
                                                    _28682 = mem[_20327 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not stor[_28740] / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                _29747 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29747] = 12
                                                mem[_29747 + 32] = 'sub overflow' << 160
                                                if 0 > stor[_28740]:
                                                    _29847 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29847 + 68] = mem[idx + _29747 + 32]
                                                        _28682 = mem[_20327 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29847 + 68] = mem[_29847 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29847 + -mem[64] + 100
                                                sub_9cbf3979[address(_28718)] = stor[_28740]
                                            else:
                                                if totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28740] / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) / stor[_28740] / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                    revert with 0, 'mul overflow'
                                                _29789 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29789] = 12
                                                mem[_29789 + 32] = 'sub overflow' << 160
                                                if totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28740] / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) > stor[_28740]:
                                                    _29918 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29918 + 68] = mem[idx + _29789 + 32]
                                                        _28682 = mem[_20327 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29918 + 68] = mem[_29918 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29918 + -mem[64] + 100
                                                sub_9cbf3979[address(_28718)] = stor[_28740] - (totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28740] / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                            if (stor[_28740] / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_28718)] < sub_cde04799[address(_28718)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28718)] += stor[_28740] / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                    else:
                                        if mem[(32 * s) + (32 * _20361) + _20327 + ceil32(return_data.size) + 64] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != mem[(32 * s) + (32 * _20361) + _20327 + ceil32(return_data.size) + 64]:
                                            revert with 0, 'mul overflow'
                                        if sub_9cbf3979[mem[0]] + (mem[(32 * s) + (32 * _20361) + _20327 + ceil32(return_data.size) + 64] * 0 / ext_call.return_data[0]) < mem[(32 * s) + (32 * _20361) + _20327 + ceil32(return_data.size) + 64] * 0 / ext_call.return_data[0]:
                                            revert with 0, 'add overflow'
                                        require ext_code.size(address(_28718))
                                        staticcall address(_28718).decimals() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(_28718)
                                        mem[32] = 208
                                        if uint8(ext_call.return_data[0]) <= 18:
                                            if not totalStake[address(_28718)]:
                                                _29056 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29056] = 8
                                                mem[_29056 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29056 + 32]
                                                    _28682 = mem[_20327 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] / totalStake[address(_28718)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                                revert with 0, 'mul overflow'
                                            _29106 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29106] = 8
                                            mem[_29106 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29106 + 32]
                                                    _28682 = mem[_20327 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not stor[_28740] + (_28749 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]:
                                                _29743 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29743] = 12
                                                mem[_29743 + 32] = 'sub overflow' << 160
                                                if 0 > stor[_28740] + (_28749 * 0 / ext_call.return_data[0]):
                                                    _29840 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29840 + 68] = mem[idx + _29743 + 32]
                                                        _28682 = mem[_20327 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29840 + 68] = mem[_29840 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29840 + -mem[64] + 100
                                                sub_9cbf3979[address(_28718)] = stor[_28740] + (_28749 * 0 / ext_call.return_data[0])
                                            else:
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] * stor[_28740] + (_28749 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] / stor[_28740] + (_28749 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]:
                                                    revert with 0, 'mul overflow'
                                                _29784 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29784] = 12
                                                mem[_29784 + 32] = 'sub overflow' << 160
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] * stor[_28740] + (_28749 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] > stor[_28740] + (_28749 * 0 / ext_call.return_data[0]):
                                                    _29909 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29909 + 68] = mem[idx + _29784 + 32]
                                                        _28682 = mem[_20327 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29909 + 68] = mem[_29909 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29909 + -mem[64] + 100
                                                sub_9cbf3979[address(_28718)] = stor[_28740] + (_28749 * 0 / ext_call.return_data[0]) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] * stor[_28740] + (_28749 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)])
                                            if (stor[_28740] + (_28749 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]) + sub_cde04799[address(_28718)] < sub_cde04799[address(_28718)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28718)] += stor[_28740] + (_28749 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]
                                        else:
                                            _28900 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_28900] = 8
                                            mem[_28900 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28900 + 32]
                                                    _28682 = mem[_20327 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            _29167 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29167] = 8
                                            mem[_29167 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29167 + 32]
                                                    _28682 = mem[_20327 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not stor[_28740] + (_28749 * 0 / ext_call.return_data[0]) / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                _29785 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29785] = 12
                                                mem[_29785 + 32] = 'sub overflow' << 160
                                                if 0 > stor[_28740] + (_28749 * 0 / ext_call.return_data[0]):
                                                    _29912 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29912 + 68] = mem[idx + _29785 + 32]
                                                        _28682 = mem[_20327 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29912 + 68] = mem[_29912 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29912 + -mem[64] + 100
                                                sub_9cbf3979[address(_28718)] = stor[_28740] + (_28749 * 0 / ext_call.return_data[0])
                                            else:
                                                if totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28740] + (_28749 * 0 / ext_call.return_data[0]) / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) / stor[_28740] + (_28749 * 0 / ext_call.return_data[0]) / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                    revert with 0, 'mul overflow'
                                                _29843 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29843] = 12
                                                mem[_29843 + 32] = 'sub overflow' << 160
                                                if totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28740] + (_28749 * 0 / ext_call.return_data[0]) / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) > stor[_28740] + (_28749 * 0 / ext_call.return_data[0]):
                                                    _30002 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30002 + 68] = mem[idx + _29843 + 32]
                                                        _28682 = mem[_20327 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30002 + 68] = mem[_30002 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30002 + -mem[64] + 100
                                                sub_9cbf3979[address(_28718)] = stor[_28740] + (_28749 * 0 / ext_call.return_data[0]) - (totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28740] + (_28749 * 0 / ext_call.return_data[0]) / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                            if (stor[_28740] + (_28749 * 0 / ext_call.return_data[0]) / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_28718)] < sub_cde04799[address(_28718)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28718)] += stor[_28740] + (_28749 * 0 / ext_call.return_data[0]) / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                else:
                                    require s < mem[(32 * _20361) + _20327 + ceil32(return_data.size) + 32]
                                    mem[(32 * s) + (32 * _20361) + _20327 + ceil32(return_data.size) + 64] = mem[(32 * s) + (32 * _20361) + _20327 + ceil32(return_data.size) + 64] + t
                                    mem[32] = 216
                                    require s < mem[(32 * _20361) + _20327 + ceil32(return_data.size) + 32]
                                    _28766 = mem[(32 * s) + (32 * _20361) + _20327 + ceil32(return_data.size) + 64]
                                    if not 0 / ext_call.return_data[0]:
                                        if sub_9cbf3979[address(_28718)] < 0:
                                            revert with 0, 'add overflow'
                                        require ext_code.size(address(_28718))
                                        staticcall address(_28718).decimals() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(_28718)
                                        mem[32] = 208
                                        if uint8(ext_call.return_data[0]) <= 18:
                                            if not totalStake[address(_28718)]:
                                                _29116 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29116] = 8
                                                mem[_29116 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29116 + 32]
                                                    _28682 = mem[_20327 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] / totalStake[address(_28718)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                                revert with 0, 'mul overflow'
                                            _29176 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29176] = 8
                                            mem[_29176 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29176 + 32]
                                                    _28682 = mem[_20327 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not sub_9cbf3979[address(_28718)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]:
                                                _29792 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29792] = 12
                                                mem[_29792 + 32] = 'sub overflow' << 160
                                                if 0 > sub_9cbf3979[address(_28718)]:
                                                    _29923 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29923 + 68] = mem[idx + _29792 + 32]
                                                        _28682 = mem[_20327 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29923 + 68] = mem[_29923 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29923 + -mem[64] + 100
                                            else:
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] * sub_9cbf3979[address(_28718)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] / sub_9cbf3979[address(_28718)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]:
                                                    revert with 0, 'mul overflow'
                                                _29853 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29853] = 12
                                                mem[_29853 + 32] = 'sub overflow' << 160
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] * sub_9cbf3979[address(_28718)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] > sub_9cbf3979[address(_28718)]:
                                                    _30017 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30017 + 68] = mem[idx + _29853 + 32]
                                                        _28682 = mem[_20327 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30017 + 68] = mem[_30017 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30017 + -mem[64] + 100
                                                sub_9cbf3979[address(_28718)] += -1 * 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] * sub_9cbf3979[address(_28718)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]
                                            if (sub_9cbf3979[address(_28718)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]) + sub_cde04799[address(_28718)] < sub_cde04799[address(_28718)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28718)] += sub_9cbf3979[address(_28718)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]
                                        else:
                                            _28918 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_28918] = 8
                                            mem[_28918 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28918 + 32]
                                                    _28682 = mem[_20327 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            _29249 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29249] = 8
                                            mem[_29249 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29249 + 32]
                                                    _28682 = mem[_20327 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not sub_9cbf3979[address(_28718)] / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                _29854 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29854] = 12
                                                mem[_29854 + 32] = 'sub overflow' << 160
                                                if 0 > sub_9cbf3979[address(_28718)]:
                                                    _30020 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30020 + 68] = mem[idx + _29854 + 32]
                                                        _28682 = mem[_20327 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30020 + 68] = mem[_30020 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30020 + -mem[64] + 100
                                            else:
                                                if totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28718)] / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_9cbf3979[address(_28718)] / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                    revert with 0, 'mul overflow'
                                                _29926 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29926] = 12
                                                mem[_29926 + 32] = 'sub overflow' << 160
                                                if totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28718)] / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_9cbf3979[address(_28718)]:
                                                    _30140 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30140 + 68] = mem[idx + _29926 + 32]
                                                        _28682 = mem[_20327 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30140 + 68] = mem[_30140 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30140 + -mem[64] + 100
                                                sub_9cbf3979[address(_28718)] += -1 * totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28718)] / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                            if (sub_9cbf3979[address(_28718)] / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_28718)] < sub_cde04799[address(_28718)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28718)] += sub_9cbf3979[address(_28718)] / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                    else:
                                        if mem[(32 * s) + (32 * _20361) + _20327 + ceil32(return_data.size) + 64] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != mem[(32 * s) + (32 * _20361) + _20327 + ceil32(return_data.size) + 64]:
                                            revert with 0, 'mul overflow'
                                        if sub_9cbf3979[address(_28718)] + (mem[(32 * s) + (32 * _20361) + _20327 + ceil32(return_data.size) + 64] * 0 / ext_call.return_data[0]) < mem[(32 * s) + (32 * _20361) + _20327 + ceil32(return_data.size) + 64] * 0 / ext_call.return_data[0]:
                                            revert with 0, 'add overflow'
                                        require ext_code.size(address(_28718))
                                        staticcall address(_28718).decimals() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(_28718)
                                        mem[32] = 208
                                        if uint8(ext_call.return_data[0]) <= 18:
                                            if not totalStake[address(_28718)]:
                                                _29173 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29173] = 8
                                                mem[_29173 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29173 + 32]
                                                    _28682 = mem[_20327 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] / totalStake[address(_28718)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                                revert with 0, 'mul overflow'
                                            _29243 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29243] = 8
                                            mem[_29243 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29243 + 32]
                                                    _28682 = mem[_20327 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]:
                                                _29850 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29850] = 12
                                                mem[_29850 + 32] = 'sub overflow' << 160
                                                if 0 > sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]):
                                                    _30013 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30013 + 68] = mem[idx + _29850 + 32]
                                                        _28682 = mem[_20327 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30013 + 68] = mem[_30013 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30013 + -mem[64] + 100
                                                sub_9cbf3979[address(_28718)] += _28766 * 0 / ext_call.return_data[0]
                                            else:
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] * sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] / sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]:
                                                    revert with 0, 'mul overflow'
                                                _29921 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29921] = 12
                                                mem[_29921 + 32] = 'sub overflow' << 160
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] * sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] > sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]):
                                                    _30131 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30131 + 68] = mem[idx + _29921 + 32]
                                                        _28682 = mem[_20327 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30131 + 68] = mem[_30131 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30131 + -mem[64] + 100
                                                sub_9cbf3979[address(_28718)] = sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)] * sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)])
                                            if (sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]) + sub_cde04799[address(_28718)] < sub_cde04799[address(_28718)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28718)] += sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28718)]
                                        else:
                                            _28946 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_28946] = 8
                                            mem[_28946 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28946 + 32]
                                                    _28682 = mem[_20327 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            _29325 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29325] = 8
                                            mem[_29325 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29325 + 32]
                                                    _28682 = mem[_20327 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]) / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                _29922 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29922] = 12
                                                mem[_29922 + 32] = 'sub overflow' << 160
                                                if 0 > sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]):
                                                    _30134 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30134 + 68] = mem[idx + _29922 + 32]
                                                        _28682 = mem[_20327 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30134 + 68] = mem[_30134 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30134 + -mem[64] + 100
                                                sub_9cbf3979[address(_28718)] += _28766 * 0 / ext_call.return_data[0]
                                            else:
                                                if totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]) / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]) / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                    revert with 0, 'mul overflow'
                                                _30016 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_30016] = 12
                                                mem[_30016 + 32] = 'sub overflow' << 160
                                                if totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]) / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]):
                                                    _30264 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30264 + 68] = mem[idx + _30016 + 32]
                                                        _28682 = mem[_20327 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30264 + 68] = mem[_30264 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30264 + -mem[64] + 100
                                                sub_9cbf3979[address(_28718)] = sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]) - (totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]) / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                            if (sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]) / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_28718)] < sub_cde04799[address(_28718)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28718)] += sub_9cbf3979[address(_28718)] + (_28766 * 0 / ext_call.return_data[0]) / totalStake[address(_28718)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                mem[0] = address(_28718)
                                mem[32] = 212
                                mem[mem[64]] = address(_28718)
                                mem[mem[64] + 32] = sub_693c781c[address(_28718)]
                                mem[mem[64] + 64] = sub_cde04799[address(_28718)]
                                emit 0x6f63d00b: address(_28718), sub_693c781c[address(_28718)], sub_cde04799[address(_28718)]
                            _28682 = mem[_20327 + ceil32(return_data.size)]
                            s = s + 1
                            continue 
                        require ext_code.size(stor0)
                        staticcall stor0.0x8f871a6c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg4.length) + 128]
                        _28737 = mem[(32 * idx) + (32 * arg4.length) + 160]
                        mem[mem[64]] = 0x62f6105b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = address(_20255)
                        mem[mem[64] + 68] = _28737
                        require ext_code.size(stor50)
                        call stor50.0x62f6105b with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(_20255), _28737
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < mem[(32 * arg4.length) + 128]
                        mem[(32 * idx) + (32 * arg4.length) + 160] = 0
                    else:
                        require idx < mem[(32 * arg4.length) + 128]
                        _20321 = mem[(32 * idx) + (32 * arg4.length) + 160]
                        require ext_code.size(address(_20255))
                        staticcall address(_20255).decimals() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = address(_20255)
                        mem[32] = 208
                        if uint8(ext_call.return_data[0]) <= 18:
                            if not totalStake[address(_20255)]:
                                _20421 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20421] = 8
                                mem[_20421 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _20421 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                revert with 0, 'mul overflow'
                            _20434 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20434] = 8
                            mem[_20434 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _20434 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            if not sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                _20667 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20667] = 12
                                mem[_20667 + 32] = 'sub overflow' << 160
                                if 0 > sub_9cbf3979[address(_20255)]:
                                    _20714 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 12
                                    idx = 0
                                    while idx < 12:
                                        mem[idx + _20714 + 68] = mem[idx + _20667 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20714 + 68] = mem[_20714 + 88 len 12]
                                    revert with memory
                                      from mem[64]
                                       len _20714 + -mem[64] + 100
                                if (sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_cde04799[address(_20255)] < sub_cde04799[address(_20255)]:
                                    revert with 0, 'add overflow'
                                sub_cde04799[address(_20255)] += sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                mem[0] = address(_20255)
                                mem[32] = 215
                                if not _20321:
                                    if sub_328e1404[address(_20255)] < 0:
                                        revert with 0, 'add overflow'
                                    _21068 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21068] = 8
                                    mem[_21068 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21068 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        _21745 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21745] = 12
                                        mem[_21745 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)]:
                                            _21898 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _21898 + 68] = mem[idx + _21745 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_21898 + 68] = mem[_21898 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _21898 + -mem[64] + 100
                                    else:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                            revert with 0, 'mul overflow'
                                        _21820 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21820] = 12
                                        mem[_21820 + 32] = 'sub overflow' << 160
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_328e1404[address(_20255)]:
                                            _21976 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _21976 + 68] = mem[idx + _21820 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_21976 + 68] = mem[_21976 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _21976 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += -1 * 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                    if (sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                else:
                                    if 10^18 * _20321 / _20321 != 10^18:
                                        revert with 0, 'mul overflow'
                                    if sub_328e1404[address(_20255)] + (10^18 * _20321) < 10^18 * _20321:
                                        revert with 0, 'add overflow'
                                    _21100 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21100] = 8
                                    mem[_21100 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21100 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] + (10^18 * _20321) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        _21819 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21819] = 12
                                        mem[_21819 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)] + (10^18 * _20321):
                                            _21973 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _21973 + 68] = mem[idx + _21819 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_21973 + 68] = mem[_21973 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _21973 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += 10^18 * _20321
                                    else:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20321) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_328e1404[address(_20255)] + (10^18 * _20321) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                            revert with 0, 'mul overflow'
                                        _21897 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21897] = 12
                                        mem[_21897 + 32] = 'sub overflow' << 160
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20321) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_328e1404[address(_20255)] + (10^18 * _20321):
                                            _22053 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22053 + 68] = mem[idx + _21897 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22053 + 68] = mem[_22053 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22053 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] = sub_328e1404[address(_20255)] + (10^18 * _20321) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20321) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)])
                                    if (sub_328e1404[address(_20255)] + (10^18 * _20321) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] + (10^18 * _20321) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                            else:
                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                    revert with 0, 'mul overflow'
                                _20691 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20691] = 12
                                mem[_20691 + 32] = 'sub overflow' << 160
                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_9cbf3979[address(_20255)]:
                                    _20736 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 12
                                    idx = 0
                                    while idx < 12:
                                        mem[idx + _20736 + 68] = mem[idx + _20691 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20736 + 68] = mem[_20736 + 88 len 12]
                                    revert with memory
                                      from mem[64]
                                       len _20736 + -mem[64] + 100
                                sub_9cbf3979[address(_20255)] += -1 * 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                if (sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_cde04799[address(_20255)] < sub_cde04799[address(_20255)]:
                                    revert with 0, 'add overflow'
                                sub_cde04799[address(_20255)] += sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                mem[0] = address(_20255)
                                mem[32] = 215
                                if not _20321:
                                    if sub_328e1404[address(_20255)] < 0:
                                        revert with 0, 'add overflow'
                                    _21099 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21099] = 8
                                    mem[_21099 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21099 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        _21818 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21818] = 12
                                        mem[_21818 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)]:
                                            _21970 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _21970 + 68] = mem[idx + _21818 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_21970 + 68] = mem[_21970 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _21970 + -mem[64] + 100
                                    else:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                            revert with 0, 'mul overflow'
                                        _21896 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21896] = 12
                                        mem[_21896 + 32] = 'sub overflow' << 160
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_328e1404[address(_20255)]:
                                            _22050 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22050 + 68] = mem[idx + _21896 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22050 + 68] = mem[_22050 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22050 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += -1 * 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                    if (sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                else:
                                    if 10^18 * _20321 / _20321 != 10^18:
                                        revert with 0, 'mul overflow'
                                    if sub_328e1404[address(_20255)] + (10^18 * _20321) < 10^18 * _20321:
                                        revert with 0, 'add overflow'
                                    _21134 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21134] = 8
                                    mem[_21134 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21134 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] + (10^18 * _20321) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        _21895 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21895] = 12
                                        mem[_21895 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)] + (10^18 * _20321):
                                            _22047 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22047 + 68] = mem[idx + _21895 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22047 + 68] = mem[_22047 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22047 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += 10^18 * _20321
                                    else:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20321) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_328e1404[address(_20255)] + (10^18 * _20321) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                            revert with 0, 'mul overflow'
                                        _21969 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21969] = 12
                                        mem[_21969 + 32] = 'sub overflow' << 160
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20321) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_328e1404[address(_20255)] + (10^18 * _20321):
                                            _22144 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22144 + 68] = mem[idx + _21969 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22144 + 68] = mem[_22144 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22144 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] = sub_328e1404[address(_20255)] + (10^18 * _20321) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20321) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)])
                                    if (sub_328e1404[address(_20255)] + (10^18 * _20321) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] + (10^18 * _20321) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                        else:
                            _20367 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20367] = 8
                            mem[_20367 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _20367 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            _20452 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20452] = 8
                            mem[_20452 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _20452 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            if not sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                _20692 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20692] = 12
                                mem[_20692 + 32] = 'sub overflow' << 160
                                if 0 > sub_9cbf3979[address(_20255)]:
                                    _20739 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 12
                                    idx = 0
                                    while idx < 12:
                                        mem[idx + _20739 + 68] = mem[idx + _20692 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20739 + 68] = mem[_20739 + 88 len 12]
                                    revert with memory
                                      from mem[64]
                                       len _20739 + -mem[64] + 100
                                if (sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_20255)] < sub_cde04799[address(_20255)]:
                                    revert with 0, 'add overflow'
                                sub_cde04799[address(_20255)] += sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                mem[0] = address(_20255)
                                mem[32] = 215
                                if not _20321:
                                    if sub_328e1404[address(_20255)] < 0:
                                        revert with 0, 'add overflow'
                                    _21103 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21103] = 8
                                    mem[_21103 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21103 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        _21825 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21825] = 12
                                        mem[_21825 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)]:
                                            _21982 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _21982 + 68] = mem[idx + _21825 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_21982 + 68] = mem[_21982 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _21982 + -mem[64] + 100
                                    else:
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                            revert with 0, 'mul overflow'
                                        _21905 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21905] = 12
                                        mem[_21905 + 32] = 'sub overflow' << 160
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_328e1404[address(_20255)]:
                                            _22066 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22066 + 68] = mem[idx + _21905 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22066 + 68] = mem[_22066 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22066 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += -1 * totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                    if (sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                else:
                                    if 10^18 * _20321 / _20321 != 10^18:
                                        revert with 0, 'mul overflow'
                                    if sub_328e1404[address(_20255)] + (10^18 * _20321) < 10^18 * _20321:
                                        revert with 0, 'add overflow'
                                    _21139 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21139] = 8
                                    mem[_21139 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21139 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] + (10^18 * _20321) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        _21904 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21904] = 12
                                        mem[_21904 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)] + (10^18 * _20321):
                                            _22063 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22063 + 68] = mem[idx + _21904 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22063 + 68] = mem[_22063 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22063 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += 10^18 * _20321
                                    else:
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20321) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_328e1404[address(_20255)] + (10^18 * _20321) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                            revert with 0, 'mul overflow'
                                        _21981 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21981] = 12
                                        mem[_21981 + 32] = 'sub overflow' << 160
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20321) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_328e1404[address(_20255)] + (10^18 * _20321):
                                            _22164 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22164 + 68] = mem[idx + _21981 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22164 + 68] = mem[_22164 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22164 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] = sub_328e1404[address(_20255)] + (10^18 * _20321) - (totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20321) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                    if (sub_328e1404[address(_20255)] + (10^18 * _20321) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] + (10^18 * _20321) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                            else:
                                if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                    revert with 0, 'mul overflow'
                                _20717 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20717] = 12
                                mem[_20717 + 32] = 'sub overflow' << 160
                                if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_9cbf3979[address(_20255)]:
                                    _20764 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 12
                                    idx = 0
                                    while idx < 12:
                                        mem[idx + _20764 + 68] = mem[idx + _20717 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20764 + 68] = mem[_20764 + 88 len 12]
                                    revert with memory
                                      from mem[64]
                                       len _20764 + -mem[64] + 100
                                sub_9cbf3979[address(_20255)] += -1 * totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                if (sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_20255)] < sub_cde04799[address(_20255)]:
                                    revert with 0, 'add overflow'
                                sub_cde04799[address(_20255)] += sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                mem[0] = address(_20255)
                                mem[32] = 215
                                if not _20321:
                                    if sub_328e1404[address(_20255)] < 0:
                                        revert with 0, 'add overflow'
                                    _21138 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21138] = 8
                                    mem[_21138 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21138 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        _21903 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21903] = 12
                                        mem[_21903 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)]:
                                            _22060 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22060 + 68] = mem[idx + _21903 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22060 + 68] = mem[_22060 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22060 + -mem[64] + 100
                                    else:
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                            revert with 0, 'mul overflow'
                                        _21980 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21980] = 12
                                        mem[_21980 + 32] = 'sub overflow' << 160
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_328e1404[address(_20255)]:
                                            _22161 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22161 + 68] = mem[idx + _21980 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22161 + 68] = mem[_22161 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22161 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += -1 * totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                    if (sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                else:
                                    if 10^18 * _20321 / _20321 != 10^18:
                                        revert with 0, 'mul overflow'
                                    if sub_328e1404[address(_20255)] + (10^18 * _20321) < 10^18 * _20321:
                                        revert with 0, 'add overflow'
                                    _21184 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21184] = 8
                                    mem[_21184 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21184 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] + (10^18 * _20321) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        _21979 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21979] = 12
                                        mem[_21979 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)] + (10^18 * _20321):
                                            _22158 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22158 + 68] = mem[idx + _21979 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22158 + 68] = mem[_22158 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22158 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += 10^18 * _20321
                                    else:
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20321) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_328e1404[address(_20255)] + (10^18 * _20321) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                            revert with 0, 'mul overflow'
                                        _22059 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22059] = 12
                                        mem[_22059 + 32] = 'sub overflow' << 160
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20321) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_328e1404[address(_20255)] + (10^18 * _20321):
                                            _22280 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22280 + 68] = mem[idx + _22059 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22280 + 68] = mem[_22280 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22280 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] = sub_328e1404[address(_20255)] + (10^18 * _20321) - (totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20321) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                    if (sub_328e1404[address(_20255)] + (10^18 * _20321) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] + (10^18 * _20321) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                        mem[0] = address(_20255)
                        mem[32] = 212
                        mem[mem[64]] = address(_20255)
                        mem[mem[64] + 32] = sub_693c781c[address(_20255)]
                        mem[mem[64] + 64] = sub_cde04799[address(_20255)]
                        emit 0x6f63d00b: address(_20255), sub_693c781c[address(_20255)], sub_cde04799[address(_20255)]
                else:
                    if 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 10^18:
                        revert with 0, 'mul overflow'
                    if sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) < 10^18 * 0 / ext_call.return_data[0]:
                        revert with 0, 'add overflow'
                    mem[0] = address(_20255)
                    mem[32] = 208
                    if not totalStake[address(_20255)]:
                        mem[mem[64]] = 0x1d4c200e00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor0)
                        staticcall stor0.0x1d4c200e with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20334 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _20344 = mem[_20334]
                        require mem[_20334] <= 4294967296
                        require mem[_20334] + 32 <= return_data.size
                        require mem[_20334 + mem[_20334]] <= 4294967296 and mem[_20334] + (32 * mem[_20334 + mem[_20334]]) + 32 <= return_data.size
                        mem[_20334 + ceil32(return_data.size)] = mem[_20334 + mem[_20334]]
                        _20366 = mem[_20334 + _20344]
                        s = 0
                        while s < 32 * _20366:
                            mem[s + _20334 + ceil32(return_data.size) + 32] = mem[s + _20334 + _20344 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _20366) + _20334 + ceil32(return_data.size) + 32
                        _23686 = mem[_20334 + 32]
                        require mem[_20334 + 32] <= 4294967296
                        require mem[_20334 + 32] + 32 <= return_data.size
                        require mem[_20334 + mem[_20334 + 32]] <= 4294967296 and mem[_20334 + 32] + (32 * mem[_20334 + mem[_20334 + 32]]) + 32 <= return_data.size
                        mem[(32 * _20366) + _20334 + ceil32(return_data.size) + 32] = mem[_20334 + mem[_20334 + 32]]
                        _24155 = mem[_20334 + _23686]
                        s = 0
                        while s < 32 * _24155:
                            mem[s + (32 * _20366) + _20334 + ceil32(return_data.size) + 64] = mem[s + _20334 + _23686 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _24155) + (32 * _20366) + _20334 + ceil32(return_data.size) + 64
                        _26465 = mem[_20334 + ceil32(return_data.size)]
                        s = 0
                        t = 0
                        while s < _26465:
                            require s < mem[_20334 + ceil32(return_data.size)]
                            mem[0] = mem[(32 * s) + _20334 + ceil32(return_data.size) + 44 len 20]
                            mem[32] = 208
                            if totalStake[mem[0]] != 0:
                                _26465 = mem[_20334 + ceil32(return_data.size)]
                                s = s + 1
                                t = t
                                continue 
                            require s < mem[(32 * _20366) + _20334 + ceil32(return_data.size) + 32]
                            _26505 = mem[(32 * s) + (32 * _20366) + _20334 + ceil32(return_data.size) + 64]
                            require s < mem[(32 * _20366) + _20334 + ceil32(return_data.size) + 32]
                            mem[(32 * s) + (32 * _20366) + _20334 + ceil32(return_data.size) + 64] = 0
                            _26465 = mem[_20334 + ceil32(return_data.size)]
                            s = s + 1
                            t = t + _26505
                            continue 
                        if not mem[_20334 + ceil32(return_data.size)]:
                            revert with 0, 'TM:absCollsInvalid'
                        if 10^18 == t:
                            revert with 0, 'TM:absCollsInvalid'
                        _28681 = mem[_20334 + ceil32(return_data.size)]
                        s = 0
                        while s < _28681:
                            require s < mem[(32 * _20366) + _20334 + ceil32(return_data.size) + 32]
                            if mem[(32 * s) + (32 * _20366) + _20334 + ceil32(return_data.size) + 64] != 0:
                                require s < mem[_20334 + ceil32(return_data.size)]
                                _28715 = mem[(32 * s) + _20334 + ceil32(return_data.size) + 32]
                                if 0 == t:
                                    mem[0] = mem[(32 * s) + _20334 + ceil32(return_data.size) + 44 len 20]
                                    mem[32] = 216
                                    _28734 = sha3(mem[0], 216)
                                    require s < mem[(32 * _20366) + _20334 + ceil32(return_data.size) + 32]
                                    _28747 = mem[(32 * s) + (32 * _20366) + _20334 + ceil32(return_data.size) + 64]
                                    if not 0 / ext_call.return_data[0]:
                                        if sub_9cbf3979[mem[0]] < 0:
                                            revert with 0, 'add overflow'
                                        require ext_code.size(address(_28715))
                                        staticcall address(_28715).decimals() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(_28715)
                                        mem[32] = 208
                                        if uint8(ext_call.return_data[0]) <= 18:
                                            if not totalStake[address(_28715)]:
                                                _29003 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29003] = 8
                                                mem[_29003 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29003 + 32]
                                                    _28681 = mem[_20334 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] / totalStake[address(_28715)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                                revert with 0, 'mul overflow'
                                            _29048 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29048] = 8
                                            mem[_29048 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29048 + 32]
                                                    _28681 = mem[_20334 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not stor[_28734] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]:
                                                _29703 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29703] = 12
                                                mem[_29703 + 32] = 'sub overflow' << 160
                                                if 0 > stor[_28734]:
                                                    _29775 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29775 + 68] = mem[idx + _29703 + 32]
                                                        _28681 = mem[_20334 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29775 + 68] = mem[_29775 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29775 + -mem[64] + 100
                                                sub_9cbf3979[address(_28715)] = stor[_28734]
                                            else:
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] * stor[_28734] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] / stor[_28734] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]:
                                                    revert with 0, 'mul overflow'
                                                _29738 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29738] = 12
                                                mem[_29738 + 32] = 'sub overflow' << 160
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] * stor[_28734] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] > stor[_28734]:
                                                    _29829 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29829 + 68] = mem[idx + _29738 + 32]
                                                        _28681 = mem[_20334 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29829 + 68] = mem[_29829 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29829 + -mem[64] + 100
                                                sub_9cbf3979[address(_28715)] = stor[_28734] - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] * stor[_28734] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)])
                                            if (stor[_28734] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]) + sub_cde04799[address(_28715)] < sub_cde04799[address(_28715)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28715)] += stor[_28734] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]
                                        else:
                                            _28883 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_28883] = 8
                                            mem[_28883 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28883 + 32]
                                                    _28681 = mem[_20334 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            _29099 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29099] = 8
                                            mem[_29099 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29099 + 32]
                                                    _28681 = mem[_20334 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not stor[_28734] / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                _29739 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29739] = 12
                                                mem[_29739 + 32] = 'sub overflow' << 160
                                                if 0 > stor[_28734]:
                                                    _29832 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29832 + 68] = mem[idx + _29739 + 32]
                                                        _28681 = mem[_20334 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29832 + 68] = mem[_29832 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29832 + -mem[64] + 100
                                                sub_9cbf3979[address(_28715)] = stor[_28734]
                                            else:
                                                if totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28734] / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) / stor[_28734] / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                    revert with 0, 'mul overflow'
                                                _29778 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29778] = 12
                                                mem[_29778 + 32] = 'sub overflow' << 160
                                                if totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28734] / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) > stor[_28734]:
                                                    _29900 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29900 + 68] = mem[idx + _29778 + 32]
                                                        _28681 = mem[_20334 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29900 + 68] = mem[_29900 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29900 + -mem[64] + 100
                                                sub_9cbf3979[address(_28715)] = stor[_28734] - (totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28734] / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                            if (stor[_28734] / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_28715)] < sub_cde04799[address(_28715)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28715)] += stor[_28734] / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                    else:
                                        if mem[(32 * s) + (32 * _20366) + _20334 + ceil32(return_data.size) + 64] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != mem[(32 * s) + (32 * _20366) + _20334 + ceil32(return_data.size) + 64]:
                                            revert with 0, 'mul overflow'
                                        if sub_9cbf3979[mem[0]] + (mem[(32 * s) + (32 * _20366) + _20334 + ceil32(return_data.size) + 64] * 0 / ext_call.return_data[0]) < mem[(32 * s) + (32 * _20366) + _20334 + ceil32(return_data.size) + 64] * 0 / ext_call.return_data[0]:
                                            revert with 0, 'add overflow'
                                        require ext_code.size(address(_28715))
                                        staticcall address(_28715).decimals() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(_28715)
                                        mem[32] = 208
                                        if uint8(ext_call.return_data[0]) <= 18:
                                            if not totalStake[address(_28715)]:
                                                _29045 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29045] = 8
                                                mem[_29045 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29045 + 32]
                                                    _28681 = mem[_20334 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] / totalStake[address(_28715)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                                revert with 0, 'mul overflow'
                                            _29093 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29093] = 8
                                            mem[_29093 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29093 + 32]
                                                    _28681 = mem[_20334 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not stor[_28734] + (_28747 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]:
                                                _29735 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29735] = 12
                                                mem[_29735 + 32] = 'sub overflow' << 160
                                                if 0 > stor[_28734] + (_28747 * 0 / ext_call.return_data[0]):
                                                    _29825 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29825 + 68] = mem[idx + _29735 + 32]
                                                        _28681 = mem[_20334 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29825 + 68] = mem[_29825 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29825 + -mem[64] + 100
                                                sub_9cbf3979[address(_28715)] = stor[_28734] + (_28747 * 0 / ext_call.return_data[0])
                                            else:
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] * stor[_28734] + (_28747 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] / stor[_28734] + (_28747 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]:
                                                    revert with 0, 'mul overflow'
                                                _29773 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29773] = 12
                                                mem[_29773 + 32] = 'sub overflow' << 160
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] * stor[_28734] + (_28747 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] > stor[_28734] + (_28747 * 0 / ext_call.return_data[0]):
                                                    _29891 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29891 + 68] = mem[idx + _29773 + 32]
                                                        _28681 = mem[_20334 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29891 + 68] = mem[_29891 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29891 + -mem[64] + 100
                                                sub_9cbf3979[address(_28715)] = stor[_28734] + (_28747 * 0 / ext_call.return_data[0]) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] * stor[_28734] + (_28747 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)])
                                            if (stor[_28734] + (_28747 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]) + sub_cde04799[address(_28715)] < sub_cde04799[address(_28715)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28715)] += stor[_28734] + (_28747 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]
                                        else:
                                            _28897 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_28897] = 8
                                            mem[_28897 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28897 + 32]
                                                    _28681 = mem[_20334 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            _29152 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29152] = 8
                                            mem[_29152 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29152 + 32]
                                                    _28681 = mem[_20334 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not stor[_28734] + (_28747 * 0 / ext_call.return_data[0]) / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                _29774 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29774] = 12
                                                mem[_29774 + 32] = 'sub overflow' << 160
                                                if 0 > stor[_28734] + (_28747 * 0 / ext_call.return_data[0]):
                                                    _29894 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29894 + 68] = mem[idx + _29774 + 32]
                                                        _28681 = mem[_20334 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29894 + 68] = mem[_29894 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29894 + -mem[64] + 100
                                                sub_9cbf3979[address(_28715)] = stor[_28734] + (_28747 * 0 / ext_call.return_data[0])
                                            else:
                                                if totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28734] + (_28747 * 0 / ext_call.return_data[0]) / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) / stor[_28734] + (_28747 * 0 / ext_call.return_data[0]) / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                    revert with 0, 'mul overflow'
                                                _29828 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29828] = 12
                                                mem[_29828 + 32] = 'sub overflow' << 160
                                                if totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28734] + (_28747 * 0 / ext_call.return_data[0]) / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) > stor[_28734] + (_28747 * 0 / ext_call.return_data[0]):
                                                    _29978 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29978 + 68] = mem[idx + _29828 + 32]
                                                        _28681 = mem[_20334 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29978 + 68] = mem[_29978 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29978 + -mem[64] + 100
                                                sub_9cbf3979[address(_28715)] = stor[_28734] + (_28747 * 0 / ext_call.return_data[0]) - (totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28734] + (_28747 * 0 / ext_call.return_data[0]) / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                            if (stor[_28734] + (_28747 * 0 / ext_call.return_data[0]) / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_28715)] < sub_cde04799[address(_28715)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28715)] += stor[_28734] + (_28747 * 0 / ext_call.return_data[0]) / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                else:
                                    require s < mem[(32 * _20366) + _20334 + ceil32(return_data.size) + 32]
                                    mem[(32 * s) + (32 * _20366) + _20334 + ceil32(return_data.size) + 64] = mem[(32 * s) + (32 * _20366) + _20334 + ceil32(return_data.size) + 64] + t
                                    mem[32] = 216
                                    require s < mem[(32 * _20366) + _20334 + ceil32(return_data.size) + 32]
                                    _28765 = mem[(32 * s) + (32 * _20366) + _20334 + ceil32(return_data.size) + 64]
                                    if not 0 / ext_call.return_data[0]:
                                        if sub_9cbf3979[address(_28715)] < 0:
                                            revert with 0, 'add overflow'
                                        require ext_code.size(address(_28715))
                                        staticcall address(_28715).decimals() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(_28715)
                                        mem[32] = 208
                                        if uint8(ext_call.return_data[0]) <= 18:
                                            if not totalStake[address(_28715)]:
                                                _29103 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29103] = 8
                                                mem[_29103 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29103 + 32]
                                                    _28681 = mem[_20334 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] / totalStake[address(_28715)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                                revert with 0, 'mul overflow'
                                            _29161 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29161] = 8
                                            mem[_29161 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29161 + 32]
                                                    _28681 = mem[_20334 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not sub_9cbf3979[address(_28715)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]:
                                                _29781 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29781] = 12
                                                mem[_29781 + 32] = 'sub overflow' << 160
                                                if 0 > sub_9cbf3979[address(_28715)]:
                                                    _29905 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29905 + 68] = mem[idx + _29781 + 32]
                                                        _28681 = mem[_20334 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29905 + 68] = mem[_29905 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29905 + -mem[64] + 100
                                            else:
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] * sub_9cbf3979[address(_28715)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] / sub_9cbf3979[address(_28715)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]:
                                                    revert with 0, 'mul overflow'
                                                _29838 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29838] = 12
                                                mem[_29838 + 32] = 'sub overflow' << 160
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] * sub_9cbf3979[address(_28715)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] > sub_9cbf3979[address(_28715)]:
                                                    _29993 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29993 + 68] = mem[idx + _29838 + 32]
                                                        _28681 = mem[_20334 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29993 + 68] = mem[_29993 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29993 + -mem[64] + 100
                                                sub_9cbf3979[address(_28715)] += -1 * 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] * sub_9cbf3979[address(_28715)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]
                                            if (sub_9cbf3979[address(_28715)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]) + sub_cde04799[address(_28715)] < sub_cde04799[address(_28715)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28715)] += sub_9cbf3979[address(_28715)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]
                                        else:
                                            _28914 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_28914] = 8
                                            mem[_28914 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28914 + 32]
                                                    _28681 = mem[_20334 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            _29231 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29231] = 8
                                            mem[_29231 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29231 + 32]
                                                    _28681 = mem[_20334 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not sub_9cbf3979[address(_28715)] / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                _29839 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29839] = 12
                                                mem[_29839 + 32] = 'sub overflow' << 160
                                                if 0 > sub_9cbf3979[address(_28715)]:
                                                    _29996 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29996 + 68] = mem[idx + _29839 + 32]
                                                        _28681 = mem[_20334 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29996 + 68] = mem[_29996 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29996 + -mem[64] + 100
                                            else:
                                                if totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28715)] / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_9cbf3979[address(_28715)] / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                    revert with 0, 'mul overflow'
                                                _29908 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29908] = 12
                                                mem[_29908 + 32] = 'sub overflow' << 160
                                                if totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28715)] / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_9cbf3979[address(_28715)]:
                                                    _30110 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30110 + 68] = mem[idx + _29908 + 32]
                                                        _28681 = mem[_20334 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30110 + 68] = mem[_30110 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30110 + -mem[64] + 100
                                                sub_9cbf3979[address(_28715)] += -1 * totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28715)] / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                            if (sub_9cbf3979[address(_28715)] / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_28715)] < sub_cde04799[address(_28715)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28715)] += sub_9cbf3979[address(_28715)] / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                    else:
                                        if mem[(32 * s) + (32 * _20366) + _20334 + ceil32(return_data.size) + 64] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != mem[(32 * s) + (32 * _20366) + _20334 + ceil32(return_data.size) + 64]:
                                            revert with 0, 'mul overflow'
                                        if sub_9cbf3979[address(_28715)] + (mem[(32 * s) + (32 * _20366) + _20334 + ceil32(return_data.size) + 64] * 0 / ext_call.return_data[0]) < mem[(32 * s) + (32 * _20366) + _20334 + ceil32(return_data.size) + 64] * 0 / ext_call.return_data[0]:
                                            revert with 0, 'add overflow'
                                        require ext_code.size(address(_28715))
                                        staticcall address(_28715).decimals() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(_28715)
                                        mem[32] = 208
                                        if uint8(ext_call.return_data[0]) <= 18:
                                            if not totalStake[address(_28715)]:
                                                _29158 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29158] = 8
                                                mem[_29158 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29158 + 32]
                                                    _28681 = mem[_20334 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] / totalStake[address(_28715)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                                revert with 0, 'mul overflow'
                                            _29225 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29225] = 8
                                            mem[_29225 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29225 + 32]
                                                    _28681 = mem[_20334 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]:
                                                _29835 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29835] = 12
                                                mem[_29835 + 32] = 'sub overflow' << 160
                                                if 0 > sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]):
                                                    _29989 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29989 + 68] = mem[idx + _29835 + 32]
                                                        _28681 = mem[_20334 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29989 + 68] = mem[_29989 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29989 + -mem[64] + 100
                                                sub_9cbf3979[address(_28715)] += _28765 * 0 / ext_call.return_data[0]
                                            else:
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] * sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] / sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]:
                                                    revert with 0, 'mul overflow'
                                                _29903 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29903] = 12
                                                mem[_29903 + 32] = 'sub overflow' << 160
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] * sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] > sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]):
                                                    _30101 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30101 + 68] = mem[idx + _29903 + 32]
                                                        _28681 = mem[_20334 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30101 + 68] = mem[_30101 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30101 + -mem[64] + 100
                                                sub_9cbf3979[address(_28715)] = sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)] * sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)])
                                            if (sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]) + sub_cde04799[address(_28715)] < sub_cde04799[address(_28715)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28715)] += sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28715)]
                                        else:
                                            _28939 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_28939] = 8
                                            mem[_28939 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28939 + 32]
                                                    _28681 = mem[_20334 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            _29305 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29305] = 8
                                            mem[_29305 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29305 + 32]
                                                    _28681 = mem[_20334 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]) / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                _29904 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29904] = 12
                                                mem[_29904 + 32] = 'sub overflow' << 160
                                                if 0 > sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]):
                                                    _30104 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30104 + 68] = mem[idx + _29904 + 32]
                                                        _28681 = mem[_20334 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30104 + 68] = mem[_30104 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30104 + -mem[64] + 100
                                                sub_9cbf3979[address(_28715)] += _28765 * 0 / ext_call.return_data[0]
                                            else:
                                                if totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]) / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]) / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                    revert with 0, 'mul overflow'
                                                _29992 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29992] = 12
                                                mem[_29992 + 32] = 'sub overflow' << 160
                                                if totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]) / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]):
                                                    _30231 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30231 + 68] = mem[idx + _29992 + 32]
                                                        _28681 = mem[_20334 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30231 + 68] = mem[_30231 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30231 + -mem[64] + 100
                                                sub_9cbf3979[address(_28715)] = sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]) - (totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]) / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                            if (sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]) / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_28715)] < sub_cde04799[address(_28715)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28715)] += sub_9cbf3979[address(_28715)] + (_28765 * 0 / ext_call.return_data[0]) / totalStake[address(_28715)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                mem[0] = address(_28715)
                                mem[32] = 212
                                mem[mem[64]] = address(_28715)
                                mem[mem[64] + 32] = sub_693c781c[address(_28715)]
                                mem[mem[64] + 64] = sub_cde04799[address(_28715)]
                                emit 0x6f63d00b: address(_28715), sub_693c781c[address(_28715)], sub_cde04799[address(_28715)]
                            _28681 = mem[_20334 + ceil32(return_data.size)]
                            s = s + 1
                            continue 
                        require ext_code.size(stor0)
                        staticcall stor0.0x8f871a6c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg4.length) + 128]
                        _28731 = mem[(32 * idx) + (32 * arg4.length) + 160]
                        mem[mem[64]] = 0x62f6105b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = address(_20255)
                        mem[mem[64] + 68] = _28731
                        require ext_code.size(stor50)
                        call stor50.0x62f6105b with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(_20255), _28731
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < mem[(32 * arg4.length) + 128]
                        mem[(32 * idx) + (32 * arg4.length) + 160] = 0
                    else:
                        require idx < mem[(32 * arg4.length) + 128]
                        _20326 = mem[(32 * idx) + (32 * arg4.length) + 160]
                        require ext_code.size(address(_20255))
                        staticcall address(_20255).decimals() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = address(_20255)
                        mem[32] = 208
                        if uint8(ext_call.return_data[0]) <= 18:
                            if not totalStake[address(_20255)]:
                                _20430 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20430] = 8
                                mem[_20430 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _20430 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                revert with 0, 'mul overflow'
                            _20445 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20445] = 8
                            mem[_20445 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _20445 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            if not sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                _20683 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20683] = 12
                                mem[_20683 + 32] = 'sub overflow' << 160
                                if 0 > sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]):
                                    _20731 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 12
                                    idx = 0
                                    while idx < 12:
                                        mem[idx + _20731 + 68] = mem[idx + _20683 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20731 + 68] = mem[_20731 + 88 len 12]
                                    revert with memory
                                      from mem[64]
                                       len _20731 + -mem[64] + 100
                                sub_9cbf3979[address(_20255)] += 10^18 * 0 / ext_call.return_data[0]
                                if (sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_cde04799[address(_20255)] < sub_cde04799[address(_20255)]:
                                    revert with 0, 'add overflow'
                                sub_cde04799[address(_20255)] += sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                mem[0] = address(_20255)
                                mem[32] = 215
                                if not _20326:
                                    if sub_328e1404[address(_20255)] < 0:
                                        revert with 0, 'add overflow'
                                    _21091 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21091] = 8
                                    mem[_21091 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21091 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        _21801 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21801] = 12
                                        mem[_21801 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)]:
                                            _21957 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _21957 + 68] = mem[idx + _21801 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_21957 + 68] = mem[_21957 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _21957 + -mem[64] + 100
                                    else:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                            revert with 0, 'mul overflow'
                                        _21881 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21881] = 12
                                        mem[_21881 + 32] = 'sub overflow' << 160
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_328e1404[address(_20255)]:
                                            _22035 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22035 + 68] = mem[idx + _21881 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22035 + 68] = mem[_22035 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22035 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += -1 * 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                    if (sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                else:
                                    if 10^18 * _20326 / _20326 != 10^18:
                                        revert with 0, 'mul overflow'
                                    if sub_328e1404[address(_20255)] + (10^18 * _20326) < 10^18 * _20326:
                                        revert with 0, 'add overflow'
                                    _21124 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21124] = 8
                                    mem[_21124 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21124 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] + (10^18 * _20326) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        _21880 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21880] = 12
                                        mem[_21880 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)] + (10^18 * _20326):
                                            _22032 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22032 + 68] = mem[idx + _21880 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22032 + 68] = mem[_22032 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22032 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += 10^18 * _20326
                                    else:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20326) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_328e1404[address(_20255)] + (10^18 * _20326) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                            revert with 0, 'mul overflow'
                                        _21956 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21956] = 12
                                        mem[_21956 + 32] = 'sub overflow' << 160
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20326) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_328e1404[address(_20255)] + (10^18 * _20326):
                                            _22123 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22123 + 68] = mem[idx + _21956 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22123 + 68] = mem[_22123 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22123 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] = sub_328e1404[address(_20255)] + (10^18 * _20326) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20326) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)])
                                    if (sub_328e1404[address(_20255)] + (10^18 * _20326) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] + (10^18 * _20326) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                            else:
                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                    revert with 0, 'mul overflow'
                                _20711 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20711] = 12
                                mem[_20711 + 32] = 'sub overflow' << 160
                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]):
                                    _20755 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 12
                                    idx = 0
                                    while idx < 12:
                                        mem[idx + _20755 + 68] = mem[idx + _20711 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20755 + 68] = mem[_20755 + 88 len 12]
                                    revert with memory
                                      from mem[64]
                                       len _20755 + -mem[64] + 100
                                sub_9cbf3979[address(_20255)] = sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)])
                                if (sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_cde04799[address(_20255)] < sub_cde04799[address(_20255)]:
                                    revert with 0, 'add overflow'
                                sub_cde04799[address(_20255)] += sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                mem[0] = address(_20255)
                                mem[32] = 215
                                if not _20326:
                                    if sub_328e1404[address(_20255)] < 0:
                                        revert with 0, 'add overflow'
                                    _21123 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21123] = 8
                                    mem[_21123 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21123 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        _21879 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21879] = 12
                                        mem[_21879 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)]:
                                            _22029 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22029 + 68] = mem[idx + _21879 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22029 + 68] = mem[_22029 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22029 + -mem[64] + 100
                                    else:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                            revert with 0, 'mul overflow'
                                        _21955 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21955] = 12
                                        mem[_21955 + 32] = 'sub overflow' << 160
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_328e1404[address(_20255)]:
                                            _22120 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22120 + 68] = mem[idx + _21955 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22120 + 68] = mem[_22120 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22120 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += -1 * 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                    if (sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                else:
                                    if 10^18 * _20326 / _20326 != 10^18:
                                        revert with 0, 'mul overflow'
                                    if sub_328e1404[address(_20255)] + (10^18 * _20326) < 10^18 * _20326:
                                        revert with 0, 'add overflow'
                                    _21166 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21166] = 8
                                    mem[_21166 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21166 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] + (10^18 * _20326) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        _21954 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21954] = 12
                                        mem[_21954 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)] + (10^18 * _20326):
                                            _22117 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22117 + 68] = mem[idx + _21954 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22117 + 68] = mem[_22117 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22117 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += 10^18 * _20326
                                    else:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20326) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_328e1404[address(_20255)] + (10^18 * _20326) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                            revert with 0, 'mul overflow'
                                        _22028 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22028] = 12
                                        mem[_22028 + 32] = 'sub overflow' << 160
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20326) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_328e1404[address(_20255)] + (10^18 * _20326):
                                            _22231 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22231 + 68] = mem[idx + _22028 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22231 + 68] = mem[_22231 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22231 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] = sub_328e1404[address(_20255)] + (10^18 * _20326) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20326) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)])
                                    if (sub_328e1404[address(_20255)] + (10^18 * _20326) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] + (10^18 * _20326) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                        else:
                            _20370 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20370] = 8
                            mem[_20370 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _20370 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            _20468 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20468] = 8
                            mem[_20468 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _20468 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            if not sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                _20712 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20712] = 12
                                mem[_20712 + 32] = 'sub overflow' << 160
                                if 0 > sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]):
                                    _20758 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 12
                                    idx = 0
                                    while idx < 12:
                                        mem[idx + _20758 + 68] = mem[idx + _20712 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20758 + 68] = mem[_20758 + 88 len 12]
                                    revert with memory
                                      from mem[64]
                                       len _20758 + -mem[64] + 100
                                sub_9cbf3979[address(_20255)] += 10^18 * 0 / ext_call.return_data[0]
                                if (sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_20255)] < sub_cde04799[address(_20255)]:
                                    revert with 0, 'add overflow'
                                sub_cde04799[address(_20255)] += sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                mem[0] = address(_20255)
                                mem[32] = 215
                                if not _20326:
                                    if sub_328e1404[address(_20255)] < 0:
                                        revert with 0, 'add overflow'
                                    _21127 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21127] = 8
                                    mem[_21127 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21127 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        _21886 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21886] = 12
                                        mem[_21886 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)]:
                                            _22041 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22041 + 68] = mem[idx + _21886 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22041 + 68] = mem[_22041 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22041 + -mem[64] + 100
                                    else:
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                            revert with 0, 'mul overflow'
                                        _21964 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21964] = 12
                                        mem[_21964 + 32] = 'sub overflow' << 160
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_328e1404[address(_20255)]:
                                            _22136 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22136 + 68] = mem[idx + _21964 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22136 + 68] = mem[_22136 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22136 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += -1 * totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                    if (sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                else:
                                    if 10^18 * _20326 / _20326 != 10^18:
                                        revert with 0, 'mul overflow'
                                    if sub_328e1404[address(_20255)] + (10^18 * _20326) < 10^18 * _20326:
                                        revert with 0, 'add overflow'
                                    _21171 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21171] = 8
                                    mem[_21171 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21171 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] + (10^18 * _20326) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        _21963 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21963] = 12
                                        mem[_21963 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)] + (10^18 * _20326):
                                            _22133 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22133 + 68] = mem[idx + _21963 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22133 + 68] = mem[_22133 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22133 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += 10^18 * _20326
                                    else:
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20326) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_328e1404[address(_20255)] + (10^18 * _20326) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                            revert with 0, 'mul overflow'
                                        _22040 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22040] = 12
                                        mem[_22040 + 32] = 'sub overflow' << 160
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20326) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_328e1404[address(_20255)] + (10^18 * _20326):
                                            _22251 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22251 + 68] = mem[idx + _22040 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22251 + 68] = mem[_22251 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22251 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] = sub_328e1404[address(_20255)] + (10^18 * _20326) - (totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20326) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                    if (sub_328e1404[address(_20255)] + (10^18 * _20326) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] + (10^18 * _20326) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                            else:
                                if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                    revert with 0, 'mul overflow'
                                _20734 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20734] = 12
                                mem[_20734 + 32] = 'sub overflow' << 160
                                if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]):
                                    _20783 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 12
                                    idx = 0
                                    while idx < 12:
                                        mem[idx + _20783 + 68] = mem[idx + _20734 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20783 + 68] = mem[_20783 + 88 len 12]
                                    revert with memory
                                      from mem[64]
                                       len _20783 + -mem[64] + 100
                                sub_9cbf3979[address(_20255)] = sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) - (totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                if (sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_20255)] < sub_cde04799[address(_20255)]:
                                    revert with 0, 'add overflow'
                                sub_cde04799[address(_20255)] += sub_9cbf3979[address(_20255)] + (10^18 * 0 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                mem[0] = address(_20255)
                                mem[32] = 215
                                if not _20326:
                                    if sub_328e1404[address(_20255)] < 0:
                                        revert with 0, 'add overflow'
                                    _21170 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21170] = 8
                                    mem[_21170 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21170 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        _21962 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21962] = 12
                                        mem[_21962 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)]:
                                            _22130 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22130 + 68] = mem[idx + _21962 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22130 + 68] = mem[_22130 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22130 + -mem[64] + 100
                                    else:
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                            revert with 0, 'mul overflow'
                                        _22039 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22039] = 12
                                        mem[_22039 + 32] = 'sub overflow' << 160
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_328e1404[address(_20255)]:
                                            _22248 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22248 + 68] = mem[idx + _22039 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22248 + 68] = mem[_22248 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22248 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += -1 * totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                    if (sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                else:
                                    if 10^18 * _20326 / _20326 != 10^18:
                                        revert with 0, 'mul overflow'
                                    if sub_328e1404[address(_20255)] + (10^18 * _20326) < 10^18 * _20326:
                                        revert with 0, 'add overflow'
                                    _21228 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21228] = 8
                                    mem[_21228 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21228 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] + (10^18 * _20326) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        _22038 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22038] = 12
                                        mem[_22038 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)] + (10^18 * _20326):
                                            _22245 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22245 + 68] = mem[idx + _22038 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22245 + 68] = mem[_22245 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22245 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += 10^18 * _20326
                                    else:
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20326) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_328e1404[address(_20255)] + (10^18 * _20326) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                            revert with 0, 'mul overflow'
                                        _22129 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22129] = 12
                                        mem[_22129 + 32] = 'sub overflow' << 160
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20326) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_328e1404[address(_20255)] + (10^18 * _20326):
                                            _22385 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22385 + 68] = mem[idx + _22129 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22385 + 68] = mem[_22385 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22385 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] = sub_328e1404[address(_20255)] + (10^18 * _20326) - (totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20326) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                    if (sub_328e1404[address(_20255)] + (10^18 * _20326) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] + (10^18 * _20326) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                        mem[0] = address(_20255)
                        mem[32] = 212
                        mem[mem[64]] = address(_20255)
                        mem[mem[64] + 32] = sub_693c781c[address(_20255)]
                        mem[mem[64] + 64] = sub_cde04799[address(_20255)]
                        emit 0x6f63d00b: address(_20255), sub_693c781c[address(_20255)], sub_cde04799[address(_20255)]
            else:
                if arg3 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192] / mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192] != arg3:
                    revert with 0, 'mul overflow'
                _20271 = mem[64]
                mem[64] = mem[64] + 64
                mem[_20271] = 8
                mem[_20271 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 8
                    mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = 32
                    while idx < 8:
                        mem[idx + mem[64] + 68] = mem[idx + _20271 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, ''
                if not arg3 * _20259 / ext_call.return_data[0]:
                    if sub_9cbf3979[address(_20255)] < 0:
                        revert with 0, 'add overflow'
                    mem[0] = address(_20255)
                    mem[32] = 208
                    if not totalStake[address(_20255)]:
                        mem[mem[64]] = 0x1d4c200e00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor0)
                        staticcall stor0.0x1d4c200e with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20331 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _20342 = mem[_20331]
                        require mem[_20331] <= 4294967296
                        require mem[_20331] + 32 <= return_data.size
                        require mem[_20331 + mem[_20331]] <= 4294967296 and mem[_20331] + (32 * mem[_20331 + mem[_20331]]) + 32 <= return_data.size
                        mem[_20331 + ceil32(return_data.size)] = mem[_20331 + mem[_20331]]
                        _20365 = mem[_20331 + _20342]
                        s = 0
                        while s < 32 * _20365:
                            mem[s + _20331 + ceil32(return_data.size) + 32] = mem[s + _20331 + _20342 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _20365) + _20331 + ceil32(return_data.size) + 32
                        _23650 = mem[_20331 + 32]
                        require mem[_20331 + 32] <= 4294967296
                        require mem[_20331 + 32] + 32 <= return_data.size
                        require mem[_20331 + mem[_20331 + 32]] <= 4294967296 and mem[_20331 + 32] + (32 * mem[_20331 + mem[_20331 + 32]]) + 32 <= return_data.size
                        mem[(32 * _20365) + _20331 + ceil32(return_data.size) + 32] = mem[_20331 + mem[_20331 + 32]]
                        _24154 = mem[_20331 + _23650]
                        s = 0
                        while s < 32 * _24154:
                            mem[s + (32 * _20365) + _20331 + ceil32(return_data.size) + 64] = mem[s + _20331 + _23650 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _24154) + (32 * _20365) + _20331 + ceil32(return_data.size) + 64
                        _26464 = mem[_20331 + ceil32(return_data.size)]
                        s = 0
                        t = 0
                        while s < _26464:
                            require s < mem[_20331 + ceil32(return_data.size)]
                            mem[0] = mem[(32 * s) + _20331 + ceil32(return_data.size) + 44 len 20]
                            mem[32] = 208
                            if totalStake[mem[0]] != 0:
                                _26464 = mem[_20331 + ceil32(return_data.size)]
                                s = s + 1
                                t = t
                                continue 
                            require s < mem[(32 * _20365) + _20331 + ceil32(return_data.size) + 32]
                            _26501 = mem[(32 * s) + (32 * _20365) + _20331 + ceil32(return_data.size) + 64]
                            require s < mem[(32 * _20365) + _20331 + ceil32(return_data.size) + 32]
                            mem[(32 * s) + (32 * _20365) + _20331 + ceil32(return_data.size) + 64] = 0
                            _26464 = mem[_20331 + ceil32(return_data.size)]
                            s = s + 1
                            t = t + _26501
                            continue 
                        if not mem[_20331 + ceil32(return_data.size)]:
                            revert with 0, 'TM:absCollsInvalid'
                        if 10^18 == t:
                            revert with 0, 'TM:absCollsInvalid'
                        _28680 = mem[_20331 + ceil32(return_data.size)]
                        s = 0
                        while s < _28680:
                            require s < mem[(32 * _20365) + _20331 + ceil32(return_data.size) + 32]
                            if mem[(32 * s) + (32 * _20365) + _20331 + ceil32(return_data.size) + 64] != 0:
                                require s < mem[_20331 + ceil32(return_data.size)]
                                _28712 = mem[(32 * s) + _20331 + ceil32(return_data.size) + 32]
                                if 0 == t:
                                    mem[0] = mem[(32 * s) + _20331 + ceil32(return_data.size) + 44 len 20]
                                    mem[32] = 216
                                    _28728 = sha3(mem[0], 216)
                                    require s < mem[(32 * _20365) + _20331 + ceil32(return_data.size) + 32]
                                    _28745 = mem[(32 * s) + (32 * _20365) + _20331 + ceil32(return_data.size) + 64]
                                    if not arg3 * _20259 / ext_call.return_data[0]:
                                        if sub_9cbf3979[mem[0]] < 0:
                                            revert with 0, 'add overflow'
                                        require ext_code.size(address(_28712))
                                        staticcall address(_28712).decimals() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(_28712)
                                        mem[32] = 208
                                        if uint8(ext_call.return_data[0]) <= 18:
                                            if not totalStake[address(_28712)]:
                                                _28992 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_28992] = 8
                                                mem[_28992 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28992 + 32]
                                                    _28680 = mem[_20331 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] / totalStake[address(_28712)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                                revert with 0, 'mul overflow'
                                            _29037 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29037] = 8
                                            mem[_29037 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29037 + 32]
                                                    _28680 = mem[_20331 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not stor[_28728] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]:
                                                _29694 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29694] = 12
                                                mem[_29694 + 32] = 'sub overflow' << 160
                                                if 0 > stor[_28728]:
                                                    _29764 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29764 + 68] = mem[idx + _29694 + 32]
                                                        _28680 = mem[_20331 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29764 + 68] = mem[_29764 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29764 + -mem[64] + 100
                                                sub_9cbf3979[address(_28712)] = stor[_28728]
                                            else:
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] * stor[_28728] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] / stor[_28728] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]:
                                                    revert with 0, 'mul overflow'
                                                _29730 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29730] = 12
                                                mem[_29730 + 32] = 'sub overflow' << 160
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] * stor[_28728] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] > stor[_28728]:
                                                    _29814 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29814 + 68] = mem[idx + _29730 + 32]
                                                        _28680 = mem[_20331 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29814 + 68] = mem[_29814 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29814 + -mem[64] + 100
                                                sub_9cbf3979[address(_28712)] = stor[_28728] - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] * stor[_28728] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)])
                                            if (stor[_28728] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]) + sub_cde04799[address(_28712)] < sub_cde04799[address(_28712)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28712)] += stor[_28728] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]
                                        else:
                                            _28879 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_28879] = 8
                                            mem[_28879 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28879 + 32]
                                                    _28680 = mem[_20331 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            _29086 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29086] = 8
                                            mem[_29086 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29086 + 32]
                                                    _28680 = mem[_20331 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not stor[_28728] / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                _29731 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29731] = 12
                                                mem[_29731 + 32] = 'sub overflow' << 160
                                                if 0 > stor[_28728]:
                                                    _29817 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29817 + 68] = mem[idx + _29731 + 32]
                                                        _28680 = mem[_20331 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29817 + 68] = mem[_29817 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29817 + -mem[64] + 100
                                                sub_9cbf3979[address(_28712)] = stor[_28728]
                                            else:
                                                if totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28728] / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) / stor[_28728] / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                    revert with 0, 'mul overflow'
                                                _29767 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29767] = 12
                                                mem[_29767 + 32] = 'sub overflow' << 160
                                                if totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28728] / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) > stor[_28728]:
                                                    _29882 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29882 + 68] = mem[idx + _29767 + 32]
                                                        _28680 = mem[_20331 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29882 + 68] = mem[_29882 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29882 + -mem[64] + 100
                                                sub_9cbf3979[address(_28712)] = stor[_28728] - (totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28728] / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                            if (stor[_28728] / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_28712)] < sub_cde04799[address(_28712)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28712)] += stor[_28728] / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                    else:
                                        if mem[(32 * s) + (32 * _20365) + _20331 + ceil32(return_data.size) + 64] * arg3 * _20259 / ext_call.return_data[0] / arg3 * _20259 / ext_call.return_data[0] != mem[(32 * s) + (32 * _20365) + _20331 + ceil32(return_data.size) + 64]:
                                            revert with 0, 'mul overflow'
                                        if sub_9cbf3979[mem[0]] + (mem[(32 * s) + (32 * _20365) + _20331 + ceil32(return_data.size) + 64] * arg3 * _20259 / ext_call.return_data[0]) < mem[(32 * s) + (32 * _20365) + _20331 + ceil32(return_data.size) + 64] * arg3 * _20259 / ext_call.return_data[0]:
                                            revert with 0, 'add overflow'
                                        require ext_code.size(address(_28712))
                                        staticcall address(_28712).decimals() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(_28712)
                                        mem[32] = 208
                                        if uint8(ext_call.return_data[0]) <= 18:
                                            if not totalStake[address(_28712)]:
                                                _29034 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29034] = 8
                                                mem[_29034 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29034 + 32]
                                                    _28680 = mem[_20331 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] / totalStake[address(_28712)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                                revert with 0, 'mul overflow'
                                            _29080 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29080] = 8
                                            mem[_29080 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29080 + 32]
                                                    _28680 = mem[_20331 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]:
                                                _29727 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29727] = 12
                                                mem[_29727 + 32] = 'sub overflow' << 160
                                                if 0 > stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]):
                                                    _29810 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29810 + 68] = mem[idx + _29727 + 32]
                                                        _28680 = mem[_20331 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29810 + 68] = mem[_29810 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29810 + -mem[64] + 100
                                                sub_9cbf3979[address(_28712)] = stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0])
                                            else:
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] * stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] / stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]:
                                                    revert with 0, 'mul overflow'
                                                _29762 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29762] = 12
                                                mem[_29762 + 32] = 'sub overflow' << 160
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] * stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] > stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]):
                                                    _29873 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29873 + 68] = mem[idx + _29762 + 32]
                                                        _28680 = mem[_20331 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29873 + 68] = mem[_29873 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29873 + -mem[64] + 100
                                                sub_9cbf3979[address(_28712)] = stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] * stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)])
                                            if (stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]) + sub_cde04799[address(_28712)] < sub_cde04799[address(_28712)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28712)] += stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]
                                        else:
                                            _28894 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_28894] = 8
                                            mem[_28894 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28894 + 32]
                                                    _28680 = mem[_20331 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            _29137 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29137] = 8
                                            mem[_29137 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29137 + 32]
                                                    _28680 = mem[_20331 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                _29763 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29763] = 12
                                                mem[_29763 + 32] = 'sub overflow' << 160
                                                if 0 > stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]):
                                                    _29876 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29876 + 68] = mem[idx + _29763 + 32]
                                                        _28680 = mem[_20331 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29876 + 68] = mem[_29876 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29876 + -mem[64] + 100
                                                sub_9cbf3979[address(_28712)] = stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0])
                                            else:
                                                if totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) / stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                    revert with 0, 'mul overflow'
                                                _29813 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29813] = 12
                                                mem[_29813 + 32] = 'sub overflow' << 160
                                                if totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) > stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]):
                                                    _29954 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29954 + 68] = mem[idx + _29813 + 32]
                                                        _28680 = mem[_20331 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29954 + 68] = mem[_29954 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29954 + -mem[64] + 100
                                                sub_9cbf3979[address(_28712)] = stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]) - (totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                            if (stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_28712)] < sub_cde04799[address(_28712)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28712)] += stor[_28728] + (_28745 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                else:
                                    require s < mem[(32 * _20365) + _20331 + ceil32(return_data.size) + 32]
                                    mem[(32 * s) + (32 * _20365) + _20331 + ceil32(return_data.size) + 64] = mem[(32 * s) + (32 * _20365) + _20331 + ceil32(return_data.size) + 64] + t
                                    mem[32] = 216
                                    require s < mem[(32 * _20365) + _20331 + ceil32(return_data.size) + 32]
                                    _28764 = mem[(32 * s) + (32 * _20365) + _20331 + ceil32(return_data.size) + 64]
                                    if not arg3 * _20259 / ext_call.return_data[0]:
                                        if sub_9cbf3979[address(_28712)] < 0:
                                            revert with 0, 'add overflow'
                                        require ext_code.size(address(_28712))
                                        staticcall address(_28712).decimals() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(_28712)
                                        mem[32] = 208
                                        if uint8(ext_call.return_data[0]) <= 18:
                                            if not totalStake[address(_28712)]:
                                                _29090 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29090] = 8
                                                mem[_29090 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29090 + 32]
                                                    _28680 = mem[_20331 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] / totalStake[address(_28712)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                                revert with 0, 'mul overflow'
                                            _29146 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29146] = 8
                                            mem[_29146 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29146 + 32]
                                                    _28680 = mem[_20331 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not sub_9cbf3979[address(_28712)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]:
                                                _29770 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29770] = 12
                                                mem[_29770 + 32] = 'sub overflow' << 160
                                                if 0 > sub_9cbf3979[address(_28712)]:
                                                    _29887 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29887 + 68] = mem[idx + _29770 + 32]
                                                        _28680 = mem[_20331 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29887 + 68] = mem[_29887 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29887 + -mem[64] + 100
                                            else:
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] * sub_9cbf3979[address(_28712)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] / sub_9cbf3979[address(_28712)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]:
                                                    revert with 0, 'mul overflow'
                                                _29823 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29823] = 12
                                                mem[_29823 + 32] = 'sub overflow' << 160
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] * sub_9cbf3979[address(_28712)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] > sub_9cbf3979[address(_28712)]:
                                                    _29969 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29969 + 68] = mem[idx + _29823 + 32]
                                                        _28680 = mem[_20331 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29969 + 68] = mem[_29969 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29969 + -mem[64] + 100
                                                sub_9cbf3979[address(_28712)] += -1 * 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] * sub_9cbf3979[address(_28712)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]
                                            if (sub_9cbf3979[address(_28712)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]) + sub_cde04799[address(_28712)] < sub_cde04799[address(_28712)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28712)] += sub_9cbf3979[address(_28712)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]
                                        else:
                                            _28910 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_28910] = 8
                                            mem[_28910 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28910 + 32]
                                                    _28680 = mem[_20331 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            _29213 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29213] = 8
                                            mem[_29213 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29213 + 32]
                                                    _28680 = mem[_20331 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not sub_9cbf3979[address(_28712)] / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                _29824 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29824] = 12
                                                mem[_29824 + 32] = 'sub overflow' << 160
                                                if 0 > sub_9cbf3979[address(_28712)]:
                                                    _29972 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29972 + 68] = mem[idx + _29824 + 32]
                                                        _28680 = mem[_20331 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29972 + 68] = mem[_29972 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29972 + -mem[64] + 100
                                            else:
                                                if totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28712)] / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_9cbf3979[address(_28712)] / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                    revert with 0, 'mul overflow'
                                                _29890 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29890] = 12
                                                mem[_29890 + 32] = 'sub overflow' << 160
                                                if totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28712)] / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_9cbf3979[address(_28712)]:
                                                    _30080 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30080 + 68] = mem[idx + _29890 + 32]
                                                        _28680 = mem[_20331 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30080 + 68] = mem[_30080 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30080 + -mem[64] + 100
                                                sub_9cbf3979[address(_28712)] += -1 * totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28712)] / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                            if (sub_9cbf3979[address(_28712)] / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_28712)] < sub_cde04799[address(_28712)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28712)] += sub_9cbf3979[address(_28712)] / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                    else:
                                        if mem[(32 * s) + (32 * _20365) + _20331 + ceil32(return_data.size) + 64] * arg3 * _20259 / ext_call.return_data[0] / arg3 * _20259 / ext_call.return_data[0] != mem[(32 * s) + (32 * _20365) + _20331 + ceil32(return_data.size) + 64]:
                                            revert with 0, 'mul overflow'
                                        if sub_9cbf3979[address(_28712)] + (mem[(32 * s) + (32 * _20365) + _20331 + ceil32(return_data.size) + 64] * arg3 * _20259 / ext_call.return_data[0]) < mem[(32 * s) + (32 * _20365) + _20331 + ceil32(return_data.size) + 64] * arg3 * _20259 / ext_call.return_data[0]:
                                            revert with 0, 'add overflow'
                                        require ext_code.size(address(_28712))
                                        staticcall address(_28712).decimals() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(_28712)
                                        mem[32] = 208
                                        if uint8(ext_call.return_data[0]) <= 18:
                                            if not totalStake[address(_28712)]:
                                                _29143 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29143] = 8
                                                mem[_29143 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29143 + 32]
                                                    _28680 = mem[_20331 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] / totalStake[address(_28712)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                                revert with 0, 'mul overflow'
                                            _29207 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29207] = 8
                                            mem[_29207 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29207 + 32]
                                                    _28680 = mem[_20331 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]:
                                                _29820 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29820] = 12
                                                mem[_29820 + 32] = 'sub overflow' << 160
                                                if 0 > sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]):
                                                    _29965 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29965 + 68] = mem[idx + _29820 + 32]
                                                        _28680 = mem[_20331 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29965 + 68] = mem[_29965 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29965 + -mem[64] + 100
                                                sub_9cbf3979[address(_28712)] += _28764 * arg3 * _20259 / ext_call.return_data[0]
                                            else:
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] * sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] / sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]:
                                                    revert with 0, 'mul overflow'
                                                _29885 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29885] = 12
                                                mem[_29885 + 32] = 'sub overflow' << 160
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] * sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] > sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]):
                                                    _30071 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30071 + 68] = mem[idx + _29885 + 32]
                                                        _28680 = mem[_20331 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30071 + 68] = mem[_30071 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30071 + -mem[64] + 100
                                                sub_9cbf3979[address(_28712)] = sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)] * sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)])
                                            if (sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]) + sub_cde04799[address(_28712)] < sub_cde04799[address(_28712)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28712)] += sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28712)]
                                        else:
                                            _28932 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_28932] = 8
                                            mem[_28932 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28932 + 32]
                                                    _28680 = mem[_20331 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            _29285 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29285] = 8
                                            mem[_29285 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29285 + 32]
                                                    _28680 = mem[_20331 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                _29886 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29886] = 12
                                                mem[_29886 + 32] = 'sub overflow' << 160
                                                if 0 > sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]):
                                                    _30074 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30074 + 68] = mem[idx + _29886 + 32]
                                                        _28680 = mem[_20331 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30074 + 68] = mem[_30074 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30074 + -mem[64] + 100
                                                sub_9cbf3979[address(_28712)] += _28764 * arg3 * _20259 / ext_call.return_data[0]
                                            else:
                                                if totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                    revert with 0, 'mul overflow'
                                                _29968 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29968] = 12
                                                mem[_29968 + 32] = 'sub overflow' << 160
                                                if totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]):
                                                    _30198 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30198 + 68] = mem[idx + _29968 + 32]
                                                        _28680 = mem[_20331 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30198 + 68] = mem[_30198 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30198 + -mem[64] + 100
                                                sub_9cbf3979[address(_28712)] = sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]) - (totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                            if (sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_28712)] < sub_cde04799[address(_28712)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28712)] += sub_9cbf3979[address(_28712)] + (_28764 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28712)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                mem[0] = address(_28712)
                                mem[32] = 212
                                mem[mem[64]] = address(_28712)
                                mem[mem[64] + 32] = sub_693c781c[address(_28712)]
                                mem[mem[64] + 64] = sub_cde04799[address(_28712)]
                                emit 0x6f63d00b: address(_28712), sub_693c781c[address(_28712)], sub_cde04799[address(_28712)]
                            _28680 = mem[_20331 + ceil32(return_data.size)]
                            s = s + 1
                            continue 
                        require ext_code.size(stor0)
                        staticcall stor0.0x8f871a6c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg4.length) + 128]
                        _28725 = mem[(32 * idx) + (32 * arg4.length) + 160]
                        mem[mem[64]] = 0x62f6105b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = address(_20255)
                        mem[mem[64] + 68] = _28725
                        require ext_code.size(stor50)
                        call stor50.0x62f6105b with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(_20255), _28725
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < mem[(32 * arg4.length) + 128]
                        mem[(32 * idx) + (32 * arg4.length) + 160] = 0
                    else:
                        require idx < mem[(32 * arg4.length) + 128]
                        _20325 = mem[(32 * idx) + (32 * arg4.length) + 160]
                        require ext_code.size(address(_20255))
                        staticcall address(_20255).decimals() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = address(_20255)
                        mem[32] = 208
                        if uint8(ext_call.return_data[0]) <= 18:
                            if not totalStake[address(_20255)]:
                                _20427 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20427] = 8
                                mem[_20427 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _20427 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                revert with 0, 'mul overflow'
                            _20441 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20441] = 8
                            mem[_20441 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _20441 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            if not sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                _20677 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20677] = 12
                                mem[_20677 + 32] = 'sub overflow' << 160
                                if 0 > sub_9cbf3979[address(_20255)]:
                                    _20726 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 12
                                    idx = 0
                                    while idx < 12:
                                        mem[idx + _20726 + 68] = mem[idx + _20677 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20726 + 68] = mem[_20726 + 88 len 12]
                                    revert with memory
                                      from mem[64]
                                       len _20726 + -mem[64] + 100
                                if (sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_cde04799[address(_20255)] < sub_cde04799[address(_20255)]:
                                    revert with 0, 'add overflow'
                                sub_cde04799[address(_20255)] += sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                mem[0] = address(_20255)
                                mem[32] = 215
                                if not _20325:
                                    if sub_328e1404[address(_20255)] < 0:
                                        revert with 0, 'add overflow'
                                    _21083 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21083] = 8
                                    mem[_21083 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21083 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        _21782 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21782] = 12
                                        mem[_21782 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)]:
                                            _21938 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _21938 + 68] = mem[idx + _21782 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_21938 + 68] = mem[_21938 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _21938 + -mem[64] + 100
                                    else:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                            revert with 0, 'mul overflow'
                                        _21860 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21860] = 12
                                        mem[_21860 + 32] = 'sub overflow' << 160
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_328e1404[address(_20255)]:
                                            _22015 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22015 + 68] = mem[idx + _21860 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22015 + 68] = mem[_22015 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22015 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += -1 * 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                    if (sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                else:
                                    if 10^18 * _20325 / _20325 != 10^18:
                                        revert with 0, 'mul overflow'
                                    if sub_328e1404[address(_20255)] + (10^18 * _20325) < 10^18 * _20325:
                                        revert with 0, 'add overflow'
                                    _21116 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21116] = 8
                                    mem[_21116 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21116 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] + (10^18 * _20325) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        _21859 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21859] = 12
                                        mem[_21859 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)] + (10^18 * _20325):
                                            _22012 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22012 + 68] = mem[idx + _21859 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22012 + 68] = mem[_22012 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22012 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += 10^18 * _20325
                                    else:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20325) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_328e1404[address(_20255)] + (10^18 * _20325) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                            revert with 0, 'mul overflow'
                                        _21937 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21937] = 12
                                        mem[_21937 + 32] = 'sub overflow' << 160
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20325) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_328e1404[address(_20255)] + (10^18 * _20325):
                                            _22098 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22098 + 68] = mem[idx + _21937 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22098 + 68] = mem[_22098 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22098 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] = sub_328e1404[address(_20255)] + (10^18 * _20325) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20325) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)])
                                    if (sub_328e1404[address(_20255)] + (10^18 * _20325) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] + (10^18 * _20325) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                            else:
                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                    revert with 0, 'mul overflow'
                                _20704 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20704] = 12
                                mem[_20704 + 32] = 'sub overflow' << 160
                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_9cbf3979[address(_20255)]:
                                    _20748 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 12
                                    idx = 0
                                    while idx < 12:
                                        mem[idx + _20748 + 68] = mem[idx + _20704 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20748 + 68] = mem[_20748 + 88 len 12]
                                    revert with memory
                                      from mem[64]
                                       len _20748 + -mem[64] + 100
                                sub_9cbf3979[address(_20255)] += -1 * 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                if (sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_cde04799[address(_20255)] < sub_cde04799[address(_20255)]:
                                    revert with 0, 'add overflow'
                                sub_cde04799[address(_20255)] += sub_9cbf3979[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                mem[0] = address(_20255)
                                mem[32] = 215
                                if not _20325:
                                    if sub_328e1404[address(_20255)] < 0:
                                        revert with 0, 'add overflow'
                                    _21115 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21115] = 8
                                    mem[_21115 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21115 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        _21858 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21858] = 12
                                        mem[_21858 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)]:
                                            _22009 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22009 + 68] = mem[idx + _21858 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22009 + 68] = mem[_22009 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22009 + -mem[64] + 100
                                    else:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                            revert with 0, 'mul overflow'
                                        _21936 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21936] = 12
                                        mem[_21936 + 32] = 'sub overflow' << 160
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_328e1404[address(_20255)]:
                                            _22095 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22095 + 68] = mem[idx + _21936 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22095 + 68] = mem[_22095 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22095 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += -1 * 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                    if (sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                else:
                                    if 10^18 * _20325 / _20325 != 10^18:
                                        revert with 0, 'mul overflow'
                                    if sub_328e1404[address(_20255)] + (10^18 * _20325) < 10^18 * _20325:
                                        revert with 0, 'add overflow'
                                    _21154 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21154] = 8
                                    mem[_21154 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21154 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] + (10^18 * _20325) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        _21935 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21935] = 12
                                        mem[_21935 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)] + (10^18 * _20325):
                                            _22092 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22092 + 68] = mem[idx + _21935 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22092 + 68] = mem[_22092 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22092 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += 10^18 * _20325
                                    else:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20325) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_328e1404[address(_20255)] + (10^18 * _20325) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                            revert with 0, 'mul overflow'
                                        _22008 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22008] = 12
                                        mem[_22008 + 32] = 'sub overflow' << 160
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20325) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_328e1404[address(_20255)] + (10^18 * _20325):
                                            _22200 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22200 + 68] = mem[idx + _22008 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22200 + 68] = mem[_22200 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22200 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] = sub_328e1404[address(_20255)] + (10^18 * _20325) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20325) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)])
                                    if (sub_328e1404[address(_20255)] + (10^18 * _20325) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] + (10^18 * _20325) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                        else:
                            _20369 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20369] = 8
                            mem[_20369 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _20369 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            _20462 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20462] = 8
                            mem[_20462 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _20462 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            if not sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                _20705 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20705] = 12
                                mem[_20705 + 32] = 'sub overflow' << 160
                                if 0 > sub_9cbf3979[address(_20255)]:
                                    _20751 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 12
                                    idx = 0
                                    while idx < 12:
                                        mem[idx + _20751 + 68] = mem[idx + _20705 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20751 + 68] = mem[_20751 + 88 len 12]
                                    revert with memory
                                      from mem[64]
                                       len _20751 + -mem[64] + 100
                                if (sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_20255)] < sub_cde04799[address(_20255)]:
                                    revert with 0, 'add overflow'
                                sub_cde04799[address(_20255)] += sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                mem[0] = address(_20255)
                                mem[32] = 215
                                if not _20325:
                                    if sub_328e1404[address(_20255)] < 0:
                                        revert with 0, 'add overflow'
                                    _21119 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21119] = 8
                                    mem[_21119 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21119 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        _21865 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21865] = 12
                                        mem[_21865 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)]:
                                            _22021 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22021 + 68] = mem[idx + _21865 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22021 + 68] = mem[_22021 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22021 + -mem[64] + 100
                                    else:
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                            revert with 0, 'mul overflow'
                                        _21945 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21945] = 12
                                        mem[_21945 + 32] = 'sub overflow' << 160
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_328e1404[address(_20255)]:
                                            _22111 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22111 + 68] = mem[idx + _21945 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22111 + 68] = mem[_22111 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22111 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += -1 * totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                    if (sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                else:
                                    if 10^18 * _20325 / _20325 != 10^18:
                                        revert with 0, 'mul overflow'
                                    if sub_328e1404[address(_20255)] + (10^18 * _20325) < 10^18 * _20325:
                                        revert with 0, 'add overflow'
                                    _21159 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21159] = 8
                                    mem[_21159 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21159 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] + (10^18 * _20325) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        _21944 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21944] = 12
                                        mem[_21944 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)] + (10^18 * _20325):
                                            _22108 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22108 + 68] = mem[idx + _21944 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22108 + 68] = mem[_22108 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22108 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += 10^18 * _20325
                                    else:
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20325) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_328e1404[address(_20255)] + (10^18 * _20325) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                            revert with 0, 'mul overflow'
                                        _22020 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22020] = 12
                                        mem[_22020 + 32] = 'sub overflow' << 160
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20325) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_328e1404[address(_20255)] + (10^18 * _20325):
                                            _22220 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22220 + 68] = mem[idx + _22020 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22220 + 68] = mem[_22220 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22220 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] = sub_328e1404[address(_20255)] + (10^18 * _20325) - (totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20325) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                    if (sub_328e1404[address(_20255)] + (10^18 * _20325) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] + (10^18 * _20325) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                            else:
                                if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                    revert with 0, 'mul overflow'
                                _20729 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20729] = 12
                                mem[_20729 + 32] = 'sub overflow' << 160
                                if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_9cbf3979[address(_20255)]:
                                    _20777 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 12
                                    idx = 0
                                    while idx < 12:
                                        mem[idx + _20777 + 68] = mem[idx + _20729 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20777 + 68] = mem[_20777 + 88 len 12]
                                    revert with memory
                                      from mem[64]
                                       len _20777 + -mem[64] + 100
                                sub_9cbf3979[address(_20255)] += -1 * totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                if (sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_20255)] < sub_cde04799[address(_20255)]:
                                    revert with 0, 'add overflow'
                                sub_cde04799[address(_20255)] += sub_9cbf3979[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                mem[0] = address(_20255)
                                mem[32] = 215
                                if not _20325:
                                    if sub_328e1404[address(_20255)] < 0:
                                        revert with 0, 'add overflow'
                                    _21158 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21158] = 8
                                    mem[_21158 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21158 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        _21943 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21943] = 12
                                        mem[_21943 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)]:
                                            _22105 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22105 + 68] = mem[idx + _21943 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22105 + 68] = mem[_22105 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22105 + -mem[64] + 100
                                    else:
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                            revert with 0, 'mul overflow'
                                        _22019 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22019] = 12
                                        mem[_22019 + 32] = 'sub overflow' << 160
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_328e1404[address(_20255)]:
                                            _22217 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22217 + 68] = mem[idx + _22019 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22217 + 68] = mem[_22217 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22217 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += -1 * totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                    if (sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                else:
                                    if 10^18 * _20325 / _20325 != 10^18:
                                        revert with 0, 'mul overflow'
                                    if sub_328e1404[address(_20255)] + (10^18 * _20325) < 10^18 * _20325:
                                        revert with 0, 'add overflow'
                                    _21212 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21212] = 8
                                    mem[_21212 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21212 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] + (10^18 * _20325) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        _22018 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22018] = 12
                                        mem[_22018 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)] + (10^18 * _20325):
                                            _22214 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22214 + 68] = mem[idx + _22018 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22214 + 68] = mem[_22214 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22214 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += 10^18 * _20325
                                    else:
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20325) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_328e1404[address(_20255)] + (10^18 * _20325) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                            revert with 0, 'mul overflow'
                                        _22104 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22104] = 12
                                        mem[_22104 + 32] = 'sub overflow' << 160
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20325) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_328e1404[address(_20255)] + (10^18 * _20325):
                                            _22348 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22348 + 68] = mem[idx + _22104 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22348 + 68] = mem[_22348 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22348 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] = sub_328e1404[address(_20255)] + (10^18 * _20325) - (totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20325) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                    if (sub_328e1404[address(_20255)] + (10^18 * _20325) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] + (10^18 * _20325) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                        mem[0] = address(_20255)
                        mem[32] = 212
                        mem[mem[64]] = address(_20255)
                        mem[mem[64] + 32] = sub_693c781c[address(_20255)]
                        mem[mem[64] + 64] = sub_cde04799[address(_20255)]
                        emit 0x6f63d00b: address(_20255), sub_693c781c[address(_20255)], sub_cde04799[address(_20255)]
                else:
                    if 10^18 * arg3 * _20259 / ext_call.return_data[0] / arg3 * _20259 / ext_call.return_data[0] != 10^18:
                        revert with 0, 'mul overflow'
                    if sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) < 10^18 * arg3 * _20259 / ext_call.return_data[0]:
                        revert with 0, 'add overflow'
                    mem[0] = address(_20255)
                    mem[32] = 208
                    if not totalStake[address(_20255)]:
                        mem[mem[64]] = 0x1d4c200e00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor0)
                        staticcall stor0.0x1d4c200e with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20339 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _20347 = mem[_20339]
                        require mem[_20339] <= 4294967296
                        require mem[_20339] + 32 <= return_data.size
                        require mem[_20339 + mem[_20339]] <= 4294967296 and mem[_20339] + (32 * mem[_20339 + mem[_20339]]) + 32 <= return_data.size
                        mem[_20339 + ceil32(return_data.size)] = mem[_20339 + mem[_20339]]
                        _20368 = mem[_20339 + _20347]
                        s = 0
                        while s < 32 * _20368:
                            mem[s + _20339 + ceil32(return_data.size) + 32] = mem[s + _20339 + _20347 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _20368) + _20339 + ceil32(return_data.size) + 32
                        _23615 = mem[_20339 + 32]
                        require mem[_20339 + 32] <= 4294967296
                        require mem[_20339 + 32] + 32 <= return_data.size
                        require mem[_20339 + mem[_20339 + 32]] <= 4294967296 and mem[_20339 + 32] + (32 * mem[_20339 + mem[_20339 + 32]]) + 32 <= return_data.size
                        mem[(32 * _20368) + _20339 + ceil32(return_data.size) + 32] = mem[_20339 + mem[_20339 + 32]]
                        _24153 = mem[_20339 + _23615]
                        s = 0
                        while s < 32 * _24153:
                            mem[s + (32 * _20368) + _20339 + ceil32(return_data.size) + 64] = mem[s + _20339 + _23615 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _24153) + (32 * _20368) + _20339 + ceil32(return_data.size) + 64
                        _26463 = mem[_20339 + ceil32(return_data.size)]
                        s = 0
                        t = 0
                        while s < _26463:
                            require s < mem[_20339 + ceil32(return_data.size)]
                            mem[0] = mem[(32 * s) + _20339 + ceil32(return_data.size) + 44 len 20]
                            mem[32] = 208
                            if totalStake[mem[0]] != 0:
                                _26463 = mem[_20339 + ceil32(return_data.size)]
                                s = s + 1
                                t = t
                                continue 
                            require s < mem[(32 * _20368) + _20339 + ceil32(return_data.size) + 32]
                            _26497 = mem[(32 * s) + (32 * _20368) + _20339 + ceil32(return_data.size) + 64]
                            require s < mem[(32 * _20368) + _20339 + ceil32(return_data.size) + 32]
                            mem[(32 * s) + (32 * _20368) + _20339 + ceil32(return_data.size) + 64] = 0
                            _26463 = mem[_20339 + ceil32(return_data.size)]
                            s = s + 1
                            t = t + _26497
                            continue 
                        if not mem[_20339 + ceil32(return_data.size)]:
                            revert with 0, 'TM:absCollsInvalid'
                        if 10^18 == t:
                            revert with 0, 'TM:absCollsInvalid'
                        _28679 = mem[_20339 + ceil32(return_data.size)]
                        s = 0
                        while s < _28679:
                            require s < mem[(32 * _20368) + _20339 + ceil32(return_data.size) + 32]
                            if mem[(32 * s) + (32 * _20368) + _20339 + ceil32(return_data.size) + 64] != 0:
                                require s < mem[_20339 + ceil32(return_data.size)]
                                _28709 = mem[(32 * s) + _20339 + ceil32(return_data.size) + 32]
                                if 0 == t:
                                    mem[0] = mem[(32 * s) + _20339 + ceil32(return_data.size) + 44 len 20]
                                    mem[32] = 216
                                    _28722 = sha3(mem[0], 216)
                                    require s < mem[(32 * _20368) + _20339 + ceil32(return_data.size) + 32]
                                    _28743 = mem[(32 * s) + (32 * _20368) + _20339 + ceil32(return_data.size) + 64]
                                    if not arg3 * _20259 / ext_call.return_data[0]:
                                        if sub_9cbf3979[mem[0]] < 0:
                                            revert with 0, 'add overflow'
                                        require ext_code.size(address(_28709))
                                        staticcall address(_28709).decimals() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(_28709)
                                        mem[32] = 208
                                        if uint8(ext_call.return_data[0]) <= 18:
                                            if not totalStake[address(_28709)]:
                                                _28981 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_28981] = 8
                                                mem[_28981 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28981 + 32]
                                                    _28679 = mem[_20339 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] / totalStake[address(_28709)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                                revert with 0, 'mul overflow'
                                            _29026 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29026] = 8
                                            mem[_29026 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29026 + 32]
                                                    _28679 = mem[_20339 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not stor[_28722] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]:
                                                _29685 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29685] = 12
                                                mem[_29685 + 32] = 'sub overflow' << 160
                                                if 0 > stor[_28722]:
                                                    _29753 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29753 + 68] = mem[idx + _29685 + 32]
                                                        _28679 = mem[_20339 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29753 + 68] = mem[_29753 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29753 + -mem[64] + 100
                                                sub_9cbf3979[address(_28709)] = stor[_28722]
                                            else:
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] * stor[_28722] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] / stor[_28722] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]:
                                                    revert with 0, 'mul overflow'
                                                _29722 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29722] = 12
                                                mem[_29722 + 32] = 'sub overflow' << 160
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] * stor[_28722] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] > stor[_28722]:
                                                    _29799 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29799 + 68] = mem[idx + _29722 + 32]
                                                        _28679 = mem[_20339 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29799 + 68] = mem[_29799 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29799 + -mem[64] + 100
                                                sub_9cbf3979[address(_28709)] = stor[_28722] - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] * stor[_28722] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)])
                                            if (stor[_28722] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]) + sub_cde04799[address(_28709)] < sub_cde04799[address(_28709)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28709)] += stor[_28722] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]
                                        else:
                                            _28875 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_28875] = 8
                                            mem[_28875 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28875 + 32]
                                                    _28679 = mem[_20339 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            _29073 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29073] = 8
                                            mem[_29073 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29073 + 32]
                                                    _28679 = mem[_20339 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not stor[_28722] / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                _29723 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29723] = 12
                                                mem[_29723 + 32] = 'sub overflow' << 160
                                                if 0 > stor[_28722]:
                                                    _29802 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29802 + 68] = mem[idx + _29723 + 32]
                                                        _28679 = mem[_20339 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29802 + 68] = mem[_29802 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29802 + -mem[64] + 100
                                                sub_9cbf3979[address(_28709)] = stor[_28722]
                                            else:
                                                if totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28722] / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) / stor[_28722] / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                    revert with 0, 'mul overflow'
                                                _29756 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29756] = 12
                                                mem[_29756 + 32] = 'sub overflow' << 160
                                                if totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28722] / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) > stor[_28722]:
                                                    _29864 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29864 + 68] = mem[idx + _29756 + 32]
                                                        _28679 = mem[_20339 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29864 + 68] = mem[_29864 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29864 + -mem[64] + 100
                                                sub_9cbf3979[address(_28709)] = stor[_28722] - (totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28722] / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                            if (stor[_28722] / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_28709)] < sub_cde04799[address(_28709)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28709)] += stor[_28722] / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                    else:
                                        if mem[(32 * s) + (32 * _20368) + _20339 + ceil32(return_data.size) + 64] * arg3 * _20259 / ext_call.return_data[0] / arg3 * _20259 / ext_call.return_data[0] != mem[(32 * s) + (32 * _20368) + _20339 + ceil32(return_data.size) + 64]:
                                            revert with 0, 'mul overflow'
                                        if sub_9cbf3979[mem[0]] + (mem[(32 * s) + (32 * _20368) + _20339 + ceil32(return_data.size) + 64] * arg3 * _20259 / ext_call.return_data[0]) < mem[(32 * s) + (32 * _20368) + _20339 + ceil32(return_data.size) + 64] * arg3 * _20259 / ext_call.return_data[0]:
                                            revert with 0, 'add overflow'
                                        require ext_code.size(address(_28709))
                                        staticcall address(_28709).decimals() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(_28709)
                                        mem[32] = 208
                                        if uint8(ext_call.return_data[0]) <= 18:
                                            if not totalStake[address(_28709)]:
                                                _29023 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29023] = 8
                                                mem[_29023 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29023 + 32]
                                                    _28679 = mem[_20339 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] / totalStake[address(_28709)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                                revert with 0, 'mul overflow'
                                            _29067 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29067] = 8
                                            mem[_29067 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29067 + 32]
                                                    _28679 = mem[_20339 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]:
                                                _29719 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29719] = 12
                                                mem[_29719 + 32] = 'sub overflow' << 160
                                                if 0 > stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]):
                                                    _29795 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29795 + 68] = mem[idx + _29719 + 32]
                                                        _28679 = mem[_20339 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29795 + 68] = mem[_29795 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29795 + -mem[64] + 100
                                                sub_9cbf3979[address(_28709)] = stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0])
                                            else:
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] * stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] / stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]:
                                                    revert with 0, 'mul overflow'
                                                _29751 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29751] = 12
                                                mem[_29751 + 32] = 'sub overflow' << 160
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] * stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] > stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]):
                                                    _29855 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29855 + 68] = mem[idx + _29751 + 32]
                                                        _28679 = mem[_20339 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29855 + 68] = mem[_29855 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29855 + -mem[64] + 100
                                                sub_9cbf3979[address(_28709)] = stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] * stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)])
                                            if (stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]) + sub_cde04799[address(_28709)] < sub_cde04799[address(_28709)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28709)] += stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]
                                        else:
                                            _28891 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_28891] = 8
                                            mem[_28891 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28891 + 32]
                                                    _28679 = mem[_20339 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            _29122 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29122] = 8
                                            mem[_29122 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29122 + 32]
                                                    _28679 = mem[_20339 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                _29752 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29752] = 12
                                                mem[_29752 + 32] = 'sub overflow' << 160
                                                if 0 > stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]):
                                                    _29858 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29858 + 68] = mem[idx + _29752 + 32]
                                                        _28679 = mem[_20339 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29858 + 68] = mem[_29858 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29858 + -mem[64] + 100
                                                sub_9cbf3979[address(_28709)] = stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0])
                                            else:
                                                if totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) / stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                    revert with 0, 'mul overflow'
                                                _29798 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29798] = 12
                                                mem[_29798 + 32] = 'sub overflow' << 160
                                                if totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) > stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]):
                                                    _29930 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29930 + 68] = mem[idx + _29798 + 32]
                                                        _28679 = mem[_20339 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29930 + 68] = mem[_29930 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29930 + -mem[64] + 100
                                                sub_9cbf3979[address(_28709)] = stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]) - (totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) * stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                            if (stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_28709)] < sub_cde04799[address(_28709)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28709)] += stor[_28722] + (_28743 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                else:
                                    require s < mem[(32 * _20368) + _20339 + ceil32(return_data.size) + 32]
                                    mem[(32 * s) + (32 * _20368) + _20339 + ceil32(return_data.size) + 64] = mem[(32 * s) + (32 * _20368) + _20339 + ceil32(return_data.size) + 64] + t
                                    mem[32] = 216
                                    require s < mem[(32 * _20368) + _20339 + ceil32(return_data.size) + 32]
                                    _28763 = mem[(32 * s) + (32 * _20368) + _20339 + ceil32(return_data.size) + 64]
                                    if not arg3 * _20259 / ext_call.return_data[0]:
                                        if sub_9cbf3979[address(_28709)] < 0:
                                            revert with 0, 'add overflow'
                                        require ext_code.size(address(_28709))
                                        staticcall address(_28709).decimals() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(_28709)
                                        mem[32] = 208
                                        if uint8(ext_call.return_data[0]) <= 18:
                                            if not totalStake[address(_28709)]:
                                                _29077 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29077] = 8
                                                mem[_29077 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29077 + 32]
                                                    _28679 = mem[_20339 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] / totalStake[address(_28709)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                                revert with 0, 'mul overflow'
                                            _29131 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29131] = 8
                                            mem[_29131 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29131 + 32]
                                                    _28679 = mem[_20339 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not sub_9cbf3979[address(_28709)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]:
                                                _29759 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29759] = 12
                                                mem[_29759 + 32] = 'sub overflow' << 160
                                                if 0 > sub_9cbf3979[address(_28709)]:
                                                    _29869 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29869 + 68] = mem[idx + _29759 + 32]
                                                        _28679 = mem[_20339 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29869 + 68] = mem[_29869 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29869 + -mem[64] + 100
                                            else:
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] * sub_9cbf3979[address(_28709)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] / sub_9cbf3979[address(_28709)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]:
                                                    revert with 0, 'mul overflow'
                                                _29808 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29808] = 12
                                                mem[_29808 + 32] = 'sub overflow' << 160
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] * sub_9cbf3979[address(_28709)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] > sub_9cbf3979[address(_28709)]:
                                                    _29945 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29945 + 68] = mem[idx + _29808 + 32]
                                                        _28679 = mem[_20339 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29945 + 68] = mem[_29945 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29945 + -mem[64] + 100
                                                sub_9cbf3979[address(_28709)] += -1 * 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] * sub_9cbf3979[address(_28709)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]
                                            if (sub_9cbf3979[address(_28709)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]) + sub_cde04799[address(_28709)] < sub_cde04799[address(_28709)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28709)] += sub_9cbf3979[address(_28709)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]
                                        else:
                                            _28906 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_28906] = 8
                                            mem[_28906 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28906 + 32]
                                                    _28679 = mem[_20339 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            _29195 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29195] = 8
                                            mem[_29195 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29195 + 32]
                                                    _28679 = mem[_20339 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not sub_9cbf3979[address(_28709)] / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                _29809 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29809] = 12
                                                mem[_29809 + 32] = 'sub overflow' << 160
                                                if 0 > sub_9cbf3979[address(_28709)]:
                                                    _29948 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29948 + 68] = mem[idx + _29809 + 32]
                                                        _28679 = mem[_20339 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29948 + 68] = mem[_29948 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29948 + -mem[64] + 100
                                            else:
                                                if totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28709)] / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_9cbf3979[address(_28709)] / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                    revert with 0, 'mul overflow'
                                                _29872 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29872] = 12
                                                mem[_29872 + 32] = 'sub overflow' << 160
                                                if totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28709)] / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_9cbf3979[address(_28709)]:
                                                    _30050 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30050 + 68] = mem[idx + _29872 + 32]
                                                        _28679 = mem[_20339 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30050 + 68] = mem[_30050 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30050 + -mem[64] + 100
                                                sub_9cbf3979[address(_28709)] += -1 * totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28709)] / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                            if (sub_9cbf3979[address(_28709)] / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_28709)] < sub_cde04799[address(_28709)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28709)] += sub_9cbf3979[address(_28709)] / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                    else:
                                        if mem[(32 * s) + (32 * _20368) + _20339 + ceil32(return_data.size) + 64] * arg3 * _20259 / ext_call.return_data[0] / arg3 * _20259 / ext_call.return_data[0] != mem[(32 * s) + (32 * _20368) + _20339 + ceil32(return_data.size) + 64]:
                                            revert with 0, 'mul overflow'
                                        if sub_9cbf3979[address(_28709)] + (mem[(32 * s) + (32 * _20368) + _20339 + ceil32(return_data.size) + 64] * arg3 * _20259 / ext_call.return_data[0]) < mem[(32 * s) + (32 * _20368) + _20339 + ceil32(return_data.size) + 64] * arg3 * _20259 / ext_call.return_data[0]:
                                            revert with 0, 'add overflow'
                                        require ext_code.size(address(_28709))
                                        staticcall address(_28709).decimals() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(_28709)
                                        mem[32] = 208
                                        if uint8(ext_call.return_data[0]) <= 18:
                                            if not totalStake[address(_28709)]:
                                                _29128 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29128] = 8
                                                mem[_29128 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29128 + 32]
                                                    _28679 = mem[_20339 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] / totalStake[address(_28709)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                                revert with 0, 'mul overflow'
                                            _29189 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29189] = 8
                                            mem[_29189 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _29189 + 32]
                                                    _28679 = mem[_20339 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            if not sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]:
                                                _29805 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29805] = 12
                                                mem[_29805 + 32] = 'sub overflow' << 160
                                                if 0 > sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]):
                                                    _29941 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _29941 + 68] = mem[idx + _29805 + 32]
                                                        _28679 = mem[_20339 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_29941 + 68] = mem[_29941 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _29941 + -mem[64] + 100
                                                sub_9cbf3979[address(_28709)] += _28763 * arg3 * _20259 / ext_call.return_data[0]
                                            else:
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] * sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] / sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]:
                                                    revert with 0, 'mul overflow'
                                                _29867 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29867] = 12
                                                mem[_29867 + 32] = 'sub overflow' << 160
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] * sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] > sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]):
                                                    _30041 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30041 + 68] = mem[idx + _29867 + 32]
                                                        _28679 = mem[_20339 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30041 + 68] = mem[_30041 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30041 + -mem[64] + 100
                                                sub_9cbf3979[address(_28709)] = sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)] * sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)])
                                            if (sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]) + sub_cde04799[address(_28709)] < sub_cde04799[address(_28709)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28709)] += sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_28709)]
                                        else:
                                            _28925 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_28925] = 8
                                            mem[_28925 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                idx = 32
                                                while idx < 8:
                                                    mem[idx + mem[64] + 68] = mem[idx + _28925 + 32]
                                                    _28679 = mem[_20339 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, ''
                                            _29265 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_29265] = 8
                                            mem[_29265 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                            if not totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                                s = 32
                                                while s < 8:
                                                    mem[s + mem[64] + 68] = mem[s + _29265 + 32]
                                                    _28679 = mem[_20339 + ceil32(return_data.size)]
                                                    s = s + 32
                                                    continue 
                                                revert with 0, ''
                                            if not sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                _29868 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29868] = 12
                                                mem[_29868 + 32] = 'sub overflow' << 160
                                                if 0 > sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]):
                                                    _30044 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30044 + 68] = mem[idx + _29868 + 32]
                                                        _28679 = mem[_20339 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30044 + 68] = mem[_30044 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30044 + -mem[64] + 100
                                                sub_9cbf3979[address(_28709)] += _28763 * arg3 * _20259 / ext_call.return_data[0]
                                            else:
                                                if totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                                    revert with 0, 'mul overflow'
                                                _29944 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_29944] = 12
                                                mem[_29944 + 32] = 'sub overflow' << 160
                                                if totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]):
                                                    _30165 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 12
                                                    idx = 0
                                                    while idx < 12:
                                                        mem[idx + _30165 + 68] = mem[idx + _29944 + 32]
                                                        _28679 = mem[_20339 + ceil32(return_data.size)]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_30165 + 68] = mem[_30165 + 88 len 12]
                                                    revert with memory
                                                      from mem[64]
                                                       len _30165 + -mem[64] + 100
                                                sub_9cbf3979[address(_28709)] = sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]) - (totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                            if (sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_28709)] < sub_cde04799[address(_28709)]:
                                                revert with 0, 'add overflow'
                                            sub_cde04799[address(_28709)] += sub_9cbf3979[address(_28709)] + (_28763 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_28709)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                mem[0] = address(_28709)
                                mem[32] = 212
                                mem[mem[64]] = address(_28709)
                                mem[mem[64] + 32] = sub_693c781c[address(_28709)]
                                mem[mem[64] + 64] = sub_cde04799[address(_28709)]
                                emit 0x6f63d00b: address(_28709), sub_693c781c[address(_28709)], sub_cde04799[address(_28709)]
                            _28679 = mem[_20339 + ceil32(return_data.size)]
                            s = s + 1
                            continue 
                        require ext_code.size(stor0)
                        staticcall stor0.0x8f871a6c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg4.length) + 128]
                        _28719 = mem[(32 * idx) + (32 * arg4.length) + 160]
                        mem[mem[64]] = 0x62f6105b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = address(_20255)
                        mem[mem[64] + 68] = _28719
                        require ext_code.size(stor50)
                        call stor50.0x62f6105b with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(_20255), _28719
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < mem[(32 * arg4.length) + 128]
                        mem[(32 * idx) + (32 * arg4.length) + 160] = 0
                    else:
                        require idx < mem[(32 * arg4.length) + 128]
                        _20330 = mem[(32 * idx) + (32 * arg4.length) + 160]
                        require ext_code.size(address(_20255))
                        staticcall address(_20255).decimals() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = address(_20255)
                        mem[32] = 208
                        if uint8(ext_call.return_data[0]) <= 18:
                            if not totalStake[address(_20255)]:
                                _20437 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20437] = 8
                                mem[_20437 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _20437 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                revert with 0, 'mul overflow'
                            _20455 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20455] = 8
                            mem[_20455 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _20455 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            if not sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                _20696 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20696] = 12
                                mem[_20696 + 32] = 'sub overflow' << 160
                                if 0 > sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]):
                                    _20743 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 12
                                    idx = 0
                                    while idx < 12:
                                        mem[idx + _20743 + 68] = mem[idx + _20696 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20743 + 68] = mem[_20743 + 88 len 12]
                                    revert with memory
                                      from mem[64]
                                       len _20743 + -mem[64] + 100
                                sub_9cbf3979[address(_20255)] += 10^18 * arg3 * _20259 / ext_call.return_data[0]
                                if (sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_cde04799[address(_20255)] < sub_cde04799[address(_20255)]:
                                    revert with 0, 'add overflow'
                                sub_cde04799[address(_20255)] += sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                mem[0] = address(_20255)
                                mem[32] = 215
                                if not _20330:
                                    if sub_328e1404[address(_20255)] < 0:
                                        revert with 0, 'add overflow'
                                    _21107 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21107] = 8
                                    mem[_21107 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21107 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        _21841 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21841] = 12
                                        mem[_21841 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)]:
                                            _21996 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _21996 + 68] = mem[idx + _21841 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_21996 + 68] = mem[_21996 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _21996 + -mem[64] + 100
                                    else:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                            revert with 0, 'mul overflow'
                                        _21921 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21921] = 12
                                        mem[_21921 + 32] = 'sub overflow' << 160
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_328e1404[address(_20255)]:
                                            _22080 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22080 + 68] = mem[idx + _21921 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22080 + 68] = mem[_22080 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22080 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += -1 * 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                    if (sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                else:
                                    if 10^18 * _20330 / _20330 != 10^18:
                                        revert with 0, 'mul overflow'
                                    if sub_328e1404[address(_20255)] + (10^18 * _20330) < 10^18 * _20330:
                                        revert with 0, 'add overflow'
                                    _21144 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21144] = 8
                                    mem[_21144 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21144 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] + (10^18 * _20330) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        _21920 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21920] = 12
                                        mem[_21920 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)] + (10^18 * _20330):
                                            _22077 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22077 + 68] = mem[idx + _21920 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22077 + 68] = mem[_22077 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22077 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += 10^18 * _20330
                                    else:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20330) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_328e1404[address(_20255)] + (10^18 * _20330) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                            revert with 0, 'mul overflow'
                                        _21995 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21995] = 12
                                        mem[_21995 + 32] = 'sub overflow' << 160
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20330) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_328e1404[address(_20255)] + (10^18 * _20330):
                                            _22179 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22179 + 68] = mem[idx + _21995 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22179 + 68] = mem[_22179 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22179 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] = sub_328e1404[address(_20255)] + (10^18 * _20330) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20330) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)])
                                    if (sub_328e1404[address(_20255)] + (10^18 * _20330) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] + (10^18 * _20330) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                            else:
                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                    revert with 0, 'mul overflow'
                                _20723 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20723] = 12
                                mem[_20723 + 32] = 'sub overflow' << 160
                                if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]):
                                    _20768 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 12
                                    idx = 0
                                    while idx < 12:
                                        mem[idx + _20768 + 68] = mem[idx + _20723 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20768 + 68] = mem[_20768 + 88 len 12]
                                    revert with memory
                                      from mem[64]
                                       len _20768 + -mem[64] + 100
                                sub_9cbf3979[address(_20255)] = sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)])
                                if (sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_cde04799[address(_20255)] < sub_cde04799[address(_20255)]:
                                    revert with 0, 'add overflow'
                                sub_cde04799[address(_20255)] += sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                mem[0] = address(_20255)
                                mem[32] = 215
                                if not _20330:
                                    if sub_328e1404[address(_20255)] < 0:
                                        revert with 0, 'add overflow'
                                    _21143 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21143] = 8
                                    mem[_21143 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21143 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        _21919 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21919] = 12
                                        mem[_21919 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)]:
                                            _22074 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22074 + 68] = mem[idx + _21919 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22074 + 68] = mem[_22074 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22074 + -mem[64] + 100
                                    else:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                            revert with 0, 'mul overflow'
                                        _21994 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21994] = 12
                                        mem[_21994 + 32] = 'sub overflow' << 160
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_328e1404[address(_20255)]:
                                            _22176 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22176 + 68] = mem[idx + _21994 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22176 + 68] = mem[_22176 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22176 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += -1 * 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                    if (sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                                else:
                                    if 10^18 * _20330 / _20330 != 10^18:
                                        revert with 0, 'mul overflow'
                                    if sub_328e1404[address(_20255)] + (10^18 * _20330) < 10^18 * _20330:
                                        revert with 0, 'add overflow'
                                    _21194 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21194] = 8
                                    mem[_21194 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21194 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] + (10^18 * _20330) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                        _21993 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21993] = 12
                                        mem[_21993 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)] + (10^18 * _20330):
                                            _22173 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22173 + 68] = mem[idx + _21993 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22173 + 68] = mem[_22173 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22173 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += 10^18 * _20330
                                    else:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20330) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] / sub_328e1404[address(_20255)] + (10^18 * _20330) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] != 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]:
                                            revert with 0, 'mul overflow'
                                        _22073 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22073] = 12
                                        mem[_22073 + 32] = 'sub overflow' << 160
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20330) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] > sub_328e1404[address(_20255)] + (10^18 * _20330):
                                            _22299 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22299 + 68] = mem[idx + _22073 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22299 + 68] = mem[_22299 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22299 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] = sub_328e1404[address(_20255)] + (10^18 * _20330) - (10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)] * sub_328e1404[address(_20255)] + (10^18 * _20330) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)])
                                    if (sub_328e1404[address(_20255)] + (10^18 * _20330) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] + (10^18 * _20330) / 10^(-uint8(ext_call.return_data[0]) + 18) * totalStake[address(_20255)]
                        else:
                            _20374 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20374] = 8
                            mem[_20374 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not 10^(uint8(ext_call.return_data[0]) - 18):
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _20374 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            _20480 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20480] = 8
                            mem[_20480 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                idx = 32
                                while idx < 8:
                                    mem[idx + mem[64] + 68] = mem[idx + _20480 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, ''
                            if not sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                _20724 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20724] = 12
                                mem[_20724 + 32] = 'sub overflow' << 160
                                if 0 > sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]):
                                    _20771 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 12
                                    idx = 0
                                    while idx < 12:
                                        mem[idx + _20771 + 68] = mem[idx + _20724 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20771 + 68] = mem[_20771 + 88 len 12]
                                    revert with memory
                                      from mem[64]
                                       len _20771 + -mem[64] + 100
                                sub_9cbf3979[address(_20255)] += 10^18 * arg3 * _20259 / ext_call.return_data[0]
                                if (sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_20255)] < sub_cde04799[address(_20255)]:
                                    revert with 0, 'add overflow'
                                sub_cde04799[address(_20255)] += sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                mem[0] = address(_20255)
                                mem[32] = 215
                                if not _20330:
                                    if sub_328e1404[address(_20255)] < 0:
                                        revert with 0, 'add overflow'
                                    _21147 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21147] = 8
                                    mem[_21147 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21147 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        _21926 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21926] = 12
                                        mem[_21926 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)]:
                                            _22086 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22086 + 68] = mem[idx + _21926 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22086 + 68] = mem[_22086 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22086 + -mem[64] + 100
                                    else:
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                            revert with 0, 'mul overflow'
                                        _22003 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22003] = 12
                                        mem[_22003 + 32] = 'sub overflow' << 160
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_328e1404[address(_20255)]:
                                            _22192 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22192 + 68] = mem[idx + _22003 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22192 + 68] = mem[_22192 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22192 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += -1 * totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                    if (sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                else:
                                    if 10^18 * _20330 / _20330 != 10^18:
                                        revert with 0, 'mul overflow'
                                    if sub_328e1404[address(_20255)] + (10^18 * _20330) < 10^18 * _20330:
                                        revert with 0, 'add overflow'
                                    _21199 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21199] = 8
                                    mem[_21199 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21199 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] + (10^18 * _20330) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        _22002 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22002] = 12
                                        mem[_22002 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)] + (10^18 * _20330):
                                            _22189 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22189 + 68] = mem[idx + _22002 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22189 + 68] = mem[_22189 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22189 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += 10^18 * _20330
                                    else:
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20330) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_328e1404[address(_20255)] + (10^18 * _20330) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                            revert with 0, 'mul overflow'
                                        _22085 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22085] = 12
                                        mem[_22085 + 32] = 'sub overflow' << 160
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20330) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_328e1404[address(_20255)] + (10^18 * _20330):
                                            _22319 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22319 + 68] = mem[idx + _22085 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22319 + 68] = mem[_22319 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22319 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] = sub_328e1404[address(_20255)] + (10^18 * _20330) - (totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20330) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                    if (sub_328e1404[address(_20255)] + (10^18 * _20330) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] + (10^18 * _20330) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                            else:
                                if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                    revert with 0, 'mul overflow'
                                _20746 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20746] = 12
                                mem[_20746 + 32] = 'sub overflow' << 160
                                if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]):
                                    _20797 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 12
                                    idx = 0
                                    while idx < 12:
                                        mem[idx + _20797 + 68] = mem[idx + _20746 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20797 + 68] = mem[_20797 + 88 len 12]
                                    revert with memory
                                      from mem[64]
                                       len _20797 + -mem[64] + 100
                                sub_9cbf3979[address(_20255)] = sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) - (totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                if (sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_cde04799[address(_20255)] < sub_cde04799[address(_20255)]:
                                    revert with 0, 'add overflow'
                                sub_cde04799[address(_20255)] += sub_9cbf3979[address(_20255)] + (10^18 * arg3 * _20259 / ext_call.return_data[0]) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                mem[0] = address(_20255)
                                mem[32] = 215
                                if not _20330:
                                    if sub_328e1404[address(_20255)] < 0:
                                        revert with 0, 'add overflow'
                                    _21198 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21198] = 8
                                    mem[_21198 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21198 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        _22001 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22001] = 12
                                        mem[_22001 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)]:
                                            _22186 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22186 + 68] = mem[idx + _22001 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22186 + 68] = mem[_22186 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22186 + -mem[64] + 100
                                    else:
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                            revert with 0, 'mul overflow'
                                        _22084 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22084] = 12
                                        mem[_22084 + 32] = 'sub overflow' << 160
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_328e1404[address(_20255)]:
                                            _22316 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22316 + 68] = mem[idx + _22084 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22316 + 68] = mem[_22316 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22316 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += -1 * totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                    if (sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                                else:
                                    if 10^18 * _20330 / _20330 != 10^18:
                                        revert with 0, 'mul overflow'
                                    if sub_328e1404[address(_20255)] + (10^18 * _20330) < 10^18 * _20330:
                                        revert with 0, 'add overflow'
                                    _21263 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_21263] = 8
                                    mem[_21263 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                    if not totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                                        idx = 32
                                        while idx < 8:
                                            mem[idx + mem[64] + 68] = mem[idx + _21263 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, ''
                                    if not sub_328e1404[address(_20255)] + (10^18 * _20330) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                        _22083 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22083] = 12
                                        mem[_22083 + 32] = 'sub overflow' << 160
                                        if 0 > sub_328e1404[address(_20255)] + (10^18 * _20330):
                                            _22313 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            idx = 0
                                            while idx < 12:
                                                mem[idx + _22313 + 68] = mem[idx + _22083 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_22313 + 68] = mem[_22313 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22313 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] += 10^18 * _20330
                                    else:
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20330) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) / sub_328e1404[address(_20255)] + (10^18 * _20330) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) != totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18):
                                            revert with 0, 'mul overflow'
                                        _22185 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_22185] = 12
                                        mem[_22185 + 32] = 'sub overflow' << 160
                                        if totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20330) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) > sub_328e1404[address(_20255)] + (10^18 * _20330):
                                            _22465 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 12
                                            s = 0
                                            while s < 12:
                                                mem[s + _22465 + 68] = mem[s + _22185 + 32]
                                                s = s + 32
                                                continue 
                                            mem[_22465 + 68] = mem[_22465 + 88 len 12]
                                            revert with memory
                                              from mem[64]
                                               len _22465 + -mem[64] + 100
                                        sub_328e1404[address(_20255)] = sub_328e1404[address(_20255)] + (10^18 * _20330) - (totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18) * sub_328e1404[address(_20255)] + (10^18 * _20330) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18))
                                    if (sub_328e1404[address(_20255)] + (10^18 * _20330) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)) + sub_693c781c[address(_20255)] < sub_693c781c[address(_20255)]:
                                        revert with 0, 'add overflow'
                                    sub_693c781c[address(_20255)] += sub_328e1404[address(_20255)] + (10^18 * _20330) / totalStake[address(_20255)] / 10^(uint8(ext_call.return_data[0]) - 18)
                        mem[0] = address(_20255)
                        mem[32] = 212
                        mem[mem[64]] = address(_20255)
                        mem[mem[64] + 32] = sub_693c781c[address(_20255)]
                        mem[mem[64] + 64] = sub_cde04799[address(_20255)]
                        emit 0x6f63d00b: address(_20255), sub_693c781c[address(_20255)], sub_cde04799[address(_20255)]
            idx = idx + 1
            continue 
        require ext_code.size(arg1)
        call arg1.0xe7b1d678 with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        call arg2.0x420429ca with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0xd0d8c20d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = 96
        mem[mem[64] + 100] = mem[96]
        mem[mem[64] + 132 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 68] = (32 * mem[96]) + 128
        mem[(32 * mem[96]) + mem[64] + 132] = mem[(32 * arg4.length) + 128]
        _23613 = mem[(32 * arg4.length) + 128]
        mem[(32 * mem[96]) + mem[64] + 164 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
        require ext_code.size(arg1)
        call arg1.0xd0d8c20d with:
             gas gas_remaining wei
            args address(arg2), Array(len=mem[96], data=mem[mem[64] + 132 len (32 * _23613) + (32 * mem[96]) + 32]), (32 * mem[96]) + 128
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
