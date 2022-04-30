contract main {




// =====================  Runtime code  =====================


#
#  - invest()
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint128 storFAD9; offset 160
address underlyingAddress;
uint128 stor1B57; offset 160
address registryAddress;
uint128 stor2161; offset 160
address joetrollerAddress;
uint128 stor4390; offset 160
address extraRewardAddress;
uint128 stor4FF4; offset 160
address derivativeAddress;
uint128 storAEB8; offset 160
address rewardAddress;
uint128 storD2EF; offset 160
address bankAddress;

function derivative() {
    return derivativeAddress
}

function reward() {
    return rewardAddress
}

function extraReward() {
    return extraRewardAddress
}

function joetroller() {
    return joetrollerAddress
}

function underlying() {
    return underlyingAddress
}

function bank() {
    return bankAddress
}

function registry() {
    return registryAddress
}

function _fallback() payable {
    revert
}

function manager() {
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x481c6a75 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function governance() {
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function underlyingBalance() {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function extraRewardBalance() {
    require ext_code.size(extraRewardAddress)
    staticcall extraRewardAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function rewardBalance() {
    if not rewardAddress:
        return 0
    require ext_code.size(rewardAddress)
    staticcall rewardAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function derivativeBalance() {
    if not derivativeAddress:
        return 0
    require ext_code.size(derivativeAddress)
    staticcall derivativeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setRegistry(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Subscriber: Only Governance'
    registryAddress = arg1
    stor1B57 = 0
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Subscriber: Bad Governance'
}

function investedBalance() {
    require ext_code.size(derivativeAddress)
    staticcall derivativeAddress.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not derivativeAddress:
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            else:
                return 0
        else:
            return 0
    require ext_code.size(derivativeAddress)
    staticcall derivativeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function sweep(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Subscriber: Only Governance'
    if arg2:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        if ext_call.return_data[0] >= arg2:
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
            mem[324 len 0] = 0
            call arg1 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
                if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call arg1 with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
    emit Sweep(arg2, arg3, arg1);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bankAddress != msg.sender:
        revert with 0, 'Strategy: Only Bank'
    if not arg1:
        return 0
    require ext_code.size(derivativeAddress)
    staticcall derivativeAddress.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not derivativeAddress:
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        if arg1:
            if 10^18 * arg1 / arg1 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(derivativeAddress)
    staticcall derivativeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg1:
            if 10^18 * arg1 / arg1 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        revert with 0, 'SafeMath: division by zero'
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg1:
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if 0 > ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    require ext_code.size(derivativeAddress)
                    call derivativeAddress.redeemUnderlying(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'BankerJoe: Redeem underlying'
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
                    require ext_code.size(derivativeAddress)
                    call derivativeAddress.redeemUnderlying(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'BankerJoe: Redeem underlying'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    require ext_code.size(derivativeAddress)
                    call derivativeAddress.redeemUnderlying(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'BankerJoe: Redeem underlying'
        if not arg1:
            return 0
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(underlyingAddress):
            revert with 0, 'Address: call to non-contract'
        if ext_call.return_data[0] >= arg1:
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
            mem[324 len 0] = 0
            call underlyingAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, arg1
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            return arg1
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call underlyingAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        return ext_call.return_data[0]
    if 10^18 * arg1 / arg1 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0] * ext_call.return_data[0] / 10^18
    if not 10^18 * arg1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        if 0 > ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                require ext_code.size(derivativeAddress)
                call derivativeAddress.redeemUnderlying(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'BankerJoe: Redeem underlying'
        if not arg1:
            return 0
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(underlyingAddress):
            revert with 0, 'Address: call to non-contract'
        if ext_call.return_data[0] >= arg1:
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
            mem[324 len 0] = 0
            call underlyingAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, arg1
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            return arg1
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call underlyingAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        return ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^18 * arg1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * arg1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^18 * arg1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^18 * arg1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
            require ext_code.size(derivativeAddress)
            call derivativeAddress.redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^18 * arg1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'BankerJoe: Redeem underlying'
        if not arg1:
            return 0
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(underlyingAddress):
            revert with 0, 'Address: call to non-contract'
        if ext_call.return_data[0] >= arg1:
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
            mem[324 len 0] = 0
            call underlyingAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, arg1
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            return arg1
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call underlyingAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        return ext_call.return_data[0]
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        if not arg1:
            return 0
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(underlyingAddress):
            revert with 0, 'Address: call to non-contract'
        if ext_call.return_data[0] >= arg1:
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
            mem[324 len 0] = 0
            call underlyingAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, arg1
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            return arg1
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call underlyingAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        return ext_call.return_data[0]
    require ext_code.size(derivativeAddress)
    call derivativeAddress.redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'BankerJoe: Redeem underlying'
    if not arg1:
        return 0
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    if ext_call.return_data[0] < arg1:
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call underlyingAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        return ext_call.return_data[0]
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call underlyingAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return arg1
}

function withdrawAll() {
    if bankAddress != msg.sender:
        revert with 0, 'Strategy: Only Bank'
    require ext_code.size(derivativeAddress)
    staticcall derivativeAddress.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not derivativeAddress:
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
    else:
        require ext_code.size(derivativeAddress)
        staticcall derivativeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                require ext_code.size(derivativeAddress)
                staticcall derivativeAddress.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not derivativeAddress:
                    if ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(derivativeAddress)
                staticcall derivativeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                    if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        if 0 <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                require ext_code.size(underlyingAddress)
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(underlyingAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
                                    call underlyingAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) << 224, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    else:
                                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[292]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                else:
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    mem[324 len 0] = 0
                                    call underlyingAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    else:
                                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[292]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                require ext_code.size(derivativeAddress)
                                call derivativeAddress.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'BankerJoe: Redeem underlying'
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                require ext_code.size(underlyingAddress)
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(underlyingAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
                                    mem[324 len 0] = 0
                                    call underlyingAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) << 224, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    else:
                                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[292]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                else:
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    mem[324 len 0] = 0
                                    call underlyingAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    else:
                                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[292]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
                                require ext_code.size(derivativeAddress)
                                call derivativeAddress.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'BankerJoe: Redeem underlying'
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                require ext_code.size(derivativeAddress)
                                call derivativeAddress.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'BankerJoe: Redeem underlying'
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
                                mem[324 len 0] = 0
                                call underlyingAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                            else:
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                mem[324 len 0] = 0
                                call underlyingAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                    if not 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        if 0 > ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                require ext_code.size(derivativeAddress)
                                call derivativeAddress.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'BankerJoe: Redeem underlying'
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
                                mem[324 len 0] = 0
                                call underlyingAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                            else:
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                mem[324 len 0] = 0
                                call underlyingAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(underlyingAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call underlyingAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                        else:
                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[292]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                    else:
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
                                        mem[324 len 0] = 0
                                        call underlyingAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) << 224, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                        else:
                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[292]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                            else:
                                require ext_code.size(derivativeAddress)
                                call derivativeAddress.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'BankerJoe: Redeem underlying'
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(underlyingAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
                                        mem[324 len 0] = 0
                                        call underlyingAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) << 224, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                        else:
                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[292]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                    else:
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        mem[324 len 0] = 0
                                        call underlyingAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                        else:
                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[292]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                require ext_code.size(derivativeAddress)
                                call derivativeAddress.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'BankerJoe: Redeem underlying'
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                require ext_code.size(underlyingAddress)
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(underlyingAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
                                    mem[324 len 0] = 0
                                    call underlyingAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) << 224, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    else:
                                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[292]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                else:
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    mem[324 len 0] = 0
                                    call underlyingAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    else:
                                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[292]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
}

function initializeBankerJoeStrategy(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7) {
    require calldata.size - 4 >= 224
    if uint8(stor0.field_8):
        if not ext_code.size(arg1):
            revert with 0, 'Subscriber: Invalid Registry'
        registryAddress = arg1
        stor1B57 = 0
        if uint8(stor0.field_8):
            bankAddress = arg2
            storD2EF = 0
            underlyingAddress = arg3
            storFAD9 = 0
            derivativeAddress = arg4
            stor4FF4 = 0
            rewardAddress = arg5
            storAEB8 = 0
            extraRewardAddress = arg6
            stor4390 = 0
            joetrollerAddress = arg7
            stor2161 = 0
            require ext_code.size(arg4)
            staticcall arg4.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[218 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg4):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[324 len 0] = 0
            call arg4 with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
        else:
            uint8(stor0.field_8) = 0
            if not ext_code.size(this.address):
                if uint8(stor0.field_8):
                    bankAddress = arg2
                    storD2EF = 0
                    underlyingAddress = arg3
                    storFAD9 = 0
                    derivativeAddress = arg4
                    stor4FF4 = 0
                    rewardAddress = arg5
                    storAEB8 = 0
                    extraRewardAddress = arg6
                    stor4390 = 0
                    joetrollerAddress = arg7
                    stor2161 = 0
                    require ext_code.size(arg4)
                    staticcall arg4.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[218 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg4):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[324 len 0] = 0
                    call arg4 with:
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    bankAddress = arg2
                    storD2EF = 0
                    underlyingAddress = arg3
                    storFAD9 = 0
                    derivativeAddress = arg4
                    stor4FF4 = 0
                    rewardAddress = arg5
                    storAEB8 = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if not ext_code.size(this.address):
                        if uint8(stor0.field_8):
                            extraRewardAddress = arg6
                            stor4390 = 0
                            joetrollerAddress = arg7
                            stor2161 = 0
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            extraRewardAddress = arg6
                            stor4390 = 0
                            joetrollerAddress = arg7
                            stor2161 = 0
                            uint8(stor0.field_8) = 0
                        require ext_code.size(arg4)
                        staticcall arg4.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[218 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg4):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[324 len 0] = 0
                        call arg4 with:
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                    else:
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                        if uint8(stor0.field_8):
                            extraRewardAddress = arg6
                            stor4390 = 0
                            joetrollerAddress = arg7
                            stor2161 = 0
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            extraRewardAddress = arg6
                            stor4390 = 0
                            joetrollerAddress = arg7
                            stor2161 = 0
                            uint8(stor0.field_8) = 0
                        require ext_code.size(arg4)
                        staticcall arg4.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[218 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg4):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call arg4 with:
                             gas gas_remaining wei
                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
            else:
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
                if uint8(stor0.field_8):
                    bankAddress = arg2
                    storD2EF = 0
                    underlyingAddress = arg3
                    storFAD9 = 0
                    derivativeAddress = arg4
                    stor4FF4 = 0
                    rewardAddress = arg5
                    storAEB8 = 0
                    extraRewardAddress = arg6
                    stor4390 = 0
                    joetrollerAddress = arg7
                    stor2161 = 0
                    require ext_code.size(arg4)
                    staticcall arg4.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[218 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg4):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[324 len 0] = 0
                    call arg4 with:
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    bankAddress = arg2
                    storD2EF = 0
                    underlyingAddress = arg3
                    storFAD9 = 0
                    derivativeAddress = arg4
                    stor4FF4 = 0
                    rewardAddress = arg5
                    storAEB8 = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if not ext_code.size(this.address):
                        if uint8(stor0.field_8):
                            extraRewardAddress = arg6
                            stor4390 = 0
                            joetrollerAddress = arg7
                            stor2161 = 0
                            require ext_code.size(arg4)
                            staticcall arg4.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg4):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call arg4 with:
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            extraRewardAddress = arg6
                            stor4390 = 0
                            joetrollerAddress = arg7
                            stor2161 = 0
                            uint8(stor0.field_8) = 0
                            require ext_code.size(arg4)
                            staticcall arg4.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg4):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[324 len 0] = 0
                            call arg4 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                    else:
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                        if uint8(stor0.field_8):
                            extraRewardAddress = arg6
                            stor4390 = 0
                            joetrollerAddress = arg7
                            stor2161 = 0
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            extraRewardAddress = arg6
                            stor4390 = 0
                            joetrollerAddress = arg7
                            stor2161 = 0
                            uint8(stor0.field_8) = 0
                        require ext_code.size(arg4)
                        staticcall arg4.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[218 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg4):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[324 len 0] = 0
                        call arg4 with:
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    else:
        if not ext_code.size(this.address):
            if uint8(stor0.field_8):
                if not ext_code.size(arg1):
                    revert with 0, 'Subscriber: Invalid Registry'
                registryAddress = arg1
                stor1B57 = 0
                if uint8(stor0.field_8):
                    bankAddress = arg2
                    storD2EF = 0
                    underlyingAddress = arg3
                    storFAD9 = 0
                    derivativeAddress = arg4
                    stor4FF4 = 0
                    rewardAddress = arg5
                    storAEB8 = 0
                    extraRewardAddress = arg6
                    stor4390 = 0
                    joetrollerAddress = arg7
                    stor2161 = 0
                    require ext_code.size(arg4)
                    staticcall arg4.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[218 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg4):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[324 len 0] = 0
                    call arg4 with:
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                else:
                    uint8(stor0.field_8) = 0
                    if not ext_code.size(this.address):
                        if uint8(stor0.field_8):
                            bankAddress = arg2
                            storD2EF = 0
                            underlyingAddress = arg3
                            storFAD9 = 0
                            derivativeAddress = arg4
                            stor4FF4 = 0
                            rewardAddress = arg5
                            storAEB8 = 0
                            extraRewardAddress = arg6
                            stor4390 = 0
                            joetrollerAddress = arg7
                            stor2161 = 0
                            require ext_code.size(arg4)
                            staticcall arg4.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg4):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[324 len 0] = 0
                            call arg4 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            bankAddress = arg2
                            storD2EF = 0
                            underlyingAddress = arg3
                            storFAD9 = 0
                            derivativeAddress = arg4
                            stor4FF4 = 0
                            rewardAddress = arg5
                            storAEB8 = 0
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    uint8(stor0.field_8) = 0
                                require ext_code.size(arg4)
                                staticcall arg4.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[218 len 10]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg4):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[324 len 0] = 0
                                call arg4 with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                                if uint8(stor0.field_8):
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    uint8(stor0.field_8) = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                    else:
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                        if uint8(stor0.field_8):
                            bankAddress = arg2
                            storD2EF = 0
                            underlyingAddress = arg3
                            storFAD9 = 0
                            derivativeAddress = arg4
                            stor4FF4 = 0
                            rewardAddress = arg5
                            storAEB8 = 0
                            extraRewardAddress = arg6
                            stor4390 = 0
                            joetrollerAddress = arg7
                            stor2161 = 0
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            bankAddress = arg2
                            storD2EF = 0
                            underlyingAddress = arg3
                            storFAD9 = 0
                            derivativeAddress = arg4
                            stor4FF4 = 0
                            rewardAddress = arg5
                            storAEB8 = 0
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                extraRewardAddress = arg6
                                stor4390 = 0
                                joetrollerAddress = arg7
                                stor2161 = 0
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                extraRewardAddress = arg6
                                stor4390 = 0
                                joetrollerAddress = arg7
                                stor2161 = 0
                                uint8(stor0.field_8) = 0
                        require ext_code.size(arg4)
                        staticcall arg4.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[218 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg4):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[324 len 0] = 0
                        call arg4 with:
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if not ext_code.size(this.address):
                    if uint8(stor0.field_8):
                        if not ext_code.size(arg1):
                            revert with 0, 'Subscriber: Invalid Registry'
                        registryAddress = arg1
                        stor1B57 = 0
                        if uint8(stor0.field_8):
                            bankAddress = arg2
                            storD2EF = 0
                            underlyingAddress = arg3
                            storFAD9 = 0
                            derivativeAddress = arg4
                            stor4FF4 = 0
                            rewardAddress = arg5
                            storAEB8 = 0
                            extraRewardAddress = arg6
                            stor4390 = 0
                            joetrollerAddress = arg7
                            stor2161 = 0
                            require ext_code.size(arg4)
                            staticcall arg4.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg4):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[324 len 0] = 0
                            call arg4 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                        else:
                            uint8(stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                        uint8(stor0.field_8) = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                        uint8(stor0.field_8) = 0
                                require ext_code.size(arg4)
                                staticcall arg4.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[218 len 10]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg4):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[324 len 0] = 0
                                call arg4 with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if not ext_code.size(this.address):
                            if uint8(stor0.field_8):
                                if not ext_code.size(arg1):
                                    revert with 0, 'Subscriber: Invalid Registry'
                                registryAddress = arg1
                                stor1B57 = 0
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                else:
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        bankAddress = arg2
                                        storD2EF = 0
                                        underlyingAddress = arg3
                                        storFAD9 = 0
                                        derivativeAddress = arg4
                                        stor4FF4 = 0
                                        rewardAddress = arg5
                                        storAEB8 = 0
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        bankAddress = arg2
                                        storD2EF = 0
                                        underlyingAddress = arg3
                                        storFAD9 = 0
                                        derivativeAddress = arg4
                                        stor4FF4 = 0
                                        rewardAddress = arg5
                                        storAEB8 = 0
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                        if ext_code.size(this.address):
                                            if uint8(stor0.field_0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                            mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            uint8(stor0.field_8) = 0
                                require ext_code.size(arg4)
                                staticcall arg4.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[218 len 10]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg4):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[324 len 0] = 0
                                call arg4 with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                if not ext_code.size(arg1):
                                    revert with 0, 'Subscriber: Invalid Registry'
                                registryAddress = arg1
                                stor1B57 = 0
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if not ext_code.size(this.address):
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    mem[324 len 0] = 0
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                            else:
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                require ext_code.size(arg4)
                                                staticcall arg4.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                54,
                                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[218 len 10]
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(arg4):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                mem[324 len 0] = 0
                                                call arg4 with:
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if ext_code.size(this.address):
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                            if uint8(stor0.field_8):
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                            else:
                                                uint8(stor0.field_0) = 1
                                                uint8(stor0.field_8) = 1
                                                Mask(248, 0, stor0.field_8) = 0
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                                uint8(stor0.field_8) = 0
                                        require ext_code.size(arg4)
                                        staticcall arg4.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg4):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg4 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                        else:
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                            if uint8(stor0.field_8):
                                if not ext_code.size(arg1):
                                    revert with 0, 'Subscriber: Invalid Registry'
                                registryAddress = arg1
                                stor1B57 = 0
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if ext_code.size(this.address):
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                            if uint8(stor0.field_8):
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                            else:
                                                uint8(stor0.field_0) = 1
                                                uint8(stor0.field_8) = 1
                                                Mask(248, 0, stor0.field_8) = 0
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                                uint8(stor0.field_8) = 0
                                        require ext_code.size(arg4)
                                        staticcall arg4.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg4):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg4 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if ext_code.size(this.address):
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                            if uint8(stor0.field_8):
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                            else:
                                                uint8(stor0.field_0) = 1
                                                uint8(stor0.field_8) = 1
                                                Mask(248, 0, stor0.field_8) = 0
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                                uint8(stor0.field_8) = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                if not ext_code.size(arg1):
                                    revert with 0, 'Subscriber: Invalid Registry'
                                registryAddress = arg1
                                stor1B57 = 0
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if not ext_code.size(this.address):
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                require ext_code.size(arg4)
                                                staticcall arg4.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                54,
                                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[218 len 10]
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(arg4):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                mem[324 len 0] = 0
                                                call arg4 with:
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                            else:
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    mem[324 len 0] = 0
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if ext_code.size(this.address):
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                            if uint8(stor0.field_8):
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                            else:
                                                uint8(stor0.field_0) = 1
                                                uint8(stor0.field_8) = 1
                                                Mask(248, 0, stor0.field_8) = 0
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                                uint8(stor0.field_8) = 0
                                        require ext_code.size(arg4)
                                        staticcall arg4.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg4):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg4 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                else:
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                    if uint8(stor0.field_8):
                        if not ext_code.size(arg1):
                            revert with 0, 'Subscriber: Invalid Registry'
                        registryAddress = arg1
                        stor1B57 = 0
                        if uint8(stor0.field_8):
                            bankAddress = arg2
                            storD2EF = 0
                            underlyingAddress = arg3
                            storFAD9 = 0
                            derivativeAddress = arg4
                            stor4FF4 = 0
                            rewardAddress = arg5
                            storAEB8 = 0
                            extraRewardAddress = arg6
                            stor4390 = 0
                            joetrollerAddress = arg7
                            stor2161 = 0
                            require ext_code.size(arg4)
                            staticcall arg4.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg4):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[324 len 0] = 0
                            call arg4 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                        else:
                            uint8(stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                bankAddress = arg2
                                storD2EF = 0
                                underlyingAddress = arg3
                                storFAD9 = 0
                                derivativeAddress = arg4
                                stor4FF4 = 0
                                rewardAddress = arg5
                                storAEB8 = 0
                                extraRewardAddress = arg6
                                stor4390 = 0
                                joetrollerAddress = arg7
                                stor2161 = 0
                                require ext_code.size(arg4)
                                staticcall arg4.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[218 len 10]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg4):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[324 len 0] = 0
                                call arg4 with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                bankAddress = arg2
                                storD2EF = 0
                                underlyingAddress = arg3
                                storFAD9 = 0
                                derivativeAddress = arg4
                                stor4FF4 = 0
                                rewardAddress = arg5
                                storAEB8 = 0
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if not ext_code.size(this.address):
                                    if uint8(stor0.field_8):
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                        uint8(stor0.field_8) = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                    mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                        require ext_code.size(arg4)
                                        staticcall arg4.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg4):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg4 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                        uint8(stor0.field_8) = 0
                                        require ext_code.size(arg4)
                                        staticcall arg4.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg4):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        call arg4 with:
                                             gas gas_remaining wei
                                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if not ext_code.size(this.address):
                            if uint8(stor0.field_8):
                                if not ext_code.size(arg1):
                                    revert with 0, 'Subscriber: Invalid Registry'
                                registryAddress = arg1
                                stor1B57 = 0
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if not ext_code.size(this.address):
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    mem[324 len 0] = 0
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                            else:
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                require ext_code.size(arg4)
                                                staticcall arg4.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                54,
                                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[218 len 10]
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(arg4):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                mem[324 len 0] = 0
                                                call arg4 with:
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if ext_code.size(this.address):
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                            if uint8(stor0.field_8):
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                            else:
                                                uint8(stor0.field_0) = 1
                                                uint8(stor0.field_8) = 1
                                                Mask(248, 0, stor0.field_8) = 0
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                                uint8(stor0.field_8) = 0
                                        require ext_code.size(arg4)
                                        staticcall arg4.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg4):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg4 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                if not ext_code.size(arg1):
                                    revert with 0, 'Subscriber: Invalid Registry'
                                registryAddress = arg1
                                stor1B57 = 0
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if ext_code.size(this.address):
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                            if uint8(stor0.field_8):
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                            else:
                                                uint8(stor0.field_0) = 1
                                                uint8(stor0.field_8) = 1
                                                Mask(248, 0, stor0.field_8) = 0
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                                uint8(stor0.field_8) = 0
                                        require ext_code.size(arg4)
                                        staticcall arg4.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg4):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg4 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if not ext_code.size(this.address):
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    mem[324 len 0] = 0
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                            else:
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    mem[324 len 0] = 0
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                        else:
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                            if uint8(stor0.field_8):
                                if not ext_code.size(arg1):
                                    revert with 0, 'Subscriber: Invalid Registry'
                                registryAddress = arg1
                                stor1B57 = 0
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if ext_code.size(this.address):
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                            if uint8(stor0.field_8):
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                            else:
                                                uint8(stor0.field_0) = 1
                                                uint8(stor0.field_8) = 1
                                                Mask(248, 0, stor0.field_8) = 0
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                                uint8(stor0.field_8) = 0
                                        require ext_code.size(arg4)
                                        staticcall arg4.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg4):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg4 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if not ext_code.size(this.address):
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    mem[324 len 0] = 0
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                            else:
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                require ext_code.size(arg4)
                                                staticcall arg4.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                54,
                                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[218 len 10]
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(arg4):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                mem[324 len 0] = 0
                                                call arg4 with:
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                if not ext_code.size(arg1):
                                    revert with 0, 'Subscriber: Invalid Registry'
                                registryAddress = arg1
                                stor1B57 = 0
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if ext_code.size(this.address):
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                            if uint8(stor0.field_8):
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                                require ext_code.size(arg4)
                                                staticcall arg4.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                54,
                                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[218 len 10]
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(arg4):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                call arg4 with:
                                                     gas gas_remaining wei
                                                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                            else:
                                                uint8(stor0.field_0) = 1
                                                uint8(stor0.field_8) = 1
                                                Mask(248, 0, stor0.field_8) = 0
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                                uint8(stor0.field_8) = 0
                                                require ext_code.size(arg4)
                                                staticcall arg4.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                54,
                                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[218 len 10]
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(arg4):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                mem[324 len 0] = 0
                                                call arg4 with:
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if not ext_code.size(this.address):
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    mem[324 len 0] = 0
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                            else:
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    mem[324 len 0] = 0
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
        else:
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
            if uint8(stor0.field_8):
                if not ext_code.size(arg1):
                    revert with 0, 'Subscriber: Invalid Registry'
                registryAddress = arg1
                stor1B57 = 0
                if uint8(stor0.field_8):
                    bankAddress = arg2
                    storD2EF = 0
                    underlyingAddress = arg3
                    storFAD9 = 0
                    derivativeAddress = arg4
                    stor4FF4 = 0
                    rewardAddress = arg5
                    storAEB8 = 0
                    extraRewardAddress = arg6
                    stor4390 = 0
                    joetrollerAddress = arg7
                    stor2161 = 0
                    require ext_code.size(arg4)
                    staticcall arg4.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[218 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg4):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[324 len 0] = 0
                    call arg4 with:
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                else:
                    uint8(stor0.field_8) = 0
                    if not ext_code.size(this.address):
                        if uint8(stor0.field_8):
                            bankAddress = arg2
                            storD2EF = 0
                            underlyingAddress = arg3
                            storFAD9 = 0
                            derivativeAddress = arg4
                            stor4FF4 = 0
                            rewardAddress = arg5
                            storAEB8 = 0
                            extraRewardAddress = arg6
                            stor4390 = 0
                            joetrollerAddress = arg7
                            stor2161 = 0
                            require ext_code.size(arg4)
                            staticcall arg4.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg4):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call arg4 with:
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            bankAddress = arg2
                            storD2EF = 0
                            underlyingAddress = arg3
                            storFAD9 = 0
                            derivativeAddress = arg4
                            stor4FF4 = 0
                            rewardAddress = arg5
                            storAEB8 = 0
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                extraRewardAddress = arg6
                                stor4390 = 0
                                joetrollerAddress = arg7
                                stor2161 = 0
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                extraRewardAddress = arg6
                                stor4390 = 0
                                joetrollerAddress = arg7
                                stor2161 = 0
                                uint8(stor0.field_8) = 0
                            require ext_code.size(arg4)
                            staticcall arg4.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg4):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[324 len 0] = 0
                            call arg4 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                    else:
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                        if uint8(stor0.field_8):
                            bankAddress = arg2
                            storD2EF = 0
                            underlyingAddress = arg3
                            storFAD9 = 0
                            derivativeAddress = arg4
                            stor4FF4 = 0
                            rewardAddress = arg5
                            storAEB8 = 0
                            extraRewardAddress = arg6
                            stor4390 = 0
                            joetrollerAddress = arg7
                            stor2161 = 0
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            bankAddress = arg2
                            storD2EF = 0
                            underlyingAddress = arg3
                            storFAD9 = 0
                            derivativeAddress = arg4
                            stor4FF4 = 0
                            rewardAddress = arg5
                            storAEB8 = 0
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                extraRewardAddress = arg6
                                stor4390 = 0
                                joetrollerAddress = arg7
                                stor2161 = 0
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                extraRewardAddress = arg6
                                stor4390 = 0
                                joetrollerAddress = arg7
                                stor2161 = 0
                                uint8(stor0.field_8) = 0
                        require ext_code.size(arg4)
                        staticcall arg4.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[218 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg4):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[324 len 0] = 0
                        call arg4 with:
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if not ext_code.size(this.address):
                    if uint8(stor0.field_8):
                        if not ext_code.size(arg1):
                            revert with 0, 'Subscriber: Invalid Registry'
                        registryAddress = arg1
                        stor1B57 = 0
                        if uint8(stor0.field_8):
                            bankAddress = arg2
                            storD2EF = 0
                            underlyingAddress = arg3
                            storFAD9 = 0
                            derivativeAddress = arg4
                            stor4FF4 = 0
                            rewardAddress = arg5
                            storAEB8 = 0
                            extraRewardAddress = arg6
                            stor4390 = 0
                            joetrollerAddress = arg7
                            stor2161 = 0
                            require ext_code.size(arg4)
                            staticcall arg4.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg4):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call arg4 with:
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                        else:
                            uint8(stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                        uint8(stor0.field_8) = 0
                                require ext_code.size(arg4)
                                staticcall arg4.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[218 len 10]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg4):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[324 len 0] = 0
                                call arg4 with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            uint8(stor0.field_8) = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            uint8(stor0.field_8) = 0
                                        require ext_code.size(arg4)
                                        staticcall arg4.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg4):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg4 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if not ext_code.size(this.address):
                            if uint8(stor0.field_8):
                                if not ext_code.size(arg1):
                                    revert with 0, 'Subscriber: Invalid Registry'
                                registryAddress = arg1
                                stor1B57 = 0
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if not ext_code.size(this.address):
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                require ext_code.size(arg4)
                                                staticcall arg4.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                54,
                                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[218 len 10]
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(arg4):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                mem[324 len 0] = 0
                                                call arg4 with:
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                            else:
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    mem[324 len 0] = 0
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if ext_code.size(this.address):
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                            if uint8(stor0.field_8):
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                            else:
                                                uint8(stor0.field_0) = 1
                                                uint8(stor0.field_8) = 1
                                                Mask(248, 0, stor0.field_8) = 0
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                                uint8(stor0.field_8) = 0
                                        require ext_code.size(arg4)
                                        staticcall arg4.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg4):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg4 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                if not ext_code.size(arg1):
                                    revert with 0, 'Subscriber: Invalid Registry'
                                registryAddress = arg1
                                stor1B57 = 0
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if ext_code.size(this.address):
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                            if uint8(stor0.field_8):
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                            else:
                                                uint8(stor0.field_0) = 1
                                                uint8(stor0.field_8) = 1
                                                Mask(248, 0, stor0.field_8) = 0
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                                uint8(stor0.field_8) = 0
                                        require ext_code.size(arg4)
                                        staticcall arg4.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg4):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg4 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if not ext_code.size(this.address):
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                require ext_code.size(arg4)
                                                staticcall arg4.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                54,
                                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[218 len 10]
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(arg4):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                mem[324 len 0] = 0
                                                call arg4 with:
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                            else:
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    mem[324 len 0] = 0
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                        else:
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                            if uint8(stor0.field_8):
                                if not ext_code.size(arg1):
                                    revert with 0, 'Subscriber: Invalid Registry'
                                registryAddress = arg1
                                stor1B57 = 0
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                else:
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        bankAddress = arg2
                                        storD2EF = 0
                                        underlyingAddress = arg3
                                        storFAD9 = 0
                                        derivativeAddress = arg4
                                        stor4FF4 = 0
                                        rewardAddress = arg5
                                        storAEB8 = 0
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        bankAddress = arg2
                                        storD2EF = 0
                                        underlyingAddress = arg3
                                        storFAD9 = 0
                                        derivativeAddress = arg4
                                        stor4FF4 = 0
                                        rewardAddress = arg5
                                        storAEB8 = 0
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                        if ext_code.size(this.address):
                                            if uint8(stor0.field_0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                            mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            uint8(stor0.field_8) = 0
                                require ext_code.size(arg4)
                                staticcall arg4.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[218 len 10]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg4):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[324 len 0] = 0
                                call arg4 with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                if not ext_code.size(arg1):
                                    revert with 0, 'Subscriber: Invalid Registry'
                                registryAddress = arg1
                                stor1B57 = 0
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if not ext_code.size(this.address):
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                require ext_code.size(arg4)
                                                staticcall arg4.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                54,
                                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[218 len 10]
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(arg4):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                mem[324 len 0] = 0
                                                call arg4 with:
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                            else:
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    mem[324 len 0] = 0
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if ext_code.size(this.address):
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                            if uint8(stor0.field_8):
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                            else:
                                                uint8(stor0.field_0) = 1
                                                uint8(stor0.field_8) = 1
                                                Mask(248, 0, stor0.field_8) = 0
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                                uint8(stor0.field_8) = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                else:
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                    if uint8(stor0.field_8):
                        if not ext_code.size(arg1):
                            revert with 0, 'Subscriber: Invalid Registry'
                        registryAddress = arg1
                        stor1B57 = 0
                        if uint8(stor0.field_8):
                            bankAddress = arg2
                            storD2EF = 0
                            underlyingAddress = arg3
                            storFAD9 = 0
                            derivativeAddress = arg4
                            stor4FF4 = 0
                            rewardAddress = arg5
                            storAEB8 = 0
                            extraRewardAddress = arg6
                            stor4390 = 0
                            joetrollerAddress = arg7
                            stor2161 = 0
                            require ext_code.size(arg4)
                            staticcall arg4.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg4):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[324 len 0] = 0
                            call arg4 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                        else:
                            uint8(stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                        require ext_code.size(arg4)
                                        staticcall arg4.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg4):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        call arg4 with:
                                             gas gas_remaining wei
                                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                        uint8(stor0.field_8) = 0
                                        require ext_code.size(arg4)
                                        staticcall arg4.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg4):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg4 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                        uint8(stor0.field_8) = 0
                                require ext_code.size(arg4)
                                staticcall arg4.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[218 len 10]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg4):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[324 len 0] = 0
                                call arg4 with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if not ext_code.size(this.address):
                            if uint8(stor0.field_8):
                                if not ext_code.size(arg1):
                                    revert with 0, 'Subscriber: Invalid Registry'
                                registryAddress = arg1
                                stor1B57 = 0
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if not ext_code.size(this.address):
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                require ext_code.size(arg4)
                                                staticcall arg4.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                54,
                                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[218 len 10]
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(arg4):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                call arg4 with:
                                                     gas gas_remaining wei
                                                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                            else:
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                require ext_code.size(arg4)
                                                staticcall arg4.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                54,
                                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[218 len 10]
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(arg4):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                mem[324 len 0] = 0
                                                call arg4 with:
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if not ext_code.size(this.address):
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    mem[324 len 0] = 0
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                            else:
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    mem[324 len 0] = 0
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                if not ext_code.size(arg1):
                                    revert with 0, 'Subscriber: Invalid Registry'
                                registryAddress = arg1
                                stor1B57 = 0
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if not ext_code.size(this.address):
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    mem[324 len 0] = 0
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                            else:
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                require ext_code.size(arg4)
                                                staticcall arg4.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                54,
                                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[218 len 10]
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(arg4):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                mem[324 len 0] = 0
                                                call arg4 with:
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if ext_code.size(this.address):
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                            if uint8(stor0.field_8):
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                            else:
                                                uint8(stor0.field_0) = 1
                                                uint8(stor0.field_8) = 1
                                                Mask(248, 0, stor0.field_8) = 0
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                                uint8(stor0.field_8) = 0
                                        require ext_code.size(arg4)
                                        staticcall arg4.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg4):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg4 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                        else:
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                            if uint8(stor0.field_8):
                                if not ext_code.size(arg1):
                                    revert with 0, 'Subscriber: Invalid Registry'
                                registryAddress = arg1
                                stor1B57 = 0
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            require ext_code.size(arg4)
                                            staticcall arg4.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg4):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg4 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if not ext_code.size(this.address):
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                    require ext_code.size(arg4)
                                                    staticcall arg4.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args this.address, arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    54,
                                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                    mem[218 len 10]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(arg4):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    mem[324 len 0] = 0
                                                    call arg4 with:
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                            else:
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                                if uint8(stor0.field_8):
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    extraRewardAddress = arg6
                                                    stor4390 = 0
                                                    joetrollerAddress = arg7
                                                    stor2161 = 0
                                                    uint8(stor0.field_8) = 0
                                                require ext_code.size(arg4)
                                                staticcall arg4.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                54,
                                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[218 len 10]
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(arg4):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                mem[324 len 0] = 0
                                                call arg4 with:
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            bankAddress = arg2
                                            storD2EF = 0
                                            underlyingAddress = arg3
                                            storFAD9 = 0
                                            derivativeAddress = arg4
                                            stor4FF4 = 0
                                            rewardAddress = arg5
                                            storAEB8 = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if ext_code.size(this.address):
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                                mem[210 len 18]
                                            if uint8(stor0.field_8):
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                            else:
                                                uint8(stor0.field_0) = 1
                                                uint8(stor0.field_8) = 1
                                                Mask(248, 0, stor0.field_8) = 0
                                                extraRewardAddress = arg6
                                                stor4390 = 0
                                                joetrollerAddress = arg7
                                                stor2161 = 0
                                                uint8(stor0.field_8) = 0
                                        require ext_code.size(arg4)
                                        staticcall arg4.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg4):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg4 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                if not ext_code.size(arg1):
                                    revert with 0, 'Subscriber: Invalid Registry'
                                registryAddress = arg1
                                stor1B57 = 0
                                if uint8(stor0.field_8):
                                    bankAddress = arg2
                                    storD2EF = 0
                                    underlyingAddress = arg3
                                    storFAD9 = 0
                                    derivativeAddress = arg4
                                    stor4FF4 = 0
                                    rewardAddress = arg5
                                    storAEB8 = 0
                                    extraRewardAddress = arg6
                                    stor4390 = 0
                                    joetrollerAddress = arg7
                                    stor2161 = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                else:
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        bankAddress = arg2
                                        storD2EF = 0
                                        underlyingAddress = arg3
                                        storFAD9 = 0
                                        derivativeAddress = arg4
                                        stor4FF4 = 0
                                        rewardAddress = arg5
                                        storAEB8 = 0
                                        extraRewardAddress = arg6
                                        stor4390 = 0
                                        joetrollerAddress = arg7
                                        stor2161 = 0
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        bankAddress = arg2
                                        storD2EF = 0
                                        underlyingAddress = arg3
                                        storFAD9 = 0
                                        derivativeAddress = arg4
                                        stor4FF4 = 0
                                        rewardAddress = arg5
                                        storAEB8 = 0
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                        if ext_code.size(this.address):
                                            if uint8(stor0.field_0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                            mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            extraRewardAddress = arg6
                                            stor4390 = 0
                                            joetrollerAddress = arg7
                                            stor2161 = 0
                                            uint8(stor0.field_8) = 0
                                    require ext_code.size(arg4)
                                    staticcall arg4.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg4):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg4 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), address(arg3) << 64, 0, -1
        if not approve(address arg1, uint256 arg2), address(arg3) << 64:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
