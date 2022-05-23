contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint256 tokensOwned;
mapping of struct tokensUnclaimed;
address sub_5170ba58Address;
uint8 saleActive; offset 160
uint8 claimActive; offset 168
uint128 stor4; offset 168
uint128 stor4; offset 160
address USDCAddress;
uint256 totalTokensSold;
uint256 stor6;
uint256 stor7;
address stor8;

function tokensOwned(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokensOwned[arg1]
}

function getTokensOwned() payable {
    return tokensOwned[address(msg.sender)]
}

function sub_5170ba58(?) payable {
    return sub_5170ba58Address
}

function getTokensUnclaimed() payable {
    return tokensUnclaimed[address(msg.sender)].field_0
}

function saleActive() payable {
    return bool(saleActive)
}

function tokensUnclaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokensUnclaimed[arg1].field_0
}

function USDC() payable {
    return USDCAddress
}

function getTotalTokensSold() payable {
    return totalTokensSold
}

function claimActive() payable {
    return bool(claimActive)
}

function _fallback() payable {
    revert
}

function sub_793c9d5c(?) payable {
    require calldata.size - 4 >= 32
    if stor8 != msg.sender:
        revert with 0, 'You're not the owner'
    sub_5170ba58Address = arg1
}

function setSaleActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if stor8 != msg.sender:
        revert with 0, 'You're not the owner'
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function setClaimActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if stor8 != msg.sender:
        revert with 0, 'You're not the owner'
    Mask(88, 0, stor4.field_168) = Mask(88, 0, arg1)
}

function sub_a4fb37a0(?) payable {
    require ext_code.size(sub_5170ba58Address)
    staticcall sub_5170ba58Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawFunds() payable {
    if stor8 != msg.sender:
        revert with 0, 'You're not the owner'
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(USDCAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
    call USDCAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_229ebd77(?) payable {
    if stor8 != msg.sender:
        revert with 0, 'You're not the owner'
    require ext_code.size(sub_5170ba58Address)
    staticcall sub_5170ba58Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(sub_5170ba58Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
    call sub_5170ba58Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_a0226dd7(?) payable {
    if stor8 != msg.sender:
        revert with 0, 'You're not the owner'
    require ext_code.size(sub_5170ba58Address)
    staticcall sub_5170ba58Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(sub_5170ba58Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, ext_call.return_data[0] - totalTokensSold) >> 32
    call sub_5170ba58Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] - totalTokensSold) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - totalTokensSold
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function buy(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not saleActive:
        revert with 0, 'Presale has not started'
    if stor6 / 1000 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor6 / 1000
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(USDCAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg2) << 64, 0, address(this.address), Mask(224, 32, 10^6 * arg1) >> 32
    mem[416 len 4] = 0
    call USDCAddress with:
         gas gas_remaining wei
        args Mask(224, 32, 10^6 * arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address arg1, address arg2, uint256 arg3), address(arg2) << 64, 0, address(this.address), 10^6 * arg1
        if not transferFrom(address arg1, address arg2, uint256 arg3), address(arg2) << 64:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if tokensOwned[address(arg2)] + (10^12 * arg1 / stor6 / 1000) < tokensOwned[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    tokensOwned[address(arg2)] += 10^12 * arg1 / stor6 / 1000
    if tokensUnclaimed[address(arg2)].field_0 + (10^12 * arg1 / stor6 / 1000) < tokensUnclaimed[address(arg2)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    tokensUnclaimed[address(arg2)].field_0 += 10^12 * arg1 / stor6 / 1000
    if totalTokensSold + (10^12 * arg1 / stor6 / 1000) < totalTokensSold:
        revert with 0, 'SafeMath: addition overflow'
    totalTokensSold += 10^12 * arg1 / stor6 / 1000
    if stor7 + arg1 < stor7:
        revert with 0, 'SafeMath: addition overflow'
    stor7 += arg1
    emit TokenBuy(address(arg2), 10^12 * arg1 / stor6 / 1000);
    stor0 = 1
}

function claimTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not claimActive:
        revert with 0, 'Claim is not allowed yet'
    if tokensOwned[address(arg1)] <= 0:
        revert with 0, 'User should own some RAHN tokens'
    if tokensUnclaimed[address(arg1)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64557365722073686f756c64206861766520756e636c61696d6564205241484e20746f6b656e,
                    mem[202 len 26]
    require ext_code.size(sub_5170ba58Address)
    staticcall sub_5170ba58Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < tokensUnclaimed[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6c546865726520617265206e6f7420656e6f756768205241484e20746f6b656e7320746f207472616e73666572,
                    mem[209 len 19]
    tokensUnclaimed[address(arg1)].field_0 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(sub_5170ba58Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, tokensUnclaimed[address(arg1)].field_32
    call sub_5170ba58Address with:
         gas gas_remaining wei
        args tokensUnclaimed[address(arg1)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, tokensUnclaimed[address(arg1)].field_0
        if not transfer(address arg1, uint256 arg2), address(arg1) << 64:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit TokenClaim(address(arg1), tokensUnclaimed[address(arg1)].field_0);
    stor0 = 1
}



}
