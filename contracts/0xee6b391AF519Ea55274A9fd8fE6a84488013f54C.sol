contract main {




// =====================  Runtime code  =====================


#
#  - purchase(uint256 arg1)
#
address owner;
address sub_858c99d5Address;
address sub_d392eab1Address;
address mimAddress;
uint256 minAmount;
uint256 maxAmount;
uint256 salePrice;
uint256 sub_5243ada6;
uint256 sellAmount;
uint256 sub_e58bf43a;
mapping of uint8 stor10;

function sellAmount() payable {
    return sellAmount
}

function sub_5243ada6(?) payable {
    return sub_5243ada6
}

function maxAmount() payable {
    return maxAmount
}

function boughtTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function sub_858c99d5(?) payable {
    return sub_858c99d5Address
}

function owner() payable {
    return owner
}

function minAmount() payable {
    return minAmount
}

function mim() payable {
    return mimAddress
}

function sub_d392eab1(?) payable {
    return sub_d392eab1Address
}

function sub_e58bf43a(?) payable {
    return sub_e58bf43a
}

function salePrice() payable {
    return salePrice
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

function changeSalePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    salePrice = arg1
}

function setAllocation(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minAmount = arg1
    maxAmount = arg2
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

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_858c99d5Address = arg1
    mimAddress = arg2
    salePrice = arg6
    minAmount = arg3
    maxAmount = arg4
    sub_5243ada6 = arg5
    sub_e58bf43a = arg7
    return 1
}

function calculateSaleQuote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > 0x1ef2d0f5da7dd8aa27507bb7b07ea440918271378fd8:
        revert with 0, 17
    if 10000000 * 10^18 * arg1 / 10000000 * 10^18 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not salePrice:
        revert with 0, 'SafeMath: division by zero', 0
    return (10000000 * 10^18 * arg1 / salePrice)
}



}
