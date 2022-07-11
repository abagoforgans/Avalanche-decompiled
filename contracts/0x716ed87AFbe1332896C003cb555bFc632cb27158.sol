contract main {




// =====================  Runtime code  =====================


#
#  - release()
#
uint32 stor0;
address owner;
uint256 stor0;
uint64 start; offset 160
address sub_333ea99fAddress;
uint64 duration;
mapping of struct account;
uint256 balance;
uint256 released;
mapping of uint8 stor6;
mapping of uint256 allocation;
address sub_bacaba55Address;
address sub_6782b5a7Address;
uint256 tokenPrice;
uint256 minimumPurchase;
uint256 tokensSold;
uint8 stor13;
address stor13;
address multisigAddress; offset 8
address sub_3eac8dacAddress;

function getAllocation(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return allocation[address(arg1)]
}

function duration() {
    return duration
}

function getBalance() {
    return balance
}

function sub_333ea99f(?) {
    return sub_333ea99fAddress
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function sub_3eac8dac(?) {
    return sub_3eac8dacAddress
}

function tokensSold() {
    return tokensSold
}

function isStarted() {
    return bool(uint8(stor13.field_0))
}

function multisigAddress() {
    return multisigAddress
}

function sub_6782b5a7(?) {
    return sub_6782b5a7Address
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return address(owner)
}

function minimumPurchase() {
    return minimumPurchase
}

function sub_bacaba55(?) {
    return sub_bacaba55Address
}

function start() {
    return start
}

function getReleased() {
    return released
}

function getAccount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return account[address(arg1)].field_0, account[address(arg1)].field_256
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function changeMultisig(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    multisigAddress = arg1
}

function sub_ef16f6da(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3eac8dacAddress = address(arg1)
    sub_6782b5a7Address = address(arg1)
}

function removeWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
    allocation[address(arg1)] = 0
    emit WhitelistRemoved(arg1);
}

function addWhitelist(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
    allocation[address(arg1)] = arg2
    emit WhitelistAdded(address(arg1), arg2);
}

function sub_788f11bb(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint64(arg1)
    require arg2 == uint64(arg2)
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    start = uint64(arg1)
    duration = uint64(arg2)
    emit 0xe662a0b5: address(owner), arg1 << 192, uint64(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function getTokenBalance() {
    require ext_code.size(sub_bacaba55Address)
    staticcall sub_bacaba55Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < tokensSold:
        revert with 0, 17
    return (ext_call.return_data[0] - tokensSold)
}

function stopSales() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor13.field_0) = 0
    require ext_code.size(sub_bacaba55Address)
    staticcall sub_bacaba55Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < tokensSold:
        revert with 0, 17
    emit 0x7fd7a9a9: block.timestamp, ext_call.return_data[0] - tokensSold
}

function vestedAmount(address arg1, uint64 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if account[address(arg1)].field_0 > !account[address(arg1)].field_256:
        revert with 0, 17
    if arg2 < start:
        return 0
    if start > -duration + test266151307():
        revert with 0, 17
    if arg2 > uint64(duration + start):
        return (account[address(arg1)].field_0 + account[address(arg1)].field_256)
    if account[address(arg1)].field_0 + account[address(arg1)].field_256 and start > -1 / account[address(arg1)].field_0 + account[address(arg1)].field_256:
        revert with 0, 17
    if not duration:
        revert with 0, 18
    return ((account[address(arg1)].field_0 * start) + (account[address(arg1)].field_256 * start) / duration)
}

function startSales() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_3eac8dacAddress:
        revert with 0, 'Invalid USD token address'
    require ext_code.size(sub_bacaba55Address)
    staticcall sub_bacaba55Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Insufficent funds to start sales'
    uint8(stor13.field_0) = 1
    require ext_code.size(sub_bacaba55Address)
    staticcall sub_bacaba55Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xf2f595b2: block.timestamp, ext_call.return_data[0]
}

function emergencyTransfer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(sub_bacaba55Address)
    staticcall sub_bacaba55Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < tokensSold:
        revert with 0, 17
    if ext_call.return_data[0] - tokensSold < arg1:
        revert with 0, 'Insufficent balance'
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = arg1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_bacaba55Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_bacaba55Address with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg1, 0) << 288)
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
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x63989396: address(owner), arg1
}

function buyTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor13.field_0):
        revert with 0, 'Private Sales was stopped'
    if not tokenPrice:
        revert with 0, 18
    if not stor6[msg.sender]:
        revert with 0, 'Not whitelisted'
    mem[100] = this.address
    require ext_code.size(sub_bacaba55Address)
    staticcall sub_bacaba55Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1 / tokenPrice:
        revert with 0, 'Insufficent funds'
    if arg1 < allocation[msg.sender]:
        revert with 0, 'Insufficent USD allocation'
    if arg1 < minimumPurchase:
        revert with 0, 'Minimum purchase required'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(sub_6782b5a7Address)
    staticcall sub_6782b5a7Address.0xdd62ed3e with:
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
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_6782b5a7Address):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(stor13.field_0), arg1, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call sub_6782b5a7Address with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(stor13.field_0), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(stor13.field_0), arg1, 0) << 544)
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
    if account[address(msg.sender)].field_0 > !(arg1 / tokenPrice):
        revert with 0, 17
    account[address(msg.sender)].field_0 += arg1 / tokenPrice
    if balance > !(arg1 / tokenPrice):
        revert with 0, 17
    balance += arg1 / tokenPrice
    emit BalanceAdded(msg.sender, arg1 / tokenPrice);
    if tokensSold > !(arg1 / tokenPrice):
        revert with 0, 17
    tokensSold += arg1 / tokenPrice
    require ext_code.size(sub_bacaba55Address)
    staticcall sub_bacaba55Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < tokensSold:
        revert with 0, 17
    emit 0xa5361dc3: msg.sender, arg1 / tokenPrice, arg1, ext_call.return_data[0] - tokensSold
}

function approve(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[100] = msg.sender
    require ext_code.size(sub_6782b5a7Address)
    staticcall sub_6782b5a7Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Insufficent USD'
    if not arg1:
        mem[ceil32(return_data.size) + 132] = this.address
        mem[ceil32(return_data.size) + 164] = arg1
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(this.address) << 64
        mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_6782b5a7Address):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, arg1, 0
        mem[ceil32(return_data.size) + 328] = 0
        call sub_6782b5a7Address with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(this.address) << 64, 0, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(this.address) << 64, 0, arg1, 0) << 288)
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
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = this.address
        require ext_code.size(sub_6782b5a7Address)
        staticcall sub_6782b5a7Address.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        mem[(2 * ceil32(return_data.size)) + 164] = arg1
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(this.address) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_6782b5a7Address):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, arg1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call sub_6782b5a7Address with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(this.address) << 64, 0, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(this.address) << 64, 0, arg1, 0) << 288)
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
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
