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
mapping of uint256 tokensOwned;

function sub_0e1577eb(?) payable {
    return sub_0e1577ebAddress
}

function tokensOwned(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokensOwned[arg1]
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

function minBuyAmount() payable {
    return minBuyAmount
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateHardCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    sub_d3ebb9de = arg1
}

function sub_4a72e9ca(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    Mask(80, 0, stor4.field_176) = Mask(80, 0, arg1)
}

function setSaleActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function setClaimActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    Mask(88, 0, stor4.field_168) = Mask(88, 0, arg1)
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
        revert with 0, '.Ownable: caller is not the owne'
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
        revert with 0, '.Ownable: caller is not the owne'
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x644e4654474d3a3a206d617820616d6f756e742073686f756c6420626520626967676572207468616e206d696e20616d6f756e,
                    mem[215 len 13]
    minBuyAmount = arg1
    maxBuyAmount = arg2
}

function withdrawFunds() payable {
    if owner != msg.sender:
        revert with 0, '.Ownable: caller is not the owne'
    require ext_code.size(MIMAddress)
    staticcall MIMAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(MIMAddress):
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
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
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
        revert with 0, '.Ownable: caller is not the owne'
    require ext_code.size(sub_0e1577ebAddress)
    staticcall sub_0e1577ebAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_0e1577ebAddress):
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
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
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
        revert with 0, '.Ownable: caller is not the owne'
    require ext_code.size(sub_0e1577ebAddress)
    staticcall sub_0e1577ebAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_0e1577ebAddress):
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
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
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
    if not tokensOwned[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x724e4654474d3a3a20557365722073686f756c64206f776e20736f6d65204e4654474d20746f6b656e,
                    mem[205 len 23]
    require ext_code.size(sub_0e1577ebAddress)
    staticcall sub_0e1577ebAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < tokensOwned[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x6c4e4654474d3a3a20546865726520617265206e6f7420656e6f756768204e4654474d20746f6b656e7320746f207472616e73666572,
                    mem[218 len 10]
    tokensOwned[msg.sender] = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_0e1577ebAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^9 * tokensOwned[msg.sender]) >> 32
    mem[324 len 0] = 0
    call sub_0e1577ebAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, 10^9 * tokensOwned[msg.sender]) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, 10^9 * tokensOwned[msg.sender]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit TokenClaim(msg.sender, 10^9 * tokensOwned[msg.sender]);
    stor1 = 1
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not uint8(stor4.field_160):
        revert with 0, 'NFTGM:: Presale has not started'
    if uint8(stor4.field_176):
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
    if arg1 + (tokensOwned[msg.sender] * tokenPrice) > maxBuyAmount:
        revert with 0, 'NFTGM:: high amount than max'
    if tokenPrice <= 0:
        revert with 0, 'SafeMath: division by zero'
    require tokenPrice
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(MIMAddress):
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
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if (arg1 / tokenPrice) + tokensOwned[msg.sender] < tokensOwned[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    tokensOwned[msg.sender] += arg1 / tokenPrice
    if (arg1 / tokenPrice) + totalTokensSold < totalTokensSold:
        revert with 0, 'SafeMath: addition overflow'
    totalTokensSold += arg1 / tokenPrice
    if arg1 + sub_5ee2a4bd < sub_5ee2a4bd:
        revert with 0, 'SafeMath: addition overflow'
    sub_5ee2a4bd += arg1
    emit TokenBuy(msg.sender, arg1 / tokenPrice);
    stor1 = 1
}



}
