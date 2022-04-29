contract main {




// =====================  Runtime code  =====================


const sub_383a57e6(?) = 15 * 10^11


uint256 stor0;
mapping of uint256 sub_bb1605b7;
mapping of uint256 sub_dfdd1b44;
address sub_4620d95bAddress;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 168
uint128 stor4; offset 160
address buyTokenAddress;
uint256 sub_004d4d2c;
uint256 sub_1bf32e7a;
uint256 sub_de284b3a;
uint256 sub_549573b4;
address stor9;

function sub_004d4d2c(?) payable {
    return sub_004d4d2c
}

function sub_1bf32e7a(?) payable {
    return sub_1bf32e7a
}

function BuyToken() payable {
    return buyTokenAddress
}

function sub_4620d95b(?) payable {
    return sub_4620d95bAddress
}

function sub_549573b4(?) payable {
    return sub_549573b4
}

function isSaleActive() payable {
    return bool(uint8(stor4.field_160))
}

function isClaimActive() payable {
    return bool(uint8(stor4.field_168))
}

function sub_bb1605b7(?) payable {
    require calldata.size - 4 >= 32
    return sub_bb1605b7[arg1]
}

function sub_de284b3a(?) payable {
    return sub_de284b3a
}

function sub_dfdd1b44(?) payable {
    require calldata.size - 4 >= 32
    return sub_dfdd1b44[arg1]
}

function _fallback() payable {
    revert
}

function setSaleActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner'
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function setClaimActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner'
    Mask(88, 0, stor4.field_168) = Mask(88, 0, arg1)
    if not sub_549573b4:
        if arg1:
            sub_549573b4 = block.timestamp
}

function sub_f505d3f0(?) payable {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner'
    if arg1 > 15 * 10^11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    71,
                    0x725445535443473a3a7570646174654d6178427579506572557365723a206d617842757950657255736572206d757374206e6f7420657863656564207468652068617264636170,
                    mem[235 len 25]
    emit 0xd44f1e9d: msg.sender, sub_de284b3a, arg1
    sub_de284b3a = arg1
}

