contract main {




// =====================  Runtime code  =====================


#
#  - purchase(uint256 arg1)
#
address owner;
address sub_858c99d5Address;
address sub_d392eab1Address;
address mimAddress;
uint256 sub_1bed80e6;
uint256 sub_2cbdd916;
uint256 sub_6386e40a;
uint256 sub_4653437a;
uint256 sub_0640e3e3;
uint256 sub_e5b6cf5e;
uint256 sub_2636b945;
uint256 soldAmount;
uint256 publicAllocation;
uint256 publicSalePrice;
uint8 stor14;
uint8 stor14; offset 8
uint256 stor14; offset 8
mapping of uint8 stor15;
mapping of uint8 stor16;
mapping of uint8 stor17;

function sub_0640e3e3(?) payable {
    return sub_0640e3e3
}

function sub_1bed80e6(?) payable {
    return sub_1bed80e6
}

function sub_1cfa43eb(?) payable {
    return bool(uint8(stor14.field_0))
}

function sub_2636b945(?) payable {
    return sub_2636b945
}

function sub_2cbdd916(?) payable {
    return sub_2cbdd916
}

function publicSale() payable {
    return bool(uint8(stor14.field_8))
}

function sub_4653437a(?) payable {
    return sub_4653437a
}

function publicAllocation() payable {
    return publicAllocation
}

function sub_6386e40a(?) payable {
    return sub_6386e40a
}

function boughtTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor15[arg1])
}

function sub_858c99d5(?) payable {
    return sub_858c99d5Address
}

function owner() payable {
    return owner
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

function sub_e5b6cf5e(?) payable {
    return sub_e5b6cf5e
}

function soldAmount() payable {
    return soldAmount
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor16[address(arg1)]:
        return bool(stor16[address(arg1)])
    return bool(stor17[address(arg1)])
}

function setOpen(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    uint8(stor14.field_0) = uint8(arg1)
}

function togglePublicSale(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    Mask(248, 0, stor14.field_8) = Mask(248, 0, arg1)
}

function getDetails(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor16[address(arg1)]:
        if not stor17[address(arg1)]:
            return 0, publicAllocation, publicSalePrice
    if not stor16[address(arg1)]:
        return sub_1bed80e6, sub_2cbdd916, sub_6386e40a
    return sub_4653437a, sub_0640e3e3, sub_e5b6cf5e
}

function sub_834d5a23(?) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg4:
        sub_1bed80e6 = arg1
        sub_2cbdd916 = arg2
        sub_6386e40a = arg3
    else:
        sub_4653437a = arg1
        sub_0640e3e3 = arg2
        sub_e5b6cf5e = arg3
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_858c99d5Address = arg1
    mimAddress = arg2
    sub_2636b945 = arg3
    publicAllocation = arg4
    publicSalePrice = arg5
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

function sub_4974a094(?) payable {
    require calldata.size - 4 >= 64
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
        if not arg2:
            mem[32] = 17
            stor17[mem[(32 * idx) + 140 len 20]] = 0
        else:
            mem[32] = 16
            stor16[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function sub_50f13709(?) payable {
    require calldata.size - 4 >= 64
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
        if not arg2:
            mem[32] = 17
            stor17[mem[(32 * idx) + 140 len 20]] = 1
        else:
            mem[32] = 16
            stor16[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function calculateSaleQuote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 10^9 * arg1 / 10^9 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if uint8(stor14.field_8):
        if not publicSalePrice:
            revert with 0, 'SafeMath: division by zero'
        return (10^9 * arg1 / publicSalePrice)
    if stor16[msg.sender]:
        if not sub_e5b6cf5e:
            revert with 0, 'SafeMath: division by zero'
        return (10^9 * arg1 / sub_e5b6cf5e)
    if not sub_6386e40a:
        revert with 0, 'SafeMath: division by zero'
    return (10^9 * arg1 / sub_6386e40a)
}



}
