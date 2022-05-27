contract main {




// =====================  Runtime code  =====================


#
#  - sub_89143c25(?)
#
address _OWNER_;
uint8 stor1; offset 160
uint128 stor1; offset 160
address _NEW_OWNER_;
address sub_b074a789Address;
address sub_3b66b615Address;
address _DODO_APPROVE_Address;
mapping of uint8 stor5;

function _OWNER_() payable {
    return _OWNER_
}

function isAdminListed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function sub_3b66b615(?) payable {
    return sub_3b66b615Address
}

function _DODO_APPROVE_() payable {
    return _DODO_APPROVE_Address
}

function _NEW_OWNER_() payable {
    return _NEW_OWNER_
}

function sub_b074a789(?) payable {
    return sub_b074a789Address
}

function _fallback() payable {
    revert
}

function claimOwnership() payable {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(_OWNER_, _NEW_OWNER_);
    _OWNER_ = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function addAdminList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    stor5[address(arg1)] = 1
    emit addAdmin(arg1);
}

function removeAdminList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    stor5[address(arg1)] = 0
    emit removeAdmin(arg1);
}

function initOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.field_160):
        revert with 0, 'DODO_INITIALIZED'
    Mask(96, 0, stor1.field_160) = 1
    _OWNER_ = arg1
}

function changeTokenReceiver(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    sub_3b66b615Address = arg1
    emit changeReceiver(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit OwnershipTransferPrepared(_OWNER_, arg1);
    _NEW_OWNER_ = arg1
}

function init(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor1.field_160):
        revert with 0, 'DODO_INITIALIZED'
    Mask(96, 0, stor1.field_160) = 1
    _OWNER_ = arg1
    sub_b074a789Address = arg2
    sub_3b66b615Address = arg3
    _DODO_APPROVE_Address = arg4
}

function sub_272a16bd(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    require arg3 == arg3
    if not stor5[address(msg.sender)]:
        revert with 0, 'ACCESS_DENIED'
    mem[ceil32(ceil32(arg1.length)) + 101] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(ceil32(arg1.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97 len ceil32(arg1.length)] = arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + arg1.length + 97] = 0
    call sub_b074a789Address.mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 101 len arg1.length - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'EXEC_DODO_LIMIT_ORDER_ERROR'
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 101] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 0 < arg3:
            revert with 0, 'TAKER_AMOUNT_NOT_ENOUGH'
        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 133] = sub_3b66b615Address
        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 97] = 68
        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 129 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 197 len 96] = 0, sub_3b66b615Address, 0, mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 197 len 28]
        call address(arg2).mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 197 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 201 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if arg1.length > 0:
                require arg1.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 229 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 229] == bool(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 229])
                if not mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 229]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = return_data.size
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'EXEC_DODO_LIMIT_ORDER_ERROR'
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + ceil32(return_data.size) + 102] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 0 < arg3:
            revert with 0, 'TAKER_AMOUNT_NOT_ENOUGH'
        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 134] = sub_3b66b615Address
        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 98] = 68
        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 130 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 198 len 96] = 0, sub_3b66b615Address, 0, mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 198 len 28]
        call address(arg2).mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 198 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 202 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if arg1.length > 0:
                require arg1.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 230 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 230] == bool(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 230])
                if not mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 230]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Fill()
}



}
