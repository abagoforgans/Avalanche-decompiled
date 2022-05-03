contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address POSAddress;
address sub_18636adaAddress;
address addressToSendMAI;
address stakingAddress;
uint256 totalAmount;
uint256 salePrice;
uint256 openPrice;
uint256 totalWhiteListed;
uint256 startOfSale;
uint256 endOfSale;
uint8 stor12;
uint8 stor12; offset 8
uint8 stor12; offset 16
uint8 stor12; offset 24
uint256 stor12; offset 24
uint256 stor12; offset 16
uint256 stor12; offset 8
mapping of uint8 stor13;
mapping of uint8 stor14;
array of address stor15;
mapping of uint256 purchasedAmounts;
address stor17;

function initialized() payable {
    return bool(uint8(stor12.field_0))
}

function sub_18636ada(?) payable {
    return sub_18636adaAddress
}

function totalAmount() payable {
    return totalAmount
}

function sub_25363399(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function openPrice() payable {
    return openPrice
}

function staking() payable {
    return stakingAddress
}

function endOfSale() payable {
    return endOfSale
}

function owner() payable {
    return owner
}

function cancelled() payable {
    return bool(uint8(stor12.field_16))
}

function startOfSale() payable {
    return startOfSale
}

function totalWhiteListed() payable {
    return totalWhiteListed
}

function finalized() payable {
    return bool(uint8(stor12.field_24))
}

function whiteListEnabled() payable {
    return bool(uint8(stor12.field_8))
}

function addressToSendMAI() payable {
    return addressToSendMAI
}

function POS() payable {
    return POSAddress
}

function salePrice() payable {
    return salePrice
}

function whiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function purchasedAmounts(address arg1) payable {
    require calldata.size - 4 >= 32
    return purchasedAmounts[arg1]
}

function _fallback() payable {
    revert
}

function saleStarted() payable {
    if not uint8(stor12.field_0):
        return bool(uint8(stor12.field_0))
    return startOfSale <= block.timestamp
}

function disableWhiteList() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor12.field_8) = 0
}

function renounceManagement() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipPushed(owner, 0);
    owner = 0
}

function cancel() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor12.field_16) = 1
    startOfSale = 99999999999
}

function getAllotmentPerBuyer() payable {
    if not uint8(stor12.field_8):
        if 10^11 < totalAmount:
            return 10^11
        return totalAmount
    if totalWhiteListed <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalWhiteListed
    return (totalAmount / totalWhiteListed)
}

function pullManagement() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(owner, stor1);
    owner = stor1
}

function withdraw() payable {
    if not uint8(stor12.field_16):
        revert with 0, 'ido is not cancelled'
    require ext_code.size(sub_18636adaAddress)
    call sub_18636adaAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, purchasedAmounts[address(msg.sender)] / 10^9 * salePrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(owner, arg1);
    stor1 = arg1
}

function calculateSaleQuote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 10^9 * arg1 / 10^9 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if salePrice <= 0:
        revert with 0, 'SafeMath: division by zero'
    require salePrice
    return (10^9 * arg1 / salePrice)
}

function initialize(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor12.field_0):
        revert with 0, 'Already initialized'
    uint8(stor12.field_0) = 1
    Mask(248, 0, stor12.field_8) = 1
    totalAmount = arg1
    salePrice = arg2
    startOfSale = arg4
    if arg4 + arg3 < arg4:
        revert with 0, 'SafeMath: addition overflow'
    endOfSale = arg4 + arg3
    return 1
}

function claim(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor12.field_24):
        revert with 0, 'only can claim after finalized'
    if purchasedAmounts[address(arg1)] <= 0:
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

