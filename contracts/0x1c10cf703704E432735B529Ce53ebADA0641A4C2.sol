contract main {




// =====================  Runtime code  =====================


const MAX_INT = -1


uint8 stor0; offset 160
uint8 stor0; offset 168
uint16 stor0; offset 160
address owner;
address marketplaceAddress;
address nftAddress;
address sub_6b283a30Address;

function nft() payable {
    return nftAddress
}

function sub_6b283a30(?) payable {
    return sub_6b283a30Address
}

function owner() payable {
    return owner
}

function marketplace() payable {
    return marketplaceAddress
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

function approve() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_6b283a30Address)
    call sub_6b283a30Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args marketplaceAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_6b283a30Address)
    call sub_6b283a30Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initialize(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_168):
        owner = arg1
        emit OwnershipTransferred(owner, arg1);
        marketplaceAddress = arg2
        nftAddress = arg3
        sub_6b283a30Address = arg4
    else:
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_168):
            owner = arg1
            emit OwnershipTransferred(owner, arg1);
            marketplaceAddress = arg2
            nftAddress = arg3
            sub_6b283a30Address = arg4
        else:
            uint16(stor0.field_160) = 257
            owner = arg1
            emit OwnershipTransferred(owner, arg1);
            marketplaceAddress = arg2
            nftAddress = arg3
            sub_6b283a30Address = arg4
            uint8(stor0.field_168) = 0
}

function sub_273df92f(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(marketplaceAddress)
    staticcall marketplaceAddress.sellOrders(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[32] != arg2:
        if arg1 < 1:
            revert with 0, 17
        require ext_code.size(marketplaceAddress)
        staticcall marketplaceAddress.sellOrders(uint256 arg1) with:
                gas gas_remaining wei
               args (arg1 - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[32] == arg2:
            if arg1 < 1:
                revert with 0, 17
        else:
            if 1 > !arg1:
                revert with 0, 17
            require ext_code.size(marketplaceAddress)
            staticcall marketplaceAddress.sellOrders(uint256 arg1) with:
                    gas gas_remaining wei
                   args (arg1 + 1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[32] == arg2:
                if 1 > !arg1:
                    revert with 0, 17
        return 0
    else:
        return 0
}



}
