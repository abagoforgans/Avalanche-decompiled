contract main {




// =====================  Runtime code  =====================


uint128 stor3608; offset 160
address stor3608;
uint256 stor3608;
uint128 storB531; offset 160
address owner;

function owner() {
    return owner
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'NOT_AUTHORIZED'
    owner = arg1
    storB531 = 0
    emit OwnershipTransferred(owner, arg1);
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'NOT_AUTHORIZED'
    address(stor3608.field_0) = arg1
    Mask(96, 0, stor3608.field_160) = 0
    emit ProxyImplementationUpdated(address(stor3608.field_0), arg1);
}

function _fallback() payable {
    delegate uint256(stor3608.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return 1
    if Mask(32, 224, arg1) == 0x7f5828d000000000000000000000000000000000000000000000000000000000:
        return 1
    if Mask(32, 224, arg1) == 0xffffffff00000000000000000000000000000000000000000000000000000000:
        return 0
    require ext_code.size(address(stor3608.field_0))
    staticcall address(stor3608.field_0).supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args Mask(32, 224, arg1)
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'NOT_AUTHORIZED'
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    address(stor3608.field_0) = arg1
    Mask(96, 0, stor3608.field_160) = 0
    emit ProxyImplementationUpdated(address(stor3608.field_0), arg1);
    if arg2.length:
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        delegate arg1 with:
           funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
}



}
