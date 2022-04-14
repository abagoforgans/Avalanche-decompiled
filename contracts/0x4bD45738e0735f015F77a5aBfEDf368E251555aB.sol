contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 salePrice;
uint256 stor3; offset 32
uint256 cap;
big736 stor3;
address tokenAddress;
uint256 tokensSold;
uint256 tokenSaleDuration;
uint256 startTime;
uint256 tokenListingTime;
uint8 stor9;
uint8 stor9; offset 168
uint8 stor9; offset 176
uint32 stor9;
uint128 stor9; offset 176
uint128 stor9; offset 168
address stor9;
address walletAddress; offset 8
uint256 stor9;
mapping of struct balanceOf;
mapping of uint256 tokensPurchased;
mapping of uint256 stor12;
uint256 maxBuyAmount;

function personalAllocation() payable {
    return bool(uint8(stor9.field_176))
}

function initialized() payable {
    return bool(uint8(stor9.field_168))
}

function tokensPurchased(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokensPurchased[address(arg1)]
}

function cap() payable {
    return cap
}

function tokensSold() payable {
    return tokensSold
}

function wallet() payable {
    return walletAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)].field_0
}

function tokenListingTime() payable {
    return tokenListingTime
}

function startTime() payable {
    return startTime
}

function maxBuyAmount() payable {
    return maxBuyAmount
}

function owner() payable {
    return owner
}

function released() payable {
    return bool(uint8(stor9.field_0))
}

function tokenSaleDuration() payable {
    return tokenSaleDuration
}

function salePrice() payable {
    return salePrice
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function tokenSaleEndTime() payable {
    return (startTime + tokenSaleDuration)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function enablePersonalAllocation(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor9.field_176) = Mask(80, 0, arg1)
}

function release() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < startTime + tokenSaleDuration:
        revert with 0, 'Sale: not ended'
    uint8(stor9.field_0) = 1
    emit TokenReleased(bool(uint8(stor9.field_0)));
}

function changeSaleStart(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= startTime:
        revert with 0, 'Sale: started'
    startTime = arg1
    emit StartChanged(startTime);
}

function changeSaleDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp > startTime + tokenSaleDuration:
        revert with 0, 'Sale: ended'
    tokenSaleDuration = arg1
    emit TokenSaleDurationChanged(arg1);
}

function withdrawableBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < tokenListingTime:
        if bool(uint8(stor9.field_0)) != 1:
            return 0
    else:
        if not tokenListingTime:
            if bool(uint8(stor9.field_0)) != 1:
                return 0
    return balanceOf[address(arg1)].field_0
}

function getBusdBalance() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function changeWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x736368616e67652077616c6c65743a20746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    walletAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function allocationOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor9.field_176):
        return stor12[address(arg1)]
    if maxBuyAmount <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x73416c6c6f636174696f6e3a206d6178427579416d6f756e742073686f756c6420626520646566696e656420696620706572736f6e616c20616c6c6f636174696f6e206973206f66,
                    mem[236 len 24]
    return maxBuyAmount
}

function resetAllocations(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 12
        stor12[address(cd[((32 * idx) + arg1 + 36)])] = 0
        idx = idx + 1
        continue 
}

function setListingTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x6653616c653a206c697374696e672074696d652073686f756c64206265206772656174686572207468616e2063757272656e742074696d,
                    mem[219 len 9]
    tokenListingTime = arg1
    emit SetListingTime(tokenListingTime);
}

function calculatePurchaseAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        if salePrice <= 0:
            revert with 0, 'SafeMath: division by zero'
        if salePrice:
            return (0 / salePrice)
    else:
        if arg1:
            if 10^6 * arg1 / arg1 != 10^6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if salePrice <= 0:
                revert with 0, 'SafeMath: division by zero'
            if salePrice:
                return (10^6 * arg1 / salePrice)
    revert
}

function updateAllocations(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 12
        stor12[address(cd[((32 * idx) + arg1 + 36)])] = cd[((32 * idx) + arg2 + 36)]
        idx = idx + 1
        continue 
}

function setMaxBuyAmountToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > cap:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x7753616c653a206d6178427579416d6f756e74206d757374206e6f7420657863656564207468652063617020616e64206d7573742062652067726561746572207468616e207a6572,
                    mem[236 len 24]
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x7753616c653a206d6178427579416d6f756e74206d757374206e6f7420657863656564207468652063617020616e64206d7573742062652067726561746572207468616e207a6572,
                    mem[236 len 24]
    maxBuyAmount = arg1
}

function withdrawBusdPartially(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Not enough funds'
    require ext_code.size(stor1)
    call stor1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(stor9.field_0), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawBusd() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'Not enough funds'
    require ext_code.size(stor1)
    call stor1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(stor9.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function init() payable {
    if uint8(stor9.field_168):
        revert with 0, 'Sale: already initialized'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(tokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 0, stor3.field_32)
    mem[416 len 4] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(736, 0, stor3.field_0), mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), cap
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    Mask(88, 0, stor9.field_168) = 1
}

function withdrawNotSoldTokens() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < startTime + tokenSaleDuration:
        revert with 0, 'Sale: only after sale'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if tokensSold > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
    if ext_code.size(tokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9.field_0), uint32(stor9.field_0), Mask(224, 32, ext_call.return_data[0] - tokensSold) >> 32
    mem[388 len 0] = 0
    call tokenAddress with:
       funct uint32(stor9.field_0)
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] - tokensSold) << 224, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
}

