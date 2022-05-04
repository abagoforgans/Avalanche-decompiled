contract main {




// =====================  Runtime code  =====================


#
#  - multiTrade(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, int128 arg6, int128 arg7, address[] arg8, address[] arg9, uint8[] arg10, uint256 arg11, uint256 arg12, address arg13)
#  - testTransfer(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, int128 arg6, int128 arg7, address[] arg8, address[] arg9, uint8[] arg10, uint256 arg11, uint256 arg12, address arg13)
#  - _fallback()
#
const _DEADLINE_ = -1

const _ETH_ = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner; offset 16
address _FEE_WALLET_ADDR_;
address _DODO_APPROVE_ADDR_;
address _WETH_Address;
address _WETH_DFYN_Address;
address _ETHER_WRAPPER_Address;

function _WETH_() {
    return _WETH_Address
}

function _WETH_DFYN_() {
    return _WETH_DFYN_Address
}

function _FEE_WALLET_ADDR_() {
    return _FEE_WALLET_ADDR_
}

function _DODO_APPROVE_ADDR_() {
    return _DODO_APPROVE_ADDR_
}

function owner() {
    return owner
}

function _ETHER_WRAPPER_() {
    return _ETHER_WRAPPER_Address
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function initializeEtherWrapper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _ETHER_WRAPPER_Address:
        revert with 0, 'ether wrapper initialized'
    _ETHER_WRAPPER_Address = arg1
}

function updateWETH(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'WETH zero address'
    _WETH_Address = arg1
    emit WETHUpdated(arg1);
}

function updateWETHDfyn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'WETH dfyn zero address'
    _WETH_DFYN_Address = arg1
    emit WETHDfynUpdated(arg1);
}

function updateFeeWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'fee wallet zero address'
    _FEE_WALLET_ADDR_ = arg1
    emit FeeWalletUpdated(arg1);
}

function updateEtherWrapper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ether wrapper zero address'
    _ETHER_WRAPPER_Address = arg1
    emit 0x727a7865: arg1
}

function updateDODOApproveAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'dodo approve zero address'
    _DODO_APPROVE_ADDR_ = arg1
    emit DODOApproveUpdated(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    _FEE_WALLET_ADDR_ = arg2
    _DODO_APPROVE_ADDR_ = arg5
    _WETH_Address = arg3
    _WETH_DFYN_Address = arg4
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