function whiteListBuyers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor12.field_0):
        if uint8(stor12.field_0):
            revert with 0, 'Already started'
    else:
        if startOfSale <= block.timestamp:
            revert with 0, 'Already started'
    if totalWhiteListed + arg1.length < totalWhiteListed:
        revert with 0, 'SafeMath: addition overflow'
    totalWhiteListed += arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 14
        stor14[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function finalize(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalAmount:
        revert with 0, 'need all POS to be sold'
    require ext_code.size(sub_18636adaAddress)
    call sub_18636adaAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor17, 250000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor17)
    call stor17.deposit(uint256 arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 250000 * 10^18, sub_18636adaAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == 25 * 10^13
    Mask(232, 0, stor12.field_24) = 1
    if not uint8(stor12.field_24):
        revert with 0, 'only can claim after finalized'
    if purchasedAmounts[address(arg1)] <= 0:
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

function sub_d58704f9(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor12.field_0):
        if bool(uint8(stor12.field_0)) != 1:
            revert with 0, 'Not started'
        if not uint8(stor12.field_8):
            if stor13[address(msg.sender)]:
                revert with 0, 'Already participated'
            stor13[address(msg.sender)] = 1
            if 10^9 * arg1 / 10^9 != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if salePrice <= 0:
                revert with 0, 'SafeMath: division by zero'
            require salePrice
            if not uint8(stor12.field_8):
                if 10^11 < totalAmount:
                    if 10^9 * arg1 / salePrice > 10^11:
                        revert with 0, 'More than alloted'
                    if not uint8(stor12.field_8):
                        if 10^9 * arg1 / salePrice > totalAmount:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAmount -= 10^9 * arg1 / salePrice
                        purchasedAmounts[address(msg.sender)] = 10^9 * arg1 / salePrice
                        stor15.length++
                        stor15[stor15.length] = msg.sender
                        if ext_code.size(sub_18636adaAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        call sub_18636adaAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                    else:
                        if 1 > totalWhiteListed:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalWhiteListed--
                        if 10^9 * arg1 / salePrice > totalAmount:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAmount -= 10^9 * arg1 / salePrice
                        purchasedAmounts[address(msg.sender)] = 10^9 * arg1 / salePrice
                        stor15.length++
                        stor15[stor15.length] = msg.sender
                        if ext_code.size(sub_18636adaAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[608 len 4] = 0
                        mem[580 len 0] = 0
                        call sub_18636adaAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                else:
                    if 10^9 * arg1 / salePrice > totalAmount:
                        revert with 0, 'More than alloted'
                    if not uint8(stor12.field_8):
                        if 10^9 * arg1 / salePrice > totalAmount:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAmount -= 10^9 * arg1 / salePrice
                        purchasedAmounts[address(msg.sender)] = 10^9 * arg1 / salePrice
                        stor15.length++
                        stor15[stor15.length] = msg.sender
                        if ext_code.size(sub_18636adaAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
                        call sub_18636adaAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                    else:
                        if 1 > totalWhiteListed:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalWhiteListed--
                        if 10^9 * arg1 / salePrice > totalAmount:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAmount -= 10^9 * arg1 / salePrice
                        purchasedAmounts[address(msg.sender)] = 10^9 * arg1 / salePrice
                        stor15.length++
                        stor15[stor15.length] = msg.sender
                        if ext_code.size(sub_18636adaAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[608 len 4] = 0
                        mem[580 len 0] = 0
                        call sub_18636adaAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
            else:
                if totalWhiteListed <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalWhiteListed
                if 10^9 * arg1 / salePrice > totalAmount / totalWhiteListed:
                    revert with 0, 'More than alloted'
                if not uint8(stor12.field_8):
                    if 10^9 * arg1 / salePrice > totalAmount:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalAmount -= 10^9 * arg1 / salePrice
                    purchasedAmounts[address(msg.sender)] = 10^9 * arg1 / salePrice
                    stor15.length++
                    stor15[stor15.length] = msg.sender
                    if ext_code.size(sub_18636adaAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[608 len 4] = 0
                    mem[580 len 0] = 0
                    call sub_18636adaAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[516]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 595 len 22]
                else:
                    if 1 > totalWhiteListed:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalWhiteListed--
                    if 10^9 * arg1 / salePrice > totalAmount:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalAmount -= 10^9 * arg1 / salePrice
                    purchasedAmounts[address(msg.sender)] = 10^9 * arg1 / salePrice
                    stor15.length++
                    stor15[stor15.length] = msg.sender
                    if ext_code.size(sub_18636adaAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[672 len 4] = 0
                    mem[644 len 0] = 0
                    call sub_18636adaAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
        else:
            if bool(stor14[address(msg.sender)]) != 1:
                revert with 0, 'Not whitelisted'
            if stor13[address(msg.sender)]:
                revert with 0, 'Already participated'
            stor13[address(msg.sender)] = 1
            if 10^9 * arg1 / 10^9 != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if salePrice <= 0:
                revert with 0, 'SafeMath: division by zero'
            require salePrice
            if not uint8(stor12.field_8):
                if 10^11 >= totalAmount:
                    if 10^9 * arg1 / salePrice > totalAmount:
                        revert with 0, 'More than alloted'
                    if not uint8(stor12.field_8):
                        if 10^9 * arg1 / salePrice > totalAmount:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAmount -= 10^9 * arg1 / salePrice
                        purchasedAmounts[address(msg.sender)] = 10^9 * arg1 / salePrice
                        stor15.length++
                        stor15[stor15.length] = msg.sender
                        if ext_code.size(sub_18636adaAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
                        call sub_18636adaAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                    else:
                        if 1 > totalWhiteListed:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalWhiteListed--
                        if 10^9 * arg1 / salePrice > totalAmount:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAmount -= 10^9 * arg1 / salePrice
                        purchasedAmounts[address(msg.sender)] = 10^9 * arg1 / salePrice
                        stor15.length++
                        stor15[stor15.length] = msg.sender
                        if ext_code.size(sub_18636adaAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[608 len 4] = 0
                        call sub_18636adaAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                else:
                    if 10^9 * arg1 / salePrice > 10^11:
                        revert with 0, 'More than alloted'
                    if not uint8(stor12.field_8):
                        if 10^9 * arg1 / salePrice > totalAmount:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAmount -= 10^9 * arg1 / salePrice
                        purchasedAmounts[address(msg.sender)] = 10^9 * arg1 / salePrice
                        stor15.length++
                        stor15[stor15.length] = msg.sender
                        if ext_code.size(sub_18636adaAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
                        call sub_18636adaAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                    else:
                        if 1 > totalWhiteListed:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalWhiteListed--
                        if 10^9 * arg1 / salePrice > totalAmount:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAmount -= 10^9 * arg1 / salePrice
                        purchasedAmounts[address(msg.sender)] = 10^9 * arg1 / salePrice
                        stor15.length++
                        stor15[stor15.length] = msg.sender
                        if ext_code.size(sub_18636adaAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[608 len 4] = 0
                        mem[580 len 0] = 0
                        call sub_18636adaAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
            else:
                if totalWhiteListed <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalWhiteListed
                if 10^9 * arg1 / salePrice > totalAmount / totalWhiteListed:
                    revert with 0, 'More than alloted'
                if not uint8(stor12.field_8):
                    if 10^9 * arg1 / salePrice > totalAmount:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalAmount -= 10^9 * arg1 / salePrice
                    purchasedAmounts[address(msg.sender)] = 10^9 * arg1 / salePrice
                    stor15.length++
                    stor15[stor15.length] = msg.sender
                    if ext_code.size(sub_18636adaAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[608 len 4] = 0
                    mem[580 len 0] = 0
                    call sub_18636adaAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[516]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 595 len 22]
                else:
                    if 1 > totalWhiteListed:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalWhiteListed--
                    if 10^9 * arg1 / salePrice > totalAmount:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalAmount -= 10^9 * arg1 / salePrice
                    purchasedAmounts[address(msg.sender)] = 10^9 * arg1 / salePrice
                    stor15.length++
                    stor15[stor15.length] = msg.sender
                    if ext_code.size(sub_18636adaAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[672 len 4] = 0
                    call sub_18636adaAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
    else:
        if startOfSale <= block.timestamp != 1:
            revert with 0, 'Not started'
        if uint8(stor12.field_8):
            if bool(stor14[address(msg.sender)]) != 1:
                revert with 0, 'Not whitelisted'
        if stor13[address(msg.sender)]:
            revert with 0, 'Already participated'
        stor13[address(msg.sender)] = 1
        if 10^9 * arg1 / 10^9 != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if salePrice <= 0:
            revert with 0, 'SafeMath: division by zero'
        require salePrice
        if not uint8(stor12.field_8):
            if 10^11 < totalAmount:
                if 10^9 * arg1 / salePrice > 10^11:
                    revert with 0, 'More than alloted'
            else:
                if 10^9 * arg1 / salePrice > totalAmount:
                    revert with 0, 'More than alloted'
            if not uint8(stor12.field_8):
                if 10^9 * arg1 / salePrice > totalAmount:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalAmount -= 10^9 * arg1 / salePrice
                purchasedAmounts[address(msg.sender)] = 10^9 * arg1 / salePrice
                stor15.length++
                stor15[stor15.length] = msg.sender
                if ext_code.size(sub_18636adaAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[544 len 4] = 0
                mem[516 len 0] = 0
                call sub_18636adaAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[452]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 531 len 22]
            else:
                if 1 > totalWhiteListed:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalWhiteListed--
                if 10^9 * arg1 / salePrice > totalAmount:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalAmount -= 10^9 * arg1 / salePrice
                purchasedAmounts[address(msg.sender)] = 10^9 * arg1 / salePrice
                stor15.length++
                stor15[stor15.length] = msg.sender
                if ext_code.size(sub_18636adaAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[608 len 4] = 0
                mem[580 len 0] = 0
                call sub_18636adaAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[516]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 595 len 22]
        else:
            if totalWhiteListed <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalWhiteListed
            if 10^9 * arg1 / salePrice > totalAmount / totalWhiteListed:
                revert with 0, 'More than alloted'
            if not uint8(stor12.field_8):
                if 10^9 * arg1 / salePrice > totalAmount:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalAmount -= 10^9 * arg1 / salePrice
                purchasedAmounts[address(msg.sender)] = 10^9 * arg1 / salePrice
                stor15.length++
                stor15[stor15.length] = msg.sender
                if ext_code.size(sub_18636adaAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[608 len 4] = 0
                mem[580 len 0] = 0
                call sub_18636adaAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[516]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 595 len 22]
            else:
                if 1 > totalWhiteListed:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalWhiteListed--
                if 10^9 * arg1 / salePrice > totalAmount:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalAmount -= 10^9 * arg1 / salePrice
                purchasedAmounts[address(msg.sender)] = 10^9 * arg1 / salePrice
                stor15.length++
                stor15[stor15.length] = msg.sender
                if ext_code.size(sub_18636adaAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[672 len 4] = 0
                mem[644 len 0] = 0
                call sub_18636adaAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[580]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 659 len 22]
    return 1
}



}