function setMaxBuyAmountBUSD(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if salePrice <= 0:
            revert with 0, 'SafeMath: division by zero'
        require salePrice
        if 0 / salePrice > cap:
            revert with 0, 
                        32,
                        72,
                        0x7753616c653a206d6178427579416d6f756e74206d757374206e6f7420657863656564207468652063617020616e64206d7573742062652067726561746572207468616e207a6572,
                        mem[300 len 24]
        if 0 / salePrice <= 0:
            revert with 0, 
                        32,
                        72,
                        0x7753616c653a206d6178427579416d6f756e74206d757374206e6f7420657863656564207468652063617020616e64206d7573742062652067726561746572207468616e207a6572,
                        mem[300 len 24]
        maxBuyAmount = 0 / salePrice
    else:
        require arg1
        if 10^6 * arg1 / arg1 != 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if salePrice <= 0:
            revert with 0, 'SafeMath: division by zero'
        require salePrice
        if 10^6 * arg1 / salePrice > cap:
            revert with 0, 
                        32,
                        72,
                        0x7753616c653a206d6178427579416d6f756e74206d757374206e6f7420657863656564207468652063617020616e64206d7573742062652067726561746572207468616e207a6572,
                        mem[300 len 24]
        if 10^6 * arg1 / salePrice <= 0:
            revert with 0, 
                        32,
                        72,
                        0x7753616c653a206d6178427579416d6f756e74206d757374206e6f7420657863656564207468652063617020616e64206d7573742062652067726561746572207468616e207a6572,
                        mem[300 len 24]
        maxBuyAmount = 10^6 * arg1 / salePrice
}

function withdrawTokens() payable {
    if uint8(stor9.field_0):
        if block.timestamp < tokenListingTime:
            if bool(uint8(stor9.field_0)) != 1:
                if balanceOf[address(msg.sender)].field_0 > 0:
                    revert with 0, 'Sale: locked'
            else:
                if balanceOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)].field_0:
                    revert with 0, 'Sale: locked'
        else:
            if tokenListingTime:
                if balanceOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)].field_0:
                    revert with 0, 'Sale: locked'
            else:
                if bool(uint8(stor9.field_0)) != 1:
                    if balanceOf[address(msg.sender)].field_0 > 0:
                        revert with 0, 'Sale: locked'
                else:
                    if balanceOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)].field_0:
                        revert with 0, 'Sale: locked'
        if not balanceOf[address(msg.sender)].field_0:
            revert with 0, 'Sale: Your balance is 0'
        if balanceOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)].field_0 = 0
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
    else:
        if block.timestamp < tokenListingTime:
            revert with 0, 'Sale: not released yet'
        if not tokenListingTime:
            revert with 0, 'Sale: not released yet'
        if block.timestamp < tokenListingTime:
            if bool(uint8(stor9.field_0)) != 1:
                if balanceOf[address(msg.sender)].field_0 > 0:
                    revert with 0, 'Sale: locked'
            else:
                if balanceOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)].field_0:
                    revert with 0, 'Sale: locked'
            if not balanceOf[address(msg.sender)].field_0:
                revert with 0, 'Sale: Your balance is 0'
            if balanceOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)].field_0 = 0
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
            mem[388 len 0] = 0
        else:
            if tokenListingTime:
                if balanceOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)].field_0:
                    revert with 0, 'Sale: locked'
            else:
                if bool(uint8(stor9.field_0)) != 1:
                    if balanceOf[address(msg.sender)].field_0 > 0:
                        revert with 0, 'Sale: locked'
                else:
                    if balanceOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)].field_0:
                        revert with 0, 'Sale: locked'
            if not balanceOf[address(msg.sender)].field_0:
                revert with 0, 'Sale: Your balance is 0'
            if balanceOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)].field_0 = 0
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
    call tokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args balanceOf[address(msg.sender)].field_0, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
    emit TokensWithdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
}

function buyTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp < startTime:
        revert with 0, 'Sale: not selling now'
    if block.timestamp > startTime + tokenSaleDuration:
        revert with 0, 'Sale: not selling now'
    if not uint8(stor9.field_168):
        revert with 0, 'Sale: not selling now'
    if not uint8(stor9.field_176):
        if maxBuyAmount <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        66,
                        0x6453616c653a206d6178427579416d6f756e742073686f756c6420626520646566696e656420696620706572736f6e616c20616c6c6f636174696f6e206973206f66,
                        mem[230 len 30]
    else:
        if not stor12[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0xfe53616c653a20596f7520617265206e6f7420616c6c6f77656420746f2062757920746f6b656e,
                        mem[203 len 25]
        if maxBuyAmount <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0xfe53616c653a20596f7520617265206e6f7420616c6c6f77656420746f2062757920746f6b656e,
                        mem[203 len 25]
    ('gt', ('stor', ('name', 'maxBuyAmount', 13)), 0)
    if not arg1:
        revert with 0, 'Sale: to the zero address'
    if not arg2:
        if salePrice <= 0:
            revert with 0, 'SafeMath: division by zero'
        require salePrice
        if not 0 / salePrice:
            revert with 0, 'Sale: amount is 0'
        if (0 / salePrice) + tokensSold < 0 / salePrice:
            revert with 0, 'SafeMath: addition overflow'
        if (0 / salePrice) + tokensSold > cap:
            revert with 0, 'Sale: cap reached'
        if not uint8(stor9.field_176):
            if maxBuyAmount < 0 / salePrice:
                revert with 0, 32, 35, 0x6f53616c653a20616d6f756e742065786365656473206d617820616c6c6f636174696f, mem[263 len 29]
            if tokensPurchased[address(arg1)] >= maxBuyAmount:
                revert with 0, 32, 33, 0x6c596f7520626f756768742066756c6c20616c6c6f77656420616c6f636174696f, mem[261 len 31]
        else:
            if stor12[address(arg1)] < 0 / salePrice:
                revert with 0, 
                            32,
                            50,
                            0x6e53616c653a20616d6f756e74206578636565647320617661696c61626c6520706572736f6e616c20616c6c6f636174696f,
                            mem[278 len 14]
            if tokensPurchased[address(arg1)] >= stor12[address(arg1)]:
                revert with 0, 32, 33, 0x6c596f7520626f756768742066756c6c20616c6c6f77656420616c6f636174696f, mem[261 len 31]
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Sale: Not enough funds'
        if tokensSold + (0 / salePrice) < tokensSold:
            revert with 0, 'SafeMath: addition overflow'
        tokensSold += 0 / salePrice
        if balanceOf[address(arg1)].field_0 + (0 / salePrice) < balanceOf[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)].field_0 += 0 / salePrice
        if uint8(stor9.field_176):
            if 0 / salePrice > stor12[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            stor12[address(arg1)] -= 0 / salePrice
        if tokensPurchased[address(arg1)] + (0 / salePrice) < tokensPurchased[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        tokensPurchased[address(arg1)] += 0 / salePrice
        emit TokensPurchased(arg2, 0 / salePrice, msg.sender, arg1);
    else:
        require arg2
        if 10^6 * arg2 / arg2 != 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if salePrice <= 0:
            revert with 0, 'SafeMath: division by zero'
        require salePrice
        if not 10^6 * arg2 / salePrice:
            revert with 0, 'Sale: amount is 0'
        if (10^6 * arg2 / salePrice) + tokensSold < 10^6 * arg2 / salePrice:
            revert with 0, 'SafeMath: addition overflow'
        if (10^6 * arg2 / salePrice) + tokensSold > cap:
            revert with 0, 'Sale: cap reached'
        if not uint8(stor9.field_176):
            if maxBuyAmount < 10^6 * arg2 / salePrice:
                revert with 0, 32, 35, 0x6f53616c653a20616d6f756e742065786365656473206d617820616c6c6f636174696f, mem[263 len 29]
            if tokensPurchased[address(arg1)] >= maxBuyAmount:
                revert with 0, 32, 33, 0x6c596f7520626f756768742066756c6c20616c6c6f77656420616c6f636174696f, mem[261 len 31]
        else:
            if stor12[address(arg1)] < 10^6 * arg2 / salePrice:
                revert with 0, 
                            32,
                            50,
                            0x6e53616c653a20616d6f756e74206578636565647320617661696c61626c6520706572736f6e616c20616c6c6f636174696f,
                            mem[278 len 14]
            if tokensPurchased[address(arg1)] >= stor12[address(arg1)]:
                revert with 0, 32, 33, 0x6c596f7520626f756768742066756c6c20616c6c6f77656420616c6f636174696f, mem[261 len 31]
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Sale: Not enough funds'
        if tokensSold + (10^6 * arg2 / salePrice) < tokensSold:
            revert with 0, 'SafeMath: addition overflow'
        tokensSold += 10^6 * arg2 / salePrice
        if balanceOf[address(arg1)].field_0 + (10^6 * arg2 / salePrice) < balanceOf[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)].field_0 += 10^6 * arg2 / salePrice
        if uint8(stor9.field_176):
            if 10^6 * arg2 / salePrice > stor12[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            stor12[address(arg1)] -= 10^6 * arg2 / salePrice
        if tokensPurchased[address(arg1)] + (10^6 * arg2 / salePrice) < tokensPurchased[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        tokensPurchased[address(arg1)] += 10^6 * arg2 / salePrice
        emit TokensPurchased(arg2, 10^6 * arg2 / salePrice, msg.sender, arg1);
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit DepositBUSD(Array(len=4, data='BUSD'), arg2, msg.sender);
    return 1
}



}
