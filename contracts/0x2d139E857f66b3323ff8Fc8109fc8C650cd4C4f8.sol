contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of uint256 userInfo;
mapping of uint8 stor3;
uint32 stor4;
address burnAddress;
uint256 stor4;
address sub_3a75b50bAddress;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint128 stor6; offset 168
uint128 stor6; offset 160
address USDCAddress;
uint256 totalTokensSold;
uint256 sub_3549756a;
uint256 sub_1aadcac0;
uint256 hardCap;
uint256 sub_da7127b8;
uint256 sub_7a995c2b;
uint256 startTime;
uint256 endTime;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1]
}

function sub_1aadcac0(?) payable {
    return sub_1aadcac0
}

function endTime() payable {
    return endTime
}

function sub_3549756a(?) payable {
    return sub_3549756a
}

function sub_3a75b50b(?) payable {
    return sub_3a75b50bAddress
}

function sub_51f1f2ee(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function saleActive() payable {
    return bool(uint8(stor6.field_160))
}

function burnAddress() payable {
    return address(burnAddress)
}

function startTime() payable {
    return startTime
}

function sub_7a995c2b(?) payable {
    return sub_7a995c2b
}

function USDC() payable {
    return USDCAddress
}

function owner() payable {
    return owner
}

function getTotalTokensSold() payable {
    return totalTokensSold
}

function getHardCap() payable {
    return hardCap
}

function sub_da7127b8(?) payable {
    return sub_da7127b8
}

function isPublic() payable {
    return bool(uint8(stor6.field_168))
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

function sub_ae194243(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 0
}

function sub_b6cec722(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
}

function sub_22bb5cf0(?) payable {
    require calldata.size - 4 >= 32
    if userInfo[address(arg1)] > sub_7a995c2b:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_7a995c2b - userInfo[address(arg1)])
}

function setSaleActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor6.field_160) = Mask(96, 0, arg1)
    startTime = block.timestamp
}

function sub_027228b5(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor6.field_160):
        revert with 0, 'Sale has already started'
    sub_3549756a = arg1
}

function setHardCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor6.field_160):
        revert with 0, 'Sale has already started'
    hardCap = arg1
}

function sub_77e56357(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor6.field_160):
        revert with 0, 'Sale has already ended'
    Mask(88, 0, stor6.field_168) = 1
    emit 0xf69bd4d6: block.number
}

function setMinMax(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor6.field_160):
        revert with 0, 'Sale has already ended'
    sub_da7127b8 = arg1
    sub_7a995c2b = arg2
}

function sub_4f42fdb0(?) payable {
    require ext_code.size(sub_3a75b50bAddress)
    staticcall sub_3a75b50bAddress.balanceOf(address arg1) with:
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

function sub_a165b975(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor6.field_160):
        revert with 0, 'Sale has already started'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x72656e6454696d652073686f756c64206265206c61746572207468616e2073746172742074696d,
                    mem[203 len 25]
    startTime = arg1
    endTime = arg2
}

