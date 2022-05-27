contract main {




// =====================  Runtime code  =====================


address owner;
uint256 endTimestamp;
uint256 startTimestamp;
uint256 sub_f019e2b2;
address sub_e5163de5Address;
uint8 stor5; offset 160
uint128 stor5; offset 160
address sub_e431aaadAddress;
mapping of uint256 senderInfo;

function isInitialized() payable {
    return bool(uint8(stor5.field_160))
}

function owner() payable {
    return owner
}

function senderInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return senderInfo[arg1]
}

function endTimestamp() payable {
    return endTimestamp
}

function sub_e431aaad(?) payable {
    return sub_e431aaadAddress
}

function sub_e5163de5(?) payable {
    return sub_e5163de5Address
}

function startTimestamp() payable {
    return startTimestamp
}

function sub_f019e2b2(?) payable {
    return sub_f019e2b2
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

function sub_5294385b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f019e2b2 = arg1
}

function setEndTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    endTimestamp = arg1
}

function setStartTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startTimestamp = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor5.field_160):
        revert with 0, 'already initialized'
    sub_e5163de5Address = arg1
    sub_e431aaadAddress = arg2
    startTimestamp = arg3
    endTimestamp = arg4
    Mask(96, 0, stor5.field_160) = 1
    sub_f019e2b2 = 12 * 10^10
}

function reclaim() payable {
    if senderInfo[address(msg.sender)] <= 0:
        revert with 0, 'user has no aKarma to withdraw'
    if block.timestamp <= endTimestamp:
        revert with 0, 'aKarma swap is still ongoing'
    senderInfo[address(msg.sender)] = 0
    require ext_code.size(sub_e431aaadAddress)
    call sub_e431aaadAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, senderInfo[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= endTimestamp:
        revert with 0, 'swapping of aKarma has not ended'
    require ext_code.size(sub_e5163de5Address)
    staticcall sub_e5163de5Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_e5163de5Address)
    call sub_e5163de5Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function migrate() payable {
    if not uint8(stor5.field_160):
        revert with 0, 'not initialized'
    require ext_code.size(sub_e431aaadAddress)
    staticcall sub_e431aaadAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > sub_f019e2b2:
        revert with 0, 'Exceed the specified amount'
    if startTimestamp >= block.timestamp:
        revert with 0, 'Not started yet'
    if block.timestamp >= endTimestamp:
        revert with 0, 'swapping of aKarma has ended'
    require ext_code.size(sub_e431aaadAddress)
    call sub_e431aaadAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if senderInfo[address(msg.sender)] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if senderInfo[address(msg.sender)] + ext_call.return_data[0] < senderInfo[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    senderInfo[address(msg.sender)] += ext_call.return_data[0]
    require ext_code.size(sub_e5163de5Address)
    call sub_e5163de5Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
