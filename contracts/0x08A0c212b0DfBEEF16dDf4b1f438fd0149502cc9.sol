contract main {




// =====================  Runtime code  =====================


address owner;
uint256 endTimestamp;
uint256 startTimestamp;
uint256 sub_f019e2b2;
address sub_0940d5e9Address;
uint8 stor5; offset 160
address sub_541abc51Address;
mapping of uint256 senderInfo;

function sub_0940d5e9(?) payable {
    return sub_0940d5e9Address
}

function isInitialized() payable {
    return bool(stor5)
}

function sub_541abc51(?) payable {
    return sub_541abc51Address
}

function owner() payable {
    return owner
}

function senderInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return senderInfo[arg1]
}

function endTimestamp() payable {
    return endTimestamp
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
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_5294385b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_f019e2b2 = arg1
}

function setEndTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    endTimestamp = arg1
}

function setStartTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    startTimestamp = arg1
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if stor5:
        revert with 0, 'already initialized'
    sub_0940d5e9Address = arg1
    startTimestamp = arg3
    endTimestamp = arg4
    sub_541abc51Address = arg2
    stor5 = 1
    sub_f019e2b2 = 12 * 10^10
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

function reclaim() payable {
    if not senderInfo[msg.sender]:
        revert with 0, 'user has no aICE to withdraw'
    if block.timestamp <= endTimestamp:
        revert with 0, 'aICE swap is still ongoing'
    senderInfo[msg.sender] = 0
    require ext_code.size(sub_541abc51Address)
    call sub_541abc51Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, senderInfo[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if block.timestamp <= endTimestamp:
        revert with 0, 'swapping of aICE has not ended'
    require ext_code.size(sub_0940d5e9Address)
    staticcall sub_0940d5e9Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0940d5e9Address)
    call sub_0940d5e9Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function migrate() payable {
    if not stor5:
        revert with 0, 'not initialized'
    require ext_code.size(sub_541abc51Address)
    staticcall sub_541abc51Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > sub_f019e2b2:
        revert with 0, 'Exceed the specified amount'
    if startTimestamp >= block.timestamp:
        revert with 0, 'Not started yet'
    if block.timestamp >= endTimestamp:
        revert with 0, 'swapping of aICE has ended'
    require ext_code.size(sub_541abc51Address)
    call sub_541abc51Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + senderInfo[msg.sender] < senderInfo[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    senderInfo[msg.sender] += ext_call.return_data[0]
    require ext_code.size(sub_0940d5e9Address)
    call sub_0940d5e9Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
