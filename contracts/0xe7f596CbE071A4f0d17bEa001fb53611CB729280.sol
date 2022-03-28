contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
uint8 checkEnabled; offset 160
address stor1;
mapping of uint8 stor2;
address raisingAccessControllerAddress;
mapping of uint8 stor4;

function raisingAccessController() payable {
    return raisingAccessControllerAddress
}

function owner() payable {
    return address(owner)
}

function checkEnabled() payable {
    return bool(checkEnabled)
}

function _fallback() payable {
    revert
}

function disableAccessCheck() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    if checkEnabled:
        checkEnabled = 0
        emit CheckAccessDisabled()
}

function enableAccessCheck() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    if not checkEnabled:
        checkEnabled = 1
        emit CheckAccessEnabled()
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    stor1 = arg1
    emit OwnershipTransferRequested(address(owner), arg1);
}

function acceptOwnership() payable {
    if stor1 != msg.sender:
        revert with 0, 'Must be proposed owner'
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1 = 0
    emit OwnershipTransferred(address(owner), msg.sender);
}

function getFlag(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        if checkEnabled:
            if msg.sender != tx.origin:
                revert with 0, 'No access'
    return bool(stor4[address(arg1)])
}

function addAccess(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    if not stor2[address(arg1)]:
        stor2[address(arg1)] = 1
        emit AddedAccess(arg1);
}

function removeAccess(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    if stor2[address(arg1)]:
        stor2[address(arg1)] = 0
        emit RemovedAccess(arg1);
}

function setRaisingAccessController(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    if raisingAccessControllerAddress != arg1:
        raisingAccessControllerAddress = arg1
        emit RaisingAccessControllerUpdated(raisingAccessControllerAddress, arg1);
}

function hasAccess(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if stor2[address(arg1)]:
        mem[ceil32(arg2.length) + 128] = bool(stor2[address(arg1)])
    else:
        if not checkEnabled:
            mem[ceil32(arg2.length) + 128] = not bool(checkEnabled)
        else:
            mem[ceil32(arg2.length) + 128] = tx.origin == arg1
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function lowerFlags(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 4
        if stor4[address(cd[((32 * idx) + arg1 + 36)])]:
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 4
            stor4[address(cd[((32 * idx) + arg1 + 36)])] = 0
            emit FlagLowered(address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function raiseFlag(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        require ext_code.size(raisingAccessControllerAddress)
        staticcall raisingAccessControllerAddress.0x6b14daf8 with:
                gas gas_remaining wei
               args 0, uint32(msg.sender), 64, calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Not allowed to raise flags'
    if not stor4[address(arg1)]:
        stor4[address(arg1)] = 1
        emit FlagRaised(arg1);
}

function getFlags(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not stor2[address(msg.sender)]:
        if checkEnabled:
            if msg.sender != tx.origin:
                revert with 0, 'No access'
    require arg1.length <= test266151307()
    if arg1.length:
        mem[ceil32(calldata.size) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 4
        require idx < arg1.length
        mem[(32 * idx) + ceil32(calldata.size) + 160] = bool(stor4[address(cd[((32 * idx) + arg1 + 36)])])
        idx = idx + 1
        continue 
    mem[ceil32(calldata.size) + (32 * arg1.length) + 224 len floor32(arg1.length)] = mem[ceil32(calldata.size) + 160 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[ceil32(calldata.size) + 160 len floor32(arg1.length)], mem[ceil32(calldata.size) + (32 * arg1.length) + floor32(arg1.length) + 224 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function raiseFlags(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if address(owner) != msg.sender:
        require ext_code.size(raisingAccessControllerAddress)
        staticcall raisingAccessControllerAddress.0x6b14daf8 with:
                gas gas_remaining wei
               args 0, uint32(msg.sender), 64, calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Not allowed to raise flags'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 4
        if not stor4[address(cd[((32 * idx) + arg1 + 36)])]:
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 4
            stor4[address(cd[((32 * idx) + arg1 + 36)])] = 1
            emit FlagRaised(address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}



}
