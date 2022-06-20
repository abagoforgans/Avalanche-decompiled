contract main {




// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1)
#
const MAX_PRESALE_PER_ACCOUNT = 800000000 * 10^18

const PRICE = 0

const MAX_SOLD = 20000000000 * 10^18

const MIN_PRESALE_PER_ACCOUNT = 40000000 * 10^18


address owner;
uint256 sold;
uint8 stor3; offset 160
uint8 stor3; offset 168
address tokenAddress;
mapping of struct invested;
mapping of uint256 sub_2942f7f7;
mapping of uint256 dailyClaimed;
mapping of uint8 stor7;

function sold() payable {
    return sold
}

function sub_2942f7f7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2942f7f7[arg1]
}

function approvedBuyers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function invested(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return invested[arg1].field_0
}

function owner() payable {
    return owner
}

function dailyClaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return dailyClaimed[arg1]
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function activateSale() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor3.field_168) = 1
}

function sub_2a2a474e(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor3.field_160) = 0
}

function deactivateSale() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor3.field_168) = 0
}

function activateClaiming() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor3.field_160) = 1
}

function setSold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sold = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function approveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 1
}

function deapproveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 0
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
        if 0 < invested[address(arg1)].field_0:
            revert with 0, 17
        return -invested[address(arg1)].field_0
    if 800000000 * 10^18 < invested[address(arg1)].field_0:
        revert with 0, 17
    return (-invested[address(arg1)].field_0 + 800000000 * 10^18)
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
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
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
        mem[32] = 7
        stor7[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function claim() payable {
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    if not uint8(stor3.field_160):
        revert with 0, 'Cannot claim now'
    if not tokenAddress:
        revert with 0, 'Token not set'
    if not sub_2942f7f7[msg.sender]:
        revert with 0, 'No claim available'
    if block.timestamp <= dailyClaimed[msg.sender]:
        revert with 0, 'Cannot claimed now'
    if not dailyClaimed[msg.sender]:
        dailyClaimed[msg.sender] = block.timestamp
    if invested[msg.sender].field_1 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
        revert with 0, 17
    require ext_code.size(tokenAddress)
    if 20 * invested[msg.sender].field_1 / 100 <= sub_2942f7f7[msg.sender]:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 20 * invested[msg.sender].field_1 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sub_2942f7f7[msg.sender] < 20 * invested[msg.sender].field_1 / 100:
            revert with 0, 17
        sub_2942f7f7[msg.sender] -= 20 * invested[msg.sender].field_1 / 100
    else:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_2942f7f7[msg.sender]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sub_2942f7f7[msg.sender] < sub_2942f7f7[msg.sender]:
            revert with 0, 17
        sub_2942f7f7[msg.sender] = 0
    if dailyClaimed[msg.sender] > -301:
        revert with 0, 17
    dailyClaimed[msg.sender] += 300
}



}
