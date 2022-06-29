contract main {




// =====================  Runtime code  =====================


address owner;
address sub_bb650ef9Address;
address wavaxAddress;
address pairAddress;

function wavax() payable {
    return wavaxAddress
}

function owner() payable {
    return owner
}

function pair() payable {
    return pairAddress
}

function sub_bb650ef9(?) payable {
    return sub_bb650ef9Address
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

function sub_835c4ca6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'wavax address cannot be 0'
    wavaxAddress = arg1
}

function setPair(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'pair address cannot be 0'
    pairAddress = arg1
}

function sub_9004af2f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'redalert address cannot be 0'
    sub_bb650ef9Address = arg1
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

function consult(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_bb650ef9Address != arg1:
        revert with 0, 'token needs to be redalert'
    require ext_code.size(sub_bb650ef9Address)
    staticcall sub_bb650ef9Address.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wavaxAddress)
    staticcall wavaxAddress.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    return Mask(144, 0, ext_call.return_data[0] / ext_call.return_data[0])
}



}
