contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
mapping of address sub_5a2b6238;

function sub_5a2b6238(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5a2b6238[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_a1b837ec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == address(stor0.field_0)
    if not arg1:
        Mask(96, 0, stor0.field_160) = Mask(96, 0, bool(arg1))
}

function createAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_160):
        require msg.sender == address(stor0.field_0)
    require not sub_5a2b6238[address(arg1)]
    create contract with 0 wei
                    code: code.data[1154 len 15442], address(arg1)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_5a2b6238[address(arg1)] = address(create.new_address)
}



}
