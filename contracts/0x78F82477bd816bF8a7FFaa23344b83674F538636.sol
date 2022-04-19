contract main {




// =====================  Runtime code  =====================


const BURN_ADDRESS = 57005


address owner;
uint256 stor1;
mapping of struct tokensOwned;
mapping of uint256 tokensUnclaimed;
mapping of uint8 stor4;
mapping of uint256 whitelistAllowance;
address stor6;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
address operatorAddress;

function whitelistAllowance(address arg1) payable {
    require calldata.size - 4 >= 32
    return whitelistAllowance[arg1]
}

function tokensOwned(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokensOwned[arg1].field_0
}

function getTokensOwned() payable {
    return tokensOwned[address(msg.sender)].field_0
}

function operator() payable {
    return operatorAddress
}

function getTokensUnclaimed() payable {
    return tokensUnclaimed[address(msg.sender)]
}

function tokensUnclaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokensUnclaimed[arg1]
}

function owner() payable {
    return owner
}

function whitelisting(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function getUserWhitelistingStatus(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function getUserWhitelistingAllowance(address arg1) payable {
    require calldata.size - 4 >= 32
    return whitelistAllowance[address(arg1)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getAYIELDTokensLeft() payable {
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeWhitelistingAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x736f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg2 > whitelistAllowance[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    whitelistAllowance[address(arg1)] -= arg2
}

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x74415949454c443a3a7472616e736665724f70657261746f723a206e6577206f70657261746f7220697320746865207a65726f20616464726573,
                    mem[222 len 6]
    emit OperatorTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function withdrawFunds() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(stor7) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call stor7 with:
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
    emit WithdrawFunds(ext_call.return_data[0], msg.sender);
}

function withdrawUnsoldAYIELD() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor9 + (168 * 24 * 3600) < stor9:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < stor9 + (168 * 24 * 3600):
        revert with 0, 'Burning tokens too prematurely!'
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(stor6) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), 0, 0, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call stor6.0xdead with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), 0, 0, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), 0:
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
    emit 0x31d659ae: block.timestamp, ext_call.return_data[0]
}

function claimTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < stor9:
        revert with 0, 'Presale has not end yet!'
    if tokensOwned[address(msg.sender)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77557365722073686f756c64206f776e20736f6d6520415949454c4420746f6b656e,
                    mem[198 len 30]
    if tokensUnclaimed[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x72557365722073686f756c64206861766520756e636c61696d656420415949454c4420746f6b656e,
                    mem[204 len 24]
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < tokensOwned[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0x73546865726520617265206e6f7420656e6f75676820415949454c4420746f6b656e7320746f207472616e736665722e20436f6e74726163742069732062726f6b65,
                    mem[230 len 30]
    if tokensOwned[address(msg.sender)].field_0 > tokensUnclaimed[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    tokensUnclaimed[address(msg.sender)] -= tokensOwned[address(msg.sender)].field_0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(stor6) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, tokensOwned[address(msg.sender)].field_32
    mem[324 len 0] = 0
    call stor6 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args tokensOwned[address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, tokensOwned[address(msg.sender)].field_0
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
    emit TokenClaim(msg.sender, tokensOwned[address(msg.sender)].field_0);
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 50000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    77,
                    0x6c52657175657374204f776e657220746f20686176652073756666696369656e746c79207472616e7366657220656e6f75676820746f6b656e7320746f2050726573616c6520436f6e74726163,
                    mem[241 len 19]
    if stor11 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor11
    if tokensOwned[address(msg.sender)].field_0 + (arg1 / stor11) < tokensOwned[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if tokensOwned[address(msg.sender)].field_0 + (arg1 / stor11) > 1000 * 10^18:
        revert with 0, 'Max limit of 10,000 USDC reached'
    if stor12 + arg1 < stor12:
        revert with 0, 'SafeMath: addition overflow'
    if stor12 + arg1 > 500000 * 10^18:
        revert with 0, 'Presale hardcap reached'
    if block.timestamp < stor8:
        revert with 0, 'Presale has not started'
    if block.timestamp > stor9:
        revert with 0, 'Presale has ended'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(stor7) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call stor7 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if tokensOwned[address(msg.sender)].field_0 + (arg1 / stor11) < tokensOwned[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        tokensOwned[address(msg.sender)].field_0 += arg1 / stor11
        if tokensUnclaimed[address(msg.sender)] + (arg1 / stor11) < tokensUnclaimed[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        tokensUnclaimed[address(msg.sender)] += arg1 / stor11
        stor4[address(msg.sender)] = 1
        if not arg1:
            if whitelistAllowance[address(msg.sender)] < whitelistAllowance[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require arg1
            if 60 * arg1 / arg1 != 60:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if whitelistAllowance[address(msg.sender)] + (60 * arg1 / 100) < whitelistAllowance[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            whitelistAllowance[address(msg.sender)] += 60 * arg1 / 100
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
        if tokensOwned[address(msg.sender)].field_0 + (arg1 / stor11) < tokensOwned[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        tokensOwned[address(msg.sender)].field_0 += arg1 / stor11
        if tokensUnclaimed[address(msg.sender)] + (arg1 / stor11) < tokensUnclaimed[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        tokensUnclaimed[address(msg.sender)] += arg1 / stor11
        stor4[address(msg.sender)] = 1
        if not arg1:
            if whitelistAllowance[address(msg.sender)] < whitelistAllowance[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require arg1
            if 60 * arg1 / arg1 != 60:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if whitelistAllowance[address(msg.sender)] + (60 * arg1 / 100) < whitelistAllowance[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            whitelistAllowance[address(msg.sender)] += 60 * arg1 / 100
    if stor10 + (arg1 / stor11) < stor10:
        revert with 0, 'SafeMath: addition overflow'
    stor10 += arg1 / stor11
    if stor12 + arg1 < stor12:
        revert with 0, 'SafeMath: addition overflow'
    stor12 += arg1
    emit TokenBuy(msg.sender, arg1 / stor11);
    stor1 = 1
}



}
