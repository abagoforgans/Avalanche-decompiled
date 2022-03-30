contract main {




// =====================  Runtime code  =====================


#
#  - voterCallsFinalizeRefundMainDapp(address arg1)
#  - voterFinalizeEnable(address arg1)
#
const CheckBlockTimestamp = block.timestamp


uint8 votingEnabled; offset 160
uint8 votingOnlyOwnerEnabled; offset 168
uint8 votingWhitelistEnabled; offset 176
uint128 stor0; offset 176
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
address mainDappAddr;
address templateCrowdSaleAddr;
mapping of address indexToCaller;
mapping of uint256 callerToIndex;
mapping of uint8 stor5;
mapping of address callerToPresaleAddr;
mapping of address presaleAddrToCaller;
mapping of address callerToOwnerAddr;
mapping of address ownerAddrToCaller;
mapping of address indexToPresaleAddr;
mapping of address indexToOwnerAddr;
mapping of address indexToOwner;
mapping of uint256 ownerToIndex;
mapping of uint8 stor14;
mapping of uint256 finalizeCallByUserTimestamp;
mapping of uint256 finalizeCallByOwnerTimestamp;
mapping of uint256 finalizeCallByWhitelistTimestamp;
mapping of uint8 stor18;
mapping of uint256 voterEnableFlagTime;
mapping of uint8 stor20;
mapping of uint8 stor21;
mapping of struct stor22;
mapping of address whitelistNameToAddr;
uint256 callerIndex;
uint256 ownerIndex;
uint256 checkEndTime;
uint256 voterFinalizeTime;
uint256 minimumTime;

function callerIndex() payable {
    return callerIndex
}

function ownerAddrToCaller(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ownerAddrToCaller[arg1]
}

function indexToOwnerAddr(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return indexToOwnerAddr[arg1]
}

function templateCrowdSaleAddr() payable {
    return templateCrowdSaleAddr
}

function getVoterFinalizeEnableFlag(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor18[address(arg1)])
}

function voterFinalizeEnableFlag(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor18[arg1])
}

function checkEndTime() payable {
    return checkEndTime
}

function presaleAddrToCaller(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return presaleAddrToCaller[arg1]
}

function ownerToBool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function minimumTime() payable {
    return minimumTime
}

function votingEnabled() payable {
    return bool(votingEnabled)
}

function voterEnableFlagTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return voterEnableFlagTime[arg1]
}

function owner() payable {
    return owner
}

function finalizeCallByWhitelistTimestamp(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return finalizeCallByWhitelistTimestamp[arg1]
}

function finalized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor20[arg1])
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor21[arg1])
}

function votingWhitelistEnabled() payable {
    return bool(votingWhitelistEnabled)
}

function votingOnlyOwnerEnabled() payable {
    return bool(votingOnlyOwnerEnabled)
}

function voterFinalizeTime() payable {
    return voterFinalizeTime
}

function ownerToIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ownerToIndex[arg1]
}

function finalizeCallByOwnerTimestamp(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return finalizeCallByOwnerTimestamp[arg1]
}

function indexToOwner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return indexToOwner[arg1]
}

function indexToPresaleAddr(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return indexToPresaleAddr[arg1]
}

function mainDappAddr() payable {
    return mainDappAddr
}

function callerToOwnerAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return callerToOwnerAddr[arg1]
}

function finalizeCallByUserTimestamp(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return finalizeCallByUserTimestamp[arg1]
}

function callerToPresaleAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return callerToPresaleAddr[arg1]
}

function whitelistNameToAddr(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    return whitelistNameToAddr[arg1[all]]
}

function callerToBool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function indexToCaller(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return indexToCaller[arg1]
}

function ownerIndex() payable {
    return ownerIndex
}

function callerToIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return callerToIndex[arg1]
}

function _fallback() payable {
    revert
}

function enableOwnerCall() payable {
    require msg.sender == owner
    Mask(88, 0, stor0.field_168) = 1
}

function enableVoterCall() payable {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 1
}

function disableOwnerCall() payable {
    require msg.sender == owner
    Mask(88, 0, stor0.field_168) = 0
}

function disableVoterCall() payable {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 0
}

function enableWhitelistCall() payable {
    require msg.sender == owner
    Mask(80, 0, stor0.field_176) = 1
}

