contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address sub_0e1577ebAddress;
address MIMAddress;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint8 stor4; offset 176
uint128 stor4; offset 176
uint128 stor4; offset 168
uint128 stor4; offset 160
address mintContractAddress;
uint256 totalTokensSold;
uint256 tokenPrice;
uint256 sub_5ee2a4bd;
uint256 sub_d3ebb9de;
uint256 minBuyAmount;
uint256 maxBuyAmount;
uint256 startTimeStamp;
mapping of struct tokensOwned;

function sub_0e1577eb(?) payable {
    return sub_0e1577ebAddress
}

function tokensOwned(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokensOwned[arg1].field_0
}

function isSaleActive() payable {
    return bool(uint8(stor4.field_160))
}

function sub_5ee2a4bd(?) payable {
    return sub_5ee2a4bd
}

function totalTokensSold() payable {
    return totalTokensSold
}

function sub_6d0b7356(?) payable {
    return bool(uint8(stor4.field_176))
}

function isClaimActive() payable {
    return bool(uint8(stor4.field_168))
}

function tokenPrice() payable {
    return tokenPrice
}

function maxBuyAmount() payable {
    return maxBuyAmount
}

function owner() payable {
    return owner
}

function mintContract() payable {
    return mintContractAddress
}

function sub_d3ebb9de(?) payable {
    return sub_d3ebb9de
}

function MIM() payable {
    return MIMAddress
}

function startTimeStamp() payable {
    return startTimeStamp
}

function minBuyAmount() payable {
    return minBuyAmount
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

function setTokenPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenPrice = arg1
}

function updateHardCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d3ebb9de = arg1
}

function sub_4a72e9ca(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor4.field_176) = Mask(80, 0, arg1)
}

function setClaimActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor4.field_168) = Mask(88, 0, arg1)
}

function setSaleActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
    if not startTimeStamp:
        startTimeStamp = block.timestamp
}

