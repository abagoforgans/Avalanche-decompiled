contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 168
uint64 stor0; offset 176
uint128 _chainID; offset 176
uint128 stor0; offset 168
address owner; offset 8
uint256 _fee;
address sub_7f5d6a5eAddress;
uint256 sub_a21b952e;
mapping of uint64 sub_174e300b;
mapping of address _resourceIDToHandler;
array of uint256 sub_a48ace38;
mapping of uint8 stor7;
mapping of uint8 stor8;

function sub_174e300b(?) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(64, 192, arg1)
    return sub_174e300b[arg1]
}

function handlers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function paused() {
    return bool(uint8(stor0.field_0))
}

function sub_7f5d6a5e(?) {
    return sub_7f5d6a5eAddress
}

function _resourceIDToHandlerAddress(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _resourceIDToHandler[arg1]
}

function owner() {
    return owner
}

function sub_9c1650e0(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[arg1][arg2])
}

function sub_a21b952e(?) {
    return sub_a21b952e
}

function sub_a48ace38(?) {
    return sub_a48ace38[arg1][arg2][0 len sub_a48ace38[arg1][arg2].length]
}

function _chainID() {
    return (_chainID << 192)
}

function _fee() {
    return _fee
}

function sub_dd2e8ec3(?) {
    return bool(uint8(stor0.field_168))
}

function _fallback() payable {
    revert
}

function depositFunds() payable {
    if owner != msg.sender:
        revert with 0, 'sender should be owner'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'sender should be owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_21016ed8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_7f5d6a5eAddress != msg.sender:
        revert with 0, 'sender is not a backend service'
    sub_a21b952e = arg1
}

function sub(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (arg1 - arg2)
}

function sub_0bf6096f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_7f5d6a5eAddress != msg.sender:
        revert with 0, 'sender is not a backend service'
    sub_7f5d6a5eAddress = address(arg1)
}

function adminPauseTransfers() {
    if owner != msg.sender:
        revert with 0, 'sender should be owner'
    if uint8(stor0.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor0.field_0) = 1
    emit Paused(msg.sender);
}

function sub_ea439b2b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require not uint8(stor0.field_168)
    owner = address(arg1)
    Mask(88, 0, stor0.field_168) = 1
    emit OwnershipTransferred(0, address(arg1));
}