function disableWhitelistCall() payable {
    require msg.sender == owner
    Mask(80, 0, stor0.field_176) = 0
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function updateMaindappAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    mainDappAddr = arg1
}

function removeFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor21[address(arg1)] = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeVoterMinTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if arg1 < 0:
        revert with 0, '_newMinTime must be >= 0'
    minimumTime = arg1
}

function changeVoterFinalizeTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if arg1 < minimumTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_newvoterTime must be >= minimum time'
    voterFinalizeTime = arg1
}

function ownerCallsFinalizeRefundMainDapp() payable {
    if not votingOnlyOwnerEnabled:
        revert with 0, 'ownerCallIsDisabled'
    mem[164 len 64] = voterCallsFinalizeRefund(address rg1), msg.sender, mem[164 len 28]
    call mainDappAddr.mem[164 len 4] with:
         gas gas_remaining wei
        args mem[168]
    if not ext_call.success:
        revert with 0, 'presaleOwner Emergency Finalization call failed'
    indexToOwner[stor25] = msg.sender
    ownerToIndex[address(msg.sender)] = ownerIndex
    stor14[address(msg.sender)] = 1
    if ownerIndex == -1:
        revert with 'NH{q', 17
    ownerIndex++
    finalizeCallByOwnerTimestamp[address(msg.sender)] = block.timestamp
}

function whitelistCallsFinalizeRefundMainDapp(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not votingWhitelistEnabled:
        revert with 0, 'whitelistCallIsDisabled'
    if not stor21[address(msg.sender)]:
        revert with 0, 'not whitelisted'
    require ext_code.size(mainDappAddr)
    staticcall mainDappAddr.presaleAddrToOwnerAddr(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 164 len 64] = 0, mem[ceil32(return_data.size) + 132 len 60]
    call mainDappAddr.mem[ceil32(return_data.size) + 164 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 168]
    if not ext_call.success:
        revert with 0, 'whitelist Emergency Finalization call failed'
    stor20[address(arg1)] = 1
    indexToCaller[stor24] = msg.sender
    callerToIndex[address(msg.sender)] = callerIndex
    stor5[address(msg.sender)] = 1
    indexToPresaleAddr[stor24] = arg1
    indexToOwnerAddr[stor24] = address(ext_call.return_data[0])
    callerToPresaleAddr[address(msg.sender)] = arg1
    presaleAddrToCaller[address(arg1)] = msg.sender
    callerToOwnerAddr[address(msg.sender)] = address(ext_call.return_data[0])
    ownerAddrToCaller[address(ext_call.return_data[0])] = msg.sender
    if callerIndex == -1:
        revert with 'NH{q', 17
    callerIndex++
    finalizeCallByUserTimestamp[address(arg1)] = block.timestamp
    finalizeCallByWhitelistTimestamp[address(arg1)] = block.timestamp
}

function addToWhitelist(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == owner
    stor21[address(arg1)] = 1
    if bool(stor22[address(arg1)].field_0):
        if bool(stor22[address(arg1)].field_0) == uint255(stor22[address(arg1)].field_1) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            uint256(stor22[address(arg1)][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor22[address(arg1)].field_0) = 0
            idx = 0
            while uint255(stor22[address(arg1)].field_1) + 31 / 32 > idx:
                uint256(stor22[address(arg1)][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor22[address(arg1)].field_0) == stor22[address(arg1)].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            uint256(stor22[address(arg1)][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor22[address(arg1)].field_0) = 0
            idx = 0
            while stor22[address(arg1)].field_1 % 128 + 31 / 32 > idx:
                uint256(stor22[address(arg1)][idx].field_0) = 0
                idx = idx + 1
                continue 
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 23
    stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])] = arg1
}

