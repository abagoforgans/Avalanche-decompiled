contract main {




// =====================  Runtime code  =====================


#
#  - buySUN(uint256 arg1)
#
const MAX_PRESALE_PER_ACCOUNT = 10^11

const MAX_SOLD = 2 * 10^13

const MIN_PRESALE_PER_ACCOUNT = 10^10


address owner;
address owners;
uint256 sold;
uint256 PRICE;
uint8 stor5; offset 160
uint8 stor5; offset 168
uint8 stor5; offset 176
uint128 stor5; offset 176
uint128 stor5; offset 168
uint128 stor5; offset 160
address SUNAddress;
array of uint256 stor6;
mapping of uint256 invested;
mapping of uint256 dailyClaimed;
mapping of uint8 stor9;
mapping of uint256 amountPerClaim;

function sold() payable {
    return sold
}

function SUN() payable {
    return SUNAddress
}

function approvedBuyers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function amountPerClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return amountPerClaim[arg1]
}

function invested(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return invested[arg1]
}

function PRICE() payable {
    return PRICE
}

function owner() payable {
    return owner
}

function owners() payable {
    return owners
}

function dailyClaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return dailyClaimed[arg1]
}

function _fallback() payable {
    revert
}

function activatePublicSale() payable {
    if owners != msg.sender:
        revert with 0, 'not owners'
    Mask(88, 0, stor5.field_168) = 1
}

function activatePrivateSale() payable {
    if owners != msg.sender:
        revert with 0, 'not owners'
    Mask(80, 0, stor5.field_176) = 1
}

function deactivatePublicSale() payable {
    if owners != msg.sender:
        revert with 0, 'not owners'
    Mask(88, 0, stor5.field_168) = 0
}

function deactivatePrivateSale() payable {
    if owners != msg.sender:
        revert with 0, 'not owners'
    Mask(80, 0, stor5.field_176) = 0
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
    if owners != msg.sender:
        revert with 0, 'not owners'
    sold = arg1
}

function setClaimingActive(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owners != msg.sender:
        revert with 0, 'not owners'
    SUNAddress = arg1
    Mask(96, 0, stor5.field_160) = 1
}

function approveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = 1
    return bool(stor9[address(arg1)])
}

function deapproveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = 0
    return bool(stor9[address(arg1)])
}

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owners != msg.sender:
        revert with 0, 'not owners'
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    PRICE = 10^18 * arg1 / 10^9
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

function isDev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= stor6.length:
        revert with 'NH{q', 50
    if arg1 != address(stor6.field_0):
        if 1 >= stor6.length:
            revert with 'NH{q', 50
        if arg1 != address(stor6.field_256):
            if 2 >= stor6.length:
                revert with 'NH{q', 50
            if arg1 != address(stor6.field_512):
                return 0
    return 1
}

function amountBuyable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor9[address(arg1)]:
        if not uint8(stor5.field_168):
            if 0 < invested[address(arg1)]:
                revert with 'NH{q', 17
            return -invested[address(arg1)]
    else:
        if not uint8(stor5.field_176):
            if not uint8(stor5.field_168):
                if 0 < invested[address(arg1)]:
                    revert with 'NH{q', 17
                return -invested[address(arg1)]
    if 10^11 < invested[address(arg1)]:
        revert with 'NH{q', 17
    return (-invested[address(arg1)] + 10^11)
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owners != msg.sender:
        revert with 0, 'not owners'
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

function claimSUN() payable {
    if tx.origin != msg.sender:
        revert with 0, '!EOA'
    if not uint8(stor5.field_160):
        revert with 0, 'Cannot claim now'
    if invested[address(msg.sender)] <= 0:
        revert with 0, 'no claim avalaible'
    if dailyClaimed[address(msg.sender)] >= block.timestamp:
        revert with 0, 'cannot claimed now'
    if not dailyClaimed[address(msg.sender)]:
        dailyClaimed[address(msg.sender)] = block.timestamp
        if 0 >= stor6.length:
            revert with 'NH{q', 50
        if msg.sender == address(stor6.field_0):
            if invested[address(msg.sender)] and 5 > -1 / invested[address(msg.sender)]:
                revert with 'NH{q', 17
            amountPerClaim[address(msg.sender)] = 5 * invested[address(msg.sender)] / 100
        else:
            if 1 >= stor6.length:
                revert with 'NH{q', 50
            if msg.sender == address(stor6.field_256):
                if invested[address(msg.sender)] and 5 > -1 / invested[address(msg.sender)]:
                    revert with 'NH{q', 17
                amountPerClaim[address(msg.sender)] = 5 * invested[address(msg.sender)] / 100
            else:
                if 2 >= stor6.length:
                    revert with 'NH{q', 50
                if address(stor6.field_512) != msg.sender:
                    if invested[address(msg.sender)] and 20 > -1 / invested[address(msg.sender)]:
                        revert with 'NH{q', 17
                    amountPerClaim[address(msg.sender)] = 20 * invested[address(msg.sender)] / 100
                else:
                    if invested[address(msg.sender)] and 5 > -1 / invested[address(msg.sender)]:
                        revert with 'NH{q', 17
                    amountPerClaim[address(msg.sender)] = 5 * invested[address(msg.sender)] / 100
    if 0 >= stor6.length:
        revert with 'NH{q', 50
    if msg.sender == address(stor6.field_0):
        require ext_code.size(SUNAddress)
        call SUNAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, amountPerClaim[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if invested[address(msg.sender)] < amountPerClaim[address(msg.sender)]:
            revert with 'NH{q', 17
        invested[address(msg.sender)] -= amountPerClaim[address(msg.sender)]
        if dailyClaimed[address(msg.sender)] > -604801:
            revert with 'NH{q', 17
        dailyClaimed[address(msg.sender)] += 168 * 24 * 3600
    else:
        if 1 >= stor6.length:
            revert with 'NH{q', 50
        if msg.sender == address(stor6.field_256):
            require ext_code.size(SUNAddress)
            call SUNAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, amountPerClaim[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if invested[address(msg.sender)] < amountPerClaim[address(msg.sender)]:
                revert with 'NH{q', 17
            invested[address(msg.sender)] -= amountPerClaim[address(msg.sender)]
            if dailyClaimed[address(msg.sender)] > -604801:
                revert with 'NH{q', 17
            dailyClaimed[address(msg.sender)] += 168 * 24 * 3600
        else:
            if 2 >= stor6.length:
                revert with 'NH{q', 50
            require ext_code.size(SUNAddress)
            call SUNAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, amountPerClaim[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if invested[address(msg.sender)] < amountPerClaim[address(msg.sender)]:
                revert with 'NH{q', 17
            invested[address(msg.sender)] -= amountPerClaim[address(msg.sender)]
            if address(stor6.field_512) != msg.sender:
                if dailyClaimed[address(msg.sender)] > -86401:
                    revert with 'NH{q', 17
                dailyClaimed[address(msg.sender)] += 24 * 3600
            else:
                if dailyClaimed[address(msg.sender)] > -604801:
                    revert with 'NH{q', 17
                dailyClaimed[address(msg.sender)] += 168 * 24 * 3600
}



}
