contract main {




// =====================  Runtime code  =====================


#
#  - fetchPrice()
#  - sub_639ee883(?)
#  - sub_d190afff(?)
#
const TARGET_DIGITS = 18

const MAX_PRICE_DIFFERENCE_BETWEEN_ORACLES = 5 * 10^16

const MAX_PRICE_DEVIATION_FROM_PREVIOUS_ROUND = 5 * 10^17

const DECIMAL_PRECISION = 10^18

const NAME = '', 0

const TIMEOUT = (4 * 3600)


address owner;
address priceAggregatorAddress;
address sub_adc30a42Address;
array of uint256 sub_7b0cbf0c;
uint256 lastGoodPrice;
uint8 status;

function lastGoodPrice() payable {
    return lastGoodPrice
}

function status() payable {
    require status < 5
    return status
}

function priceAggregator() payable {
    return priceAggregatorAddress
}

function sub_7b0cbf0c(?) payable {
    return sub_7b0cbf0c[0 len sub_7b0cbf0c.length]
}

function owner() payable {
    return owner
}

function sub_adc30a42(?) payable {
    return sub_adc30a42Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
