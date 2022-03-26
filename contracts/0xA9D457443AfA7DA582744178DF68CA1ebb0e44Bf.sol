contract main {




// =====================  Runtime code  =====================


address owner;
address sub_bf394a96Address;
address distributorAddress;
address harvestProcessorAddress;

function Distributor() payable {
    return distributorAddress
}

function owner() payable {
    return owner
}

function sub_bf394a96(?) payable {
    return sub_bf394a96Address
}

function HarvestProcessor() payable {
    return harvestProcessorAddress
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

function sub_77857980(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_bf394a96Address = arg1
    emit 0x7167d1da: arg1
}

function sub_8f825b99(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    harvestProcessorAddress = arg1
    emit 0x152c5bbb: arg1
}

function setDistributor(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    distributorAddress = arg1
    emit 0x4ccb341d: arg1
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



}
