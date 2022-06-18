contract main {




// =====================  Runtime code  =====================


#
#  - sub_1e0c7a0d(?)
#
const sub_41e1bfe6(?) = 66670 * 10^6

const getCurrentTimestamp = block.timestamp

const sub_71e42911(?) = 2 * 10^11


address owner;
uint256 MAX_SOLD;
uint256 privateSalePrice;
uint256 publicSalePrice;
mapping of uint8 stor4;
mapping of uint256 invested;
address INDEXAddress;
address devAddress;
uint256 sold;
uint256 stor9;
uint8 publicSale; offset 160
uint8 claimable; offset 168
uint128 stor10; offset 168
uint128 stor10; offset 160
uint256 sub_b651f899;

function sold() payable {
    return sold
}

function INDEX() payable {
    return INDEXAddress
}

function publicSale() payable {
    return bool(publicSale)
}

function approvedBuyers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function invested(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return invested[arg1]
}

function owner() payable {
    return owner
}

function dev() payable {
    return devAddress
}

function MAX_SOLD() payable {
    return MAX_SOLD
}

function publicSalePrice() payable {
    return publicSalePrice
}

function claimable() payable {
    return bool(claimable)
}

function sub_b651f899(?) payable {
    return sub_b651f899
}

function privateSalePrice() payable {
    return privateSalePrice
}

function _fallback() payable {
    revert
}

function sub_3483edd4(?) payable {
    if devAddress != msg.sender:
        revert with 0, '!dev'
    Mask(88, 0, stor10.field_168) = 0
}

function sub_bd5a85f2(?) payable {
    if devAddress != msg.sender:
        revert with 0, '!dev'
    Mask(88, 0, stor10.field_168) = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPublicSaleActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, '!dev'
    Mask(96, 0, stor10.field_160) = Mask(96, 0, arg1)
}

function sub_27ef06eb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if devAddress != msg.sender:
        revert with 0, '!dev'
    INDEXAddress = address(arg1)
    sub_b651f899 = block.timestamp
}

function approveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, '!dev'
    stor4[address(arg1)] = 1
    return bool(stor4[address(arg1)])
}

function sub_350ea08e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, '!dev'
    if arg1 and 10^9 > -1 / arg1:
        revert with 'NH{q', 17
    MAX_SOLD = 10^9 * arg1
}

function setPublicSalePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, '!dev'
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    publicSalePrice = 10^18 * arg1 / 10^10
}

function setPrivateSalePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, '!dev'
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    privateSalePrice = 10^18 * arg1 / 10^10
}

function isClaimable() payable {
    if bool(claimable) != 1:
        if not INDEXAddress:
            return 0
        if sub_b651f899 > -10801:
            revert with 'NH{q', 17
        if sub_b651f899 + (3 * 3600) > block.timestamp:
            return 0
        Mask(88, 0, stor10.field_168) = 1
    return 1
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

function approveBuyers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if devAddress != msg.sender:
        revert with 0, '!dev'
    idx = 0
    while arg1.length > idx:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if devAddress != msg.sender:
            revert with 0, '!dev'
        stor4[address(cd[((32 * idx) + arg1 + 36)])] = 1
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 4
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return arg1.length
}

function sub_5c5d7f6d(?) payable {
    if tx.origin != msg.sender:
        revert with 0, '!EOA'
    if bool(claimable) != 1:
        if not INDEXAddress:
            revert with 0, 'Claiming not active'
        if sub_b651f899 > -10801:
            revert with 'NH{q', 17
        if sub_b651f899 + (3 * 3600) > block.timestamp:
            revert with 0, 'Claiming not active'
        Mask(88, 0, stor10.field_168) = 1
    require ext_code.size(INDEXAddress)
    call INDEXAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, invested[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor9 < invested[address(msg.sender)]:
        revert with 'NH{q', 17
    stor9 -= invested[address(msg.sender)]
    invested[address(msg.sender)] = 0
}

function withdraw(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not INDEXAddress:
        revert with 0, 'INDEX address not set'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function amountBuyable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor4[address(arg1)]:
        if stor4[address(arg1)]:
            if 0 < invested[address(arg1)]:
                revert with 'NH{q', 17
            return -invested[address(arg1)]
        if not publicSale:
            if 0 < invested[address(arg1)]:
                revert with 'NH{q', 17
            return -invested[address(arg1)]
    else:
        if publicSale:
            if stor4[address(arg1)]:
                if 0 < invested[address(arg1)]:
                    revert with 'NH{q', 17
                return -invested[address(arg1)]
            if not publicSale:
                if 0 < invested[address(arg1)]:
                    revert with 'NH{q', 17
                return -invested[address(arg1)]
        else:
            if stor4[address(arg1)]:
                if 2 * 10^11 < invested[address(arg1)]:
                    revert with 'NH{q', 17
                return (-invested[address(arg1)] + 2 * 10^11)
            if not publicSale:
                if 2 * 10^11 < invested[address(arg1)]:
                    revert with 'NH{q', 17
                return (-invested[address(arg1)] + 2 * 10^11)
    ('bool', ('stor', ('name', 'publicSale', 10)))
    if 66670 * 10^6 < invested[address(arg1)]:
        revert with 'NH{q', 17
    return (-invested[address(arg1)] + 66670 * 10^6)
}



}
