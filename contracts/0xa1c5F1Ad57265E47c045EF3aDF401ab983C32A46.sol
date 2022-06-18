contract main {




// =====================  Runtime code  =====================


#
#  - sub_85b4ba3f(?)
#
const getCurrentTimestamp = block.timestamp

const sub_91122627(?) = 25 * 10^11

const sub_c0da5c70(?) = 15 * 10^9

const MAX_PRESALE_PER_ACCOUNT = 12 * 10^11

const PUBLIC_PRICE = (2500000 * 3600)

const PRICE = 8 * 10^9

const MAX_SOLD = 375 * 10^11

const MAX_SALE_PER_ACCOUNT = (250 * 10^6 * 3600)

const MIN_PRESALE_PER_ACCOUNT = 15 * 10^10


address owner;
uint256 sold;
uint256 stor2;
uint8 stor3;
uint8 stor3; offset 8
address sub_4f91a077Address; offset 16
uint256 stor3; offset 8
address daoAddress;
address sub_2bc82f7fAddress;
mapping of uint256 invested;
uint256 stor8;
mapping of uint8 stor9;

function sold() payable {
    return sold
}

function sub_2bc82f7f(?) payable {
    return sub_2bc82f7fAddress
}

function approvedBuyers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function dao() payable {
    return daoAddress
}

function sub_4f91a077(?) payable {
    return sub_4f91a077Address
}

function invested(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return invested[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isPresale() payable {
    if stor8 > block.timestamp:
        return 0
    return 1
}

function isPublicSale() payable {
    if stor8 > -86401:
        revert with 'NH{q', 17
    if stor8 + (24 * 3600) > block.timestamp:
        return 0
    return 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function getPrice() payable {
    if stor8 > -86401:
        revert with 'NH{q', 17
    if stor8 + (24 * 3600) > block.timestamp:
        return 8 * 10^9
    return (2500000 * 3600)
}

function approveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = 1
    return bool(stor9[address(arg1)])
}

function setClaimingActive(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if daoAddress != msg.sender:
        revert with 0, '!dao'
    sub_4f91a077Address = arg1
    uint8(stor3.field_0) = 1
    Mask(248, 0, stor3.field_8) = 1
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

function sub_d16e6782(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor3.field_8):
        revert with 0, 'cannot claim yet'
    require ext_code.size(sub_4f91a077Address)
    call sub_4f91a077Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_2bc82f7fAddress, 25 * 10^11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    Mask(248, 0, stor3.field_8) = 0
}

function sub_e3d6294c(?) payable {
    if tx.origin != msg.sender:
        revert with 0, '!EOA'
    if not uint8(stor3.field_0):
        revert with 0, 'cannot claim yet'
    require ext_code.size(sub_4f91a077Address)
    call sub_4f91a077Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, invested[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor2 < invested[address(msg.sender)]:
        revert with 'NH{q', 17
    stor2 -= invested[address(msg.sender)]
    invested[address(msg.sender)] = 0
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if daoAddress != msg.sender:
        revert with 0, '!dao'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args daoAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approveBuyers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while arg1.length > idx:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        stor9[address(cd[((32 * idx) + arg1 + 36)])] = 1
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 9
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return arg1.length
}

function amountBuyable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 > -86401:
        revert with 'NH{q', 17
    if not stor9[address(arg1)]:
        if stor8 + (24 * 3600) > block.timestamp:
            if invested[address(arg1)] >= 0:
                return 0
            if 0 < invested[address(arg1)]:
                revert with 'NH{q', 17
            return -invested[address(arg1)]
    else:
        if stor8 > block.timestamp:
            if stor8 + (24 * 3600) > block.timestamp:
                if invested[address(arg1)] >= 0:
                    return 0
                if 0 < invested[address(arg1)]:
                    revert with 'NH{q', 17
                return -invested[address(arg1)]
        else:
            if stor8 + (24 * 3600) > block.timestamp:
                if invested[address(arg1)] >= 12 * 10^11:
                    return 0
                if 12 * 10^11 < invested[address(arg1)]:
                    revert with 'NH{q', 17
                return (-invested[address(arg1)] + 12 * 10^11)
    ('le', ('add', 86400, ('stor', ('name', 'stor8', 8))), 'timestamp')
    if invested[address(arg1)] >= 250 * 10^6 * 3600:
        return 0
    if 250 * 10^6 * 3600 < invested[address(arg1)]:
        revert with 'NH{q', 17
    return (-invested[address(arg1)] + (250 * 10^6 * 3600))
}



}
