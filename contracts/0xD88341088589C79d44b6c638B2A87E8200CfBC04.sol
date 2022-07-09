contract main {




// =====================  Runtime code  =====================


address govAddress;
mapping of uint8 stor1;

function gov() payable {
    return govAddress
}

function sub_57a94beb(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Governable: forbidden'
    govAddress = arg1
}

function sub_69d4c924(?) payable {
    require calldata.size - 4 >= 64
    if govAddress != msg.sender:
        revert with 0, 'Governable: forbidden'
    stor1[address(arg1)] = uint8(arg2)
}

function sub_e0409c71(?) payable {
    require calldata.size - 4 >= 64
    if not stor1[msg.sender]:
        revert with 0, 'FastPriceEvents: invalid sender'
    emit 0xc37a77b9: address(arg1), arg2, msg.sender
}



}
