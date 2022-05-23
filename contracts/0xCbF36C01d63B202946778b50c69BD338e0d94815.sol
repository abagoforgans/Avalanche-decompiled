contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address sub_19f0c30dAddress; offset 8
address MIMAddress;
address sub_9022ed6aAddress;
address sub_95121e91Address;
address stakingAddress;
uint256 totalAmount;
uint256 salePrice;
uint256 openPrice;
uint256 totalWhiteListed;
uint256 startOfSale;
uint256 endOfSale;
bool stor18; offset 256
uint8 initialized;
uint8 whiteListEnabled; offset 8
uint8 cancelled; offset 16
uint8 finalized; offset 24
mapping of uint8 stor19;
mapping of uint8 stor20;
mapping of uint256 purchasedAmounts;

function name() payable {
    return name[0 len name.length]
}

function initialized() payable {
    return bool(initialized)
}

function totalSupply() payable {
    return totalSupply
}

function sub_19f0c30d(?) payable {
    return sub_19f0c30dAddress
}

function totalAmount() payable {
    return totalAmount
}

function openPrice() payable {
    return openPrice
}

function decimals() payable {
    return decimals
}

function staking() payable {
    return stakingAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function endOfSale() payable {
    return endOfSale
}

function owner() payable {
    return owner
}

function sub_9022ed6a(?) payable {
    return sub_9022ed6aAddress
}

function sub_95121e91(?) payable {
    return sub_95121e91Address
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function cancelled() payable {
    return bool(cancelled)
}

function startOfSale() payable {
    return startOfSale
}

function totalWhiteListed() payable {
    return totalWhiteListed
}

function finalized() payable {
    return bool(finalized)
}

function MIM() payable {
    return MIMAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function whiteListEnabled() payable {
    return bool(whiteListEnabled)
}

function sub_f5147369(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor19[arg1])
}

function salePrice() payable {
    return salePrice
}

function whiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor20[arg1])
}

function purchasedAmounts(address arg1) payable {
    require calldata.size - 4 >= 32
    return purchasedAmounts[arg1]
}

function _fallback() payable {
    revert
}

function saleStarted() payable {
    if not initialized:
        return bool(initialized)
    return startOfSale <= block.timestamp
}

function disableWhiteList() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    whiteListEnabled = 0
}

function cancel() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    cancelled = 1
    startOfSale = 99999999999
}

function getAllotmentPerBuyer() payable {
    if whiteListEnabled:
        return 40
    if 2 * 10^11 < totalAmount:
        return 2 * 10^11
    return totalAmount
}

function renounceManagement() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipPushed(owner, 0);
    owner = 0
}

function pullManagement() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x654f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(owner, stor1);
    owner = stor1
}

function withdraw() payable {
    if not cancelled:
        revert with 0, 'ido is not cancelled'
    require ext_code.size(MIMAddress)
    call MIMAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, purchasedAmounts[msg.sender] / 10^9 * salePrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function calculateSaleQuote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 10^9 * arg1 / 10^9 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not salePrice:
        revert with 0, 'SafeMath: division by zero'
    return (10^9 * arg1 / salePrice)
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(owner, arg1);
    stor1 = arg1
}

function initialize(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if initialized:
        revert with 0, 'Already initialized'
    initialized = 1
    whiteListEnabled = 1
    stor18 = 0
    totalAmount = arg1
    salePrice = arg2
    startOfSale = arg4
    if arg3 + arg4 < arg4:
        revert with 0, 'SafeMath: addition overflow'
    endOfSale = arg3 + arg4
    return 1
}

function finalize(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if totalAmount:
        revert with 0, 'need all NEKOs to be sold'
    require ext_code.size(MIMAddress)
    call MIMAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), 10^18 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    finalized = 1
}

