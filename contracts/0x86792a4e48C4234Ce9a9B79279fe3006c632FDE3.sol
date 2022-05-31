contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address sub_8733c07cAddress;
address USDCAddress;
address sub_53b008aaAddress;
address treasuryAddress;
uint256 totalAmount;
uint256 offeringAmount;
uint256 sub_69876981;
uint256 salePrice;
uint256 openPrice;
uint256 startOfSale;
uint256 sub_8b722eca;
uint256 sub_a86b8640;
uint256 daoAllocation;
uint256 sub_4f3147ba;
uint256 sub_d8541a3b;
uint8 initialized;
uint8 cancelled; offset 8
uint8 finalized; offset 16
mapping of uint8 stor18;
mapping of struct purchasedAmount;
uint256 stor20;
array of uint256 stor93369884277498597659590946175997448338802118867485977633968544981113634346220;

function initialized() payable {
    return bool(initialized)
}

function totalAmount() payable {
    return totalAmount
}

function openPrice() payable {
    return openPrice
}

function purchasedAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    return purchasedAmount[arg1].field_0
}

function sub_4f3147ba(?) payable {
    return sub_4f3147ba
}

function sub_53b008aa(?) payable {
    return sub_53b008aaAddress
}

function treasury() payable {
    return treasuryAddress
}

function sub_69876981(?) payable {
    return sub_69876981
}

function sub_8733c07c(?) payable {
    return sub_8733c07cAddress
}

function daoAllocation() payable {
    return daoAllocation
}

function USDC() payable {
    return USDCAddress
}

function sub_8b722eca(?) payable {
    return sub_8b722eca
}

function owner() payable {
    return owner
}

function cancelled() payable {
    return bool(cancelled)
}

function startOfSale() payable {
    return startOfSale
}

function sub_a86b8640(?) payable {
    return sub_a86b8640
}

function finalized() payable {
    return bool(finalized)
}

function sub_d8541a3b(?) payable {
    return sub_d8541a3b
}

function whitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor18[arg1])
}

function offeringAmount() payable {
    return offeringAmount
}

function salePrice() payable {
    return salePrice
}

function _fallback() payable {
    revert
}

function saleFinished() payable {
    return block.timestamp >= sub_a86b8640
}

function saleStarted() payable {
    if not initialized:
        return bool(initialized)
    return startOfSale <= block.timestamp
}

function cancel() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    cancelled = 1
    startOfSale = 99999999999
}

function renounceManagement() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit 0xfeea8258: owner, 0
    owner = 0
}

function sub_e09cbe25(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    treasuryAddress = arg1
    sub_8733c07cAddress = arg2
    sub_53b008aaAddress = arg3
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
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xba4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0xfeea8258: owner, arg1
    stor1 = arg1
}

