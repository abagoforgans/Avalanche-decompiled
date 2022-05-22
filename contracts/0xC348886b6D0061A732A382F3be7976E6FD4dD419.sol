contract main {




// =====================  Runtime code  =====================


address owner;
address sub_e0c9ae69Address;
uint32 epochLength; offset 160
uint32 nextEpochTime; offset 192
address treasuryAddress;
mapping of uint256 rates;
array of struct stor4;
mapping of uint256 stor5;

function nextEpochTime() payable {
    return nextEpochTime
}

function epochLength() payable {
    return epochLength
}

function treasury() payable {
    return treasuryAddress
}

function owner() payable {
    return owner
}

function rates(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rates[arg1]
}

function sub_e0c9ae69(?) payable {
    return sub_e0c9ae69Address
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

function setRate(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    require arg2 < 100000
    rates[address(arg1)] = arg2
    if not stor5[address(arg1)]:
        stor4.length++
        stor4[stor4.length].field_0 = arg1
        stor4[stor4.length].field_160 = 0
        stor5[address(arg1)] = stor4.length
}

function nextRewardFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall sub_e0c9ae69Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and rates[address(arg1)] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * rates[address(arg1)] / 100000)
}

function distribute() payable {
    if nextEpochTime > uint32(block.timestamp):
        return 0
    if nextEpochTime > -epochLength + test266151307():
        revert with 0, 17
    nextEpochTime = uint32(epochLength + nextEpochTime)
    if var43002 >= stor4.length:
        return 1
    if var49001 >= stor4.length:
        revert with 0, 50
    if not rates[address(var57001)]:
        if var61001 == -1:
            revert with 0, 17
        if var73002 >= stor4.length:
            return 1
        # nil
    else:
        staticcall sub_e0c9ae69Address.0x70a08231 with:
                gas gas_remaining wei
               args address(var61001)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var65002 - var65001 >= 32
        if var71001 and var71002 > -1 / var71001:
            revert with 0, 17
        # nil
}



}