function voterCallsFinalizeRefundMainDappHardCap(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor20[address(arg1)]:
        revert with 0, 'already finalized!'
    if not votingEnabled:
        revert with 0, 'voterCallIsDisabled'
    if not stor18[address(arg1)]:
        revert with 0, 'voter Finalize flag is disabled'
    if voterEnableFlagTime[address(arg1)] <= 0:
        revert with 0, 'voterEnableFlagTime not setup'
    if voterEnableFlagTime[address(arg1)] > -voterFinalizeTime - 1:
        revert with 'NH{q', 17
    if voterEnableFlagTime[address(arg1)] + voterFinalizeTime < voterEnableFlagTime[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= voterEnableFlagTime[address(arg1)] + voterFinalizeTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'voter cannot finalze if time is not greater than voterEnableFlagTime + voterFinalizeTime'
    require ext_code.size(mainDappAddr)
    staticcall mainDappAddr.presaleAddrToOwnerAddr(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 164 len 64] = 0, mem[ceil32(return_data.size) + 132 len 60]
    call mainDappAddr.mem[ceil32(return_data.size) + 164 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 168]
    if not ext_call.success:
        revert with 0, 'voter Emergency Finalization call by enable flag failed'
    stor20[address(arg1)] = 1
    indexToCaller[stor24] = msg.sender
    callerToIndex[address(msg.sender)] = callerIndex
    stor5[address(msg.sender)] = 1
    indexToPresaleAddr[stor24] = arg1
    indexToOwnerAddr[stor24] = address(ext_call.return_data[0])
    callerToPresaleAddr[address(msg.sender)] = arg1
    presaleAddrToCaller[address(arg1)] = msg.sender
    callerToOwnerAddr[address(msg.sender)] = address(ext_call.return_data[0])
    ownerAddrToCaller[address(ext_call.return_data[0])] = msg.sender
    if callerIndex == -1:
        revert with 'NH{q', 17
    callerIndex++
    finalizeCallByUserTimestamp[address(arg1)] = block.timestamp
}

function whitelistToName(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor22[arg1].field_0):
        if bool(stor22[arg1].field_0) == uint255(stor22[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor22[arg1].field_0):
            if bool(stor22[arg1].field_0) == uint255(stor22[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor22[arg1].field_1):
                if 31 < uint255(stor22[arg1].field_1):
                    mem[128] = uint256(stor22[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor22[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor22[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor22[arg1].field_1)), data=mem[128 len ceil32(uint255(stor22[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor22[arg1].field_8)
        else:
            if bool(stor22[arg1].field_0) == stor22[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor22[arg1].field_1 % 128:
                if 31 < stor22[arg1].field_1 % 128:
                    mem[128] = uint256(stor22[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor22[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor22[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor22[arg1].field_1)), data=mem[128 len ceil32(uint255(stor22[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor22[arg1].field_8)
        mem[ceil32(uint255(stor22[arg1].field_1)) + 192 len ceil32(uint255(stor22[arg1].field_1))] = mem[128 len ceil32(uint255(stor22[arg1].field_1))]
        if ceil32(uint255(stor22[arg1].field_1)) > uint255(stor22[arg1].field_1):
            mem[ceil32(uint255(stor22[arg1].field_1)) + uint255(stor22[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor22[arg1].field_1)), data=mem[128 len ceil32(uint255(stor22[arg1].field_1))], mem[(2 * ceil32(uint255(stor22[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor22[arg1].field_1))]), 
    if bool(stor22[arg1].field_0) == stor22[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor22[arg1].field_0):
        if bool(stor22[arg1].field_0) == uint255(stor22[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor22[arg1].field_1):
            if 31 < uint255(stor22[arg1].field_1):
                mem[128] = uint256(stor22[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor22[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor22[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor22[arg1].field_0 % 128, data=mem[128 len ceil32(stor22[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor22[arg1].field_8)
    else:
        if bool(stor22[arg1].field_0) == stor22[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor22[arg1].field_1 % 128:
            if 31 < stor22[arg1].field_1 % 128:
                mem[128] = uint256(stor22[arg1].field_0)
                idx = 128
                s = 0
                while stor22[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor22[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor22[arg1].field_0 % 128, data=mem[128 len ceil32(stor22[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor22[arg1].field_8)
    mem[ceil32(stor22[arg1].field_1 % 128) + 192 len ceil32(stor22[arg1].field_1 % 128)] = mem[128 len ceil32(stor22[arg1].field_1 % 128)]
    if ceil32(stor22[arg1].field_1 % 128) > stor22[arg1].field_1 % 128:
        mem[ceil32(stor22[arg1].field_1 % 128) + stor22[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor22[arg1].field_0 % 128, data=mem[128 len ceil32(stor22[arg1].field_1 % 128)], mem[(2 * ceil32(stor22[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor22[arg1].field_1 % 128)]), 
}



}