function sub_761a7bda(?) payable {
    require ext_code.size(sub_0e1577ebAddress)
    staticcall sub_0e1577ebAddress.0x70a08231 with:
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

function sub_107a028d(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x644e4654474d3a3a206d617820616d6f756e742073686f756c6420626520626967676572207468616e206d696e20616d6f756e,
                    mem[215 len 13]
    minBuyAmount = arg1
    maxBuyAmount = arg2
}

function sub_32caf108(?) payable {
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(mintContractAddress)
    call mintContractAddress.walletOfOwner(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[ceil32(return_data.size) + 96] <= 0:
        return 0
    return 1
}

function withdrawFunds() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(MIMAddress)
    staticcall MIMAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(MIMAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call MIMAddress with:
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

function sub_d10fae62(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_0e1577ebAddress)
    staticcall sub_0e1577ebAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(sub_0e1577ebAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call sub_0e1577ebAddress with:
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

function sub_67cf8502(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_0e1577ebAddress)
    staticcall sub_0e1577ebAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(sub_0e1577ebAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - totalTokensSold) >> 32
    call sub_0e1577ebAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] - totalTokensSold) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalTokensSold
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

function claimTokens() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not uint8(stor4.field_168):
        revert with 0, 'NFTGM:: Claim is not allowed yet'
    if tokensOwned[address(msg.sender)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x774e4654474d3a3a20557365722073686f756c64206f776e20736f6d65204e4654474d20746f6b656e,
                    mem[205 len 23]
    require ext_code.size(sub_0e1577ebAddress)
    staticcall sub_0e1577ebAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < tokensOwned[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x6c4e4654474d3a3a20546865726520617265206e6f7420656e6f756768204e4654474d20746f6b656e7320746f207472616e73666572,
                    mem[218 len 10]
    tokensOwned[address(msg.sender)].field_0 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(sub_0e1577ebAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, tokensOwned[address(msg.sender)].field_32
    mem[324 len 0] = 0
    call sub_0e1577ebAddress with:
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
    stor1 = 1
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not uint8(stor4.field_160):
        revert with 0, 'NFTGM:: Presale has not started'
    if not uint8(stor4.field_176):
        if sub_5ee2a4bd + arg1 > sub_d3ebb9de:
            revert with 0, 'NFTGM:: Presale hardcap reached'
        if arg1 < minBuyAmount:
            revert with 0, 'NFTGM:: low amount than min'
        mem[0] = msg.sender
        mem[32] = 12
        if arg1 + (tokensOwned[address(msg.sender)].field_0 * tokenPrice / 10^9) > maxBuyAmount:
            revert with 0, 'NFTGM:: high amount than max'
        if block.timestamp > startTimeStamp + (24 * 3600):
            if block.timestamp >= startTimeStamp + (48 * 24 * 3600):
                if not arg1:
                    if tokenPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tokenPrice
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if ext_code.size(MIMAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call MIMAddress with:
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
                    if tokensOwned[address(msg.sender)].field_0 + (0 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    tokensOwned[address(msg.sender)].field_0 += 0 / tokenPrice
                    if totalTokensSold + (0 / tokenPrice) < totalTokensSold:
                        revert with 0, 'SafeMath: addition overflow'
                    totalTokensSold += 0 / tokenPrice
                    if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_5ee2a4bd += arg1
                    emit TokenBuy(msg.sender, 0 / tokenPrice);
                else:
                    require arg1
                    if 10^9 * arg1 / arg1 != 10^9:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if tokenPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tokenPrice
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if ext_code.size(MIMAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    call MIMAddress with:
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
                    if tokensOwned[address(msg.sender)].field_0 + (10^9 * arg1 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    tokensOwned[address(msg.sender)].field_0 += 10^9 * arg1 / tokenPrice
                    if totalTokensSold + (10^9 * arg1 / tokenPrice) < totalTokensSold:
                        revert with 0, 'SafeMath: addition overflow'
                    totalTokensSold += 10^9 * arg1 / tokenPrice
                    if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_5ee2a4bd += arg1
                    emit TokenBuy(msg.sender, 10^9 * arg1 / tokenPrice);
            else:
                if block.timestamp <= startTimeStamp + (24 * 3600):
                    if not arg1:
                        if tokenPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require tokenPrice
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if ext_code.size(MIMAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call MIMAddress with:
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
                        if tokensOwned[address(msg.sender)].field_0 + (0 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        tokensOwned[address(msg.sender)].field_0 += 0 / tokenPrice
                        if totalTokensSold + (0 / tokenPrice) < totalTokensSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalTokensSold += 0 / tokenPrice
                        if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_5ee2a4bd += arg1
                        emit TokenBuy(msg.sender, 0 / tokenPrice);
                    else:
                        require arg1
                        if 10^9 * arg1 / arg1 != 10^9:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require tokenPrice
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if ext_code.size(MIMAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call MIMAddress with:
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
                        if tokensOwned[address(msg.sender)].field_0 + (10^9 * arg1 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        tokensOwned[address(msg.sender)].field_0 += 10^9 * arg1 / tokenPrice
                        if totalTokensSold + (10^9 * arg1 / tokenPrice) < totalTokensSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalTokensSold += 10^9 * arg1 / tokenPrice
                        if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_5ee2a4bd += arg1
                        emit TokenBuy(msg.sender, 10^9 * arg1 / tokenPrice);
                else:
                    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
                    mem[100] = msg.sender
                    require ext_code.size(mintContractAddress)
                    call mintContractAddress.walletOfOwner(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _39 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    _55 = mem[_39 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[_39 + 96])] = mem[_39 + 128 len floor32(mem[_39 + 96])]
                    if mem[ceil32(return_data.size) + 96] > 0:
                        if not arg1:
                            if tokenPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require tokenPrice
                            mem[(32 * _55) + ceil32(return_data.size) + 164] = msg.sender
                            mem[(32 * _55) + ceil32(return_data.size) + 196] = this.address
                            mem[(32 * _55) + ceil32(return_data.size) + 228] = arg1
                            mem[(32 * _55) + ceil32(return_data.size) + 128] = 100
                            mem[(32 * _55) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(32 * _55) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                            mem[(32 * _55) + ceil32(return_data.size) + 260] = 32
                            mem[(32 * _55) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _55) + ceil32(return_data.size) + 430 len 26]
                            if ext_code.size(MIMAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _55) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[(32 * _55) + ceil32(return_data.size) + 448 len 4] = 0
                            call MIMAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[(32 * _55) + ceil32(return_data.size) + 420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                    if not uint32(msg.sender), mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _55) + ceil32(return_data.size) + 434 len 14],
                                                    0,
                                                    mem[(32 * _55) + ceil32(return_data.size) + 452 len 4]
                            else:
                                mem[(32 * _55) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _55) + ceil32(return_data.size) + 356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _55) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                            if tokensOwned[address(msg.sender)].field_0 + (10 * 0 / tokenPrice / 8) < tokensOwned[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            tokensOwned[address(msg.sender)].field_0 += 10 * 0 / tokenPrice / 8
                            if totalTokensSold + (10 * 0 / tokenPrice / 8) < totalTokensSold:
                                revert with 0, 'SafeMath: addition overflow'
                            totalTokensSold += 10 * 0 / tokenPrice / 8
                            if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5ee2a4bd += arg1
                            emit TokenBuy(msg.sender, 10 * 0 / tokenPrice / 8);
                        else:
                            require arg1
                            if 10^9 * arg1 / arg1 != 10^9:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _55) + ceil32(return_data.size) + 229 len 31]
                            if tokenPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require tokenPrice
                            mem[(32 * _55) + ceil32(return_data.size) + 164] = msg.sender
                            mem[(32 * _55) + ceil32(return_data.size) + 196] = this.address
                            mem[(32 * _55) + ceil32(return_data.size) + 228] = arg1
                            mem[(32 * _55) + ceil32(return_data.size) + 128] = 100
                            mem[(32 * _55) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(32 * _55) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                            mem[(32 * _55) + ceil32(return_data.size) + 260] = 32
                            mem[(32 * _55) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _55) + ceil32(return_data.size) + 430 len 26]
                            if ext_code.size(MIMAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _55) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[(32 * _55) + ceil32(return_data.size) + 448 len 4] = 0
                            call MIMAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[(32 * _55) + ceil32(return_data.size) + 420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                    if not uint32(msg.sender), mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _55) + ceil32(return_data.size) + 434 len 14],
                                                    0,
                                                    mem[(32 * _55) + ceil32(return_data.size) + 452 len 4]
                            else:
                                mem[(32 * _55) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _55) + ceil32(return_data.size) + 356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _55) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                            if tokensOwned[address(msg.sender)].field_0 + (10 * 10^9 * arg1 / tokenPrice / 8) < tokensOwned[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            tokensOwned[address(msg.sender)].field_0 += 10 * 10^9 * arg1 / tokenPrice / 8
                            if totalTokensSold + (10 * 10^9 * arg1 / tokenPrice / 8) < totalTokensSold:
                                revert with 0, 'SafeMath: addition overflow'
                            totalTokensSold += 10 * 10^9 * arg1 / tokenPrice / 8
                            if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5ee2a4bd += arg1
                            emit TokenBuy(msg.sender, 10 * 10^9 * arg1 / tokenPrice / 8);
                    else:
                        if not arg1:
                            if tokenPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require tokenPrice
                            mem[(32 * _55) + ceil32(return_data.size) + 164] = msg.sender
                            mem[(32 * _55) + ceil32(return_data.size) + 196] = this.address
                            mem[(32 * _55) + ceil32(return_data.size) + 228] = arg1
                            mem[(32 * _55) + ceil32(return_data.size) + 128] = 100
                            mem[(32 * _55) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(32 * _55) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                            mem[(32 * _55) + ceil32(return_data.size) + 260] = 32
                            mem[(32 * _55) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _55) + ceil32(return_data.size) + 430 len 26]
                            if ext_code.size(MIMAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _55) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[(32 * _55) + ceil32(return_data.size) + 448 len 4] = 0
                            call MIMAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[(32 * _55) + ceil32(return_data.size) + 420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                    if not uint32(msg.sender), mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _55) + ceil32(return_data.size) + 434 len 14],
                                                    0,
                                                    mem[(32 * _55) + ceil32(return_data.size) + 452 len 4]
                            else:
                                mem[(32 * _55) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _55) + ceil32(return_data.size) + 356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _55) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                            if tokensOwned[address(msg.sender)].field_0 + (0 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            tokensOwned[address(msg.sender)].field_0 += 0 / tokenPrice
                            if totalTokensSold + (0 / tokenPrice) < totalTokensSold:
                                revert with 0, 'SafeMath: addition overflow'
                            totalTokensSold += 0 / tokenPrice
                            if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5ee2a4bd += arg1
                            emit TokenBuy(msg.sender, 0 / tokenPrice);
                        else:
                            require arg1
                            if 10^9 * arg1 / arg1 != 10^9:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _55) + ceil32(return_data.size) + 229 len 31]
                            if tokenPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require tokenPrice
                            mem[(32 * _55) + ceil32(return_data.size) + 164] = msg.sender
                            mem[(32 * _55) + ceil32(return_data.size) + 196] = this.address
                            mem[(32 * _55) + ceil32(return_data.size) + 228] = arg1
                            mem[(32 * _55) + ceil32(return_data.size) + 128] = 100
                            mem[(32 * _55) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(32 * _55) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                            mem[(32 * _55) + ceil32(return_data.size) + 260] = 32
                            mem[(32 * _55) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _55) + ceil32(return_data.size) + 430 len 26]
                            if ext_code.size(MIMAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _55) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[(32 * _55) + ceil32(return_data.size) + 448 len 4] = 0
                            mem[(32 * _55) + ceil32(return_data.size) + 420 len 0] = 0
                            call MIMAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[(32 * _55) + ceil32(return_data.size) + 420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                    if not uint32(msg.sender), mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _55) + ceil32(return_data.size) + 434 len 14],
                                                    0,
                                                    mem[(32 * _55) + ceil32(return_data.size) + 452 len 4]
                            else:
                                mem[(32 * _55) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _55) + ceil32(return_data.size) + 356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _55) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                            if tokensOwned[address(msg.sender)].field_0 + (10^9 * arg1 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            tokensOwned[address(msg.sender)].field_0 += 10^9 * arg1 / tokenPrice
                            if totalTokensSold + (10^9 * arg1 / tokenPrice) < totalTokensSold:
                                revert with 0, 'SafeMath: addition overflow'
                            totalTokensSold += 10^9 * arg1 / tokenPrice
                            if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5ee2a4bd += arg1
                            emit TokenBuy(msg.sender, 10^9 * arg1 / tokenPrice);
        else:
            mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
            mem[100] = msg.sender
            require ext_code.size(mintContractAddress)
            call mintContractAddress.walletOfOwner(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _26 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
            _36 = mem[_26 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_26 + 96])] = mem[_26 + 128 len floor32(mem[_26 + 96])]
            if mem[ceil32(return_data.size) + 96] > 0:
                if not arg1:
                    if tokenPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tokenPrice
                    mem[(32 * _36) + ceil32(return_data.size) + 164] = msg.sender
                    mem[(32 * _36) + ceil32(return_data.size) + 196] = this.address
                    mem[(32 * _36) + ceil32(return_data.size) + 228] = arg1
                    mem[(32 * _36) + ceil32(return_data.size) + 128] = 100
                    mem[(32 * _36) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _36) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                    mem[(32 * _36) + ceil32(return_data.size) + 260] = 32
                    mem[(32 * _36) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _36) + ceil32(return_data.size) + 430 len 26]
                    if ext_code.size(MIMAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _36) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[(32 * _36) + ceil32(return_data.size) + 448 len 4] = 0
                    call MIMAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[(32 * _36) + ceil32(return_data.size) + 420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                            require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                            if not uint32(msg.sender), mem[132 len 28]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _36) + ceil32(return_data.size) + 434 len 14],
                                            0,
                                            mem[(32 * _36) + ceil32(return_data.size) + 452 len 4]
                    else:
                        mem[(32 * _36) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _36) + ceil32(return_data.size) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _36) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                    if tokensOwned[address(msg.sender)].field_0 + (2 * 0 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    tokensOwned[address(msg.sender)].field_0 += 2 * 0 / tokenPrice
                    if totalTokensSold + (2 * 0 / tokenPrice) < totalTokensSold:
                        revert with 0, 'SafeMath: addition overflow'
                    totalTokensSold += 2 * 0 / tokenPrice
                    if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_5ee2a4bd += arg1
                    emit TokenBuy(msg.sender, 2 * 0 / tokenPrice);
                else:
                    require arg1
                    if 10^9 * arg1 / arg1 != 10^9:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _36) + ceil32(return_data.size) + 229 len 31]
                    if tokenPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tokenPrice
                    mem[(32 * _36) + ceil32(return_data.size) + 164] = msg.sender
                    mem[(32 * _36) + ceil32(return_data.size) + 196] = this.address
                    mem[(32 * _36) + ceil32(return_data.size) + 228] = arg1
                    mem[(32 * _36) + ceil32(return_data.size) + 128] = 100
                    mem[(32 * _36) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _36) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                    mem[(32 * _36) + ceil32(return_data.size) + 260] = 32
                    mem[(32 * _36) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _36) + ceil32(return_data.size) + 430 len 26]
                    if ext_code.size(MIMAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _36) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[(32 * _36) + ceil32(return_data.size) + 448 len 4] = 0
                    call MIMAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[(32 * _36) + ceil32(return_data.size) + 420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                            require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                            if not uint32(msg.sender), mem[132 len 28]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _36) + ceil32(return_data.size) + 434 len 14],
                                            0,
                                            mem[(32 * _36) + ceil32(return_data.size) + 452 len 4]
                    else:
                        mem[(32 * _36) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _36) + ceil32(return_data.size) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _36) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                    if tokensOwned[address(msg.sender)].field_0 + (2 * 10^9 * arg1 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    tokensOwned[address(msg.sender)].field_0 += 2 * 10^9 * arg1 / tokenPrice
                    if totalTokensSold + (2 * 10^9 * arg1 / tokenPrice) < totalTokensSold:
                        revert with 0, 'SafeMath: addition overflow'
                    totalTokensSold += 2 * 10^9 * arg1 / tokenPrice
                    if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_5ee2a4bd += arg1
                    emit TokenBuy(msg.sender, 2 * 10^9 * arg1 / tokenPrice);
            else:
                if block.timestamp >= startTimeStamp + (48 * 24 * 3600):
                    if not arg1:
                        if tokenPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require tokenPrice
                        mem[(32 * _36) + ceil32(return_data.size) + 164] = msg.sender
                        mem[(32 * _36) + ceil32(return_data.size) + 196] = this.address
                        mem[(32 * _36) + ceil32(return_data.size) + 228] = arg1
                        mem[(32 * _36) + ceil32(return_data.size) + 128] = 100
                        mem[(32 * _36) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(32 * _36) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                        mem[(32 * _36) + ceil32(return_data.size) + 260] = 32
                        mem[(32 * _36) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _36) + ceil32(return_data.size) + 430 len 26]
                        if ext_code.size(MIMAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _36) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[(32 * _36) + ceil32(return_data.size) + 448 len 4] = 0
                        call MIMAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[(32 * _36) + ceil32(return_data.size) + 420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                if not uint32(msg.sender), mem[132 len 28]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _36) + ceil32(return_data.size) + 434 len 14],
                                                0,
                                                mem[(32 * _36) + ceil32(return_data.size) + 452 len 4]
                        else:
                            mem[(32 * _36) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _36) + ceil32(return_data.size) + 356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _36) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                        if tokensOwned[address(msg.sender)].field_0 + (0 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        tokensOwned[address(msg.sender)].field_0 += 0 / tokenPrice
                        if totalTokensSold + (0 / tokenPrice) < totalTokensSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalTokensSold += 0 / tokenPrice
                        if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_5ee2a4bd += arg1
                        emit TokenBuy(msg.sender, 0 / tokenPrice);
                    else:
                        require arg1
                        if 10^9 * arg1 / arg1 != 10^9:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _36) + ceil32(return_data.size) + 229 len 31]
                        if tokenPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require tokenPrice
                        mem[(32 * _36) + ceil32(return_data.size) + 164] = msg.sender
                        mem[(32 * _36) + ceil32(return_data.size) + 196] = this.address
                        mem[(32 * _36) + ceil32(return_data.size) + 228] = arg1
                        mem[(32 * _36) + ceil32(return_data.size) + 128] = 100
                        mem[(32 * _36) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(32 * _36) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                        mem[(32 * _36) + ceil32(return_data.size) + 260] = 32
                        mem[(32 * _36) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _36) + ceil32(return_data.size) + 430 len 26]
                        if ext_code.size(MIMAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _36) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[(32 * _36) + ceil32(return_data.size) + 448 len 4] = 0
                        mem[(32 * _36) + ceil32(return_data.size) + 420 len 0] = 0
                        call MIMAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[(32 * _36) + ceil32(return_data.size) + 420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                if not uint32(msg.sender), mem[132 len 28]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _36) + ceil32(return_data.size) + 434 len 14],
                                                0,
                                                mem[(32 * _36) + ceil32(return_data.size) + 452 len 4]
                        else:
                            mem[(32 * _36) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _36) + ceil32(return_data.size) + 356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _36) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                        if tokensOwned[address(msg.sender)].field_0 + (10^9 * arg1 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        tokensOwned[address(msg.sender)].field_0 += 10^9 * arg1 / tokenPrice
                        if totalTokensSold + (10^9 * arg1 / tokenPrice) < totalTokensSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalTokensSold += 10^9 * arg1 / tokenPrice
                        if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_5ee2a4bd += arg1
                        emit TokenBuy(msg.sender, 10^9 * arg1 / tokenPrice);
                else:
                    if block.timestamp <= startTimeStamp + (24 * 3600):
                        if not arg1:
                            if tokenPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require tokenPrice
                            mem[(32 * _36) + ceil32(return_data.size) + 164] = msg.sender
                            mem[(32 * _36) + ceil32(return_data.size) + 196] = this.address
                            mem[(32 * _36) + ceil32(return_data.size) + 228] = arg1
                            mem[(32 * _36) + ceil32(return_data.size) + 128] = 100
                            mem[(32 * _36) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(32 * _36) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                            mem[(32 * _36) + ceil32(return_data.size) + 260] = 32
                            mem[(32 * _36) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _36) + ceil32(return_data.size) + 430 len 26]
                            if ext_code.size(MIMAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _36) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[(32 * _36) + ceil32(return_data.size) + 448 len 4] = 0
                            mem[(32 * _36) + ceil32(return_data.size) + 420 len 0] = 0
                            call MIMAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[(32 * _36) + ceil32(return_data.size) + 420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                    if not uint32(msg.sender), mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _36) + ceil32(return_data.size) + 434 len 14],
                                                    0,
                                                    mem[(32 * _36) + ceil32(return_data.size) + 452 len 4]
                            else:
                                mem[(32 * _36) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _36) + ceil32(return_data.size) + 356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _36) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                            if tokensOwned[address(msg.sender)].field_0 + (0 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            tokensOwned[address(msg.sender)].field_0 += 0 / tokenPrice
                            if totalTokensSold + (0 / tokenPrice) < totalTokensSold:
                                revert with 0, 'SafeMath: addition overflow'
                            totalTokensSold += 0 / tokenPrice
                            if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5ee2a4bd += arg1
                            emit TokenBuy(msg.sender, 0 / tokenPrice);
                        else:
                            require arg1
                            if 10^9 * arg1 / arg1 != 10^9:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _36) + ceil32(return_data.size) + 229 len 31]
                            if tokenPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require tokenPrice
                            mem[(32 * _36) + ceil32(return_data.size) + 164] = msg.sender
                            mem[(32 * _36) + ceil32(return_data.size) + 196] = this.address
                            mem[(32 * _36) + ceil32(return_data.size) + 228] = arg1
                            mem[(32 * _36) + ceil32(return_data.size) + 128] = 100
                            mem[(32 * _36) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(32 * _36) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                            mem[(32 * _36) + ceil32(return_data.size) + 260] = 32
                            mem[(32 * _36) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _36) + ceil32(return_data.size) + 430 len 26]
                            if ext_code.size(MIMAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _36) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[(32 * _36) + ceil32(return_data.size) + 448 len 4] = 0
                            call MIMAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[(32 * _36) + ceil32(return_data.size) + 420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                    if not uint32(msg.sender), mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _36) + ceil32(return_data.size) + 434 len 14],
                                                    0,
                                                    mem[(32 * _36) + ceil32(return_data.size) + 452 len 4]
                            else:
                                mem[(32 * _36) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _36) + ceil32(return_data.size) + 356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _36) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                            if tokensOwned[address(msg.sender)].field_0 + (10^9 * arg1 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            tokensOwned[address(msg.sender)].field_0 += 10^9 * arg1 / tokenPrice
                            if totalTokensSold + (10^9 * arg1 / tokenPrice) < totalTokensSold:
                                revert with 0, 'SafeMath: addition overflow'
                            totalTokensSold += 10^9 * arg1 / tokenPrice
                            if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5ee2a4bd += arg1
                            emit TokenBuy(msg.sender, 10^9 * arg1 / tokenPrice);
                    else:
                        mem[(32 * _36) + ceil32(return_data.size) + 128] = 0x438b630000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _36) + ceil32(return_data.size) + 132] = msg.sender
                        require ext_code.size(mintContractAddress)
                        call mintContractAddress.walletOfOwner(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _36) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _36) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _3465 = mem[(32 * _36) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                        require mem[(32 * _36) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                        require mem[(32 * _36) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _36) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _36) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _36) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[(32 * _36) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _36) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _36) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _36) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _36) + ceil32(return_data.size) + 128]
                        _3573 = mem[_3465 + (32 * _36) + ceil32(return_data.size) + 128]
                        mem[(32 * _36) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_3465 + (32 * _36) + ceil32(return_data.size) + 128])] = mem[_3465 + (32 * _36) + ceil32(return_data.size) + 160 len floor32(mem[_3465 + (32 * _36) + ceil32(return_data.size) + 128])]
                        if mem[(32 * _36) + (2 * ceil32(return_data.size)) + 128] <= 0:
                            if not arg1:
                                if tokenPrice <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require tokenPrice
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 196] = msg.sender
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 228] = this.address
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 260] = arg1
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 160] = 100
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 292] = 32
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 324] = 'SafeBEP20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 462 len 26]
                                if ext_code.size(MIMAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 480 len 4] = 0
                                call MIMAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 452 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                            revert with memory
                                              from 128
                                               len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                        if not uint32(msg.sender), mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 466 len 14],
                                                        0,
                                                        mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 484 len 4]
                                else:
                                    mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 467 len 22]
                                if tokensOwned[address(msg.sender)].field_0 + (0 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokensOwned[address(msg.sender)].field_0 += 0 / tokenPrice
                                if totalTokensSold + (0 / tokenPrice) < totalTokensSold:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalTokensSold += 0 / tokenPrice
                                if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5ee2a4bd += arg1
                                emit TokenBuy(msg.sender, 0 / tokenPrice);
                            else:
                                require arg1
                                if 10^9 * arg1 / arg1 != 10^9:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 261 len 31]
                                if tokenPrice <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require tokenPrice
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 196] = msg.sender
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 228] = this.address
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 260] = arg1
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 160] = 100
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 292] = 32
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 324] = 'SafeBEP20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 462 len 26]
                                if ext_code.size(MIMAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 480 len 4] = 0
                                call MIMAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 452 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                            revert with memory
                                              from 128
                                               len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                        if not uint32(msg.sender), mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 466 len 14],
                                                        0,
                                                        mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 484 len 4]
                                else:
                                    mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 467 len 22]
                                if tokensOwned[address(msg.sender)].field_0 + (10^9 * arg1 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokensOwned[address(msg.sender)].field_0 += 10^9 * arg1 / tokenPrice
                                if totalTokensSold + (10^9 * arg1 / tokenPrice) < totalTokensSold:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalTokensSold += 10^9 * arg1 / tokenPrice
                                if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5ee2a4bd += arg1
                                emit TokenBuy(msg.sender, 10^9 * arg1 / tokenPrice);
                        else:
                            if not arg1:
                                if tokenPrice <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require tokenPrice
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 196] = msg.sender
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 228] = this.address
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 260] = arg1
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 160] = 100
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 292] = 32
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 324] = 'SafeBEP20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 462 len 26]
                                if ext_code.size(MIMAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 480 len 4] = 0
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 452 len 0] = 0
                                call MIMAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 452 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                            revert with memory
                                              from 128
                                               len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                        if not uint32(msg.sender), mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 466 len 14],
                                                        0,
                                                        mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 484 len 4]
                                else:
                                    mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 467 len 22]
                                if tokensOwned[address(msg.sender)].field_0 + (10 * 0 / tokenPrice / 8) < tokensOwned[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokensOwned[address(msg.sender)].field_0 += 10 * 0 / tokenPrice / 8
                                if totalTokensSold + (10 * 0 / tokenPrice / 8) < totalTokensSold:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalTokensSold += 10 * 0 / tokenPrice / 8
                                if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5ee2a4bd += arg1
                                emit TokenBuy(msg.sender, 10 * 0 / tokenPrice / 8);
                            else:
                                require arg1
                                if 10^9 * arg1 / arg1 != 10^9:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 261 len 31]
                                if tokenPrice <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require tokenPrice
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 196] = msg.sender
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 228] = this.address
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 260] = arg1
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 160] = 100
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 292] = 32
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 324] = 'SafeBEP20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 462 len 26]
                                if ext_code.size(MIMAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 480 len 4] = 0
                                call MIMAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 452 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                            revert with memory
                                              from 128
                                               len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                        if not uint32(msg.sender), mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 466 len 14],
                                                        0,
                                                        mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 484 len 4]
                                else:
                                    mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + 388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _3573) + (32 * _36) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 467 len 22]
                                if tokensOwned[address(msg.sender)].field_0 + (10 * 10^9 * arg1 / tokenPrice / 8) < tokensOwned[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokensOwned[address(msg.sender)].field_0 += 10 * 10^9 * arg1 / tokenPrice / 8
                                if totalTokensSold + (10 * 10^9 * arg1 / tokenPrice / 8) < totalTokensSold:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalTokensSold += 10 * 10^9 * arg1 / tokenPrice / 8
                                if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5ee2a4bd += arg1
                                emit TokenBuy(msg.sender, 10 * 10^9 * arg1 / tokenPrice / 8);
    else:
        require ext_code.size(mintContractAddress)
        call mintContractAddress.whiteListed(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x734e4654474d3a20696e76657273746f72206973206e6f74207768697465206c69737465,
                        mem[200 len 28]
        if sub_5ee2a4bd + arg1 > sub_d3ebb9de:
            revert with 0, 'NFTGM:: Presale hardcap reached'
        if arg1 < minBuyAmount:
            revert with 0, 'NFTGM:: low amount than min'
        mem[0] = msg.sender
        mem[32] = 12
        if arg1 + (tokensOwned[address(msg.sender)].field_0 * tokenPrice / 10^9) > maxBuyAmount:
            revert with 0, 'NFTGM:: high amount than max'
        if block.timestamp > startTimeStamp + (24 * 3600):
            if block.timestamp >= startTimeStamp + (48 * 24 * 3600):
                if not arg1:
                    if tokenPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tokenPrice
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if ext_code.size(MIMAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    call MIMAddress with:
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
                    if tokensOwned[address(msg.sender)].field_0 + (0 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    tokensOwned[address(msg.sender)].field_0 += 0 / tokenPrice
                    if totalTokensSold + (0 / tokenPrice) < totalTokensSold:
                        revert with 0, 'SafeMath: addition overflow'
                    totalTokensSold += 0 / tokenPrice
                    if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_5ee2a4bd += arg1
                    emit TokenBuy(msg.sender, 0 / tokenPrice);
                else:
                    require arg1
                    if 10^9 * arg1 / arg1 != 10^9:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if tokenPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tokenPrice
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if ext_code.size(MIMAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    call MIMAddress with:
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
                    if tokensOwned[address(msg.sender)].field_0 + (10^9 * arg1 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    tokensOwned[address(msg.sender)].field_0 += 10^9 * arg1 / tokenPrice
                    if totalTokensSold + (10^9 * arg1 / tokenPrice) < totalTokensSold:
                        revert with 0, 'SafeMath: addition overflow'
                    totalTokensSold += 10^9 * arg1 / tokenPrice
                    if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_5ee2a4bd += arg1
                    emit TokenBuy(msg.sender, 10^9 * arg1 / tokenPrice);
            else:
                if block.timestamp <= startTimeStamp + (24 * 3600):
                    if not arg1:
                        if tokenPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require tokenPrice
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if ext_code.size(MIMAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        call MIMAddress with:
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
                        if tokensOwned[address(msg.sender)].field_0 + (0 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        tokensOwned[address(msg.sender)].field_0 += 0 / tokenPrice
                        if totalTokensSold + (0 / tokenPrice) < totalTokensSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalTokensSold += 0 / tokenPrice
                        if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_5ee2a4bd += arg1
                        emit TokenBuy(msg.sender, 0 / tokenPrice);
                    else:
                        require arg1
                        if 10^9 * arg1 / arg1 != 10^9:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require tokenPrice
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if ext_code.size(MIMAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call MIMAddress with:
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
                        if tokensOwned[address(msg.sender)].field_0 + (10^9 * arg1 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        tokensOwned[address(msg.sender)].field_0 += 10^9 * arg1 / tokenPrice
                        if totalTokensSold + (10^9 * arg1 / tokenPrice) < totalTokensSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalTokensSold += 10^9 * arg1 / tokenPrice
                        if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_5ee2a4bd += arg1
                        emit TokenBuy(msg.sender, 10^9 * arg1 / tokenPrice);
                else:
                    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
                    mem[100] = msg.sender
                    require ext_code.size(mintContractAddress)
                    call mintContractAddress.walletOfOwner(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _67 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    _85 = mem[_67 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[_67 + 96])] = mem[_67 + 128 len floor32(mem[_67 + 96])]
                    if mem[ceil32(return_data.size) + 96] <= 0:
                        if not arg1:
                            if tokenPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require tokenPrice
                            mem[(32 * _85) + ceil32(return_data.size) + 164] = msg.sender
                            mem[(32 * _85) + ceil32(return_data.size) + 196] = this.address
                            mem[(32 * _85) + ceil32(return_data.size) + 228] = arg1
                            mem[(32 * _85) + ceil32(return_data.size) + 128] = 100
                            mem[(32 * _85) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(32 * _85) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                            mem[(32 * _85) + ceil32(return_data.size) + 260] = 32
                            mem[(32 * _85) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _85) + ceil32(return_data.size) + 430 len 26]
                            if ext_code.size(MIMAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _85) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[(32 * _85) + ceil32(return_data.size) + 448 len 4] = 0
                            call MIMAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[(32 * _85) + ceil32(return_data.size) + 420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                    if not uint32(msg.sender), mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _85) + ceil32(return_data.size) + 434 len 14],
                                                    0,
                                                    mem[(32 * _85) + ceil32(return_data.size) + 452 len 4]
                            else:
                                mem[(32 * _85) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _85) + ceil32(return_data.size) + 356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _85) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                            if tokensOwned[address(msg.sender)].field_0 + (0 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            tokensOwned[address(msg.sender)].field_0 += 0 / tokenPrice
                            if totalTokensSold + (0 / tokenPrice) < totalTokensSold:
                                revert with 0, 'SafeMath: addition overflow'
                            totalTokensSold += 0 / tokenPrice
                            if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5ee2a4bd += arg1
                            emit TokenBuy(msg.sender, 0 / tokenPrice);
                        else:
                            require arg1
                            if 10^9 * arg1 / arg1 != 10^9:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _85) + ceil32(return_data.size) + 229 len 31]
                            if tokenPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require tokenPrice
                            mem[(32 * _85) + ceil32(return_data.size) + 164] = msg.sender
                            mem[(32 * _85) + ceil32(return_data.size) + 196] = this.address
                            mem[(32 * _85) + ceil32(return_data.size) + 228] = arg1
                            mem[(32 * _85) + ceil32(return_data.size) + 128] = 100
                            mem[(32 * _85) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(32 * _85) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                            mem[(32 * _85) + ceil32(return_data.size) + 260] = 32
                            mem[(32 * _85) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _85) + ceil32(return_data.size) + 430 len 26]
                            if ext_code.size(MIMAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _85) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[(32 * _85) + ceil32(return_data.size) + 448 len 4] = 0
                            call MIMAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[(32 * _85) + ceil32(return_data.size) + 420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                    if not uint32(msg.sender), mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _85) + ceil32(return_data.size) + 434 len 14],
                                                    0,
                                                    mem[(32 * _85) + ceil32(return_data.size) + 452 len 4]
                            else:
                                mem[(32 * _85) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _85) + ceil32(return_data.size) + 356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _85) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                            if tokensOwned[address(msg.sender)].field_0 + (10^9 * arg1 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            tokensOwned[address(msg.sender)].field_0 += 10^9 * arg1 / tokenPrice
                            if totalTokensSold + (10^9 * arg1 / tokenPrice) < totalTokensSold:
                                revert with 0, 'SafeMath: addition overflow'
                            totalTokensSold += 10^9 * arg1 / tokenPrice
                            if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5ee2a4bd += arg1
                            emit TokenBuy(msg.sender, 10^9 * arg1 / tokenPrice);
                    else:
                        if not arg1:
                            if tokenPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require tokenPrice
                            mem[(32 * _85) + ceil32(return_data.size) + 164] = msg.sender
                            mem[(32 * _85) + ceil32(return_data.size) + 196] = this.address
                            mem[(32 * _85) + ceil32(return_data.size) + 228] = arg1
                            mem[(32 * _85) + ceil32(return_data.size) + 128] = 100
                            mem[(32 * _85) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(32 * _85) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                            mem[(32 * _85) + ceil32(return_data.size) + 260] = 32
                            mem[(32 * _85) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _85) + ceil32(return_data.size) + 430 len 26]
                            if ext_code.size(MIMAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _85) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[(32 * _85) + ceil32(return_data.size) + 448 len 4] = 0
                            mem[(32 * _85) + ceil32(return_data.size) + 420 len 0] = 0
                            call MIMAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[(32 * _85) + ceil32(return_data.size) + 420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                    if not uint32(msg.sender), mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _85) + ceil32(return_data.size) + 434 len 14],
                                                    0,
                                                    mem[(32 * _85) + ceil32(return_data.size) + 452 len 4]
                            else:
                                mem[(32 * _85) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _85) + ceil32(return_data.size) + 356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _85) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                            if tokensOwned[address(msg.sender)].field_0 + (10 * 0 / tokenPrice / 8) < tokensOwned[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            tokensOwned[address(msg.sender)].field_0 += 10 * 0 / tokenPrice / 8
                            if totalTokensSold + (10 * 0 / tokenPrice / 8) < totalTokensSold:
                                revert with 0, 'SafeMath: addition overflow'
                            totalTokensSold += 10 * 0 / tokenPrice / 8
                            if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5ee2a4bd += arg1
                            emit TokenBuy(msg.sender, 10 * 0 / tokenPrice / 8);
                        else:
                            require arg1
                            if 10^9 * arg1 / arg1 != 10^9:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _85) + ceil32(return_data.size) + 229 len 31]
                            if tokenPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require tokenPrice
                            mem[(32 * _85) + ceil32(return_data.size) + 164] = msg.sender
                            mem[(32 * _85) + ceil32(return_data.size) + 196] = this.address
                            mem[(32 * _85) + ceil32(return_data.size) + 228] = arg1
                            mem[(32 * _85) + ceil32(return_data.size) + 128] = 100
                            mem[(32 * _85) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(32 * _85) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                            mem[(32 * _85) + ceil32(return_data.size) + 260] = 32
                            mem[(32 * _85) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _85) + ceil32(return_data.size) + 430 len 26]
                            if ext_code.size(MIMAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _85) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[(32 * _85) + ceil32(return_data.size) + 448 len 4] = 0
                            call MIMAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[(32 * _85) + ceil32(return_data.size) + 420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                    if not uint32(msg.sender), mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _85) + ceil32(return_data.size) + 434 len 14],
                                                    0,
                                                    mem[(32 * _85) + ceil32(return_data.size) + 452 len 4]
                            else:
                                mem[(32 * _85) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _85) + ceil32(return_data.size) + 356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _85) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                            if tokensOwned[address(msg.sender)].field_0 + (10 * 10^9 * arg1 / tokenPrice / 8) < tokensOwned[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            tokensOwned[address(msg.sender)].field_0 += 10 * 10^9 * arg1 / tokenPrice / 8
                            if totalTokensSold + (10 * 10^9 * arg1 / tokenPrice / 8) < totalTokensSold:
                                revert with 0, 'SafeMath: addition overflow'
                            totalTokensSold += 10 * 10^9 * arg1 / tokenPrice / 8
                            if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5ee2a4bd += arg1
                            emit TokenBuy(msg.sender, 10 * 10^9 * arg1 / tokenPrice / 8);
        else:
            mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
            mem[100] = msg.sender
            require ext_code.size(mintContractAddress)
            call mintContractAddress.walletOfOwner(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _46 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
            _60 = mem[_46 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_46 + 96])] = mem[_46 + 128 len floor32(mem[_46 + 96])]
            if mem[ceil32(return_data.size) + 96] > 0:
                if not arg1:
                    if tokenPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tokenPrice
                    mem[(32 * _60) + ceil32(return_data.size) + 164] = msg.sender
                    mem[(32 * _60) + ceil32(return_data.size) + 196] = this.address
                    mem[(32 * _60) + ceil32(return_data.size) + 228] = arg1
                    mem[(32 * _60) + ceil32(return_data.size) + 128] = 100
                    mem[(32 * _60) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _60) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                    mem[(32 * _60) + ceil32(return_data.size) + 260] = 32
                    mem[(32 * _60) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _60) + ceil32(return_data.size) + 430 len 26]
                    if ext_code.size(MIMAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _60) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[(32 * _60) + ceil32(return_data.size) + 448 len 4] = 0
                    call MIMAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[(32 * _60) + ceil32(return_data.size) + 420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                            require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                            if not uint32(msg.sender), mem[132 len 28]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _60) + ceil32(return_data.size) + 434 len 14],
                                            0,
                                            mem[(32 * _60) + ceil32(return_data.size) + 452 len 4]
                    else:
                        mem[(32 * _60) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _60) + ceil32(return_data.size) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _60) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                    if tokensOwned[address(msg.sender)].field_0 + (2 * 0 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    tokensOwned[address(msg.sender)].field_0 += 2 * 0 / tokenPrice
                    if totalTokensSold + (2 * 0 / tokenPrice) < totalTokensSold:
                        revert with 0, 'SafeMath: addition overflow'
                    totalTokensSold += 2 * 0 / tokenPrice
                    if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_5ee2a4bd += arg1
                    emit TokenBuy(msg.sender, 2 * 0 / tokenPrice);
                else:
                    require arg1
                    if 10^9 * arg1 / arg1 != 10^9:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _60) + ceil32(return_data.size) + 229 len 31]
                    if tokenPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tokenPrice
                    mem[(32 * _60) + ceil32(return_data.size) + 164] = msg.sender
                    mem[(32 * _60) + ceil32(return_data.size) + 196] = this.address
                    mem[(32 * _60) + ceil32(return_data.size) + 228] = arg1
                    mem[(32 * _60) + ceil32(return_data.size) + 128] = 100
                    mem[(32 * _60) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _60) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                    mem[(32 * _60) + ceil32(return_data.size) + 260] = 32
                    mem[(32 * _60) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _60) + ceil32(return_data.size) + 430 len 26]
                    if ext_code.size(MIMAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _60) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[(32 * _60) + ceil32(return_data.size) + 448 len 4] = 0
                    mem[(32 * _60) + ceil32(return_data.size) + 420 len 0] = 0
                    call MIMAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[(32 * _60) + ceil32(return_data.size) + 420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                            require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                            if not uint32(msg.sender), mem[132 len 28]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _60) + ceil32(return_data.size) + 434 len 14],
                                            0,
                                            mem[(32 * _60) + ceil32(return_data.size) + 452 len 4]
                    else:
                        mem[(32 * _60) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _60) + ceil32(return_data.size) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _60) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                    if tokensOwned[address(msg.sender)].field_0 + (2 * 10^9 * arg1 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    tokensOwned[address(msg.sender)].field_0 += 2 * 10^9 * arg1 / tokenPrice
                    if totalTokensSold + (2 * 10^9 * arg1 / tokenPrice) < totalTokensSold:
                        revert with 0, 'SafeMath: addition overflow'
                    totalTokensSold += 2 * 10^9 * arg1 / tokenPrice
                    if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_5ee2a4bd += arg1
                    emit TokenBuy(msg.sender, 2 * 10^9 * arg1 / tokenPrice);
            else:
                if block.timestamp >= startTimeStamp + (48 * 24 * 3600):
                    if not arg1:
                        if tokenPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require tokenPrice
                        mem[(32 * _60) + ceil32(return_data.size) + 164] = msg.sender
                        mem[(32 * _60) + ceil32(return_data.size) + 196] = this.address
                        mem[(32 * _60) + ceil32(return_data.size) + 228] = arg1
                        mem[(32 * _60) + ceil32(return_data.size) + 128] = 100
                        mem[(32 * _60) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(32 * _60) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                        mem[(32 * _60) + ceil32(return_data.size) + 260] = 32
                        mem[(32 * _60) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _60) + ceil32(return_data.size) + 430 len 26]
                        if ext_code.size(MIMAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _60) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[(32 * _60) + ceil32(return_data.size) + 448 len 4] = 0
                        call MIMAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[(32 * _60) + ceil32(return_data.size) + 420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                if not uint32(msg.sender), mem[132 len 28]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _60) + ceil32(return_data.size) + 434 len 14],
                                                0,
                                                mem[(32 * _60) + ceil32(return_data.size) + 452 len 4]
                        else:
                            mem[(32 * _60) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _60) + ceil32(return_data.size) + 356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _60) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                        if tokensOwned[address(msg.sender)].field_0 + (0 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        tokensOwned[address(msg.sender)].field_0 += 0 / tokenPrice
                        if totalTokensSold + (0 / tokenPrice) < totalTokensSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalTokensSold += 0 / tokenPrice
                        if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_5ee2a4bd += arg1
                        emit TokenBuy(msg.sender, 0 / tokenPrice);
                    else:
                        require arg1
                        if 10^9 * arg1 / arg1 != 10^9:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _60) + ceil32(return_data.size) + 229 len 31]
                        if tokenPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require tokenPrice
                        mem[(32 * _60) + ceil32(return_data.size) + 164] = msg.sender
                        mem[(32 * _60) + ceil32(return_data.size) + 196] = this.address
                        mem[(32 * _60) + ceil32(return_data.size) + 228] = arg1
                        mem[(32 * _60) + ceil32(return_data.size) + 128] = 100
                        mem[(32 * _60) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(32 * _60) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                        mem[(32 * _60) + ceil32(return_data.size) + 260] = 32
                        mem[(32 * _60) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _60) + ceil32(return_data.size) + 430 len 26]
                        if ext_code.size(MIMAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _60) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[(32 * _60) + ceil32(return_data.size) + 448 len 4] = 0
                        mem[(32 * _60) + ceil32(return_data.size) + 420 len 0] = 0
                        call MIMAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[(32 * _60) + ceil32(return_data.size) + 420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                if not uint32(msg.sender), mem[132 len 28]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _60) + ceil32(return_data.size) + 434 len 14],
                                                0,
                                                mem[(32 * _60) + ceil32(return_data.size) + 452 len 4]
                        else:
                            mem[(32 * _60) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _60) + ceil32(return_data.size) + 356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _60) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                        if tokensOwned[address(msg.sender)].field_0 + (10^9 * arg1 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        tokensOwned[address(msg.sender)].field_0 += 10^9 * arg1 / tokenPrice
                        if totalTokensSold + (10^9 * arg1 / tokenPrice) < totalTokensSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalTokensSold += 10^9 * arg1 / tokenPrice
                        if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_5ee2a4bd += arg1
                        emit TokenBuy(msg.sender, 10^9 * arg1 / tokenPrice);
                else:
                    if block.timestamp <= startTimeStamp + (24 * 3600):
                        if not arg1:
                            if tokenPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require tokenPrice
                            mem[(32 * _60) + ceil32(return_data.size) + 164] = msg.sender
                            mem[(32 * _60) + ceil32(return_data.size) + 196] = this.address
                            mem[(32 * _60) + ceil32(return_data.size) + 228] = arg1
                            mem[(32 * _60) + ceil32(return_data.size) + 128] = 100
                            mem[(32 * _60) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(32 * _60) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                            mem[(32 * _60) + ceil32(return_data.size) + 260] = 32
                            mem[(32 * _60) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _60) + ceil32(return_data.size) + 430 len 26]
                            if ext_code.size(MIMAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _60) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[(32 * _60) + ceil32(return_data.size) + 448 len 4] = 0
                            mem[(32 * _60) + ceil32(return_data.size) + 420 len 0] = 0
                            call MIMAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[(32 * _60) + ceil32(return_data.size) + 420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                    if not uint32(msg.sender), mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _60) + ceil32(return_data.size) + 434 len 14],
                                                    0,
                                                    mem[(32 * _60) + ceil32(return_data.size) + 452 len 4]
                            else:
                                mem[(32 * _60) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _60) + ceil32(return_data.size) + 356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _60) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                            if tokensOwned[address(msg.sender)].field_0 + (0 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            tokensOwned[address(msg.sender)].field_0 += 0 / tokenPrice
                            if totalTokensSold + (0 / tokenPrice) < totalTokensSold:
                                revert with 0, 'SafeMath: addition overflow'
                            totalTokensSold += 0 / tokenPrice
                            if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5ee2a4bd += arg1
                            emit TokenBuy(msg.sender, 0 / tokenPrice);
                        else:
                            require arg1
                            if 10^9 * arg1 / arg1 != 10^9:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _60) + ceil32(return_data.size) + 229 len 31]
                            if tokenPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require tokenPrice
                            mem[(32 * _60) + ceil32(return_data.size) + 164] = msg.sender
                            mem[(32 * _60) + ceil32(return_data.size) + 196] = this.address
                            mem[(32 * _60) + ceil32(return_data.size) + 228] = arg1
                            mem[(32 * _60) + ceil32(return_data.size) + 128] = 100
                            mem[(32 * _60) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(32 * _60) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
                            mem[(32 * _60) + ceil32(return_data.size) + 260] = 32
                            mem[(32 * _60) + ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _60) + ceil32(return_data.size) + 430 len 26]
                            if ext_code.size(MIMAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _60) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[(32 * _60) + ceil32(return_data.size) + 448 len 4] = 0
                            call MIMAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[(32 * _60) + ceil32(return_data.size) + 420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        revert with memory
                                          from 128
                                           len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                    if not uint32(msg.sender), mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _60) + ceil32(return_data.size) + 434 len 14],
                                                    0,
                                                    mem[(32 * _60) + ceil32(return_data.size) + 452 len 4]
                            else:
                                mem[(32 * _60) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _60) + ceil32(return_data.size) + 356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _60) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
                            if tokensOwned[address(msg.sender)].field_0 + (10^9 * arg1 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            tokensOwned[address(msg.sender)].field_0 += 10^9 * arg1 / tokenPrice
                            if totalTokensSold + (10^9 * arg1 / tokenPrice) < totalTokensSold:
                                revert with 0, 'SafeMath: addition overflow'
                            totalTokensSold += 10^9 * arg1 / tokenPrice
                            if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5ee2a4bd += arg1
                            emit TokenBuy(msg.sender, 10^9 * arg1 / tokenPrice);
                    else:
                        mem[(32 * _60) + ceil32(return_data.size) + 128] = 0x438b630000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _60) + ceil32(return_data.size) + 132] = msg.sender
                        require ext_code.size(mintContractAddress)
                        call mintContractAddress.walletOfOwner(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _60) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _60) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _3497 = mem[(32 * _60) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                        require mem[(32 * _60) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                        require mem[(32 * _60) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _60) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _60) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _60) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[(32 * _60) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _60) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _60) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _60) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _60) + ceil32(return_data.size) + 128]
                        _3592 = mem[_3497 + (32 * _60) + ceil32(return_data.size) + 128]
                        mem[(32 * _60) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_3497 + (32 * _60) + ceil32(return_data.size) + 128])] = mem[_3497 + (32 * _60) + ceil32(return_data.size) + 160 len floor32(mem[_3497 + (32 * _60) + ceil32(return_data.size) + 128])]
                        if mem[(32 * _60) + (2 * ceil32(return_data.size)) + 128] > 0:
                            if not arg1:
                                if tokenPrice <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require tokenPrice
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 196] = msg.sender
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 228] = this.address
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 260] = arg1
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 160] = 100
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 292] = 32
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 324] = 'SafeBEP20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 462 len 26]
                                if ext_code.size(MIMAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 480 len 4] = 0
                                call MIMAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 452 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                            revert with memory
                                              from 128
                                               len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                        if not uint32(msg.sender), mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 466 len 14],
                                                        0,
                                                        mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 484 len 4]
                                else:
                                    mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 467 len 22]
                                if tokensOwned[address(msg.sender)].field_0 + (10 * 0 / tokenPrice / 8) < tokensOwned[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokensOwned[address(msg.sender)].field_0 += 10 * 0 / tokenPrice / 8
                                if totalTokensSold + (10 * 0 / tokenPrice / 8) < totalTokensSold:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalTokensSold += 10 * 0 / tokenPrice / 8
                                if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5ee2a4bd += arg1
                                emit TokenBuy(msg.sender, 10 * 0 / tokenPrice / 8);
                            else:
                                require arg1
                                if 10^9 * arg1 / arg1 != 10^9:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 261 len 31]
                                if tokenPrice <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require tokenPrice
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 196] = msg.sender
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 228] = this.address
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 260] = arg1
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 160] = 100
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 292] = 32
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 324] = 'SafeBEP20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 462 len 26]
                                if ext_code.size(MIMAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 480 len 4] = 0
                                call MIMAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 452 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                            revert with memory
                                              from 128
                                               len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                        if not uint32(msg.sender), mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 466 len 14],
                                                        0,
                                                        mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 484 len 4]
                                else:
                                    mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 467 len 22]
                                if tokensOwned[address(msg.sender)].field_0 + (10 * 10^9 * arg1 / tokenPrice / 8) < tokensOwned[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokensOwned[address(msg.sender)].field_0 += 10 * 10^9 * arg1 / tokenPrice / 8
                                if totalTokensSold + (10 * 10^9 * arg1 / tokenPrice / 8) < totalTokensSold:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalTokensSold += 10 * 10^9 * arg1 / tokenPrice / 8
                                if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5ee2a4bd += arg1
                                emit TokenBuy(msg.sender, 10 * 10^9 * arg1 / tokenPrice / 8);
                        else:
                            if not arg1:
                                if tokenPrice <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require tokenPrice
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 196] = msg.sender
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 228] = this.address
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 260] = arg1
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 160] = 100
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 292] = 32
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 324] = 'SafeBEP20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 462 len 26]
                                if ext_code.size(MIMAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 480 len 4] = 0
                                call MIMAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 452 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                            revert with memory
                                              from 128
                                               len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                        if not uint32(msg.sender), mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 466 len 14],
                                                        0,
                                                        mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 484 len 4]
                                else:
                                    mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 467 len 22]
                                if tokensOwned[address(msg.sender)].field_0 + (0 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokensOwned[address(msg.sender)].field_0 += 0 / tokenPrice
                                if totalTokensSold + (0 / tokenPrice) < totalTokensSold:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalTokensSold += 0 / tokenPrice
                                if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5ee2a4bd += arg1
                                emit TokenBuy(msg.sender, 0 / tokenPrice);
                            else:
                                require arg1
                                if 10^9 * arg1 / arg1 != 10^9:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 261 len 31]
                                if tokenPrice <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require tokenPrice
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 196] = msg.sender
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 228] = this.address
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 260] = arg1
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 160] = 100
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 292] = 32
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 324] = 'SafeBEP20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 462 len 26]
                                if ext_code.size(MIMAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 480 len 4] = 0
                                mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 452 len 0] = 0
                                call MIMAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 452 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                            revert with memory
                                              from 128
                                               len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if mem[96 len 4], Mask(224, 32, msg.sender) >> 32 > 0:
                                        require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                                        if not uint32(msg.sender), mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 466 len 14],
                                                        0,
                                                        mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 484 len 4]
                                else:
                                    mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + 388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _3592) + (32 * _60) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 467 len 22]
                                if tokensOwned[address(msg.sender)].field_0 + (10^9 * arg1 / tokenPrice) < tokensOwned[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokensOwned[address(msg.sender)].field_0 += 10^9 * arg1 / tokenPrice
                                if totalTokensSold + (10^9 * arg1 / tokenPrice) < totalTokensSold:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalTokensSold += 10^9 * arg1 / tokenPrice
                                if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5ee2a4bd += arg1
                                emit TokenBuy(msg.sender, 10^9 * arg1 / tokenPrice);
    stor1 = 1
}



}
