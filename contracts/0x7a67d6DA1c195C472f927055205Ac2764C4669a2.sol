contract main {




// =====================  Runtime code  =====================


#
#  - buyFORT(uint256 arg1)
#
const getCurrentTimestamp = block.timestamp

const MAX_PRESALE_PER_ACCOUNT = 25 * 10^10

const PRICE = 4750 * 10^6

const MAX_SOLD = 63158 * 10^9

const MAX_SALE_PER_ACCOUNT = 10^11


address owner;
uint256 sold;
uint256 stor2;
address FORTAddress;
mapping of uint256 invested;
address devAddress;
uint256 stor7;
mapping of uint8 stor8;

function sold() payable {
    return sold
}

function approvedBuyers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
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

function FORT() payable {
    return FORTAddress
}

function _fallback() payable {
    revert
}

function isPresale() payable {
    if stor7 > block.timestamp:
        return 0
    return 1
}

function isPublicSale() payable {
    if stor7 > -86401:
        revert with 'NH{q', 17
    if stor7 + (24 * 3600) > block.timestamp:
        return 0
    return 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setClaimingActive(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, '!dev'
    FORTAddress = arg1
}

function approveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 1
    return bool(stor8[address(arg1)])
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

function claimFORT() payable {
    if tx.origin != msg.sender:
        revert with 0, '!EOA'
    require ext_code.size(FORTAddress)
    call FORTAddress.0xa9059cbb with:
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
    if devAddress != msg.sender:
        revert with 0, '!dev'
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
        args devAddress, ext_call.return_data[0]
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
        stor8[address(cd[((32 * idx) + arg1 + 36)])] = 1
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 8
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return arg1.length
}

function amountBuyable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor8[address(arg1)]:
        if stor8[address(arg1)]:
            if 0 < invested[address(arg1)]:
                revert with 'NH{q', 17
            return -invested[address(arg1)]
        if stor7 > -86401:
            revert with 'NH{q', 17
        if stor7 + (24 * 3600) > block.timestamp:
            if 0 < invested[address(arg1)]:
                revert with 'NH{q', 17
            return -invested[address(arg1)]
    else:
        if stor7 > block.timestamp:
            if stor8[address(arg1)]:
                if 0 < invested[address(arg1)]:
                    revert with 'NH{q', 17
                return -invested[address(arg1)]
            if stor7 > -86401:
                revert with 'NH{q', 17
            if stor7 + (24 * 3600) > block.timestamp:
                if 0 < invested[address(arg1)]:
                    revert with 'NH{q', 17
                return -invested[address(arg1)]
        else:
            if stor8[address(arg1)]:
                if 25 * 10^10 < invested[address(arg1)]:
                    revert with 'NH{q', 17
                return (-invested[address(arg1)] + 25 * 10^10)
            if stor7 > -86401:
                revert with 'NH{q', 17
            if stor7 + (24 * 3600) > block.timestamp:
                if 25 * 10^10 < invested[address(arg1)]:
                    revert with 'NH{q', 17
                return (-invested[address(arg1)] + 25 * 10^10)
    ('le', ('add', 86400, ('stor', ('name', 'stor7', 7))), 'timestamp')
    if 10^11 < invested[address(arg1)]:
        revert with 'NH{q', 17
    return (-invested[address(arg1)] + 10^11)
}



}
