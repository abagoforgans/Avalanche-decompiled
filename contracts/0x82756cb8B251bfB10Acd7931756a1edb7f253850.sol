contract main {




// =====================  Runtime code  =====================


const MAX_PRESALE_PER_ACCOUNT = 10^11

const PRICE = 5 * 10^9

const MAX_SOLD = 7 * 10^13

const MIN_PRESALE_PER_ACCOUNT = 5 * 10^10

const OLD_CONTRACT_ADDRESS = 0xaaf9a29c6beaa9e3e4715c4698be8830226454fa


address owner;
address devAddress;
address stor2;
address stor3;
uint256 sold;
uint8 stor5; offset 160
uint8 stor5; offset 168
address FORTAddress;
mapping of uint256 invested;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;

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

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function FORT() payable {
    return FORTAddress
}

function blacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function _fallback() payable {
    revert
}

function activatePrivateSale() payable {
    if devAddress != msg.sender:
        revert with 0, '!dev'
    uint8(stor5.field_168) = 1
}

function deactivatePrivateSale() payable {
    if devAddress != msg.sender:
        revert with 0, '!dev'
    uint8(stor5.field_168) = 0
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

function setClaimingActive(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, '!dev'
    FORTAddress = arg1
    uint8(stor5.field_160) = 1
}

function approveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 1
    return 1
}

function deapproveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 0
    return 0
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
    if not stor8[address(arg1)]:
        if 0 < invested[address(arg1)]:
            revert with 0, 17
        return -invested[address(arg1)]
    if not uint8(stor5.field_168):
        if 0 < invested[address(arg1)]:
            revert with 0, 17
        return -invested[address(arg1)]
    if 10^11 < invested[address(arg1)]:
        revert with 0, 17
    return (-invested[address(arg1)] + 10^11)
}

function blacklistBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor9[address(arg1)]:
        require ext_code.size(stor3)
        staticcall stor3.0x66b3f6bf with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sold < ext_call.return_data[0]:
            revert with 0, 17
        sold -= ext_call.return_data[0]
    stor9[address(arg1)] = 1
    return 1
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
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 8
        stor8[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return arg1.length
}

function blacklistBuyers(address[] arg1) payable {
    mem[64] = 96
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
        mem[32] = 9
        if not stor9[address(cd[((32 * idx) + arg1 + 36)])]:
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(stor3)
            staticcall stor3.0x66b3f6bf with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if sold < mem[_22]:
                revert with 0, 17
            sold -= mem[_22]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 9
        stor9[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return arg1.length
}

function claimFORT() payable {
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    if not uint8(stor5.field_160):
        revert with 0, 'cannot claim yet'
    if stor7[msg.sender]:
        revert with 0, 'already claimed'
    if stor9[msg.sender]:
        revert with 0, 'blacklisted'
    if invested[msg.sender]:
        require ext_code.size(FORTAddress)
        call FORTAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, invested[msg.sender]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        require ext_code.size(stor3)
        staticcall stor3.0x66b3f6bf with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(stor3)
            staticcall stor3.0x66b3f6bf with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(FORTAddress)
            call FORTAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor7[msg.sender] = 1
}

function buyFORT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    if sold >= 7 * 10^13:
        revert with 0, 'sold out'
    if sold > !arg1:
        revert with 0, 17
    if sold + arg1 >= 7 * 10^13:
        revert with 0, 'not enough remaining'
    if not stor8[address(msg.sender)]:
        if 0 < invested[address(msg.sender)]:
            revert with 0, 17
        if arg1 > -invested[address(msg.sender)]:
            revert with 0, 'amount exceeds buyable amount'
    else:
        if not uint8(stor5.field_168):
            if 0 < invested[address(msg.sender)]:
                revert with 0, 17
            if arg1 > -invested[address(msg.sender)]:
                revert with 0, 'amount exceeds buyable amount'
        else:
            if 10^11 < invested[address(msg.sender)]:
                revert with 0, 17
            if arg1 > -invested[address(msg.sender)] + 10^11:
                revert with 0, 'amount exceeds buyable amount'
    if arg1 > !invested[msg.sender]:
        revert with 0, 17
    if arg1 + invested[msg.sender] < 5 * 10^10:
        revert with 0, 'amount is not sufficient'
    mem[100] = msg.sender
    require ext_code.size(stor3)
    staticcall stor3.0x66b3f6bf with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'investor in previous LBE'
    if arg1 and 5 * 10^9 > -1 / arg1:
        revert with 0, 17
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = 5 * 10^9 * arg1
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stor2):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 5 * 10^9 * arg1, 0
    mem[ceil32(return_data.size) + 392] = 0
    call stor2 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), 5 * 10^9 * arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), 5 * 10^9 * arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if invested[msg.sender] > !arg1:
        revert with 0, 17
    invested[msg.sender] += arg1
    if sold > !arg1:
        revert with 0, 17
    sold += arg1
}



}
