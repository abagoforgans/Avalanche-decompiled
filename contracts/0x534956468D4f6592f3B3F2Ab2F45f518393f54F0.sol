contract main {




// =====================  Runtime code  =====================


#
#  - claimTokens(address arg1, address arg2, address arg3, uint256 arg4)
#
address _OWNER_;
uint8 stor1; offset 160
address _NEW_OWNER_;
address sub_5fda2fa8Address;
mapping of uint8 stor3;
array of struct sub_aff84ece;
address executorAddress;

function _OWNER_() payable {
    return _OWNER_
}

function sub_5df88844(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function sub_5fda2fa8(?) payable {
    return sub_5fda2fa8Address
}

function getExecutor() payable {
    return executorAddress
}

function _NEW_OWNER_() payable {
    return _NEW_OWNER_
}

function sub_aff84ece(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_aff84ece.length
    return address(sub_aff84ece[arg1].field_0)
}

function _fallback() payable {
    revert
}

function initOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1:
        revert with 0, 'TRANSIT_INITIALIZED'
    stor1 = 1
    _OWNER_ = arg1
}

function claimOwnership() payable {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(_OWNER_, _NEW_OWNER_);
    _OWNER_ = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function setProxy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if executorAddress != msg.sender:
        revert with 0, 'XswapApprove:Access restricted'
    sub_5fda2fa8Address = arg1
}

function updateExecutor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if executorAddress != msg.sender:
        revert with 0, 'XswapApprove:Access restricted'
    executorAddress = arg1
}

function setBridgeProxy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if executorAddress != msg.sender:
        revert with 0, 'XswapApprove:Access restricted'
    stor3[address(arg1)] = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit OwnershipTransferPrepared(_OWNER_, arg1);
    _NEW_OWNER_ = arg1
}

function sub_c4bac6c6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if executorAddress != msg.sender:
        revert with 0, 'XswapApprove:Access restricted'
    mem[0] = address(arg1)
    mem[32] = 3
    stor3[address(arg1)] = 0
    mem[64] = (32 * sub_aff84ece.length) + 128
    mem[96] = sub_aff84ece.length
    if sub_aff84ece.length:
        mem[0] = 4
        mem[128] = address(sub_aff84ece.field_0)
        idx = 128
        s = 0
        while (32 * sub_aff84ece.length) + 96 > idx:
            mem[idx + 32] = address(sub_aff84ece[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < sub_aff84ece.length:
        if idx >= sub_aff84ece.length:
            revert with 0, 50
        if mem[(32 * idx) + 140 len 20] != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if sub_aff84ece.length < 1:
            revert with 0, 17
        if sub_aff84ece.length - 1 >= sub_aff84ece.length:
            revert with 0, 50
        if idx >= sub_aff84ece.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = mem[(32 * sub_aff84ece.length - 1) + 140 len 20]
        if not sub_aff84ece.length:
            idx = sha3(4)
            while sha3(4) + sub_aff84ece.length > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = sha3(4)
            idx = 128
            while (32 * sub_aff84ece.length) + 128 > idx:
                address(stor[s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(4) + (Mask(251, 0, (32 * sub_aff84ece.length) + 31) >> 5)
            while sha3(4) + sub_aff84ece.length > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        if not sub_aff84ece.length:
            revert with 0, 49
        address(sub_aff84ece[sub_aff84ece.length].field_0) = 0
        sub_aff84ece.length--
}



}
