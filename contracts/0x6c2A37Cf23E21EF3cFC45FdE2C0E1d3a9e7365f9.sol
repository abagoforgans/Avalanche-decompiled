contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
mapping of uint256 sub_529caad8;
uint256 ethTxHashIndex;
array of uint256 sub_fcbdc1e0;
uint32 sub_67e31a74;
mapping of uint8 stor5;
array of uint256 extraData;

function sub_00c5fff8(?) payable {
    return ethTxHashIndex
}

function checkIfFromChainTxExist(uint64 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor5[arg1 << 192][arg2])
}

function sub_20bbde38(?) payable {
    return extraData[arg1][arg2][0 len extraData[arg1][arg2].length]
}

function getEthTxHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_529caad8[arg1]
}

function getExtraData(bytes32 arg1, bytes32 arg2) payable {
    return extraData[arg1][arg2][0 len extraData[arg1][arg2].length]
}

function sub_529caad8(?) payable {
    require calldata.size - 4 >= 32
    return sub_529caad8[arg1]
}

function getCurEpochStartHeight() payable {
    return sub_67e31a74
}

function paused() payable {
    return bool(stor0)
}

function sub_67e31a74(?) payable {
    return sub_67e31a74
}

function getCurEpochConPubKeyBytes() payable {
    return sub_fcbdc1e0[0 len sub_fcbdc1e0.length]
}

function owner() payable {
    return owner
}

function sub_fcbdc1e0(?) payable {
    return sub_fcbdc1e0[0 len sub_fcbdc1e0.length]
}

function getEthTxHashIndex() payable {
    return ethTxHashIndex
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    return 1
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
    return 1
}

function putCurEpochStartHeight(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_67e31a74 = arg1
    return 1
}

function putEthTxHash(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_529caad8[stor2] = arg1
    ethTxHashIndex++
    return 1
}

function markFromChainTxExist(uint64 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Pausable: paused'
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor5[arg1 << 192][arg2] = 1
    return 1
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

function putCurEpochConPubKeyBytes(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if stor0:
        revert with 0, 'Pausable: paused'
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_fcbdc1e0[] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 1
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function putExtraData(bytes32 arg1, bytes32 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if stor0:
        revert with 0, 'Pausable: paused'
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    extraData[arg1][arg2][] = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + 128] = 1
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}



}
