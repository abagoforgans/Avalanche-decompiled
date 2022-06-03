contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint256 contributions;
uint256 sub_840b8d49;
uint256 sub_685cd924;
address liquidityAddress;
uint8 stor7; offset 160
uint8 stor7; offset 168
uint128 stor7; offset 168
uint128 stor7; offset 160
address vaultTokenAddress;
uint256 sub_81900318;

function whitelistActive() {
    return bool(uint8(stor7.field_160))
}

function liquidityAddress() {
    return liquidityAddress
}

function contributions(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return contributions[arg1]
}

function saleActive() {
    return bool(uint8(stor7.field_168))
}

function sub_685cd924(?) {
    return sub_685cd924
}

function vaultToken() {
    return vaultTokenAddress
}

function sub_81900318(?) {
    return sub_81900318
}

function sub_840b8d49(?) {
    return sub_840b8d49
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_12098494(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_840b8d49 = arg1
}

function addToWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function sub_035ceca2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityAddress = address(arg1)
}

function toggleSale(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor7.field_168) = Mask(88, 0, arg1)
}

function toggleWhitelist(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor7.field_160) = Mask(96, 0, arg1)
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require eth.balance(this.address) > 0
    call liquidityAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c672ccf3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if not uint8(stor7.field_168):
        revert with 0, 'Sale not active'
    if uint8(stor7.field_160):
        if bool(stor1[address(arg2)]) != 1:
            revert with 0, 'Not In Whitelist'
    require msg.value == arg1
    if eth.balance(this.address) >= sub_840b8d49:
        revert with 0, 'Whitelist Filled'
    if eth.balance(this.address) > -arg1 - 1:
        revert with 'NH{q', 17
    if eth.balance(this.address) + arg1 >= sub_840b8d49:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Deposit Over Whitelist Max - Check Contract Balance if its below limit'
    if not sub_840b8d49:
        revert with 'NH{q', 18
    if eth.balance(this.address) / sub_840b8d49 and 100 > -1 / eth.balance(this.address) / sub_840b8d49:
        revert with 'NH{q', 17
    sub_81900318 = 100 * eth.balance(this.address) / sub_840b8d49
    if msg.value and sub_685cd924 > -1 / msg.value:
        revert with 'NH{q', 17
    require ext_code.size(vaultTokenAddress)
    call vaultTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), msg.value * sub_685cd924 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
