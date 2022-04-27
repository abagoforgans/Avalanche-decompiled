contract main {




// =====================  Runtime code  =====================


uint256 price;
address priceAggregatorAddress;
address sub_adc30a42Address;

function fetchPrice() payable {
    emit LastGoodPriceUpdated(price);
    return price
}

function priceAggregator() payable {
    return priceAggregatorAddress
}

function getPrice() payable {
    return price
}

function sub_adc30a42(?) payable {
    return sub_adc30a42Address
}

function _fallback() payable {
    revert
}

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    price = arg1
    return 1
}

function sub_639ee883(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
}



}
