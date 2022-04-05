contract main {




// =====================  Runtime code  =====================


#
#  - sub_900dd17c(?)
#  - claimCollateral(uint256 arg1)
#
const proxiableUUID = code.data[12223 len 32]


uint32 stor101;
address owner;
uint256 stor101;
array of uint256 marketName;
address collateralTokenAddress;
uint8 sub_15224b04; offset 160
address paymentTokenAddress;
uint256 priceRatio;
uint256 expirationDate;
uint16 sub_a29394fc;
uint16 sub_b986b61a; offset 16
uint16 sub_d7132ce9; offset 32
address wTokenAddress; offset 48
address bTokenAddress;
address sub_15be3189Address;

function priceRatio() payable {
    return priceRatio
}

function wToken() payable {
    return wTokenAddress
}

function sub_15224b04(?) payable {
    require sub_15224b04 <= 1
    return sub_15224b04
}

function sub_15be3189(?) payable {
    return sub_15be3189Address
}

function bToken() payable {
    return bTokenAddress
}

function paymentToken() payable {
    return paymentTokenAddress
}

function owner() payable {
    return address(owner)
}

function expirationDate() payable {
    return expirationDate
}

function sub_a29394fc(?) payable {
    return sub_a29394fc
}

function getLogicAddress() payable {
    return address(stor[code.data[12223 len 32]].field_0)
}

function collateralToken() payable {
    return collateralTokenAddress
}

function sub_b986b61a(?) payable {
    return sub_b986b61a
}

function sub_d7132ce9(?) payable {
    return sub_d7132ce9
}

function marketName() payable {
    return marketName[0 len marketName.length]
}

function sub_aaec7756(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 32, 32, code.data[12320 len 32]
    if not arg1:
        revert with 0, 'Invalid refundAddress'
    if block.timestamp < expirationDate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 45, code.data[11994 len 45], mem[209 len 19]
    if expirationDate + (4320 * 24 * 3600) < expirationDate:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < expirationDate + (4320 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 45, code.data[11994 len 45], mem[209 len 19]
    require ext_code.size(collateralTokenAddress)
    staticcall collateralTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(collateralTokenAddress)
        call collateralTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(owner), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(paymentTokenAddress)
    staticcall paymentTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(paymentTokenAddress)
        call paymentTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(owner), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(wTokenAddress)
    call wTokenAddress.selfDestructToken(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(bTokenAddress)
    call bTokenAddress.selfDestructToken(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit MarketDestroyed()
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 32, 32, code.data[12320 len 32]
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function updateRestrictedMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 32, 32, code.data[12320 len 32]
    sub_15be3189Address = arg1
    emit RestrictedMinterUpdated(arg1);
}

function state() payable {
    if block.timestamp < expirationDate:
        return 0
    if expirationDate + (4320 * 24 * 3600) < expirationDate:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp >= expirationDate + (4320 * 24 * 3600):
        return 2
    return 1
}

function calculateFee(uint256 arg1, uint16 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        return 0
    if arg2 * arg1 / arg1 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[12255 len 33], mem[197 len 31]
    return (arg2 * arg1 / 10000)
}

function calculatePaymentAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if priceRatio * arg1 / arg1 != priceRatio:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[12255 len 33], mem[197 len 31]
    return (priceRatio * arg1 / 10^18)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 32, 32, code.data[12320 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[11956 len 38], mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function updateImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 32, 32, code.data[12320 len 32]
    if not arg1:
        revert with 0, 'Invalid newImplementation'
    require ext_code.size(arg1)
    staticcall arg1.0x52d1902d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if code.data[12223 len 32] != ext_call.return_data[0]:
        revert with 0, 'Not compatible'
    address(stor[code.data[12223 len 32]].field_0) = arg1
    Mask(96, 0, stor[code.data[12223 len 32]].field_160) = 0
    emit CodeAddressUpdated(arg1);
}

function recoverTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < expirationDate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 52, code.data[12500 len 52], mem[216 len 12]
    if expirationDate + (4320 * 24 * 3600) < expirationDate:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < expirationDate + (4320 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 52, code.data[12500 len 52], mem[216 len 12]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor101), uint32(stor101), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor101)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor101):
            revert with 0, 32, 42, code.data[12458 len 42], mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 32, 42, code.data[12458 len 42], mem[ceil32(return_data.size) + 307 len 22]
    emit TokensRecovered(ext_call.return_data[0], arg1, address(owner));
}

function mintOptions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp >= expirationDate:
        if expirationDate + (4320 * 24 * 3600) < expirationDate:
            revert with 0, 'SafeMath: addition overflow'
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 45, code.data[12178 len 45], mem[209 len 19]
    if sub_15be3189Address:
        if sub_15be3189Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 43, code.data[12135 len 43], mem[207 len 21]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(collateralTokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[352 len 4] = uint32(arg1)
    call collateralTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, code.data[12458 len 42], mem[338 len 14], uint32(arg1), mem[356 len 4]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 32, 42, code.data[12458 len 42], mem[ceil32(return_data.size) + 339 len 22]
    require ext_code.size(wTokenAddress)
    call wTokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(bTokenAddress)
    call bTokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit OptionMinted(arg1, msg.sender);
}

function closePosition(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp >= expirationDate:
        if expirationDate + (4320 * 24 * 3600) < expirationDate:
            revert with 0, 'SafeMath: addition overflow'
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 57, code.data[12078 len 57], mem[221 len 7]
    require ext_code.size(bTokenAddress)
    call bTokenAddress.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wTokenAddress)
    call wTokenAddress.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg1:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(collateralTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
        call collateralTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 32, 42, code.data[12458 len 42], mem[ceil32(return_data.size) + 371 len 22]
        emit OptionClosed(arg1, msg.sender);
    else:
        if sub_b986b61a * arg1 / arg1 != sub_b986b61a:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[12255 len 33], mem[197 len 31]
        if not sub_b986b61a * arg1 / 10000:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(collateralTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
            call collateralTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 32, 42, code.data[12458 len 42], mem[ceil32(return_data.size) + 371 len 22]
            emit OptionClosed(arg1, msg.sender);
        else:
            if sub_b986b61a * arg1 / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(collateralTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor101), uint32(stor101), Mask(224, 32, sub_b986b61a * arg1 / 10000) >> 32
            call collateralTokenAddress with:
               funct uint32(stor101)
                 gas gas_remaining wei
                args Mask(224, 32, sub_b986b61a * arg1 / 10000) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 32, 42, code.data[12458 len 42], mem[ceil32(return_data.size) + 435 len 22]
            emit code.data[12288 len 32]: (sub_b986b61a * arg1 / 10000), 1, collateralTokenAddress
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(collateralTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, arg1 - (sub_b986b61a * arg1 / 10000)) >> 32
            call collateralTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args arg1 - (sub_b986b61a * arg1 / 10000), Mask(224, 32, 0, msg.sender, Mask(224, 32, arg1 - (sub_b986b61a * arg1 / 10000)) >> 32) >> 32, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 32, 42, code.data[12458 len 42], mem[(2 * ceil32(return_data.size)) + 536 len 22]
            emit OptionClosed((arg1 - (sub_b986b61a * arg1 / 10000)), msg.sender);
}

function exerciseOption(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp >= expirationDate:
        if expirationDate + (4320 * 24 * 3600) < expirationDate:
            revert with 0, 'SafeMath: addition overflow'
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 49, code.data[12552 len 49], mem[213 len 15]
    require sub_15224b04 <= 1
    if not sub_15224b04:
        if block.timestamp < expirationDate - (24 * 3600):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 39, code.data[12039 len 39], mem[203 len 25]
    require ext_code.size(bTokenAddress)
    call bTokenAddress.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg1:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(paymentTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(paymentTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
        mem[416 len 4] = 0
        call paymentTokenAddress with:
             gas gas_remaining wei
            args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(this.address), 0) << 512, mem[388 len 4]
    else:
        if priceRatio * arg1 / arg1 != priceRatio:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[12255 len 33], mem[197 len 31]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(paymentTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(paymentTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, priceRatio * arg1 / 10^18) >> 32
        mem[416 len 4] = Mask(32, 64, priceRatio * arg1 / 10^18) >> 64
        call paymentTokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, priceRatio * arg1 / 10^18) << 480, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[324]:
            revert with 0, 32, 42, code.data[12458 len 42], mem[ceil32(return_data.size) + 403 len 22]
    if not arg1:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(collateralTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
        call collateralTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args arg1, Mask(224, 32, 0, msg.sender, Mask(224, 32, arg1) >> 32) >> 32, mem[ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 489]:
                revert with 0, 32, 42, code.data[12458 len 42], mem[(2 * ceil32(return_data.size)) + 568 len 22]
        emit OptionExercised(arg1, msg.sender);
    else:
        if sub_a29394fc * arg1 / arg1 != sub_a29394fc:
            revert with 0, 32, 33, code.data[12255 len 33], mem[ceil32(return_data.size) + 394 len 31]
        if not sub_a29394fc * arg1 / 10000:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(collateralTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
            call collateralTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args arg1, Mask(224, 32, 0, msg.sender, Mask(224, 32, arg1) >> 32) >> 32, mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 489]:
                    revert with 0, 32, 42, code.data[12458 len 42], mem[(2 * ceil32(return_data.size)) + 568 len 22]
            emit OptionExercised(arg1, msg.sender);
        else:
            if sub_a29394fc * arg1 / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(collateralTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 521 len 64] = 0, address(owner), Mask(224, 32, sub_a29394fc * arg1 / 10000) >> 32
            call collateralTokenAddress with:
               funct uint32(stor101)
                 gas gas_remaining wei
                args sub_a29394fc * arg1 / 10000, Mask(224, 32, address(owner), Mask(224, 32, sub_a29394fc * arg1 / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 585 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 553]:
                    revert with 0, 32, 42, code.data[12458 len 42], mem[(2 * ceil32(return_data.size)) + 632 len 22]
            emit code.data[12288 len 32]: (sub_a29394fc * arg1 / 10000), 0, collateralTokenAddress
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(collateralTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 622 len 64] = 0, msg.sender, Mask(224, 32, arg1 - (sub_a29394fc * arg1 / 10000)) >> 32
            call collateralTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args arg1 - (sub_a29394fc * arg1 / 10000), Mask(224, 32, 0, msg.sender, Mask(224, 32, arg1 - (sub_a29394fc * arg1 / 10000)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 686 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[(2 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 654]:
                    revert with 0, 32, 42, code.data[12458 len 42], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 733 len 22]
            emit OptionExercised((arg1 - (sub_a29394fc * arg1 / 10000)), msg.sender);
}



}
