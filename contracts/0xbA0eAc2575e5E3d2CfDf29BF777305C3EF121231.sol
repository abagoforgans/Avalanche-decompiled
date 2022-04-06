contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address daoAddress;
address checkerAddress;
address sub_8fcdecc8Address;

function dao() payable {
    return daoAddress
}

function wallets(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function sub_8fcdecc8(?) payable {
    return sub_8fcdecc8Address
}

function checker() payable {
    return checkerAddress
}

function _fallback() payable {
    revert
}

function applySetChecker() payable {
    if daoAddress != msg.sender:
        revert with 0, '!dao'
    checkerAddress = sub_8fcdecc8Address
}

function commitSetChecker(address arg1) payable {
    require calldata.size - 4 >= 32
    if daoAddress != msg.sender:
        revert with 0, '!dao'
    sub_8fcdecc8Address = arg1
}

function revokeWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    if daoAddress != msg.sender:
        revert with 0, '!dao'
    stor0[address(arg1)] = 0
    emit 0x1b676c3c: arg1
}

function approveWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    if daoAddress != msg.sender:
        revert with 0, '!dao'
    stor0[address(arg1)] = 1
    emit ApproveWallet(arg1);
}

function check(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0[address(arg1)]:
        return bool(stor0[address(arg1)])
    if not checkerAddress:
        return 0
    require ext_code.size(checkerAddress)
    staticcall checkerAddress.0xc23697a8 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
