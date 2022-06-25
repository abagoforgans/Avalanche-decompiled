contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
address tokenAddress;
address feedAddress;

function sub_26bfae3e(?) payable {
    return bool(uint8(stor0.field_168))
}

function feed() payable {
    return feedAddress
}

function mintable() payable {
    return bool(uint8(stor0.field_160))
}

function owner() payable {
    return owner
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMintable(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function setExitable(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor0.field_168) = Mask(88, 0, arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function price() payable {
    require ext_code.size(feedAddress)
    staticcall feedAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x36f9bfb3af7b756fad5cd10396a21346cbefc1bf33a44ab72e36108b:
        revert with 'NH{q', 17
    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xffffffffc906404c50848a9052a32efc695decb934103e40cc5bb548d1c9ef75:
        revert with 'NH{q', 17
    return (10^10 * ext_call.return_data[32])
}



}
