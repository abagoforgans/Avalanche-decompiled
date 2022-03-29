contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address mainDappAddr;
mapping of address indexToCaller;
mapping of uint256 callerToIndex;
mapping of uint8 stor4;
uint256 callerIndex;

function callerIndex() payable {
    return callerIndex
}

function votingEnabled() payable {
    return bool(uint8(stor0.field_160))
}

function owner() payable {
    return owner
}

function mainDappAddr() payable {
    return mainDappAddr
}

function callerToBool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function indexToCaller(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return indexToCaller[arg1]
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
    Mask(96, 0, stor0.field_160) = 1
}

function disableVoterCall() payable {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 0
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function voterCallsFinalizeRefundMainDapp() payable {
    if not uint8(stor0.field_160):
        revert with 0, 'voterCallIsDisabled'
    mem[164 len 64] = voterCallsFinalizeRefund(address rg1), msg.sender, mem[164 len 28]
    call mainDappAddr.mem[164 len 4] with:
         gas gas_remaining wei
        args mem[168]
    if not ext_call.success:
        revert with 0, 'presaleOwner Emergency Finalization call failed'
    indexToCaller[stor5] = msg.sender
    callerToIndex[address(msg.sender)] = callerIndex
    stor4[address(msg.sender)] = 1
    if callerIndex == -1:
        revert with 'NH{q', 17
    callerIndex++
}



}
