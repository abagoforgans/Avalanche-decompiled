contract main {




// =====================  Runtime code  =====================


#
#  - fetchPrice()
#  - setAddresses(address arg1, address arg2)
#
const TARGET_DIGITS = 18

const MAX_PRICE_DIFFERENCE_BETWEEN_ORACLES = 5 * 10^16

const MAX_PRICE_DEVIATION_FROM_PREVIOUS_ROUND = 5 * 10^17

const ETHUSD_TELLOR_REQ_ID = 1

const DECIMAL_PRECISION = 10^18

const NAME = ''

const TELLOR_DIGITS = 6

const TIMEOUT = (4 * 3600)


address owner;
address priceAggregatorAddress;
address tellorCallerAddress;
uint256 lastGoodPrice;
uint8 status;

function lastGoodPrice() payable {
    return lastGoodPrice
}

function status() payable {
    require status <= 4
    return status
}

function priceAggregator() payable {
    return priceAggregatorAddress
}

function tellorCaller() payable {
    return tellorCallerAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}



}
