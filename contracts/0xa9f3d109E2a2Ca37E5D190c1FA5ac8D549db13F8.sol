contract main {




// =====================  Runtime code  =====================


#
#  - buyTempo(uint256 arg1)
#
const DAY_LIMIT = 10^12

const MAX_PRESALE_PER_ACCOUNT = 25 * 10^10

const PRICE = 4 * 10^9

const MAX_SOLD = 75 * 10^12

const MIN_PRESALE_PER_ACCOUNT = 10^9


address owner;
address owners;
uint256 sold;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 168
uint128 stor4; offset 160
address tempoAddress;
mapping of uint256 invested;
mapping of uint256 dailyClaimed;
mapping of uint8 stor7;

function sold() payable {
    return sold
}

function approvedBuyers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function Tempo() payable {
    return tempoAddress
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

function activatePrivateSale() payable {
    if owners != msg.sender:
        revert with 0, '!owners'
    Mask(88, 0, stor4.field_168) = 1
}

function deactivatePrivateSale() payable {
    if owners != msg.sender:
        revert with 0, '!owners'
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
    if owners != msg.sender:
        revert with 0, '!owners'
    tempoAddress = arg1
    Mask(96, 0, stor4.field_160) = 1
}

function claimNow(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    dailyClaimed[address(arg1)] = block.timestamp
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
    if not uint8(stor4.field_168):
        revert with 0, 'Private Sale haven't start'
    if not stor7[address(arg1)]:
        revert with 0, 'You are not on the WhiteList'
    if 25 * 10^10 < invested[address(arg1)]:
        revert with 'NH{q', 17
    return (-invested[address(arg1)] + 25 * 10^10)
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owners != msg.sender:
        revert with 0, '!owners'
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
        stor7[address(cd[((32 * idx) + arg1 + 36)])] = 1
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 7
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return arg1.length
}

function claimTempo() payable {
    if tx.origin != msg.sender:
        revert with 0, '!EOA'
    if bool(uint8(stor4.field_160)) != 1:
        revert with 0, 'Claim not start for now'
    if invested[address(msg.sender)] <= 0:
        revert with 0, 'No claim avalaible'
    if dailyClaimed[address(msg.sender)] >= block.timestamp:
        revert with 0, 'Cannot claimed now'
    require ext_code.size(tempoAddress)
    if invested[address(msg.sender)] >= 10^12:
        call tempoAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 10^12
    else:
        call tempoAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, invested[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if dailyClaimed[address(msg.sender)] > -86401:
        revert with 'NH{q', 17
    dailyClaimed[address(msg.sender)] += 24 * 3600
}



}
