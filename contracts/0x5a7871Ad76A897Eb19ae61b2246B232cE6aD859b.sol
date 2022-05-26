contract main {




// =====================  Runtime code  =====================


#
#  - sub_43b66f10(?)
#
const MAX_PRESALE_PER_ACCOUNT = 4 * 10^11

const PRICE = 10^9

const MAX_SOLD = 2 * 10^14

const MIN_PRESALE_PER_ACCOUNT = 5 * 10^10


address owner;
uint256 sold;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint8 stor3; offset 176
uint8 stor3; offset 184
uint128 stor3; offset 184
uint128 stor3; offset 176
uint128 stor3; offset 168
uint128 stor3; offset 160
address sub_5e84412fAddress;
array of uint256 stor4;
mapping of uint256 invested;
mapping of uint256 dailyClaimed;
mapping of uint8 stor7;
mapping of uint256 amountPerClaim;

function sold() payable {
    return sold
}

function sub_21f6562c(?) payable {
    return bool(uint8(stor3.field_184))
}

function approvedBuyers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function sub_5e84412f(?) payable {
    return sub_5e84412fAddress
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

function dailyClaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return dailyClaimed[arg1]
}

function _fallback() payable {
    revert
}

function sub_95447ecc(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(72, 0, stor3.field_184) = 0
}

function activatePublicSale() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor3.field_168) = 1
}

function activatePrivateSale() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor3.field_176) = 1
}

function deactivatePublicSale() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor3.field_168) = 0
}

function deactivatePrivateSale() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor3.field_176) = 0
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

function setClaimingActive(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5e84412fAddress = arg1
    Mask(96, 0, stor3.field_160) = 1
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

function sub_d57a4e00(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > invested[address(arg1)]:
        revert with 0, 'removing too much'
    dailyClaimed[address(arg1)] = 0
    if invested[address(arg1)] < arg2:
        revert with 'NH{q', 17
    invested[address(arg1)] -= arg2
    if sold < arg2:
        revert with 'NH{q', 17
    sold -= arg2
}

function isFounder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= stor4.length:
        revert with 'NH{q', 50
    if arg1 != address(stor4.field_0):
        if 1 >= stor4.length:
            revert with 'NH{q', 50
        if arg1 != address(stor4.field_256):
            if 2 >= stor4.length:
                revert with 'NH{q', 50
            if arg1 != address(stor4.field_512):
                if 3 >= stor4.length:
                    revert with 'NH{q', 50
                if arg1 != address(stor4.field_768):
                    return 0
    return 1
}

function amountBuyable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor7[address(arg1)]:
        if not uint8(stor3.field_168):
            if 0 < invested[address(arg1)]:
                revert with 'NH{q', 17
            return -invested[address(arg1)]
    else:
        if not uint8(stor3.field_176):
            if not uint8(stor3.field_168):
                if 0 < invested[address(arg1)]:
                    revert with 'NH{q', 17
                return -invested[address(arg1)]
    if 4 * 10^11 < invested[address(arg1)]:
        revert with 'NH{q', 17
    return (-invested[address(arg1)] + 4 * 10^11)
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        args msg.sender, ext_call.return_data[0]
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

