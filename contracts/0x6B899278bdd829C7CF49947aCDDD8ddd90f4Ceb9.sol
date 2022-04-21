contract main {




// =====================  Runtime code  =====================


address _owner;
uint256 _assetCount;
mapping of struct assets;

function _owner() {
    return _owner
}

function _assetCount() {
    return _assetCount
}

function assets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return assets[arg1].field_0, assets[arg1].field_256, assets[arg1].field_512, bool(assets[arg1].field_768)
}

function funding() payable {
  stop
}

function _fallback() payable {
    revert
}

function updateAssetPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _owner != msg.sender:
        revert with 0, 'not authenticated!'
    assets[arg1].field_512 = arg2
}

function sendToOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'not authenticated!'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'Couldn't send ether!'
}

function sendTokenToOwner(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _owner != msg.sender:
        revert with 0, 'not authenticated!'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buyAsset(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.value < assets[arg1].field_512:
        revert with 0, 'Amount is not enough!'
    if assets[arg1].field_768:
        revert with 0, 'asset is already sold!'
    assets[arg1].field_768 = 1
    require ext_code.size(assets[arg1].field_0)
    call assets[arg1].field_0.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, assets[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addAsset(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if _owner != msg.sender:
        revert with 0, 'not authenticated!'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if _assetCount == -1:
        revert with 'NH{q', 17
    _assetCount++
    assets[stor1].field_0 = arg1
    assets[stor1].field_256 = arg2
    assets[stor1].field_512 = arg3
    assets[stor1].field_768 = 0
}



}
