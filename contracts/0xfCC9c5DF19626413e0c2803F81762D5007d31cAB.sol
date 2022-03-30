contract main {




// =====================  Runtime code  =====================


#
#  - voterCallsFinalizeRefundMainDapp(address arg1)
#
const CheckBlockTimestamp = block.timestamp


uint8 votingEnabled; offset 160
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
    return indexToOwnerAddr[arg1]
}

function templateCrowdSaleAddr() payable {
    return templateCrowdSaleAddr
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

function owner() payable {
    return owner
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
    return address(indexToOwner[arg1])
}

function indexToPresaleAddr(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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

function callerToBool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function indexToCaller(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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

function enableVoterCall() payable {
    require msg.sender == owner
    votingEnabled = 1
}

function disableVoterCall() payable {
    require msg.sender == owner
    votingEnabled = 0
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function changeVoterMinTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    minimumTime = arg1
}

function updateMaindappAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    mainDappAddr = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeVoterFinalizeTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 < minimumTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_newvoterTime must be >= minimum time'
    voterFinalizeTime = arg1
}

function ownerCallsFinalizeRefundMainDapp() payable {
    if not votingEnabled:
        revert with 0, 'ownerCallIsDisabled'
    mem[164 len 64] = voterCallsFinalizeRefund(address rg1), msg.sender, mem[164 len 28]
    call mainDappAddr.mem[164 len 4] with:
         gas gas_remaining wei
        args mem[168]
    if not ext_call.success:
        revert with 0, 'presaleOwner Emergency Finalization call failed'
    uint256(indexToOwner[stor18]) = msg.sender or Mask(96, 160, uint256(indexToOwner[stor18]))
    ownerToIndex[msg.sender] = ownerIndex
    stor14[msg.sender] = 1
    if ownerIndex == -1:
        revert with 0, 17
    ownerIndex++
    finalizeCallByOwnerTimestamp[msg.sender] = block.timestamp
}



}
