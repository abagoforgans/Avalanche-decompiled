contract main {




// =====================  Runtime code  =====================


address owner;
uint256 fee;
uint256 MAX_FEE;
address sub_9293dbf5Address;
uint256 sub_322807b5;
mapping of uint8 stor5;

function sub_322807b5(?) payable {
    return sub_322807b5
}

function sub_4a02df31(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function owner() payable {
    return owner
}

function sub_9293dbf5(?) payable {
    return sub_9293dbf5Address
}

function MAX_FEE() payable {
    return MAX_FEE
}

function fee() payable {
    return fee
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_299b799f(?) payable {
    require calldata.size - 4 >= 32
    require owner != msg.sender
    revert with 0, 'sOwnable: caller is not the owne'
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_b9802698(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor5[address(arg1)] = 1
    emit 0x2866ff1b: arg1
}

function sub_be11f5ec(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor5[address(arg1)] = 0
    emit 0x659051dd: arg1
}

function setFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require arg1 <= MAX_FEE
    fee = arg1
    emit FeeSet(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_9848e67e(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor5[address(arg1)]) != 1:
        if sub_9293dbf5Address:
            require ext_code.size(sub_9293dbf5Address)
            staticcall sub_9293dbf5Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= sub_322807b5:
                return fee
            else:
                return 0
        else:
            return 0
    else:
        return 0
}



}