function adminUnpauseTransfers() {
    if owner != msg.sender:
        revert with 0, 'sender should be owner'
    if not uint8(stor0.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor0.field_0) = 0
    emit Unpaused(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'sender should be owner'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setHandler(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_7f5d6a5eAddress != msg.sender:
        revert with 0, 'sender is not a backend service'
    stor8[address(arg1)] = uint8(arg2)
}

function changeFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_7f5d6a5eAddress != msg.sender:
        revert with 0, 'sender is not a backend service'
    if _fee == arg1:
        revert with 0, 'Current fee is equal to new fee'
    _fee = arg1
}

function sub_92c6ecf2(?) {
    require calldata.size - 4 >= 96
    require arg1 == Mask(64, 192, arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    uint64(stor0.field_176) = 0
    _fee = arg2
    sub_7f5d6a5eAddress = address(arg3)
    require not uint8(stor0.field_168)
    owner = msg.sender
    Mask(88, 0, stor0.field_168) = 1
    emit OwnershipTransferred(0, msg.sender);
}

function sub_df0fc133(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if sub_7f5d6a5eAddress != msg.sender:
        revert with 0, 'sender is not a backend service'
    require ext_code.size(address(arg1))
    call address(arg1).setBurnable(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7a7eed77(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'sender should be owner'
    if arg2 < eth.balance(this.address):
        call address(arg1) with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        call address(arg1) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function adminWithdraw(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'sender should be owner'
    require ext_code.size(arg1)
    call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setResource(address arg1, bytes32 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if sub_7f5d6a5eAddress != msg.sender:
        revert with 0, 'sender is not a backend service'
    _resourceIDToHandler[arg2] = arg1
    require ext_code.size(arg1)
    call arg1.setResource(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor8[address(arg1)] = 1
}

function sub_de771b31(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if sub_7f5d6a5eAddress != msg.sender:
        revert with 0, 'sender is not a backend service'
    if not _resourceIDToHandler[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'resourceIDOwner not mapped to handler'
    if not _resourceIDToHandler[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'resourceIDSpender not mapped to handler'
    require ext_code.size(_resourceIDToHandler[arg1])
    call _resourceIDToHandler[arg1].0xbf1ed1eb with:
         gas gas_remaining wei
        args arg1, _resourceIDToHandler[arg2], arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8ece6f27(?) {
    require calldata.size - 4 >= 128
    require arg1 == Mask(64, 192, arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    if uint8(stor0.field_0):
        revert with 0, 'Pausable: paused'
    if not stor8[address(msg.sender)]:
        revert with 0, 'sender is not a handler'
    sub_174e300b[Mask(64, 192, arg1)] = uint64(sub_174e300b[Mask(64, 192, arg1)] + 1)
    mem[128] = arg3
    mem[160] = address(arg4)
    mem[192] = 160
    sub_a48ace38[stor4[Mask(64, 192, arg1)] + 1 << 192][Mask(64, 192, arg1)] = 129
    s = 0
    idx = 128
    while 192 > idx:
        sub_a48ace38[stor4[Mask(64, 192, arg1)] + 1 << 192][Mask(64, 192, arg1)][s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while sub_a48ace38[stor4[Mask(64, 192, arg1)] + 1 << 192][Mask(64, 192, arg1)].length + 31 / 32 > idx:
        sub_a48ace38[stor4[Mask(64, 192, arg1)] + 1 << 192][Mask(64, 192, arg1)][idx] = 0
        idx = idx + 1
        continue 
    require ext_code.size(_resourceIDToHandler[arg2])
    staticcall _resourceIDToHandler[arg2].0xa7a3fb40 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit 0x37052580: _chainID << 192, msg.sender, address(arg4), address(ext_call.return_data[0]), arg3, sha3(arg2, 64, 64, arg3, address(arg4)), Mask(64, 192, arg1), arg2, uint64(sub_174e300b[Mask(64, 192, arg1)] + 1)
}

function sub_8d225943(?) {
    require calldata.size - 4 >= 224
    require arg1 == Mask(64, 192, arg1)
    require arg2 == Mask(64, 192, arg2)
    require arg3 == uint64(arg3)
    require arg4 == arg4
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require arg7 + arg7.length + 36 <= calldata.size
    if sub_7f5d6a5eAddress != msg.sender:
        revert with 0, 'sender is not a backend service'
    if uint8(stor0.field_0):
        revert with 0, 'Pausable: paused'
    if stor7[arg3 << 192][Mask(64, 192, arg1)][Mask(64, 192, arg2)][sha3(arg4, 64, 64, arg6, address(arg5))]:
        revert with 0, 'proposal already executed'
    if Mask(64, 192, arg2) != _chainID << 192:
        revert with 0, 'ChainID Incorrect'
    stor7[arg3 << 192][Mask(64, 192, arg1)][Mask(64, 192, arg2)][sha3(arg4, 64, 64, arg6, address(arg5))] = 1
    if arg4 == sub_a21b952e:
        call address(arg5) with:
           value arg6 wei
             gas 2300 * is_zero(value) wei
    else:
        if not _resourceIDToHandler[arg4]:
            revert with 0, 'resourceID not mapped to handler'
        require ext_code.size(_resourceIDToHandler[arg4])
        call _resourceIDToHandler[arg4].0x728e218f with:
             gas gas_remaining wei
            args arg4, address(arg5), arg6, Array(len=arg7.length, data=arg7[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9686dcab: arg6, arg3 << 192, 3, arg4, sha3(arg4, 64, 64, arg6, address(arg5)), Mask(64, 192, arg1), Mask(64, 192, arg2), address(arg5)
}

function sub_e4e21fce(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == Mask(64, 192, arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == arg5
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + arg6.length + 36 <= calldata.size
    if uint8(stor0.field_0):
        revert with 0, 'Pausable: paused'
    sub_174e300b[Mask(64, 192, arg1)] = uint64(sub_174e300b[Mask(64, 192, arg1)] + 1)
    mem[128] = arg3
    mem[160] = address(arg4)
    mem[192] = 160
    sub_a48ace38[stor4[Mask(64, 192, arg1)] + 1 << 192][Mask(64, 192, arg1)] = 129
    s = 0
    idx = 128
    while 192 > idx:
        sub_a48ace38[stor4[Mask(64, 192, arg1)] + 1 << 192][Mask(64, 192, arg1)][s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while sub_a48ace38[stor4[Mask(64, 192, arg1)] + 1 << 192][Mask(64, 192, arg1)].length + 31 / 32 > idx:
        sub_a48ace38[stor4[Mask(64, 192, arg1)] + 1 << 192][Mask(64, 192, arg1)][idx] = 0
        idx = idx + 1
        continue 
    if arg2 == sub_a21b952e:
        if msg.value < arg3 + arg5 + _fee:
            revert with 0, 'Incorrect fee/amount supplied'
        if arg5 > 0:
            emit 0x525223e7: _chainID << 192, Mask(64, 192, arg1), sub_174e300b[Mask(64, 192, arg1)] + 1 << 192, arg2, address(arg4), arg5
        emit 0x37052580: _chainID << 192, msg.sender, address(arg4), 0, arg3, sha3(arg2, 64, 64, arg3, address(arg4)), Mask(64, 192, arg1), arg2, uint64(sub_174e300b[Mask(64, 192, arg1)] + 1)
    else:
        if msg.value < _fee:
            revert with 0, 'Incorrect fee supplied'
        if not _resourceIDToHandler[arg2]:
            revert with 0, 'resourceID not mapped to handler'
        require ext_code.size(_resourceIDToHandler[arg2])
        call _resourceIDToHandler[arg2].0x75cd9cce with:
             gas gas_remaining wei
            args arg2, Mask(64, 192, arg1), sub_174e300b[Mask(64, 192, arg1)] + 1 << 192, msg.sender, address(arg4), arg3 + arg5, Array(len=arg6.length, data=arg6[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg5 > 0:
            emit 0x525223e7: _chainID << 192, Mask(64, 192, arg1), sub_174e300b[Mask(64, 192, arg1)] + 1 << 192, arg2, address(arg4), arg5
        emit 0x37052580: _chainID << 192, msg.sender, address(arg4), address(ext_call.return_data[0]), arg3, sha3(arg2, 64, 64, arg3, address(arg4)), Mask(64, 192, arg1), arg2, uint64(sub_174e300b[Mask(64, 192, arg1)] + 1)
}



}
