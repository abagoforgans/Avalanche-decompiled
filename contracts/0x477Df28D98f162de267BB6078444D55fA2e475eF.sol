contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 startTime;
uint256 endTime;
mapping of uint256 tokensOwned;
mapping of uint256 tokensUnclaimed;
address sub_0ae410f7Address;
uint8 stor7; offset 160
uint128 stor7; offset 160
address MIMAddress;
uint256 totalTokensSold;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 minimumDepositEthAmount;
mapping of uint8 stor14;

function sub_0ae410f7(?) payable {
    return sub_0ae410f7Address
}

function tokensOwned(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokensOwned[arg1]
}

function minimumDepositEthAmount() payable {
    return minimumDepositEthAmount
}

function endTime() payable {
    return endTime
}

function startTime() payable {
    return startTime
}

function tokensUnclaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokensUnclaimed[arg1]
}

function owner() payable {
    return owner
}

function getTotalTokensSold() payable {
    return totalTokensSold
}

function getTokensOwned(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokensOwned[address(arg1)]
}

function MIM() payable {
    return MIMAddress
}

function whiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateMinimumAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    minimumDepositEthAmount = arg1
}

function setSaleActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    Mask(96, 0, stor7.field_160) = Mask(96, 0, arg1)
}

function updateHardCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if arg1 <= stor12:
        revert with 0, 'hardCap should be over soft cap'
    stor11 = arg1
}

function sub_d68a096b(?) payable {
    require ext_code.size(sub_0ae410f7Address)
    staticcall sub_0ae410f7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a165b975(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x725f656e6454696d652073686f756c64206265206c61746572207468616e2073746172742074696d,
                    mem[204 len 24]
    startTime = arg1
    endTime = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setWhitelist(address[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 14
        stor14[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
}

function withdrawFunds() payable {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require ext_code.size(MIMAddress)
    staticcall MIMAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(MIMAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call MIMAddress with:
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

function sub_caa315c2(?) payable {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require ext_code.size(sub_0ae410f7Address)
    staticcall sub_0ae410f7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_0ae410f7Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call sub_0ae410f7Address with:
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

function sub_327400a8(?) payable {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require ext_code.size(sub_0ae410f7Address)
    staticcall sub_0ae410f7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_0ae410f7Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, ext_call.return_data[0] - totalTokensSold) >> 32
    mem[324 len 0] = 0
    call sub_0ae410f7Address with:
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

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not uint8(stor7.field_160):
        revert with 0, 'Presale is not active'
    if block.timestamp <= startTime:
        revert with 0, 'Presal is out of duration'
    if block.timestamp >= endTime:
        revert with 0, 'Presal is out of duration'
    if not stor14[msg.sender]:
        revert with 0, 'You were not registryed'
    if stor10 + arg1 > stor11:
        revert with 0, 'Presale hardcap reached'
    if arg1 < minimumDepositEthAmount:
        revert with 0, 'low amount than min'
    if stor9 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor9
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(MIMAddress):
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
    require ext_code.size(sub_0ae410f7Address)
    call sub_0ae410f7Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1 / stor9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (arg1 / stor9) + tokensOwned[address(msg.sender)] < tokensOwned[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    tokensOwned[address(msg.sender)] += arg1 / stor9
    if (arg1 / stor9) + totalTokensSold < totalTokensSold:
        revert with 0, 'SafeMath: addition overflow'
    totalTokensSold += arg1 / stor9
    if arg1 + stor10 < stor10:
        revert with 0, 'SafeMath: addition overflow'
    stor10 += arg1
    emit TokenBuy(msg.sender, arg1 / stor9);
    stor1 = 1
}



}
