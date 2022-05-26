contract main {




// =====================  Runtime code  =====================


#
#  - sub_49b42c9e(?)
#  - _fallback()
#
const _DEADLINE_ = -1

const _ETH_ = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address owner;
address _FEE_WALLET_ADDR_;
address _DODO_APPROVE_ADDR_;
address _WETH_Address;
address _WETH_DFYN_Address;
address sub_a50f8286Address;

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

function sub_a50f8286(?) {
    return sub_a50f8286Address
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function sub_8b2c8316(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'arken approve zero address'
    sub_a50f8286Address = address(arg1)
    emit 0xbf8272bb: address(arg1)
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



}