function sub_bdcc30a2(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length > 2000:
        revert with 0, 'too many addresses'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function withdrawFunds() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
    mem[324 len 0] = 0
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

function sub_07be11b2(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_3a75b50bAddress)
    staticcall sub_3a75b50bAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(sub_3a75b50bAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call sub_3a75b50bAddress with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
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

function sub_43f844ba(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_3a75b50bAddress)
    staticcall sub_3a75b50bAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(sub_3a75b50bAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, ext_call.return_data[0] - totalTokensSold) >> 32
    mem[324 len 0] = 0
    call sub_3a75b50bAddress with:
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

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not uint8(stor6.field_160):
        revert with 0, 'Presale has not started'
    if endTime <= block.timestamp:
        revert with 0, 'Presale has ended'
    if sub_1aadcac0 + arg1 > hardCap:
        revert with 0, 'presale hardcap reached'
    if bool(stor3[address(msg.sender)]) == 1:
        if arg1 < sub_da7127b8:
            revert with 0, 'low amount than min'
        if userInfo[address(msg.sender)] + arg1 < userInfo[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if sub_7a995c2b < userInfo[address(msg.sender)] + arg1:
            revert with 0, 'new amount above user limit'
        if userInfo[address(msg.sender)] + arg1 < userInfo[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[address(msg.sender)] += arg1
        if not arg1:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if ext_code.size(USDCAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call USDCAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
                if sub_1aadcac0 + arg1 < sub_1aadcac0:
                    revert with 0, 'SafeMath: addition overflow'
                sub_1aadcac0 += arg1
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                if ext_code.size(sub_3a75b50bAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[456 len 64] = 0, msg.sender, 0
                call sub_3a75b50bAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[392 len 24], 0, mem[520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                else:
                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size <= 0:
                    if sub_1aadcac0 + arg1 < sub_1aadcac0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_1aadcac0 += arg1
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(sub_3a75b50bAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, 0
                    call sub_3a75b50bAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                    else:
                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeBEP20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                    if sub_1aadcac0 + arg1 < sub_1aadcac0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_1aadcac0 += arg1
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(sub_3a75b50bAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, 0
                    call sub_3a75b50bAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                    else:
                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
            emit TokenBuy(msg.sender, 0);
        else:
            require arg1
            if arg1 * sub_3549756a / arg1 != sub_3549756a:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if ext_code.size(USDCAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            call USDCAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
                if sub_1aadcac0 + arg1 < sub_1aadcac0:
                    revert with 0, 'SafeMath: addition overflow'
                sub_1aadcac0 += arg1
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                if ext_code.size(sub_3a75b50bAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[456 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg1 * sub_3549756a / 10^6) >> 32
                mem[520 len 0] = 0
                call sub_3a75b50bAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 * sub_3549756a / 10^6) << 224, mem[520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                else:
                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
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
                if sub_1aadcac0 + arg1 < sub_1aadcac0:
                    revert with 0, 'SafeMath: addition overflow'
                sub_1aadcac0 += arg1
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(sub_3a75b50bAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg1 * sub_3549756a / 10^6) >> 32
                mem[ceil32(return_data.size) + 521 len 0] = 0
                call sub_3a75b50bAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 * sub_3549756a / 10^6) << 224, mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
            emit TokenBuy(msg.sender, arg1 * sub_3549756a / 10^6);
    else:
        if not uint8(stor6.field_168):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x776d73672e73656e646572206973206e6f742077686974656c697374656420757365,
                        mem[198 len 30]
        if arg1 < sub_da7127b8:
            revert with 0, 'low amount than min'
        if userInfo[address(msg.sender)] + arg1 < userInfo[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if sub_7a995c2b < userInfo[address(msg.sender)] + arg1:
            revert with 0, 'new amount above user limit'
        if userInfo[address(msg.sender)] + arg1 < userInfo[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[address(msg.sender)] += arg1
        if not arg1:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if ext_code.size(USDCAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call USDCAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
                if sub_1aadcac0 + arg1 < sub_1aadcac0:
                    revert with 0, 'SafeMath: addition overflow'
                sub_1aadcac0 += arg1
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                if ext_code.size(sub_3a75b50bAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[456 len 64] = 0, msg.sender, 0
                call sub_3a75b50bAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[392 len 24], 0, mem[520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                else:
                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
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
                if sub_1aadcac0 + arg1 < sub_1aadcac0:
                    revert with 0, 'SafeMath: addition overflow'
                sub_1aadcac0 += arg1
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(sub_3a75b50bAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, 0
                call sub_3a75b50bAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeBEP20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            emit TokenBuy(msg.sender, 0);
        else:
            require arg1
            if arg1 * sub_3549756a / arg1 != sub_3549756a:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if ext_code.size(USDCAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call USDCAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
                if sub_1aadcac0 + arg1 < sub_1aadcac0:
                    revert with 0, 'SafeMath: addition overflow'
                sub_1aadcac0 += arg1
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                if ext_code.size(sub_3a75b50bAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1 * sub_3549756a / 10^6) >> 32
                call sub_3a75b50bAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args arg1 * sub_3549756a / 10^6, mem[392 len 24], 0, mem[520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                else:
                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size <= 0:
                    if sub_1aadcac0 + arg1 < sub_1aadcac0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_1aadcac0 += arg1
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(sub_3a75b50bAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1 * sub_3549756a / 10^6) >> 32
                    call sub_3a75b50bAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args arg1 * sub_3549756a / 10^6, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                    else:
                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeBEP20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                    if sub_1aadcac0 + arg1 < sub_1aadcac0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_1aadcac0 += arg1
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(sub_3a75b50bAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1 * sub_3549756a / 10^6) >> 32
                    call sub_3a75b50bAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args arg1 * sub_3549756a / 10^6, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                    else:
                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
            emit TokenBuy(msg.sender, arg1 * sub_3549756a / 10^6);
    stor1 = 1
}



}