function claim(address arg1) payable {
    require calldata.size - 4 >= 32
    if not finalized:
        revert with 0, 'only can claim after finalized'
    if not purchasedAmounts[address(arg1)]:
        revert with 0, 'not purchased'
    require ext_code.size(stakingAddress)
    call stakingAddress.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args purchasedAmounts[address(arg1)], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    purchasedAmounts[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function whiteListBuyers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1.length + totalWhiteListed < totalWhiteListed:
        revert with 0, 'SafeMath: addition overflow'
    totalWhiteListed += arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 20
        stor20[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function sub_40cd95c5(?) payable {
    require calldata.size - 4 >= 32
    if initialized:
        if startOfSale <= block.timestamp != 1:
            revert with 0, 'Not started'
        if not whiteListEnabled:
            if 10^9 * arg1 / 10^9 != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not salePrice:
                revert with 0, 'SafeMath: division by zero'
            if whiteListEnabled:
                if 10^9 * arg1 / salePrice > 40:
                    revert with 0, 'More than alloted'
                if 10^9 * arg1 / salePrice > totalAmount:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if 2 * 10^11 >= totalAmount:
                    if 10^9 * arg1 / salePrice > totalAmount:
                        revert with 0, 'More than alloted'
                else:
                    if 10^9 * arg1 / salePrice > 2 * 10^11:
                        revert with 0, 'More than alloted'
                    if 10^9 * arg1 / salePrice > totalAmount:
                        revert with 0, 'SafeMath: subtraction overflow'
            ('le', ('div', ('mul', 1000000000, ('param', 'arg1')), ('stor', ('name', 'salePrice', 13))), ('stor', ('name', 'totalAmount', 12)))
            totalAmount -= 10^9 * arg1 / salePrice
            purchasedAmounts[msg.sender] = 10^9 * arg1 / salePrice
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
            if not ext_code.size(MIMAddress):
                revert with 0, 'Address: call to non-contract'
            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[544 len 4] = 0
        else:
            if bool(stor20[msg.sender]) != 1:
                revert with 0, 'Not whitelisted'
            if 10^9 * arg1 / 10^9 != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not salePrice:
                revert with 0, 'SafeMath: division by zero'
            if not whiteListEnabled:
                if 2 * 10^11 >= totalAmount:
                    if 10^9 * arg1 / salePrice > totalAmount:
                        revert with 0, 'More than alloted'
                else:
                    if 10^9 * arg1 / salePrice > 2 * 10^11:
                        revert with 0, 'More than alloted'
                    if 10^9 * arg1 / salePrice > totalAmount:
                        revert with 0, 'SafeMath: subtraction overflow'
                ('le', ('div', ('mul', 1000000000, ('param', 'arg1')), ('stor', ('name', 'salePrice', 13))), ('stor', ('name', 'totalAmount', 12)))
                totalAmount -= 10^9 * arg1 / salePrice
                purchasedAmounts[msg.sender] = 10^9 * arg1 / salePrice
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                if not ext_code.size(MIMAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[544 len 4] = 0
            else:
                if 10^9 * arg1 / salePrice > 40:
                    revert with 0, 'More than alloted'
                if 10^9 * arg1 / salePrice > totalAmount:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalAmount -= 10^9 * arg1 / salePrice
                purchasedAmounts[msg.sender] = 10^9 * arg1 / salePrice
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                if not ext_code.size(MIMAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[544 len 4] = 0
                mem[516 len 0] = 0
    else:
        if bool(initialized) != 1:
            revert with 0, 'Not started'
        if not whiteListEnabled:
            if 10^9 * arg1 / 10^9 != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not salePrice:
                revert with 0, 'SafeMath: division by zero'
            if whiteListEnabled:
                if 10^9 * arg1 / salePrice > 40:
                    revert with 0, 'More than alloted'
                if 10^9 * arg1 / salePrice > totalAmount:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if 2 * 10^11 >= totalAmount:
                    if 10^9 * arg1 / salePrice > totalAmount:
                        revert with 0, 'More than alloted'
                else:
                    if 10^9 * arg1 / salePrice > 2 * 10^11:
                        revert with 0, 'More than alloted'
                    if 10^9 * arg1 / salePrice > totalAmount:
                        revert with 0, 'SafeMath: subtraction overflow'
            ('le', ('div', ('mul', 1000000000, ('param', 'arg1')), ('stor', ('name', 'salePrice', 13))), ('stor', ('name', 'totalAmount', 12)))
            totalAmount -= 10^9 * arg1 / salePrice
            purchasedAmounts[msg.sender] = 10^9 * arg1 / salePrice
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
            if not ext_code.size(MIMAddress):
                revert with 0, 'Address: call to non-contract'
            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[544 len 4] = 0
        else:
            if bool(stor20[msg.sender]) != 1:
                revert with 0, 'Not whitelisted'
            if 10^9 * arg1 / 10^9 != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not salePrice:
                revert with 0, 'SafeMath: division by zero'
            if whiteListEnabled:
                if 10^9 * arg1 / salePrice > 40:
                    revert with 0, 'More than alloted'
                if 10^9 * arg1 / salePrice > totalAmount:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalAmount -= 10^9 * arg1 / salePrice
                purchasedAmounts[msg.sender] = 10^9 * arg1 / salePrice
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                if not ext_code.size(MIMAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[544 len 4] = 0
            else:
                if 2 * 10^11 >= totalAmount:
                    if 10^9 * arg1 / salePrice > totalAmount:
                        revert with 0, 'More than alloted'
                    totalAmount -= 10^9 * arg1 / salePrice
                    purchasedAmounts[msg.sender] = 10^9 * arg1 / salePrice
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                    if not ext_code.size(MIMAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[544 len 4] = 0
                else:
                    if 10^9 * arg1 / salePrice > 2 * 10^11:
                        revert with 0, 'More than alloted'
                    if 10^9 * arg1 / salePrice > totalAmount:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalAmount -= 10^9 * arg1 / salePrice
                    purchasedAmounts[msg.sender] = 10^9 * arg1 / salePrice
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                    if not ext_code.size(MIMAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[544 len 4] = 0
                    mem[516 len 0] = 0
    call MIMAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[516 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[452]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 531 len 22]
    return 1
}



}
