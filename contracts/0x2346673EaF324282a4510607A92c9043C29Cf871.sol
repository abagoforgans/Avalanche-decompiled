contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint256 tokensOwned;
mapping of struct tokensUnclaimed;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 168
uint128 stor3; offset 160
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;

function tokensOwned(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokensOwned[arg1]
}

function getTokensOwned() payable {
    return tokensOwned[address(msg.sender)]
}

function getTokensUnclaimed() payable {
    return tokensUnclaimed[address(msg.sender)].field_0
}

function tokensUnclaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokensUnclaimed[arg1].field_0
}

function _fallback() payable {
    revert
}

function setSaleActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
}

function setClaimActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner'
    Mask(88, 0, stor3.field_168) = Mask(88, 0, arg1)
}

function getSPNTokensLeft() payable {
    require ext_code.size(address(stor3.field_0))
    staticcall address(stor3.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawFunds() payable {
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner'
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(stor8) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call stor8 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
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

function withdrawAllSPN() payable {
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner'
    require ext_code.size(address(stor3.field_0))
    staticcall address(stor3.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(address(stor3.field_0)) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call address(stor3.field_0) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
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

function withdrawUnsoldSPN() payable {
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner'
    require ext_code.size(address(stor3.field_0))
    staticcall address(stor3.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(address(stor3.field_0)) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - stor5) >> 32
    call address(stor3.field_0) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] - stor5) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - stor5
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
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
    if not uint8(stor3.field_160):
        revert with 0, 'sale has not started'
    if stor6 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor6
    if stor7 + arg1 > 10000 * 10^18:
        revert with 0, 'sale hardcap reached'
    if block.timestamp < stor4:
        revert with 0, 'sale has not started'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(stor8) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call stor8 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(this.address), arg1
        if not unknown_0x23b872dd(?????), address(arg2) << 64:
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
    if tokensOwned[address(arg2)] + (arg1 / stor6) < tokensOwned[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    tokensOwned[address(arg2)] += arg1 / stor6
    if tokensUnclaimed[address(arg2)].field_0 + (arg1 / stor6) < tokensUnclaimed[address(arg2)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    tokensUnclaimed[address(arg2)].field_0 += arg1 / stor6
    if stor5 + (arg1 / stor6) < stor5:
        revert with 0, 'SafeMath: addition overflow'
    stor5 += arg1 / stor6
    if stor7 + arg1 < stor7:
        revert with 0, 'SafeMath: addition overflow'
    stor7 += arg1
    emit TokenBuy(address(arg2), arg1 / stor6);
    stor0 = 1
}

function claimTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor3.field_168):
        revert with 0, 'Claim is not allowed yet'
    if tokensOwned[address(msg.sender)] <= 0:
        revert with 0, 'User should own some SPN tokens'
    if tokensUnclaimed[address(msg.sender)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6c557365722073686f756c64206861766520756e636c61696d65642053504e20746f6b656e,
                    mem[201 len 27]
    require ext_code.size(address(stor3.field_0))
    staticcall address(stor3.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < tokensUnclaimed[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x73546865726520617265206e6f7420656e6f7567682053504e20746f6b656e7320746f207472616e73666572,
                    mem[208 len 20]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(address(stor3.field_0)) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, tokensUnclaimed[address(msg.sender)].field_32
    call address(stor3.field_0) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args tokensUnclaimed[address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, tokensUnclaimed[address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
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
    emit TokenClaim(msg.sender, tokensUnclaimed[address(msg.sender)].field_0);
    tokensUnclaimed[address(msg.sender)].field_0 = 0
}



}
