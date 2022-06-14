contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address sub_ba156886Address;
uint8 vestingEnabled; offset 160
uint32 stor3;
address recipientAddress;
uint256 stor3;
uint256 startingBalance;

function recipient() payable {
    return recipientAddress
}

function vestingEnabled() payable {
    return bool(vestingEnabled)
}

function owner() payable {
    return owner
}

function startingBalance() payable {
    return startingBalance
}

function sub_ba156886(?) payable {
    return sub_ba156886Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function setRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TreasuryVester::setRecipient: Recipient can't be the zero address'
    recipientAddress = arg1
    emit RecipientChanged(arg1);
}

function startVesting() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if vestingEnabled:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TreasuryVester::startVesting: vesting already started'
    require ext_code.size(sub_ba156886Address)
    staticcall sub_ba156886Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < startingBalance:
        revert with 0, 'TreasuryVester::startVesting: incorrect RADI supply'
    if not recipientAddress:
        revert with 0, 'TreasuryVester::startVesting: recipient not set'
    vestingEnabled = 1
    emit 0xf78a71da 
}

function claim() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not vestingEnabled:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TreasuryVester::claim: vesting not enabled'
    if recipientAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TreasuryVester::claim: only recipient can claim'
    mem[100] = this.address
    require ext_code.size(sub_ba156886Address)
    staticcall sub_ba156886Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = recipientAddress
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor3.field_0)
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_ba156886Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor3.field_0), uint32(stor3.field_0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_ba156886Address with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor3.field_0), uint32(stor3.field_0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor3.field_0), uint32(stor3.field_0), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
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
    emit 0x277d5afb: ext_call.return_data[0], recipientAddress
    stor1 = 1
    return ext_call.return_data[0]
}



}
