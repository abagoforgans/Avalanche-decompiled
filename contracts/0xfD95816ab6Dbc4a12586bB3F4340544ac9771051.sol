contract main {




// =====================  Runtime code  =====================


#
#  - requestVolumeData()
#
mapping of address stor5;
uint256 volume;

function volume() payable {
    return volume
}

function _fallback() payable {
    revert
}

function fulfill(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    volume = arg2
}



}
