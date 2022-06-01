contract main {




// =====================  Runtime code  =====================


#
#  - sub_f56b173b(?)
#
address owner;
uint256 MAX_SOLD;
uint256 MIN_PRESALE_PER_ACCOUNT;
uint256 MAX_PRESALE_PER_ACCOUNT;
address owners;
address stor5;
uint256 sold;
uint256 PRICE;
uint8 stor8; offset 160
uint8 stor8; offset 168
uint8 stor8; offset 176
address stor8;
array of uint256 stor9;
mapping of uint256 amountInvested;
mapping of uint256 dailyClaimed;
mapping of uint8 stor12;
mapping of uint256 amountPerClaim;

function sold() payable {
    return sold
}

function amountInvested(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return amountInvested[address(arg1)]
}

function approvedBuyers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function MAX_PRESALE_PER_ACCOUNT() payable {
    return MAX_PRESALE_PER_ACCOUNT
}

function amountPerClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return amountPerClaim[arg1]
}

function invested(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return amountInvested[arg1]
}

function PRICE() payable {
    return PRICE
}

function owner() payable {
    return owner
}

function MAX_SOLD() payable {
    return MAX_SOLD
}

function owners() payable {
    return owners
}

function dailyClaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return dailyClaimed[arg1]
}

function MIN_PRESALE_PER_ACCOUNT() payable {
    return MIN_PRESALE_PER_ACCOUNT
}

function _fallback() payable {
    revert
}

function activatePublicSale() payable {
    if owners != msg.sender:
        revert with 0, 'not owners'
    uint8(stor8.field_168) = 1
}

function activatePrivateSale() payable {
    if owners != msg.sender:
        revert with 0, 'not owners'
    uint8(stor8.field_176) = 1
}

function deactivatePublicSale() payable {
    if owners != msg.sender:
        revert with 0, 'not owners'
    uint8(stor8.field_168) = 0
}

function deactivatePrivateSale() payable {
    if owners != msg.sender:
        revert with 0, 'not owners'
    uint8(stor8.field_176) = 0
}

function sub_350ea08e(?) payable {
    require calldata.size - 4 >= 32
    if owners != msg.sender:
        revert with 0, 'not owners'
    MAX_SOLD = arg1
}

function setSold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owners != msg.sender:
        revert with 0, 'not owners'
    sold = arg1
}

function setMinBuy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owners != msg.sender:
        revert with 0, 'not owners'
    MIN_PRESALE_PER_ACCOUNT = arg1
}

function setMaxBuy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owners != msg.sender:
        revert with 0, 'not owners'
    MAX_PRESALE_PER_ACCOUNT = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_1a232a4c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owners != msg.sender:
        revert with 0, 'not owners'
    owners = address(arg1)
}

function setClaimingActive(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owners != msg.sender:
        revert with 0, 'not owners'
    uint8(stor8.field_160) = 1
}

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owners != msg.sender:
        revert with 0, 'not owners'
    if arg1 and 10^18 > -1 / arg1:
        revert with 0, 17
    PRICE = 10^18 * arg1 / 10^9
}

function approveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = 1
    return 1
}

function deapproveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = 0
    return 0
}

function isDev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= stor9.length:
        revert with 0, 50
    if address(stor9.field_0) != arg1:
        if 1 >= stor9.length:
            revert with 0, 50
        if address(stor9.field_256) != arg1:
            return 0
    return 1
}

function sub_ac422fd2(?) payable {
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
    if not stor12[address(arg1)]:
        if not uint8(stor8.field_168):
            if 0 < amountInvested[address(arg1)]:
                revert with 0, 17
            return -amountInvested[address(arg1)]
    else:
        if not uint8(stor8.field_176):
            if not uint8(stor8.field_168):
                if 0 < amountInvested[address(arg1)]:
                    revert with 0, 17
                return -amountInvested[address(arg1)]
    if MAX_PRESALE_PER_ACCOUNT < amountInvested[address(arg1)]:
        revert with 0, 17
    return (MAX_PRESALE_PER_ACCOUNT - amountInvested[address(arg1)])
}

function sub_132d3dc2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owners != msg.sender:
        revert with 0, 'not owners'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args owners, ext_call.return_data[0]
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
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 12
        stor12[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return arg1.length
}

function sub_6f3c85a8(?) payable {
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    if not uint8(stor8.field_160):
        revert with 0, 'Cannot claim now'
    if not amountInvested[msg.sender]:
        revert with 0, 'no claim avalaible'
    if block.timestamp <= dailyClaimed[msg.sender]:
        revert with 0, 'cannot claimed now'
    if not dailyClaimed[msg.sender]:
        dailyClaimed[msg.sender] = block.timestamp
        amountPerClaim[msg.sender] = amountInvested[msg.sender] / 10^9
    require ext_code.size(address(stor8.field_0))
    call address(stor8.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, amountPerClaim[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if amountInvested[msg.sender] < amountPerClaim[msg.sender]:
        revert with 0, 17
    amountInvested[msg.sender] -= amountPerClaim[msg.sender]
    if dailyClaimed[msg.sender] > !amountPerClaim[msg.sender]:
        revert with 0, 17
    dailyClaimed[msg.sender] += amountPerClaim[msg.sender]
}



}
