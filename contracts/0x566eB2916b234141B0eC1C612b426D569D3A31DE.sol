contract main {




// =====================  Runtime code  =====================


#
#  - emergencyTransfer(uint256 arg1)
#  - release()
#
const MAX_ALLOCATION = 7500000 * 10^18


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address sub_bacaba55Address;
uint8 isStarted; offset 160
address sub_6782b5a7Address;
uint256 start;
uint256 duration;
uint256 divider;
uint256 balance;
uint256 released;
uint256 tokenPrice;
uint256 minimumPurchase;
uint256 maximumPurchase;
uint256 tokensSold;
address multisigAddress;
address sub_3eac8dacAddress;
mapping of struct account;
mapping of uint256 sub_e4695d14;
mapping of uint8 stor116;
mapping of uint256 allocation;

function getAllocation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return allocation[address(arg1)]
}

function duration() payable {
    return duration
}

function getBalance() payable {
    return balance
}

function maximumPurchase() payable {
    return maximumPurchase
}

function divider() payable {
    return divider
}

function sub_3eac8dac(?) payable {
    return sub_3eac8dacAddress
}

function tokensSold() payable {
    return tokensSold
}

function isStarted() payable {
    return bool(isStarted)
}

function multisigAddress() payable {
    return multisigAddress
}

function sub_6782b5a7(?) payable {
    return sub_6782b5a7Address
}

function tokenPrice() payable {
    return tokenPrice
}

function owner() payable {
    return owner
}

function minimumPurchase() payable {
    return minimumPurchase
}

function sub_bacaba55(?) payable {
    return sub_bacaba55Address
}

function start() payable {
    return start
}

function sub_e4695d14(?) payable {
    require calldata.size - 4 >= 32
    return sub_e4695d14[arg1]
}

function getReleased() payable {
    return released
}

function getAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return account[address(arg1)].field_0, account[address(arg1)].field_256
}

function _fallback() payable {
    revert
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 1
}

function getTokenBalance() payable {
    if 7500000 * 10^18 < tokensSold:
        revert with 0, 17
    return (-tokensSold + 7500000 * 10^18)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTokenPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenPrice = arg1
}

function setMinimumPurchase(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minimumPurchase = arg1
}

function changeMultisig(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    multisigAddress = arg1
}

function changeTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bacaba55Address = arg1
}

function stopSales() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isStarted = 0
    if 7500000 * 10^18 < tokensSold:
        revert with 0, 17
    emit 0x6682e39a: (-tokensSold + 7500000 * 10^18)
}

function sub_ef16f6da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3eac8dacAddress = address(arg1)
    sub_6782b5a7Address = address(arg1)
}

function removeWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor116[address(arg1)] = 0
    allocation[address(arg1)] = 0
    emit WhitelistRemoved(arg1);
}

function addWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor116[address(arg1)]:
        revert with 0, 'User exists'
    stor116[address(arg1)] = 1
    allocation[address(arg1)] = maximumPurchase
    emit 0xfe0311b0: address(arg1), maximumPurchase
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

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        uint8(stor0.field_8) = 0
}

function setPeriod(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    start = arg1
    duration = arg2
    divider = arg3
    if not divider:
        revert with 0, 18
    idx = 0
    s = start
    while idx < divider:
        if s > !(duration / divider):
            revert with 0, 17
        mem[0] = idx
        mem[32] = 115
        sub_e4695d14[idx] = s + (duration / divider)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (duration / divider)
        continue 
    emit 0xbd834220: owner, arg1, arg2, arg3
}

function vestedAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if account[address(arg1)].field_0 > !account[address(arg1)].field_256:
        revert with 0, 17
    if arg2 < start:
        return 0
    if start > !duration:
        revert with 0, 17
    if arg2 > start + duration:
        return (account[address(arg1)].field_0 + account[address(arg1)].field_256)
    if arg2 < start:
        revert with 0, 17
    if account[address(arg1)].field_0 + account[address(arg1)].field_256 and arg2 - start > -1 / account[address(arg1)].field_0 + account[address(arg1)].field_256:
        revert with 0, 17
    if not duration:
        revert with 0, 18
    return ((arg2 * account[address(arg1)].field_0) - (start * account[address(arg1)].field_0) + (arg2 * account[address(arg1)].field_256) - (start * account[address(arg1)].field_256) / duration)
}

function startSales() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_3eac8dacAddress:
        revert with 0, 'Invalid USD token address'
    require ext_code.size(sub_bacaba55Address)
    staticcall sub_bacaba55Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Insufficent funds to start sales'
    isStarted = 1
    require ext_code.size(sub_bacaba55Address)
    staticcall sub_bacaba55Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xef2cb3ca: ext_call.return_data[0]
}

function batchAddWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length <= 0:
        revert with 0, 'Invalid inputs'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 116
        if not stor116[mem[(32 * idx) + 140 len 20]]:
            if idx >= mem[96]:
                revert with 0, 50
            stor116[mem[(32 * idx) + 140 len 20]] = 1
            if idx >= mem[96]:
                revert with 0, 50
            mem[32] = 117
            allocation[mem[(32 * idx) + 140 len 20]] = maximumPurchase
            mem[0] = mem[(32 * idx) + 140 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[ceil32(32 * arg1.length) + 97] = mem[(32 * idx) + 140 len 20]
            mem[ceil32(32 * arg1.length) + 129] = maximumPurchase
            emit 0xfe0311b0: mem[ceil32(32 * arg1.length) + 97], maximumPurchase
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function buyTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not isStarted:
        revert with 0, 'Private Sales was stopped'
    if not tokenPrice:
        revert with 0, 18
    if arg1 / tokenPrice and 10^18 > -1 / arg1 / tokenPrice:
        revert with 0, 17
    if arg1 < minimumPurchase:
        revert with 0, 'Minimum purchase required'
    mem[100] = this.address
    require ext_code.size(sub_bacaba55Address)
    staticcall sub_bacaba55Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18 * arg1 / tokenPrice:
        revert with 0, 'Insufficent CHRO allocation'
    if not stor116[msg.sender]:
        stor116[msg.sender] = 1
        allocation[msg.sender] = maximumPurchase
    if arg1 > allocation[msg.sender]:
        revert with 0, 'Max USD allocation exceeded'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(sub_6782b5a7Address)
    staticcall sub_6782b5a7Address.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Insufficent allowance'
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = multisigAddress
    mem[(2 * ceil32(return_data.size)) + 196] = arg1
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_6782b5a7Address):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, multisigAddress, arg1, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call sub_6782b5a7Address with:
       funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, multisigAddress, arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, multisigAddress, arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
            if not mem[(2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if account[address(msg.sender)].field_0 > !(10^18 * arg1 / tokenPrice):
        revert with 0, 17
    account[address(msg.sender)].field_0 += 10^18 * arg1 / tokenPrice
    if balance > !(10^18 * arg1 / tokenPrice):
        revert with 0, 17
    balance += 10^18 * arg1 / tokenPrice
    emit BalanceAdded(msg.sender, 10^18 * arg1 / tokenPrice);
    if tokensSold > !(10^18 * arg1 / tokenPrice):
        revert with 0, 17
    tokensSold += 10^18 * arg1 / tokenPrice
    if allocation[msg.sender] < arg1:
        revert with 0, 17
    allocation[msg.sender] -= arg1
    if 7500000 * 10^18 < tokensSold:
        revert with 0, 17
    emit 0xa5361dc3: msg.sender, 10^18 * arg1 / tokenPrice, arg1, -tokensSold + 7500000 * 10^18
}



}
