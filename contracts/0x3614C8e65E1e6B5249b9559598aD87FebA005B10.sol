contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address sub_fd43bbddAddress; offset 16

function sub_fd43bbdd(?) payable {
    return sub_fd43bbddAddress
}

function _fallback() payable {
    revert
}

function sub_33f2fa9f(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if sub_fd43bbddAddress != msg.sender:
        revert with 0, 'Transfer: Only JoepegExchange'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        sub_fd43bbddAddress = arg1
    else:
        uint16(stor0.field_0) = 257
        sub_fd43bbddAddress = arg1
        uint8(stor0.field_8) = 0
}



}
