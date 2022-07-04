contract main {




// =====================  Runtime code  =====================


#
#  - sub_cb697183(?)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address sub_ded4594fAddress;
address stor1;

function whitelistEnabled() {
    return bool(uint8(stor0.field_160))
}

function sub_ded4594f(?) {
    return sub_ded4594fAddress
}

function _fallback() payable {
    revert
}

function sub_cf779e0e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
        if sub_ded4594fAddress != msg.sender:
            revert with 0, 'n'
    stor1 = address(arg1)
}

function sub_71246b6a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
        if sub_ded4594fAddress != msg.sender:
            revert with 0, 'n'
    sub_ded4594fAddress = address(arg1)
}

function sub_76564845(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
        if sub_ded4594fAddress != msg.sender:
            revert with 0, 'n'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, bool(arg1))
}

function withdrawETH() {
    if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
        if sub_ded4594fAddress != msg.sender:
            revert with 0, 'n'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
