contract main {




// =====================  Runtime code  =====================


address owner;
address sub_9de2e1cbAddress;
address sub_9e7cfd49Address;
uint256 startTimestamp;
uint256 stor4;
uint256 sub_95a96615;
uint256 CLAIM_PRICE;
uint256 sub_3e9c7f69;
uint256 MINT_LIMIT;
uint256 sub_54093487;

function MINT_LIMIT() payable {
    return MINT_LIMIT
}

function sub_3e9c7f69(?) payable {
    return sub_3e9c7f69
}

function CLAIM_PRICE() payable {
    return CLAIM_PRICE
}

function sub_54093487(?) payable {
    return sub_54093487
}

function owner() payable {
    return owner
}

function sub_95a96615(?) payable {
    return sub_95a96615
}

function sub_9de2e1cb(?) payable {
    return sub_9de2e1cbAddress
}

function sub_9e7cfd49(?) payable {
    return sub_9e7cfd49Address
}

function startTimestamp() payable {
    return startTimestamp
}

function _fallback() payable {
    revert
}

function getCurrentCycle() payable {
    require block.timestamp >= startTimestamp
    require stor4
    return ((block.timestamp - startTimestamp / stor4) + 1)
}

function sub_37199712(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    CLAIM_PRICE = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_5b3ca390(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_95a96615 = arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    return 0
}

function sub_a28fab5c(?) payable {
    require block.timestamp >= startTimestamp
    require stor4
    if sub_3e9c7f69:
        if (block.timestamp - startTimestamp / stor4) + 1 <= sub_54093487:
            return 0
        if (block.timestamp - startTimestamp / stor4) + -sub_54093487 + 1 < sub_95a96615:
            return 0
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg2 >= CLAIM_PRICE
    require ext_code.size(sub_9de2e1cbAddress)
    call sub_9de2e1cbAddress.0x42966c68 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require block.timestamp >= startTimestamp
    require stor4
    require ext_code.size(sub_9e7cfd49Address)
    staticcall sub_9e7cfd49Address.getNumMinted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9e7cfd49Address)
    staticcall sub_9e7cfd49Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9e7cfd49Address)
    staticcall sub_9e7cfd49Address.0xab4f47fe with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_3e9c7f69:
        require (block.timestamp - startTimestamp / stor4) + 1 > sub_54093487
        require (block.timestamp - startTimestamp / stor4) + -sub_54093487 + 1 >= sub_95a96615
    require sub_3e9c7f69 < MINT_LIMIT
    require ext_call.return_data[0] < ext_call.return_data[0]
    require ext_code.size(sub_9e7cfd49Address)
    call sub_9e7cfd49Address.mint(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_54093487 = (block.timestamp - startTimestamp / stor4) + 1
    sub_3e9c7f69++
    emit 0xe8f4a6bc: 0, uint128(arg1) << 96, ext_call.return_data[0]
}



}
