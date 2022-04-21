contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address priceOracleAddress;

function defaultPayIsAUTO() payable {
    return bool(uint8(stor1.field_160))
}

function owner() payable {
    return owner
}

function getPriceOracle() payable {
    return priceOracleAddress
}

function _fallback() payable {
    revert
}

function getRandNum(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return block.hash(arg1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPriceOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    priceOracleAddress = arg1
}

function setDefaultPayIsAUTO(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function getAUTOPerETH() payable {
    require ext_code.size(priceOracleAddress)
    staticcall priceOracleAddress.0x9e26d580 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getGasPriceFast() payable {
    require ext_code.size(priceOracleAddress)
    staticcall priceOracleAddress.0xba19f12f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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



}