function sub_eec0c070(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sold >= 2 * 10^14:
        revert with 0, 'sold out'
    if sold > -arg2 - 1:
        revert with 'NH{q', 17
    if sold + arg2 >= 2 * 10^14:
        revert with 0, 'not enough remaining'
    if 4 * 10^11 < invested[address(arg1)]:
        revert with 'NH{q', 17
    if arg2 > -invested[address(arg1)] + 4 * 10^11:
        revert with 0, 'amount exceeds buyable amount'
    if arg2 > -invested[address(arg1)] - 1:
        revert with 'NH{q', 17
    if arg2 + invested[address(arg1)] < 5 * 10^10:
        revert with 0, 'amount is not sufficient'
    if not uint8(stor3.field_184):
        revert with 0, 'Period to add address over'
    if invested[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    invested[address(arg1)] += arg2
    if sold > -arg2 - 1:
        revert with 'NH{q', 17
    sold += arg2
}

function sub_132fb677(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor3.field_184):
        revert with 0, 'Period to add address over'
    if sold >= 2 * 10^14:
        revert with 0, 'sold out'
    idx = 0
    while ('cd', 4).length > idx:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if sold > -cd[((32 * idx) + cd[36] + 36)] - 1:
            revert with 'NH{q', 17
        if sold + cd[((32 * idx) + cd[36] + 36)] >= 2 * 10^14:
            revert with 0, 'not enough remaining'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if 4 * 10^11 < invested[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 'NH{q', 17
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[36] + 36)] > -invested[address(cd[((32 * idx) + cd[4] + 36)])] + 4 * 10^11:
            revert with 0, 'amount exceeds buyable amount'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[36] + 36)] > -invested[address(cd[((32 * idx) + cd[4] + 36)])] - 1:
            revert with 'NH{q', 17
        if cd[((32 * idx) + cd[36] + 36)] + invested[address(cd[((32 * idx) + cd[4] + 36)])] < 5 * 10^10:
            revert with 0, 'amount is not sufficient'
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        if invested[address(cd[((32 * idx) + cd[4] + 36)])] > -cd[((32 * idx) + cd[36] + 36)] - 1:
            revert with 'NH{q', 17
        invested[address(cd[((32 * idx) + cd[4] + 36)])] += cd[((32 * idx) + cd[36] + 36)]
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if sold > -cd[((32 * idx) + cd[36] + 36)] - 1:
            revert with 'NH{q', 17
        sold += cd[((32 * idx) + cd[36] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return ('cd', 4).length
}

function sub_fe258da1(?) payable {
    if tx.origin != msg.sender:
        revert with 0, '!EOA'
    if not uint8(stor3.field_160):
        revert with 0, 'Cannot claim now'
    if invested[address(msg.sender)] <= 0:
        revert with 0, 'no claim avalaible'
    if dailyClaimed[address(msg.sender)] >= block.timestamp:
        revert with 0, 'cannot claimed now'
    if not dailyClaimed[address(msg.sender)]:
        dailyClaimed[address(msg.sender)] = block.timestamp
        if 0 >= stor4.length:
            revert with 'NH{q', 50
        if msg.sender == address(stor4.field_0):
            if invested[address(msg.sender)] and 10 > -1 / invested[address(msg.sender)]:
                revert with 'NH{q', 17
            amountPerClaim[address(msg.sender)] = 10 * invested[address(msg.sender)] / 100
        else:
            if 1 >= stor4.length:
                revert with 'NH{q', 50
            if msg.sender == address(stor4.field_256):
                if invested[address(msg.sender)] and 10 > -1 / invested[address(msg.sender)]:
                    revert with 'NH{q', 17
                amountPerClaim[address(msg.sender)] = 10 * invested[address(msg.sender)] / 100
            else:
                if 2 >= stor4.length:
                    revert with 'NH{q', 50
                if msg.sender == address(stor4.field_512):
                    if invested[address(msg.sender)] and 10 > -1 / invested[address(msg.sender)]:
                        revert with 'NH{q', 17
                    amountPerClaim[address(msg.sender)] = 10 * invested[address(msg.sender)] / 100
                else:
                    if 3 >= stor4.length:
                        revert with 'NH{q', 50
                    if address(stor4.field_768) != msg.sender:
                        if invested[address(msg.sender)] and 20 > -1 / invested[address(msg.sender)]:
                            revert with 'NH{q', 17
                        amountPerClaim[address(msg.sender)] = 20 * invested[address(msg.sender)] / 100
                    else:
                        if invested[address(msg.sender)] and 10 > -1 / invested[address(msg.sender)]:
                            revert with 'NH{q', 17
                        amountPerClaim[address(msg.sender)] = 10 * invested[address(msg.sender)] / 100
    require ext_code.size(sub_5e84412fAddress)
    call sub_5e84412fAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, amountPerClaim[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if invested[address(msg.sender)] < amountPerClaim[address(msg.sender)]:
        revert with 'NH{q', 17
    invested[address(msg.sender)] -= amountPerClaim[address(msg.sender)]
    if dailyClaimed[address(msg.sender)] > -43201:
        revert with 'NH{q', 17
    dailyClaimed[address(msg.sender)] += 12 * 3600
}



}
