contract main {




// =====================  Runtime code  =====================


#
#  - sub_16fad676(?)
#  - sub_27de4432(?)
#  - sub_c7bcc918(?)
#  - sub_cc1f4309(?)
#
address sub_961122c7Address;
address owner;
address feeToAddress;
mapping of uint256 sub_406c97ab;
mapping of uint256 sub_91f3d6f6;
mapping of uint256 sub_4526686a;

function feeTo() {
    return feeToAddress
}

function sub_406c97ab(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_406c97ab[arg1]
}

function sub_4526686a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4526686a[address(arg1)]
}

function sub_4b15b332(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4526686a[arg1]
}

function owner() {
    return owner
}

function sub_91f3d6f6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_91f3d6f6[arg1]
}

function sub_961122c7(?) {
    return sub_961122c7Address
}

function sub_bc1a2a6b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_406c97ab[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_bf0430d9(?) payable {
    if owner != msg.sender:
        revert with 0, 'FN'
}

function sub_324194e8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return (1 == sub_91f3d6f6[address(arg1)])
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'FN'
    owner = arg1
    return 1
}

function setFeeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'FN'
    feeToAddress = arg1
    return 1
}

function sub_6563e3c8(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'FN'
    sub_406c97ab[address(arg1)] = arg2
    return 1
}

function sub_70760eca(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'FN'
    sub_91f3d6f6[address(arg1)] = arg2
    return 1
}

function sub_fdc0beb5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'FN'
    sub_4526686a[address(arg1)] = arg2
    return 1
}

function setNetworkCoinAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'FN'
    sub_961122c7Address = arg1
    return 1
}

function sub_62d59696(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'FN'
    if sub_961122c7Address == address(arg1):
        call address(arg2) with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
