contract main {




// =====================  Runtime code  =====================


#
#  - swap(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, address[] arg7, bytes arg8, uint256[] arg9, uint256[] arg10)
#
uint8 stor0; offset 160
address owner;
address spenderAddress;

function owner() {
    return owner
}

function isShutdown() {
    return bool(stor0)
}

function spender() {
    return spenderAddress
}

function _fallback() payable {
    revert
}

function shutdown() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor0 = 1
    emit Shutdown()
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6f4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
