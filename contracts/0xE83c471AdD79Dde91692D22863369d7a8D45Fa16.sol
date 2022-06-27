contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 startTime;
uint256 endTime;
mapping of uint256 tokensUnclaimed;
address sub_0ae410f7Address;
uint8 stor6; offset 160
uint128 stor6; offset 160
address MIMAddress;
uint256 totalTokensSold;
uint256 tokenPrice;
uint256 sub_5ee2a4bd;
uint256 sub_d3ebb9de;
uint256 softCap;
uint256 minimumDepositEthAmount;
mapping of uint8 stor13;

function sub_0ae410f7(?) payable {
    return sub_0ae410f7Address
}

function minimumDepositEthAmount() payable {
    return minimumDepositEthAmount
}

function endTime() payable {
    return endTime
}

function isSaleActive() payable {
    return bool(uint8(stor6.field_160))
}

function sub_5ee2a4bd(?) payable {
    return sub_5ee2a4bd
}

function totalTokensSold() payable {
    return totalTokensSold
}

function startTime() payable {
    return startTime
}

function tokenPrice() payable {
    return tokenPrice
}

function tokensUnclaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokensUnclaimed[arg1]
}

function owner() payable {
    return owner
}

function softCap() payable {
    return softCap
}

function sub_d3ebb9de(?) payable {
    return sub_d3ebb9de
}

function MIM() payable {
    return MIMAddress
}

function whiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
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

function updateMinimumAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minimumDepositEthAmount = arg1
}

function setSaleActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor6.field_160) = Mask(96, 0, arg1)
}

function updateHardCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= softCap:
        revert with 0, 'hardCap should be over soft cap'
    sub_d3ebb9de = arg1
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
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6c656e6454696d652073686f756c64206265206c61746572207468616e2073746172742074696d,
                    mem[203 len 25]
    startTime = arg1
    endTime = arg2
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

function setWhitelist(address[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        stor13[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
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
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(MIMAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
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

function sub_caa315c2(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_0ae410f7Address)
    staticcall sub_0ae410f7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(sub_0ae410f7Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call sub_0ae410f7Address with:
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

function sub_327400a8(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_0ae410f7Address)
    staticcall sub_0ae410f7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(sub_0ae410f7Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - totalTokensSold) >> 32
    mem[324 len 0] = 0
    call sub_0ae410f7Address with:
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

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not uint8(stor6.field_160):
        revert with 0, 'Presale is not active'
    if block.timestamp <= startTime:
        revert with 0, 'Presal is out of duration'
    if block.timestamp >= endTime:
        revert with 0, 'Presal is out of duration'
    if not stor13[address(msg.sender)]:
        revert with 0, 'You were not registryed'
    if sub_5ee2a4bd + arg1 > sub_d3ebb9de:
        revert with 0, 'Presale hardcap reached'
    if arg1 < minimumDepositEthAmount:
        revert with 0, 'low amount than min'
    if tokenPrice <= 0:
        revert with 0, 'SafeMath: division by zero'
    require tokenPrice
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
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
    require ext_code.size(sub_0ae410f7Address)
    call sub_0ae410f7Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * arg1 / tokenPrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalTokensSold + (10^18 * arg1 / tokenPrice) < totalTokensSold:
        revert with 0, 'SafeMath: addition overflow'
    totalTokensSold += 10^18 * arg1 / tokenPrice
    if sub_5ee2a4bd + arg1 < sub_5ee2a4bd:
        revert with 0, 'SafeMath: addition overflow'
    sub_5ee2a4bd += arg1
    emit TokenBuy(msg.sender, 10^18 * arg1 / tokenPrice);
    stor1 = 1
}



}
