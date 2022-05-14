contract main {




// =====================  Runtime code  =====================


#
#  - sub_c5c5b445(?)
#
const MAX_PRESALE_PER_ACCOUNT = 25 * 10^10

const PRICE = 4 * 10^9

const MAX_SOLD = 11 * 10^13

const MIN_PRESALE_PER_ACCOUNT = 25 * 10^9


address owner;
address owners;
uint256 sold;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint8 stor4; offset 176
uint128 stor4; offset 176
uint128 stor4; offset 168
uint128 stor4; offset 160
address sub_3ac2d4feAddress;
array of uint256 stor5;
mapping of uint256 invested;
mapping of uint256 dailyClaimed;
mapping of uint8 stor8;
mapping of uint256 amountPerClaim;

function sold() payable {
    return sold
}

function sub_3ac2d4fe(?) payable {
    return sub_3ac2d4feAddress
}

function approvedBuyers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
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
    Mask(88, 0, stor4.field_168) = 1
}

function activatePrivateSale() payable {
    if owners != msg.sender:
        revert with 0, 'not owners'
    Mask(80, 0, stor4.field_176) = 1
}

function deactivatePublicSale() payable {
    if owners != msg.sender:
        revert with 0, 'not owners'
    Mask(88, 0, stor4.field_168) = 0
}

function deactivatePrivateSale() payable {
    if owners != msg.sender:
        revert with 0, 'not owners'
    Mask(80, 0, stor4.field_176) = 0
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
    sub_3ac2d4feAddress = arg1
    Mask(96, 0, stor4.field_160) = 1
}

function approveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 1
    return bool(stor8[address(arg1)])
}

function deapproveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 0
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

function isDev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= stor5.length:
        revert with 'NH{q', 50
    if arg1 != address(stor5.field_0):
        if 1 >= stor5.length:
            revert with 'NH{q', 50
        if arg1 != address(stor5.field_256):
            if 2 >= stor5.length:
                revert with 'NH{q', 50
            if arg1 != address(stor5.field_512):
                return 0
    return 1
}

function amountBuyable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor8[address(arg1)]:
        if not uint8(stor4.field_168):
            if 0 < invested[address(arg1)]:
                revert with 'NH{q', 17
            return -invested[address(arg1)]
    else:
        if not uint8(stor4.field_176):
            if not uint8(stor4.field_168):
                if 0 < invested[address(arg1)]:
                    revert with 'NH{q', 17
                return -invested[address(arg1)]
    if 25 * 10^10 < invested[address(arg1)]:
        revert with 'NH{q', 17
    return (-invested[address(arg1)] + 25 * 10^10)
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
        stor8[address(cd[((32 * idx) + arg1 + 36)])] = 1
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 8
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return arg1.length
}

function sub_adbed249(?) payable {
    if tx.origin != msg.sender:
        revert with 0, '!EOA'
    if not uint8(stor4.field_160):
        revert with 0, 'Cannot claim now'
    if invested[address(msg.sender)] <= 0:
        revert with 0, 'no claim avalaible'
    if dailyClaimed[address(msg.sender)] >= block.timestamp:
        revert with 0, 'cannot claimed now'
    if not dailyClaimed[address(msg.sender)]:
        dailyClaimed[address(msg.sender)] = block.timestamp
        if 0 >= stor5.length:
            revert with 'NH{q', 50
        if address(stor5.field_0) != msg.sender:
            if 1 >= stor5.length:
                revert with 'NH{q', 50
            if address(stor5.field_256) != msg.sender:
                if 2 >= stor5.length:
                    revert with 'NH{q', 50
        if invested[address(msg.sender)] and 25 > -1 / invested[address(msg.sender)]:
            revert with 'NH{q', 17
        amountPerClaim[address(msg.sender)] = 25 * invested[address(msg.sender)] / 100
    if 0 >= stor5.length:
        revert with 'NH{q', 50
    if msg.sender == address(stor5.field_0):
        require ext_code.size(sub_3ac2d4feAddress)
        call sub_3ac2d4feAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, amountPerClaim[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if invested[address(msg.sender)] < amountPerClaim[address(msg.sender)]:
            revert with 'NH{q', 17
        invested[address(msg.sender)] -= amountPerClaim[address(msg.sender)]
        if dailyClaimed[address(msg.sender)] > -2592001:
            revert with 'NH{q', 17
        dailyClaimed[address(msg.sender)] += 720 * 24 * 3600
    else:
        if 1 >= stor5.length:
            revert with 'NH{q', 50
        if msg.sender == address(stor5.field_256):
            require ext_code.size(sub_3ac2d4feAddress)
            call sub_3ac2d4feAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, amountPerClaim[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if invested[address(msg.sender)] < amountPerClaim[address(msg.sender)]:
                revert with 'NH{q', 17
            invested[address(msg.sender)] -= amountPerClaim[address(msg.sender)]
            if dailyClaimed[address(msg.sender)] > -2592001:
                revert with 'NH{q', 17
            dailyClaimed[address(msg.sender)] += 720 * 24 * 3600
        else:
            if 2 >= stor5.length:
                revert with 'NH{q', 50
            require ext_code.size(sub_3ac2d4feAddress)
            call sub_3ac2d4feAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, amountPerClaim[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if invested[address(msg.sender)] < amountPerClaim[address(msg.sender)]:
                revert with 'NH{q', 17
            invested[address(msg.sender)] -= amountPerClaim[address(msg.sender)]
            if address(stor5.field_512) != msg.sender:
                if dailyClaimed[address(msg.sender)] > -86401:
                    revert with 'NH{q', 17
                dailyClaimed[address(msg.sender)] += 24 * 3600
            else:
                if dailyClaimed[address(msg.sender)] > -2592001:
                    revert with 'NH{q', 17
                dailyClaimed[address(msg.sender)] += 720 * 24 * 3600
}



}
