contract main {




// =====================  Runtime code  =====================


#
#  - buyTokens(uint256 arg1)
#  - sub_eeb57aa6(?)
#
const PRESALE_TYPEHASH = 0x46e3896d51ae2975031c99bde656c5b37bbe33d36ec98df9dc9b17281466bdd1


address owner;
uint32 stor2;
uint32 stor2; offset 160
uint32 stor2; offset 192
address stor2;
uint256 sub_7b7210e8;
uint256 tokenPrice;
uint256 sub_5198a06e;
uint256 sub_6cd07154;
uint256 nftTotalSupply;
mapping of uint256 sub_8034d85c;
mapping of uint256 stor9;
address shipAddress;
address paymentTokenAddress;
address treasuryAddress;
uint256 DOMAIN_SEPARATOR;

function nftTotalSupply() payable {
    return nftTotalSupply
}

function paymentToken() payable {
    return paymentTokenAddress
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function sub_5198a06e(?) payable {
    return sub_5198a06e
}

function treasury() payable {
    return treasuryAddress
}

function sub_6cd07154(?) payable {
    return sub_6cd07154
}

function sub_7b7210e8(?) payable {
    return sub_7b7210e8
}

function tokenPrice() payable {
    return tokenPrice
}

function sub_8034d85c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8034d85c[arg1]
}

function owner() payable {
    return owner
}

function ship() payable {
    return shipAddress
}

function _fallback() payable {
    revert
}

function presaleConfig() payable {
    return address(stor2.field_0), uint32(stor2.field_0), uint32(stor2.field_192)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_dad026cb(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7b7210e8 = arg1
    emit 0xa9f222f6: arg1
}

function setTokenPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenPrice = arg1
    emit TokenPriceChanged(arg1);
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
    emit TreasuryChanged(arg1);
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

function setShip(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_5198a06e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ShipsSale: ship cannot be set after first one being sold'
    shipAddress = arg1
    emit 0x84aab55b: arg1
}

function sub_a0e378b1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if nftTotalSupply < sub_5198a06e:
        revert with 0, 17
    if nftTotalSupply - sub_5198a06e < 1:
        revert with 0, 17
    if not stor9[stor7 + -stor5 - 1]:
        stor9[arg1] = nftTotalSupply + -sub_5198a06e - 1
    else:
        stor9[arg1] = stor9[stor7 + -stor5 - 1]
    stor9[stor7 + -stor5 - 1] = 0
    if sub_5198a06e > -2:
        revert with 0, 17
    sub_5198a06e++
    emit 0xbca48eec: msg.sender, arg1
}

function setUpPresale(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > test266151307():
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 32 bits'
    if arg3 > test266151307():
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 32 bits'
    if not arg1:
        revert with 0, 'ShipsSale: zero address'
    if uint32(arg2) <= 0:
        revert with 0, 'ShipsSale: invalid time range'
    if uint32(arg3) <= uint32(arg2):
        revert with 0, 'ShipsSale: invalid time range'
    address(stor2.field_0) = arg1
    uint32(stor2.field_160) = uint32(arg2)
    uint32(stor2.field_192) = uint32(arg3)
    emit PresaleConfigChanged(address(arg1), arg2 << 224, uint32(arg3));
}



}
