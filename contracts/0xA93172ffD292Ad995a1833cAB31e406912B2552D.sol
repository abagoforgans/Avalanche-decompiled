contract main {




// =====================  Runtime code  =====================


const sub_14cd651b(?) = eth.balance(this.address)


uint8 stor0;
uint8 stor0; offset 8
address stor0; offset 16
uint256 stor0; offset 8
address stor1;
address stor2;
address _managerAddress;
address sub_db2edcf0Address;

function sub_db2edcf0(?) payable {
    return sub_db2edcf0Address
}

function _manager() payable {
    return _managerAddress
}

function _fallback() payable {
    revert
}

function setManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _managerAddress != msg.sender:
        revert with 0, 'Caller is not the Manager'
    _managerAddress = arg1
}

function sub_13dd4a64(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _managerAddress != msg.sender:
        revert with 0, 'Caller is not the Manager'
    sub_db2edcf0Address = address(arg1)
}

function sub_0f270a4b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if _managerAddress != msg.sender:
        revert with 0, 'Caller is not the Manager'
    if arg2 > eth.balance(this.address):
        revert with 0, 'Not enough funds'
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), _managerAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x59bffe48: address(arg1), arg2
}

function sub_555ba6e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _managerAddress != msg.sender:
        revert with 0, 'Caller is not the Manager'
    if eth.balance(this.address) and 20 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), _managerAddress, 20 * eth.balance(this.address) / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xc399f121: address(arg1), 20 * eth.balance(this.address) / 100
}

function sub_5fdeab18(?) payable {
    if _managerAddress != msg.sender:
        if sub_db2edcf0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the Manager or the Helper'
    call address(stor0.field_16).0x500bef84 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call stor1.0x500bef84 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call stor2.0x500bef84 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x5a9f3f84 
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        address(stor0.field_16) = arg1
        stor1 = arg2
        stor2 = arg3
        sub_db2edcf0Address = arg4
        _managerAddress = arg5
    else:
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        address(stor0.field_16) = arg1
        stor1 = arg2
        stor2 = arg3
        sub_db2edcf0Address = arg4
        _managerAddress = arg5
        Mask(248, 0, stor0.field_8) = 0
}



}
