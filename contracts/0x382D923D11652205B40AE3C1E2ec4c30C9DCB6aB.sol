contract main {




// =====================  Runtime code  =====================


#
#  - sub_07434281(?)
#
const name = 'Plasma Gas Station', 0

const version = '1', 0

const sub_73e81d11(?) = 0xba3095f0e3278564da30cafd6d8ec9585700fb469acd70a97d1330d1374fee85

const sub_edc6c27a(?) = 0


address owner;
mapping of uint8 stor1;
mapping of uint256 nonce;
address exchangeAddress;
address sub_2660d19eAddress;
address approverAddress;
uint256 DOMAIN_SEPARATOR;
uint256 sub_3e31778d;
uint256 sub_8859e6ec;
mapping of uint256 stor9;

function approver() payable {
    return approverAddress
}

function sub_2660d19e(?) payable {
    return sub_2660d19eAddress
}

function getNonce(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[address(arg1)]
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function sub_3e31778d(?) payable {
    return sub_3e31778d
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[arg1]
}

function sub_8859e6ec(?) payable {
    return sub_8859e6ec
}

function sub_8c3158dd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[address(arg1)])
}

function owner() payable {
    return owner
}

function exchange() payable {
    return exchangeAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_1258bb60(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function sub_26a9914d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8859e6ec = arg1
    emit 0xc1096c5b: arg1
}

function sub_9f295a6c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3e31778d = arg1
    emit 0xd264ea23: arg1
}

function setApprover(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    approverAddress = arg1
    emit 0x1fe087e5: arg1
}

function setExchange(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    exchangeAddress = arg1
    emit 0x31b93f46: arg1
}

function sub_f61c1b01(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(arg1):
        stor1[address(arg1)] = 1
}

function sub_6e6b3f4d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2660d19eAddress = address(arg1)
    emit 0x8505f1e6: address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_d1570004(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall sub_2660d19eAddress.0xcbe230c3 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Fee token not supported'
    if stor9[address(arg1)] > 0:
        return stor9[address(arg1)]
    return sub_8859e6ec
}

function sub_9aefaff8(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, 'Unknown fee payer address'
    if tx.origin != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fee payer must be sender of transaction'
    mem[arg4.length + 148 len floor32(arg4.length + 51)] = arg4[all], address(arg1), mem[arg4.length + 160 len floor32(arg4.length + 51) + -arg4.length - 32]
    if floor32(arg4.length + 51) > arg4.length + 20:
        mem[(2 * arg4.length) + 168] = 0
    call address(arg2).mem[arg4.length + 148 len 4] with:
       value arg3 wei
         gas gas_remaining wei
        args mem[arg4.length + 152 len arg4.length + 16]
    if not ext_call.success:
        revert with 0, 'Transaction Call Error'
}



}
