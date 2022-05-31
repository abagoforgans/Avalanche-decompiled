contract main {




// =====================  Runtime code  =====================


#
#  - purchase(uint256 arg1)
#
address owner;
address sub_858c99d5Address;
address sub_d392eab1Address;
address mimAddress;
uint256 sub_2636b945;
uint256 soldAmount;
uint256 publicAllocation;
uint256 publicSalePrice;
uint256 minAmount;
uint256 maxAmount;
uint256 salePrice;
uint8 stor11;
uint8 stor11; offset 8
uint256 stor11; offset 8
mapping of uint8 stor12;
mapping of uint8 stor13;

function sub_1cfa43eb(?) payable {
    return bool(uint8(stor11.field_0))
}

function sub_2636b945(?) payable {
    return sub_2636b945
}

function publicSale() payable {
    return bool(uint8(stor11.field_8))
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor13[address(arg1)])
}

function publicAllocation() payable {
    return publicAllocation
}

function maxAmount() payable {
    return maxAmount
}

function boughtTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
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

function publicSalePrice() payable {
    return publicSalePrice
}

function mim() payable {
    return mimAddress
}

function sub_d392eab1(?) payable {
    return sub_d392eab1Address
}

function salePrice() payable {
    return salePrice
}

function soldAmount() payable {
    return soldAmount
}

function _fallback() payable {
    revert
}

function getDetails(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor13[address(arg1)]:
        return 0
    return 0, publicAllocation, publicSalePrice
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setOpen(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    uint8(stor11.field_0) = uint8(arg1)
}

function togglePublicSale(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    Mask(248, 0, stor11.field_8) = Mask(248, 0, arg1)
}

function sub_7d593395(?) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    minAmount = arg1
    maxAmount = arg2
    salePrice = arg3
    publicSalePrice = arg4
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_858c99d5Address = arg1
    mimAddress = arg2
    sub_2636b945 = arg3
    publicAllocation = arg4
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function calculateSaleQuote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 10^9 * arg1 / 10^9 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if uint8(stor11.field_8):
        if not publicSalePrice:
            revert with 0, 'SafeMath: division by zero'
        return (10^9 * arg1 / publicSalePrice)
    if not salePrice:
        revert with 0, 'SafeMath: division by zero'
    return (10^9 * arg1 / salePrice)
}

function sub_b91067de(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        stor13[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function whitelistUsers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        stor13[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}



}
