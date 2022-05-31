contract main {




// =====================  Runtime code  =====================


address owner;
uint256 endTimestamp;
uint256 startTimestamp;
address sub_3c9b375fAddress;
address sub_0940d5e9Address;
uint8 stor5; offset 160
uint128 stor5; offset 160
address sub_c9af0ce3Address;

function sub_0940d5e9(?) payable {
    return sub_0940d5e9Address
}

function isInitialized() payable {
    return bool(uint8(stor5.field_160))
}

function sub_3c9b375f(?) payable {
    return sub_3c9b375fAddress
}

function owner() payable {
    return owner
}

function endTimestamp() payable {
    return endTimestamp
}

function sub_c9af0ce3(?) payable {
    return sub_c9af0ce3Address
}

function startTimestamp() payable {
    return startTimestamp
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setEndTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    endTimestamp = arg1
}

function setStartTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startTimestamp = arg1
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor5.field_160):
        revert with 0, 'already initialized'
    sub_3c9b375fAddress = arg1
    sub_0940d5e9Address = arg2
    sub_c9af0ce3Address = arg3
    startTimestamp = arg4
    endTimestamp = arg5
    Mask(96, 0, stor5.field_160) = 1
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

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= endTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x647377617070696e67206f6620474c41206f722049434520686173206e6f7420656e6465,
                    mem[200 len 28]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function migrate() payable {
    if not uint8(stor5.field_160):
        revert with 0, 'not initialized'
    require ext_code.size(sub_c9af0ce3Address)
    staticcall sub_c9af0ce3Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0940d5e9Address)
    staticcall sub_0940d5e9Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if startTimestamp >= block.timestamp:
        revert with 0, 'Not started yet'
    if block.timestamp >= endTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x737377617070696e67206f6620474c4120616e64204943452068617320656e6465,
                    mem[197 len 31]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_c9af0ce3Address)
        call sub_c9af0ce3Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3c9b375fAddress)
        call sub_3c9b375fAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_0940d5e9Address)
        call sub_0940d5e9Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3c9b375fAddress)
        call sub_3c9b375fAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
