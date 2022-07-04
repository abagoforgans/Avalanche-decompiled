contract main {




// =====================  Runtime code  =====================


#
#  - registerWallet(address arg1)
#
const sub_1ae7ec2e(?) = 'REP'


address _proxyAddress;
mapping of uint16 id;
mapping of address sub_1a525da9;
mapping of uint256 sub_d2c1bbad;
mapping of uint256 sub_a9468665;
mapping of uint256 sub_ef97a27c;
mapping of uint256 sub_029ad22a;

function sub_029ad22a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == Mask(16, 240, arg1)
    require arg2 == Mask(16, 240, arg2)
    return sub_029ad22a[arg1][arg2]
}

function sub_1a525da9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(16, 240, arg1)
    return sub_1a525da9[arg1]
}

function getId(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return Mask(16, 240, id[arg1])
}

function sub_a9468665(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(16, 240, arg1)
    return sub_a9468665[arg1]
}

function _proxy() payable {
    return _proxyAddress
}

function sub_d2c1bbad(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(16, 240, arg1)
    return sub_d2c1bbad[arg1]
}

function sub_ef97a27c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(16, 240, arg1)
    return sub_ef97a27c[arg1]
}

function _fallback() payable {
    revert
}

function sub_e4e6aaf7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(16, 240, arg1)
    staticcall _proxyAddress.0x1d10fc64 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'onlyPolicy(): only approved policies can call this function'
    if sub_ef97a27c[Mask(16, 240, arg1)] == -1:
        revert with 'NH{q', 17
    sub_ef97a27c[Mask(16, 240, arg1)]++
    emit 0xc703a088: Mask(16, 240, arg1)
}

function sub_61437dc5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == Mask(16, 240, arg1)
    staticcall _proxyAddress.0x1d10fc64 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'onlyPolicy(): only approved policies can call this function'
    if sub_d2c1bbad[Mask(16, 240, arg1)] > !arg2:
        revert with 'NH{q', 17
    sub_d2c1bbad[Mask(16, 240, arg1)] += arg2
    emit 0xe8506c32: Mask(16, 240, arg1), arg2
}

function sub_d48bf2b6(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == Mask(16, 240, arg1)
    require arg2 == Mask(16, 240, arg2)
    staticcall _proxyAddress.0x1d10fc64 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'onlyPolicy(): only approved policies can call this function'
    if sub_d2c1bbad[Mask(16, 240, arg1)] < arg3:
        revert with 'NH{q', 17
    sub_d2c1bbad[Mask(16, 240, arg1)] -= arg3
    if sub_a9468665[Mask(16, 240, arg2)] > !arg3:
        revert with 'NH{q', 17
    sub_a9468665[Mask(16, 240, arg2)] += arg3
    emit 0x92a6c41a: Mask(16, 240, arg1), Mask(16, 240, arg2), arg3
}



}
