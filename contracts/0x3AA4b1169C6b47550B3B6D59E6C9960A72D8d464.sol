contract main {




// =====================  Runtime code  =====================


#
#  - buyFORT(uint256 arg1)
#
const MAX_PRESALE_PER_ACCOUNT = 10^11

const PRICE = 5 * 10^9

const MAX_SOLD = 7 * 10^13

const MIN_PRESALE_PER_ACCOUNT = 5 * 10^10


address owner;
address devAddress;
uint256 sold;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 168
uint128 stor4; offset 160
address FORTAddress;
mapping of uint256 invested;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;

function sold() payable {
    return sold
}

function approvedBuyers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
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

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function FORT() payable {
    return FORTAddress
}

function blacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function _fallback() payable {
    revert
}

function activatePrivateSale() payable {
    if devAddress != msg.sender:
        revert with 0, '!dev'
    Mask(88, 0, stor4.field_168) = 1
}

function deactivatePrivateSale() payable {
    if devAddress != msg.sender:
        revert with 0, '!dev'
    Mask(88, 0, stor4.field_168) = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setSold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sold = arg1
}

function setClaimingActive(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, '!dev'
    FORTAddress = arg1
    Mask(96, 0, stor4.field_160) = 1
}

function approveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 1
    return bool(stor7[address(arg1)])
}

function deapproveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 0
    return bool(stor7[address(arg1)])
}

function blacklistBuyer(address arg1) payable {
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

function amountBuyable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor7[address(arg1)]:
        if 0 < invested[address(arg1)]:
            revert with 'NH{q', 17
        return -invested[address(arg1)]
    if not uint8(stor4.field_168):
        if 0 < invested[address(arg1)]:
            revert with 'NH{q', 17
        return -invested[address(arg1)]
    if 10^11 < invested[address(arg1)]:
        revert with 'NH{q', 17
    return (-invested[address(arg1)] + 10^11)
}

function claimFORT() payable {
    if tx.origin != msg.sender:
        revert with 0, '!EOA'
    if not uint8(stor4.field_160):
        revert with 0, 'cannot claim yet'
    if stor6[address(msg.sender)]:
        revert with 0, 'already claimed'
    if stor8[address(msg.sender)]:
        revert with 0, 'blacklisted'
    if invested[address(msg.sender)] > 0:
        require ext_code.size(FORTAddress)
        call FORTAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, invested[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor6[address(msg.sender)] = 1
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
        stor7[address(cd[((32 * idx) + arg1 + 36)])] = 1
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 7
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return arg1.length
}

function blacklistBuyers(address[] arg1) payable {
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



}
