contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
address sub_c6b9d754Address;
uint8 stor4; offset 160
uint128 stor4; offset 160
address sub_11d021d3Address;
mapping of uint256 senderInfo;

function sub_11d021d3(?) payable {
    return sub_11d021d3Address
}

function isInitialized() payable {
    return bool(uint8(stor4.field_160))
}

function owner() payable {
    return owner
}

function senderInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return senderInfo[arg1]
}

function sub_c6b9d754(?) payable {
    return sub_c6b9d754Address
}

function _fallback() payable {
    revert
}

function getBlockNumber() payable {
    return block.number, stor1, stor2
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_ea6ef88c(?) payable {
    require calldata.size - 4 >= 64
    if arg1:
        stor1 = arg1
    else:
        stor1 = block.number
    if stor1 + arg2 < stor1:
        revert with 0, 'SafeMath: addition overflow'
    stor2 = stor1 + arg2
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

function reclaim() payable {
    if senderInfo[address(msg.sender)] <= 0:
        revert with 0, 'user has no aNRK to withdraw'
    if block.number <= stor2:
        revert with 0, 'aNRK swap is still ongoing'
    senderInfo[address(msg.sender)] = 0
    require ext_code.size(sub_11d021d3Address)
    call sub_11d021d3Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, senderInfo[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor4.field_160):
        revert with 0, 'already initialized'
    sub_c6b9d754Address = arg1
    sub_11d021d3Address = arg2
    if arg3:
        stor1 = arg3
    else:
        stor1 = block.number
    if stor1 + arg4 < stor1:
        revert with 0, 'SafeMath: addition overflow'
    stor2 = stor1 + arg4
    Mask(96, 0, stor4.field_160) = 1
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.number <= stor2:
        revert with 0, 'swapping of aNRK has not ended'
    require ext_code.size(sub_c6b9d754Address)
    staticcall sub_c6b9d754Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c6b9d754Address)
    call sub_c6b9d754Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function migrate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor4.field_160):
        revert with 0, 'not initialized'
    require ext_code.size(sub_11d021d3Address)
    staticcall sub_11d021d3Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'amount above user balance'
    if block.number <= stor1:
        revert with 0, 'Swapping has not started yet.'
    if block.number >= stor2:
        revert with 0, 'Swapping has ended'
    require ext_code.size(sub_11d021d3Address)
    call sub_11d021d3Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if senderInfo[address(msg.sender)] + arg1 < senderInfo[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    senderInfo[address(msg.sender)] += arg1
    require ext_code.size(sub_c6b9d754Address)
    call sub_c6b9d754Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