function sub_08dfefea(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if initialized:
        if startOfSale <= block.timestamp:
            revert with 0, 'Already started'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 18
        stor18[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function sub_d6c95d20(?) payable {
    require calldata.size - 4 >= 288
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if initialized:
        revert with 0, 'Already initialized'
    initialized = 1
    totalAmount = arg1
    offeringAmount = arg1
    salePrice = arg2
    openPrice = arg3
    startOfSale = arg6
    if arg4 + arg6 < arg6:
        revert with 0, 'SafeMath: addition overflow'
    sub_a86b8640 = arg4 + arg6
    if arg5 + arg6 < arg6:
        revert with 0, 'SafeMath: addition overflow'
    sub_8b722eca = arg5 + arg6
    daoAllocation = arg7
    sub_4f3147ba = arg8
    if arg7 > 100:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg8 > -arg7 + 100:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_d8541a3b = -arg7 + -arg8 + 100
    sub_69876981 = arg9
    return 1
}

function withdraw() payable {
    if not cancelled:
        revert with 0, 'IDO is not cancelled'
    if not ext_code.size(USDCAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, purchasedAmount[msg.sender].field_0 / 10^9 * salePrice) >> 32
    mem[324 len 0] = 0
    call USDCAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, purchasedAmount[msg.sender].field_0 / 10^9 * salePrice) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, purchasedAmount[msg.sender].field_0 / 10^9 * salePrice
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function claim(address arg1) payable {
    require calldata.size - 4 >= 32
    if not finalized:
        revert with 0, 'Sale is not finalized yet'
    if not purchasedAmount[address(arg1)].field_0:
        revert with 0, 'Not purchased'
    purchasedAmount[address(arg1)].field_0 = 0
    if not ext_code.size(sub_8733c07cAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, purchasedAmount[address(arg1)].field_32
    mem[324 len 0] = 0
    call sub_8733c07cAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args purchasedAmount[address(arg1)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, purchasedAmount[address(arg1)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function withdrawEmergency() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(USDCAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call USDCAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_7bdbfe22(?) payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(sub_8733c07cAddress)
    staticcall sub_8733c07cAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(sub_8733c07cAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call sub_8733c07cAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_286b7fa7(?) payable {
    require calldata.size - 4 >= 32
    if not initialized:
        revert with 0, 'Not started'
    if startOfSale > block.timestamp:
        revert with 0, 'Not started'
    if block.timestamp >= sub_a86b8640:
        revert with 0, 'Sale finished'
    if finalized:
        revert with 0, 'Sale finalized'
    if cancelled:
        revert with 0, 'Sale cancelled'
    if arg1 <= 0:
        revert with 0, 'Must be greater than 0'
    if block.timestamp < sub_8b722eca:
        if not stor18[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x724f6e6c792077686974656c6973746564206d656d626572732063616e2062757920617420746865206d6f6d656e,
                        mem[210 len 18]
    if 10^9 * arg1 / 10^9 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not salePrice:
        revert with 0, 'SafeMath: division by zero'
    if (10^9 * arg1 / salePrice) + purchasedAmount[msg.sender].field_0 > sub_69876981:
        revert with 0, 'Exceeds max allotment per buyer'
    if 10^9 * arg1 / salePrice > totalAmount:
        revert with 0, 'Sold out!'
    totalAmount -= 10^9 * arg1 / salePrice
    purchasedAmount[msg.sender].field_0 += 10^9 * arg1 / salePrice
    stor20++
    storCE6D[stor20] = msg.sender or Mask(96, 160, storCE6D[stor20])
    if not ext_code.size(USDCAddress):
        revert with 0, 'Address: call to non-contract'
    mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[544 len 4] = 0
    mem[516 len 0] = 0
    call USDCAddress with:
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
                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 531 len 22]
    return 1
}

function finalize() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not salePrice:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0]:
                    if not openPrice:
                        revert with 0, 'SafeMath: division by zero'
                    if not (0 / openPrice) + (0 / salePrice):
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, USDCAddress, 0
                    else:
                        if (102 * 0 / openPrice) + (102 * 0 / salePrice) / (0 / openPrice) + (0 / salePrice) != 102:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (102 * 0 / openPrice) + (102 * 0 / salePrice) / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, USDCAddress, -(102 * 0 / openPrice) + (102 * 0 / salePrice) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8733c07cAddress)
                    call sub_8733c07cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_53b008aaAddress, 0 / openPrice
                else:
                    if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not openPrice:
                        revert with 0, 'SafeMath: division by zero'
                    if not (10^9 * ext_call.return_data[0] / openPrice) + (0 / salePrice):
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, USDCAddress, 0
                    else:
                        if (102 * 10^9 * ext_call.return_data[0] / openPrice) + (102 * 0 / salePrice) / (10^9 * ext_call.return_data[0] / openPrice) + (0 / salePrice) != 102:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (102 * 10^9 * ext_call.return_data[0] / openPrice) + (102 * 0 / salePrice) / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, USDCAddress, -(102 * 10^9 * ext_call.return_data[0] / openPrice) + (102 * 0 / salePrice) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8733c07cAddress)
                    call sub_8733c07cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_53b008aaAddress, 10^9 * ext_call.return_data[0] / openPrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(USDCAddress)
                call USDCAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_53b008aaAddress, ext_call.return_data[0]
            else:
                if sub_4f3147ba * ext_call.return_data[0] / ext_call.return_data[0] != sub_4f3147ba:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_4f3147ba * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0] - (sub_4f3147ba * ext_call.return_data[0] / 100):
                    if not openPrice:
                        revert with 0, 'SafeMath: division by zero'
                    if not (0 / openPrice) + (0 / salePrice):
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, sub_4f3147ba * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_4f3147ba * ext_call.return_data[0] / 100:
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, 0
                        else:
                            if 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / sub_4f3147ba * ext_call.return_data[0] / 100 != 10^9:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if 0 > 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6
                    else:
                        if (102 * 0 / openPrice) + (102 * 0 / salePrice) / (0 / openPrice) + (0 / salePrice) != 102:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, sub_4f3147ba * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_4f3147ba * ext_call.return_data[0] / 100:
                            if (102 * 0 / openPrice) + (102 * 0 / salePrice) / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, -(102 * 0 / openPrice) + (102 * 0 / salePrice) / 100
                        else:
                            if 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / sub_4f3147ba * ext_call.return_data[0] / 100 != 10^9:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if (102 * 0 / openPrice) + (102 * 0 / salePrice) / 100 > 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6) - ((102 * 0 / openPrice) + (102 * 0 / salePrice) / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8733c07cAddress)
                    call sub_8733c07cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_53b008aaAddress, 0 / openPrice
                else:
                    if (10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (sub_4f3147ba * ext_call.return_data[0] / 100) != 10^9:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not openPrice:
                        revert with 0, 'SafeMath: division by zero'
                    if not ((10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (0 / salePrice):
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, sub_4f3147ba * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_4f3147ba * ext_call.return_data[0] / 100:
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, 0
                        else:
                            if 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / sub_4f3147ba * ext_call.return_data[0] / 100 != 10^9:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if 0 > 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6
                    else:
                        if (102 * (10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 0 / salePrice) / ((10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (0 / salePrice) != 102:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, sub_4f3147ba * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_4f3147ba * ext_call.return_data[0] / 100:
                            if (102 * (10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 0 / salePrice) / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, -(102 * (10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 0 / salePrice) / 100
                        else:
                            if 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / sub_4f3147ba * ext_call.return_data[0] / 100 != 10^9:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if (102 * (10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 0 / salePrice) / 100 > 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6) - ((102 * (10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 0 / salePrice) / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8733c07cAddress)
                    call sub_8733c07cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_53b008aaAddress, (10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(USDCAddress)
                call USDCAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_53b008aaAddress, ext_call.return_data[0] - (sub_4f3147ba * ext_call.return_data[0] / 100)
        else:
            if daoAllocation * ext_call.return_data[0] / ext_call.return_data[0] != daoAllocation:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                if daoAllocation * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0] - (daoAllocation * ext_call.return_data[0] / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0] - (daoAllocation * ext_call.return_data[0] / 100):
                    if not openPrice:
                        revert with 0, 'SafeMath: division by zero'
                    if not (0 / openPrice) + (0 / salePrice):
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, USDCAddress, 0
                    else:
                        if (102 * 0 / openPrice) + (102 * 0 / salePrice) / (0 / openPrice) + (0 / salePrice) != 102:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (102 * 0 / openPrice) + (102 * 0 / salePrice) / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, USDCAddress, -(102 * 0 / openPrice) + (102 * 0 / salePrice) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8733c07cAddress)
                    call sub_8733c07cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_53b008aaAddress, 0 / openPrice
                else:
                    if (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (daoAllocation * ext_call.return_data[0] / 100) != 10^9:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not openPrice:
                        revert with 0, 'SafeMath: division by zero'
                    if not ((10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) / openPrice) + (0 / salePrice):
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, USDCAddress, 0
                    else:
                        if (102 * (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) / openPrice) + (102 * 0 / salePrice) / ((10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) / openPrice) + (0 / salePrice) != 102:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (102 * (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) / openPrice) + (102 * 0 / salePrice) / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, USDCAddress, -(102 * (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) / openPrice) + (102 * 0 / salePrice) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8733c07cAddress)
                    call sub_8733c07cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_53b008aaAddress, (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) / openPrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(USDCAddress)
                call USDCAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_53b008aaAddress, ext_call.return_data[0] - (daoAllocation * ext_call.return_data[0] / 100)
            else:
                if sub_4f3147ba * ext_call.return_data[0] / ext_call.return_data[0] != sub_4f3147ba:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if daoAllocation * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_4f3147ba * ext_call.return_data[0] / 100 > ext_call.return_data[0] - (daoAllocation * ext_call.return_data[0] / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0] - (daoAllocation * ext_call.return_data[0] / 100) - (sub_4f3147ba * ext_call.return_data[0] / 100):
                    if not openPrice:
                        revert with 0, 'SafeMath: division by zero'
                    if not (0 / openPrice) + (0 / salePrice):
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, sub_4f3147ba * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_4f3147ba * ext_call.return_data[0] / 100:
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, 0
                        else:
                            if 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / sub_4f3147ba * ext_call.return_data[0] / 100 != 10^9:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if 0 > 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6
                    else:
                        if (102 * 0 / openPrice) + (102 * 0 / salePrice) / (0 / openPrice) + (0 / salePrice) != 102:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, sub_4f3147ba * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_4f3147ba * ext_call.return_data[0] / 100:
                            if (102 * 0 / openPrice) + (102 * 0 / salePrice) / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, -(102 * 0 / openPrice) + (102 * 0 / salePrice) / 100
                        else:
                            if 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / sub_4f3147ba * ext_call.return_data[0] / 100 != 10^9:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if (102 * 0 / openPrice) + (102 * 0 / salePrice) / 100 > 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6) - ((102 * 0 / openPrice) + (102 * 0 / salePrice) / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8733c07cAddress)
                    call sub_8733c07cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_53b008aaAddress, 0 / openPrice
                else:
                    if (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (daoAllocation * ext_call.return_data[0] / 100) - (sub_4f3147ba * ext_call.return_data[0] / 100) != 10^9:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not openPrice:
                        revert with 0, 'SafeMath: division by zero'
                    if not ((10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (0 / salePrice):
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, sub_4f3147ba * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_4f3147ba * ext_call.return_data[0] / 100:
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, 0
                        else:
                            if 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / sub_4f3147ba * ext_call.return_data[0] / 100 != 10^9:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if 0 > 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6
                    else:
                        if (102 * (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 0 / salePrice) / ((10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (0 / salePrice) != 102:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, sub_4f3147ba * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_4f3147ba * ext_call.return_data[0] / 100:
                            if (102 * (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 0 / salePrice) / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, -(102 * (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 0 / salePrice) / 100
                        else:
                            if 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / sub_4f3147ba * ext_call.return_data[0] / 100 != 10^9:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if (102 * (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 0 / salePrice) / 100 > 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6) - ((102 * (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 0 / salePrice) / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8733c07cAddress)
                    call sub_8733c07cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_53b008aaAddress, (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(USDCAddress)
                call USDCAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_53b008aaAddress, ext_call.return_data[0] - (daoAllocation * ext_call.return_data[0] / 100) - (sub_4f3147ba * ext_call.return_data[0] / 100)
    else:
        if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not salePrice:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0]:
                    if not openPrice:
                        revert with 0, 'SafeMath: division by zero'
                    if not (0 / openPrice) + (10^9 * ext_call.return_data[0] / salePrice):
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, USDCAddress, 0
                    else:
                        if (102 * 0 / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / (0 / openPrice) + (10^9 * ext_call.return_data[0] / salePrice) != 102:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (102 * 0 / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, USDCAddress, -(102 * 0 / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8733c07cAddress)
                    call sub_8733c07cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_53b008aaAddress, 0 / openPrice
                else:
                    if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not openPrice:
                        revert with 0, 'SafeMath: division by zero'
                    if not (10^9 * ext_call.return_data[0] / openPrice) + (10^9 * ext_call.return_data[0] / salePrice):
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, USDCAddress, 0
                    else:
                        if (102 * 10^9 * ext_call.return_data[0] / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / (10^9 * ext_call.return_data[0] / openPrice) + (10^9 * ext_call.return_data[0] / salePrice) != 102:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (102 * 10^9 * ext_call.return_data[0] / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, USDCAddress, -(102 * 10^9 * ext_call.return_data[0] / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8733c07cAddress)
                    call sub_8733c07cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_53b008aaAddress, 10^9 * ext_call.return_data[0] / openPrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(USDCAddress)
                call USDCAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_53b008aaAddress, ext_call.return_data[0]
            else:
                if sub_4f3147ba * ext_call.return_data[0] / ext_call.return_data[0] != sub_4f3147ba:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_4f3147ba * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0] - (sub_4f3147ba * ext_call.return_data[0] / 100):
                    if not openPrice:
                        revert with 0, 'SafeMath: division by zero'
                    if not (0 / openPrice) + (10^9 * ext_call.return_data[0] / salePrice):
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, sub_4f3147ba * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_4f3147ba * ext_call.return_data[0] / 100:
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, 0
                        else:
                            if 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / sub_4f3147ba * ext_call.return_data[0] / 100 != 10^9:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if 0 > 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6
                    else:
                        if (102 * 0 / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / (0 / openPrice) + (10^9 * ext_call.return_data[0] / salePrice) != 102:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, sub_4f3147ba * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_4f3147ba * ext_call.return_data[0] / 100:
                            if (102 * 0 / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, -(102 * 0 / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100
                        else:
                            if 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / sub_4f3147ba * ext_call.return_data[0] / 100 != 10^9:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if (102 * 0 / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100 > 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6) - ((102 * 0 / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8733c07cAddress)
                    call sub_8733c07cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_53b008aaAddress, 0 / openPrice
                else:
                    if (10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (sub_4f3147ba * ext_call.return_data[0] / 100) != 10^9:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not openPrice:
                        revert with 0, 'SafeMath: division by zero'
                    if not ((10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (10^9 * ext_call.return_data[0] / salePrice):
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, sub_4f3147ba * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_4f3147ba * ext_call.return_data[0] / 100:
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, 0
                        else:
                            if 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / sub_4f3147ba * ext_call.return_data[0] / 100 != 10^9:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if 0 > 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6
                    else:
                        if (102 * (10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / ((10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (10^9 * ext_call.return_data[0] / salePrice) != 102:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, sub_4f3147ba * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_4f3147ba * ext_call.return_data[0] / 100:
                            if (102 * (10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, -(102 * (10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100
                        else:
                            if 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / sub_4f3147ba * ext_call.return_data[0] / 100 != 10^9:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if (102 * (10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100 > 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6) - ((102 * (10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8733c07cAddress)
                    call sub_8733c07cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_53b008aaAddress, (10^9 * ext_call.return_data[0]) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(USDCAddress)
                call USDCAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_53b008aaAddress, ext_call.return_data[0] - (sub_4f3147ba * ext_call.return_data[0] / 100)
        else:
            if daoAllocation * ext_call.return_data[0] / ext_call.return_data[0] != daoAllocation:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                if daoAllocation * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0] - (daoAllocation * ext_call.return_data[0] / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0] - (daoAllocation * ext_call.return_data[0] / 100):
                    if not openPrice:
                        revert with 0, 'SafeMath: division by zero'
                    if not (0 / openPrice) + (10^9 * ext_call.return_data[0] / salePrice):
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, USDCAddress, 0
                    else:
                        if (102 * 0 / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / (0 / openPrice) + (10^9 * ext_call.return_data[0] / salePrice) != 102:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (102 * 0 / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, USDCAddress, -(102 * 0 / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8733c07cAddress)
                    call sub_8733c07cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_53b008aaAddress, 0 / openPrice
                else:
                    if (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (daoAllocation * ext_call.return_data[0] / 100) != 10^9:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not openPrice:
                        revert with 0, 'SafeMath: division by zero'
                    if not ((10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) / openPrice) + (10^9 * ext_call.return_data[0] / salePrice):
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, USDCAddress, 0
                    else:
                        if (102 * (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / ((10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) / openPrice) + (10^9 * ext_call.return_data[0] / salePrice) != 102:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (102 * (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 0, USDCAddress, -(102 * (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8733c07cAddress)
                    call sub_8733c07cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_53b008aaAddress, (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) / openPrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(USDCAddress)
                call USDCAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_53b008aaAddress, ext_call.return_data[0] - (daoAllocation * ext_call.return_data[0] / 100)
            else:
                if sub_4f3147ba * ext_call.return_data[0] / ext_call.return_data[0] != sub_4f3147ba:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if daoAllocation * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_4f3147ba * ext_call.return_data[0] / 100 > ext_call.return_data[0] - (daoAllocation * ext_call.return_data[0] / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0] - (daoAllocation * ext_call.return_data[0] / 100) - (sub_4f3147ba * ext_call.return_data[0] / 100):
                    if not openPrice:
                        revert with 0, 'SafeMath: division by zero'
                    if not (0 / openPrice) + (10^9 * ext_call.return_data[0] / salePrice):
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, sub_4f3147ba * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_4f3147ba * ext_call.return_data[0] / 100:
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, 0
                        else:
                            if 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / sub_4f3147ba * ext_call.return_data[0] / 100 != 10^9:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if 0 > 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6
                    else:
                        if (102 * 0 / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / (0 / openPrice) + (10^9 * ext_call.return_data[0] / salePrice) != 102:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, sub_4f3147ba * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_4f3147ba * ext_call.return_data[0] / 100:
                            if (102 * 0 / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, -(102 * 0 / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100
                        else:
                            if 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / sub_4f3147ba * ext_call.return_data[0] / 100 != 10^9:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if (102 * 0 / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100 > 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6) - ((102 * 0 / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8733c07cAddress)
                    call sub_8733c07cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_53b008aaAddress, 0 / openPrice
                else:
                    if (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (daoAllocation * ext_call.return_data[0] / 100) - (sub_4f3147ba * ext_call.return_data[0] / 100) != 10^9:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not openPrice:
                        revert with 0, 'SafeMath: division by zero'
                    if not ((10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (10^9 * ext_call.return_data[0] / salePrice):
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, sub_4f3147ba * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_4f3147ba * ext_call.return_data[0] / 100:
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, 0
                        else:
                            if 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / sub_4f3147ba * ext_call.return_data[0] / 100 != 10^9:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if 0 > 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6
                    else:
                        if (102 * (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / ((10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (10^9 * ext_call.return_data[0] / salePrice) != 102:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        require ext_code.size(USDCAddress)
                        call USDCAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, sub_4f3147ba * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_4f3147ba * ext_call.return_data[0] / 100:
                            if (102 * (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, -(102 * (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100
                        else:
                            if 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / sub_4f3147ba * ext_call.return_data[0] / 100 != 10^9:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if (102 * (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100 > 10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.deposit(uint256 arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_4f3147ba * ext_call.return_data[0] / 100, USDCAddress, (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100 / 10^6) - ((102 * (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice) + (102 * 10^9 * ext_call.return_data[0] / salePrice) / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8733c07cAddress)
                    call sub_8733c07cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_53b008aaAddress, (10^9 * ext_call.return_data[0]) - (10^9 * daoAllocation * ext_call.return_data[0] / 100) - (10^9 * sub_4f3147ba * ext_call.return_data[0] / 100) / openPrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(USDCAddress)
                call USDCAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_53b008aaAddress, ext_call.return_data[0] - (daoAllocation * ext_call.return_data[0] / 100) - (sub_4f3147ba * ext_call.return_data[0] / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_53b008aaAddress)
    call sub_53b008aaAddress.mint(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(USDCAddress):
        revert with 0, 'Address: call to non-contract'
    mem[836 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[900 len 0] = 0
    call USDCAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[900 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[868]:
            revert with 0, 
                        32,
                        42,
                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 947 len 22]
    finalized = 1
}



}