function withdrawFunds() payable {
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner'
    require ext_code.size(buyTokenAddress)
    staticcall buyTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(buyTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call buyTokenAddress with:
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

function emergencyWithdraw() payable {
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner'
    require ext_code.size(sub_4620d95bAddress)
    staticcall sub_4620d95bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_4620d95bAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call sub_4620d95bAddress with:
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

function sub_a7b0f6d3(?) payable {
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner'
    if not sub_1bf32e7a:
        require ext_code.size(sub_4620d95bAddress)
        staticcall sub_4620d95bAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(sub_4620d95bAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call sub_4620d95bAddress with:
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
    else:
        if 10^12 * sub_1bf32e7a / sub_1bf32e7a != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(sub_4620d95bAddress)
        staticcall sub_4620d95bAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(sub_4620d95bAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (10^12 * sub_1bf32e7a)) >> 32
        call sub_4620d95bAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] - (10^12 * sub_1bf32e7a)) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - (10^12 * sub_1bf32e7a)
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

function buy(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not uint8(stor4.field_160):
        revert with 0, 'Presale has not started'
    if block.timestamp < sub_004d4d2c:
        revert with 0, 'Presale has not started'
    if not arg1 / 10:
        if sub_1bf32e7a > 15 * 10^11:
            revert with 0, 'TestCG presale hardcap reached'
        if sub_bb1605b7[address(arg2)] > sub_de284b3a:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x77596f757220616d6f756e74206578636565647320746865206d617820627579206e756d6265,
                        mem[202 len 26]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(buyTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        call buyTokenAddress with:
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
        if sub_bb1605b7[address(arg2)] < sub_bb1605b7[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        if sub_1bf32e7a < sub_1bf32e7a:
            revert with 0, 'SafeMath: addition overflow'
        emit TokenBuy(address(arg2), 0);
    else:
        if 100 * arg1 / 10 / arg1 / 10 != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1bf32e7a + (100 * arg1 / 10) > 15 * 10^11:
            revert with 0, 'TestCG presale hardcap reached'
        if (100 * arg1 / 10) + sub_bb1605b7[address(arg2)] > sub_de284b3a:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x77596f757220616d6f756e74206578636565647320746865206d617820627579206e756d6265,
                        mem[202 len 26]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(buyTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        call buyTokenAddress with:
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
        if (100 * arg1 / 10) + sub_bb1605b7[address(arg2)] < sub_bb1605b7[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_bb1605b7[address(arg2)] += 100 * arg1 / 10
        if (100 * arg1 / 10) + sub_1bf32e7a < sub_1bf32e7a:
            revert with 0, 'SafeMath: addition overflow'
        sub_1bf32e7a += 100 * arg1 / 10
        emit TokenBuy(address(arg2), 100 * arg1 / 10);
    stor0 = 1
}

function claim() payable {
    if not uint8(stor4.field_168):
        revert with 0, 'Claim is not allowed yet'
    if not sub_bb1605b7[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x2e557365722073686f756c64206861766520756e636c61696d65642054455354434720746f6b656e,
                    mem[204 len 24]
    require ext_code.size(sub_4620d95bAddress)
    staticcall sub_4620d95bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_bb1605b7[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64546865726520617265206e6f7420656e6f7567682054455354434720746f6b656e7320746f207472616e73666572,
                    mem[211 len 17]
    if not sub_dfdd1b44[msg.sender]:
        sub_dfdd1b44[msg.sender] = sub_549573b4
    if sub_dfdd1b44[msg.sender] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - sub_dfdd1b44[msg.sender] / 600 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x6c557365722063616e6e6f7420636c61696d2054455354434720746f6b656e73207768656e2050657263656e742069732030,
                    mem[214 len 14]
    sub_dfdd1b44[msg.sender] = block.timestamp
    if block.timestamp - sub_dfdd1b44[msg.sender] / 600 <= 100:
        if not sub_bb1605b7[msg.sender]:
            if 0 > sub_bb1605b7[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(sub_4620d95bAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
            call sub_4620d95bAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args 0, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, 0
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
            emit TokenClaim(msg.sender, 0);
        else:
            if block.timestamp - sub_dfdd1b44[msg.sender] / 600 * sub_bb1605b7[msg.sender] / sub_bb1605b7[msg.sender] != block.timestamp - sub_dfdd1b44[msg.sender] / 600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp - sub_dfdd1b44[msg.sender] / 600 * sub_bb1605b7[msg.sender] / 100 > sub_bb1605b7[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_bb1605b7[msg.sender] -= block.timestamp - sub_dfdd1b44[msg.sender] / 600 * sub_bb1605b7[msg.sender] / 100
            if not block.timestamp - sub_dfdd1b44[msg.sender] / 600 * sub_bb1605b7[msg.sender] / 100:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_4620d95bAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                call sub_4620d95bAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, 0
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
                emit TokenClaim(msg.sender, 0);
            else:
                if 10^12 * block.timestamp - sub_dfdd1b44[msg.sender] / 600 * sub_bb1605b7[msg.sender] / 100 / block.timestamp - sub_dfdd1b44[msg.sender] / 600 * sub_bb1605b7[msg.sender] / 100 != 10^12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_4620d95bAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^12 * block.timestamp - sub_dfdd1b44[msg.sender] / 600 * sub_bb1605b7[msg.sender] / 100) >> 32
                call sub_4620d95bAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 10^12 * block.timestamp - sub_dfdd1b44[msg.sender] / 600 * sub_bb1605b7[msg.sender] / 100) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    msg.sender,
                                    10^12 * block.timestamp - sub_dfdd1b44[msg.sender] / 600 * sub_bb1605b7[msg.sender] / 100
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
                emit TokenClaim(msg.sender, 10^12 * block.timestamp - sub_dfdd1b44[msg.sender] / 600 * sub_bb1605b7[msg.sender] / 100);
    else:
        if not sub_bb1605b7[msg.sender]:
            if 0 > sub_bb1605b7[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(sub_4620d95bAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
            call sub_4620d95bAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args 0, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, 0
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
            emit TokenClaim(msg.sender, 0);
        else:
            if 100 * sub_bb1605b7[msg.sender] / sub_bb1605b7[msg.sender] != 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 100 * sub_bb1605b7[msg.sender] / 100 > sub_bb1605b7[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_bb1605b7[msg.sender] -= 100 * sub_bb1605b7[msg.sender] / 100
            if not 100 * sub_bb1605b7[msg.sender] / 100:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_4620d95bAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                call sub_4620d95bAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, 0
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
                emit TokenClaim(msg.sender, 0);
            else:
                if 10^12 * 100 * sub_bb1605b7[msg.sender] / 100 / 100 * sub_bb1605b7[msg.sender] / 100 != 10^12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_4620d95bAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^12 * 100 * sub_bb1605b7[msg.sender] / 100) >> 32
                call sub_4620d95bAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 10^12 * 100 * sub_bb1605b7[msg.sender] / 100) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, 10^12 * 100 * sub_bb1605b7[msg.sender] / 100
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
                emit TokenClaim(msg.sender, 10^12 * 100 * sub_bb1605b7[msg.sender] / 100);
}



}
