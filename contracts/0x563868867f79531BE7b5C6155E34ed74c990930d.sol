contract main {




// =====================  Runtime code  =====================


uint8 purchaseOpen; offset 160
uint8 claimOpen; offset 168
uint32 stor0;
address owner;
uint256 stor0;
uint256 maxPurchaseAmount;
uint256 nFTDPrice;
uint256 roundAmount;
uint256 totalPurchases;
mapping of struct amountPurchased;
mapping of uint8 stor6;
address stor7;
address stor8;

function amountPurchased(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return amountPurchased[address(arg1)].field_0
}

function purchaseOpen() payable {
    return bool(purchaseOpen)
}

function NFTDPrice() payable {
    return nFTDPrice
}

function claimOpen() payable {
    return bool(claimOpen)
}

function totalPurchases() payable {
    return totalPurchases
}

function purchases(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return amountPurchased[arg1].field_0, bool(amountPurchased[arg1].field_256)
}

function owner() payable {
    return owner
}

function roundAmount() payable {
    return roundAmount
}

function eligibilityOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(amountPurchased[address(arg1)].field_256)
}

function maxPurchaseAmount() payable {
    return maxPurchaseAmount
}

function _fallback() payable {
    revert
}

function openClaim() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    claimOpen = 1
}

function closeClaim() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    claimOpen = 0
}

function openPurchase() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    purchaseOpen = 1
}

function closePurchase() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    purchaseOpen = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function NFTDBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if amountPurchased[address(arg1)].field_0 and 10^18 > -1 / amountPurchased[address(arg1)].field_0:
        revert with 0, 17
    if not nFTDPrice:
        revert with 0, 18
    return (10^18 * amountPurchased[address(arg1)].field_0 / nFTDPrice)
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

function claim() payable {
    if not claimOpen:
        revert with 0, 'Claim is close'
    if not stor6[msg.sender]:
        revert with 0, 'Address is not whitelisted'
    if amountPurchased[msg.sender].field_256:
        revert with 0, 'User already claimed'
    if amountPurchased[msg.sender].field_0 and 10^18 > -1 / amountPurchased[msg.sender].field_0:
        revert with 0, 17
    if not nFTDPrice:
        revert with 0, 18
    amountPurchased[msg.sender].field_256 = 1
    require ext_code.size(stor7)
    call stor7.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, 10^18 * amountPurchased[msg.sender].field_0 / nFTDPrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function whitelistAddresses(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
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
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function purchase(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not purchaseOpen:
        revert with 0, 'Purchase is close'
    if not stor6[msg.sender]:
        revert with 0, 'Address is not whitelisted'
    if amountPurchased[msg.sender].field_0 > !arg1:
        revert with 0, 17
    if amountPurchased[msg.sender].field_0 + arg1 > maxPurchaseAmount:
        revert with 0, 'More than max purchase per user'
    if totalPurchases > !arg1:
        revert with 0, 17
    if totalPurchases + arg1 > roundAmount:
        revert with 0, 'More than round amount'
    if amountPurchased[msg.sender].field_256:
        revert with 0, 'User already claimed'
    if amountPurchased[msg.sender].field_0 > !arg1:
        revert with 0, 17
    amountPurchased[msg.sender].field_0 += arg1
    if totalPurchases > !arg1:
        revert with 0, 17
    totalPurchases += arg1
    require ext_code.size(stor8)
    call stor8.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function emergencyAssetWithdrawal(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = owner
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0.field_0)
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0], 0) << 288)
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
}



}
