contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address owner;
uint256 stor0;
uint8 stor1; offset 160
uint128 stor1; offset 160
address tokenAddress;
uint256 totalStaked;
uint256 totalRewardsDistributed;
uint256 apy;
uint256 sub_bcedc663;
uint256 unbondingPeriod;
mapping of struct totalStakedFor;
array of address stor8;

function stakingOpen() payable {
    return bool(uint8(stor1.field_160))
}

function apy() payable {
    return apy
}

function totalStakedFor(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalStakedFor[address(arg1)].field_0
}

function unbondingPeriod() payable {
    return unbondingPeriod
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return address(owner)
}

function sub_aba78c16(?) payable {
    require calldata.size - 4 >= 32
    return totalStakedFor[arg1].field_0, 
           totalStakedFor[arg1].field_256,
           totalStakedFor[arg1].field_512,
           totalStakedFor[arg1].field_768
}

function sub_bcedc663(?) payable {
    return sub_bcedc663
}

function totalRewardsDistributed() payable {
    return totalRewardsDistributed
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function sub_2cade430(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_bcedc663 = arg1
    emit 0xf40c34ce: arg1
}

function sub_7da153df(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    unbondingPeriod = arg1
    emit 0x6ef978f9: arg1
}

function sub_578a7cda(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
    emit 0x4f79b573: arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function emergencyExit(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        call address(owner) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit EmergencyFundsWithdrawn(eth.balance(this.address), address(owner), arg1);
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call arg1 with:
           funct uint32(stor0)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        emit EmergencyFundsWithdrawn(ext_call.return_data[0], address(owner), arg1);
}

function withdraw() payable {
    if not totalStakedFor[msg.sender].field_0:
        revert with 0, 'Have not staked any tokens'
    if not totalStakedFor[msg.sender].field_768:
        revert with 0, 'Unstake before withdraw'
    if totalStakedFor[msg.sender].field_768 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - totalStakedFor[msg.sender].field_768 < unbondingPeriod:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64556e626f6e64696e6720706572696f64206e6f7420636f6d706c65746564207965,
                    mem[198 len 30]
    if totalStakedFor[msg.sender].field_0 > totalStaked:
        revert with 0, 'SafeMath: subtraction overflow'
    totalStaked -= totalStakedFor[msg.sender].field_0
    if totalStakedFor[msg.sender].field_256 + totalRewardsDistributed < totalRewardsDistributed:
        revert with 0, 'SafeMath: addition overflow'
    totalRewardsDistributed += totalStakedFor[msg.sender].field_256
    totalStakedFor[msg.sender].field_768 = 0
    totalStakedFor[msg.sender].field_0 = 0
    totalStakedFor[msg.sender].field_512 = 0
    totalStakedFor[msg.sender].field_256 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, totalStakedFor[msg.sender].field_288
    mem[324 len 0] = 0
    call tokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args totalStakedFor[msg.sender].field_256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, totalStakedFor[msg.sender].field_256
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        emit Claimed(totalStakedFor[msg.sender].field_256, msg.sender);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, msg.sender, totalStakedFor[msg.sender].field_32
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args totalStakedFor[msg.sender].field_0, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, totalStakedFor[msg.sender].field_256
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        emit Claimed(totalStakedFor[msg.sender].field_256, msg.sender);
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, totalStakedFor[msg.sender].field_32
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args totalStakedFor[msg.sender].field_0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, totalStakedFor[msg.sender].field_256
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    emit Withdrawn(totalStakedFor[msg.sender].field_0, msg.sender);
}

function sub_f5970471(?) payable {
    if totalStakedFor[address(msg.sender)].field_768:
        if totalStakedFor[address(msg.sender)].field_768 <= 0:
            if not totalStakedFor[address(msg.sender)].field_0:
                if totalStakedFor[msg.sender].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return totalStakedFor[msg.sender].field_256
            if apy * totalStakedFor[address(msg.sender)].field_0 / totalStakedFor[address(msg.sender)].field_0 != apy:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not apy * totalStakedFor[address(msg.sender)].field_0:
                if totalStakedFor[msg.sender].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return totalStakedFor[msg.sender].field_256
            if (block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) / apy * totalStakedFor[address(msg.sender)].field_0 != block.timestamp - totalStakedFor[address(msg.sender)].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalStakedFor[msg.sender].field_256 + ((block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600) < (block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[msg.sender].field_256 + ((block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600))
        if totalStakedFor[address(msg.sender)].field_768 > totalStakedFor[address(msg.sender)].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalStakedFor[address(msg.sender)].field_0:
            if apy * totalStakedFor[address(msg.sender)].field_0 / totalStakedFor[address(msg.sender)].field_0 != apy:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if apy * totalStakedFor[address(msg.sender)].field_0:
                if 0 / apy * totalStakedFor[address(msg.sender)].field_0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
        if totalStakedFor[msg.sender].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return totalStakedFor[msg.sender].field_256
    if totalStakedFor[address(msg.sender)].field_768 > 0:
        if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalStakedFor[address(msg.sender)].field_0:
            if totalStakedFor[msg.sender].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return totalStakedFor[msg.sender].field_256
        if apy * totalStakedFor[address(msg.sender)].field_0 / totalStakedFor[address(msg.sender)].field_0 != apy:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not apy * totalStakedFor[address(msg.sender)].field_0:
            if totalStakedFor[msg.sender].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return totalStakedFor[msg.sender].field_256
        if (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / apy * totalStakedFor[address(msg.sender)].field_0 != totalStakedFor[address(msg.sender)].field_768 - totalStakedFor[address(msg.sender)].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalStakedFor[msg.sender].field_256 + ((totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600) < (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600:
            revert with 0, 'SafeMath: addition overflow'
        return (totalStakedFor[msg.sender].field_256 + ((totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600))
    if totalStakedFor[address(msg.sender)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not totalStakedFor[address(msg.sender)].field_0:
        if totalStakedFor[msg.sender].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return totalStakedFor[msg.sender].field_256
    if apy * totalStakedFor[address(msg.sender)].field_0 / totalStakedFor[address(msg.sender)].field_0 != apy:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not apy * totalStakedFor[address(msg.sender)].field_0:
        if totalStakedFor[msg.sender].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return totalStakedFor[msg.sender].field_256
    if (block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / apy * totalStakedFor[address(msg.sender)].field_0 != block.timestamp - totalStakedFor[address(msg.sender)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalStakedFor[msg.sender].field_256 + ((block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600) < (block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600:
        revert with 0, 'SafeMath: addition overflow'
    return (totalStakedFor[msg.sender].field_256 + ((block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600))
}

function unstake() payable {
    if not totalStakedFor[msg.sender].field_0:
        revert with 0, 'Have not staked any tokens'
    if totalStakedFor[address(msg.sender)].field_768:
        if totalStakedFor[address(msg.sender)].field_768 > 0:
            if totalStakedFor[address(msg.sender)].field_768 > totalStakedFor[address(msg.sender)].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalStakedFor[address(msg.sender)].field_0:
                if apy * totalStakedFor[address(msg.sender)].field_0 / totalStakedFor[address(msg.sender)].field_0 != apy:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if apy * totalStakedFor[address(msg.sender)].field_0:
                    if 0 / apy * totalStakedFor[address(msg.sender)].field_0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
            if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if not totalStakedFor[address(msg.sender)].field_0:
                if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if apy * totalStakedFor[address(msg.sender)].field_0 / totalStakedFor[address(msg.sender)].field_0 != apy:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not apy * totalStakedFor[address(msg.sender)].field_0:
                    if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) / apy * totalStakedFor[address(msg.sender)].field_0 != block.timestamp - totalStakedFor[address(msg.sender)].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ((block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600) + totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStakedFor[msg.sender].field_256 += (block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600
    else:
        if totalStakedFor[address(msg.sender)].field_768 > 0:
            if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalStakedFor[address(msg.sender)].field_0:
                if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if apy * totalStakedFor[address(msg.sender)].field_0 / totalStakedFor[address(msg.sender)].field_0 != apy:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not apy * totalStakedFor[address(msg.sender)].field_0:
                    if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / apy * totalStakedFor[address(msg.sender)].field_0 != totalStakedFor[address(msg.sender)].field_768 - totalStakedFor[address(msg.sender)].field_512:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ((totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600) + totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStakedFor[msg.sender].field_256 += (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600
        else:
            if totalStakedFor[address(msg.sender)].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalStakedFor[address(msg.sender)].field_0:
                if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if apy * totalStakedFor[address(msg.sender)].field_0 / totalStakedFor[address(msg.sender)].field_0 != apy:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not apy * totalStakedFor[address(msg.sender)].field_0:
                    if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / apy * totalStakedFor[address(msg.sender)].field_0 != block.timestamp - totalStakedFor[address(msg.sender)].field_512:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ((block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600) + totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStakedFor[msg.sender].field_256 += (block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600
    totalStakedFor[msg.sender].field_512 = block.timestamp
    if totalStakedFor[msg.sender].field_768:
        revert with 0, 'Unstaking already in progress'
    totalStakedFor[msg.sender].field_768 = block.timestamp
    emit Unstaked(block.timestamp, msg.sender);
}

function updateAPY(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < stor8.length:
        mem[0] = address(stor8[idx])
        mem[32] = 7
        if totalStakedFor[address(stor8[idx])].field_768:
            if totalStakedFor[address(stor8[idx])].field_768 > 0:
                if totalStakedFor[address(stor8[idx])].field_768 > totalStakedFor[address(stor8[idx])].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalStakedFor[address(stor8[idx])].field_0:
                    if apy * totalStakedFor[address(stor8[idx])].field_0 / totalStakedFor[address(stor8[idx])].field_0 != apy:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if apy * totalStakedFor[address(stor8[idx])].field_0:
                        if 0 / apy * totalStakedFor[address(stor8[idx])].field_0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                if totalStakedFor[address(stor8[idx])].field_256 < totalStakedFor[address(stor8[idx])].field_256:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if not totalStakedFor[address(stor8[idx])].field_0:
                    if totalStakedFor[address(stor8[idx])].field_256 < totalStakedFor[address(stor8[idx])].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if apy * totalStakedFor[address(stor8[idx])].field_0 / totalStakedFor[address(stor8[idx])].field_0 != apy:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not apy * totalStakedFor[address(stor8[idx])].field_0:
                        if totalStakedFor[address(stor8[idx])].field_256 < totalStakedFor[address(stor8[idx])].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (block.timestamp * apy * totalStakedFor[address(stor8[idx])].field_0) - (totalStakedFor[address(stor8[idx])].field_768 * apy * totalStakedFor[address(stor8[idx])].field_0) / apy * totalStakedFor[address(stor8[idx])].field_0 != block.timestamp - totalStakedFor[address(stor8[idx])].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ((block.timestamp * apy * totalStakedFor[address(stor8[idx])].field_0) - (totalStakedFor[address(stor8[idx])].field_768 * apy * totalStakedFor[address(stor8[idx])].field_0) / 10000 / 8760 * 24 * 3600) + totalStakedFor[address(stor8[idx])].field_256 < totalStakedFor[address(stor8[idx])].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStakedFor[address(stor8[idx])].field_256 += (block.timestamp * apy * totalStakedFor[address(stor8[idx])].field_0) - (totalStakedFor[address(stor8[idx])].field_768 * apy * totalStakedFor[address(stor8[idx])].field_0) / 10000 / 8760 * 24 * 3600
        else:
            if totalStakedFor[address(stor8[idx])].field_768 > 0:
                if totalStakedFor[address(stor8[idx])].field_512 > totalStakedFor[address(stor8[idx])].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not totalStakedFor[address(stor8[idx])].field_0:
                    if totalStakedFor[address(stor8[idx])].field_256 < totalStakedFor[address(stor8[idx])].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if apy * totalStakedFor[address(stor8[idx])].field_0 / totalStakedFor[address(stor8[idx])].field_0 != apy:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not apy * totalStakedFor[address(stor8[idx])].field_0:
                        if totalStakedFor[address(stor8[idx])].field_256 < totalStakedFor[address(stor8[idx])].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (totalStakedFor[address(stor8[idx])].field_768 * apy * totalStakedFor[address(stor8[idx])].field_0) - (totalStakedFor[address(stor8[idx])].field_512 * apy * totalStakedFor[address(stor8[idx])].field_0) / apy * totalStakedFor[address(stor8[idx])].field_0 != totalStakedFor[address(stor8[idx])].field_768 - totalStakedFor[address(stor8[idx])].field_512:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ((totalStakedFor[address(stor8[idx])].field_768 * apy * totalStakedFor[address(stor8[idx])].field_0) - (totalStakedFor[address(stor8[idx])].field_512 * apy * totalStakedFor[address(stor8[idx])].field_0) / 10000 / 8760 * 24 * 3600) + totalStakedFor[address(stor8[idx])].field_256 < totalStakedFor[address(stor8[idx])].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStakedFor[address(stor8[idx])].field_256 += (totalStakedFor[address(stor8[idx])].field_768 * apy * totalStakedFor[address(stor8[idx])].field_0) - (totalStakedFor[address(stor8[idx])].field_512 * apy * totalStakedFor[address(stor8[idx])].field_0) / 10000 / 8760 * 24 * 3600
            else:
                if totalStakedFor[address(stor8[idx])].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not totalStakedFor[address(stor8[idx])].field_0:
                    if totalStakedFor[address(stor8[idx])].field_256 < totalStakedFor[address(stor8[idx])].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if apy * totalStakedFor[address(stor8[idx])].field_0 / totalStakedFor[address(stor8[idx])].field_0 != apy:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not apy * totalStakedFor[address(stor8[idx])].field_0:
                        if totalStakedFor[address(stor8[idx])].field_256 < totalStakedFor[address(stor8[idx])].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (block.timestamp * apy * totalStakedFor[address(stor8[idx])].field_0) - (totalStakedFor[address(stor8[idx])].field_512 * apy * totalStakedFor[address(stor8[idx])].field_0) / apy * totalStakedFor[address(stor8[idx])].field_0 != block.timestamp - totalStakedFor[address(stor8[idx])].field_512:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ((block.timestamp * apy * totalStakedFor[address(stor8[idx])].field_0) - (totalStakedFor[address(stor8[idx])].field_512 * apy * totalStakedFor[address(stor8[idx])].field_0) / 10000 / 8760 * 24 * 3600) + totalStakedFor[address(stor8[idx])].field_256 < totalStakedFor[address(stor8[idx])].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStakedFor[address(stor8[idx])].field_256 += (block.timestamp * apy * totalStakedFor[address(stor8[idx])].field_0) - (totalStakedFor[address(stor8[idx])].field_512 * apy * totalStakedFor[address(stor8[idx])].field_0) / 10000 / 8760 * 24 * 3600
        totalStakedFor[address(stor8[idx])].field_512 = block.timestamp
        idx = idx + 1
        continue 
    apy = arg1
    emit 0x5d966115: arg1
}

function claim() payable {
    if not totalStakedFor[msg.sender].field_0:
        revert with 0, 'Have not staked any tokens'
    if totalStakedFor[address(msg.sender)].field_768:
        if totalStakedFor[address(msg.sender)].field_768 > 0:
            if totalStakedFor[address(msg.sender)].field_768 > totalStakedFor[address(msg.sender)].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalStakedFor[address(msg.sender)].field_0:
                if apy * totalStakedFor[address(msg.sender)].field_0 / totalStakedFor[address(msg.sender)].field_0 != apy:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if apy * totalStakedFor[address(msg.sender)].field_0:
                    if 0 / apy * totalStakedFor[address(msg.sender)].field_0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
            if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if not totalStakedFor[address(msg.sender)].field_0:
                if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if apy * totalStakedFor[address(msg.sender)].field_0 / totalStakedFor[address(msg.sender)].field_0 != apy:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not apy * totalStakedFor[address(msg.sender)].field_0:
                    if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) / apy * totalStakedFor[address(msg.sender)].field_0 != block.timestamp - totalStakedFor[address(msg.sender)].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ((block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600) + totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStakedFor[msg.sender].field_256 += (block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600
    else:
        if totalStakedFor[address(msg.sender)].field_768 > 0:
            if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalStakedFor[address(msg.sender)].field_0:
                if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if apy * totalStakedFor[address(msg.sender)].field_0 / totalStakedFor[address(msg.sender)].field_0 != apy:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not apy * totalStakedFor[address(msg.sender)].field_0:
                    if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / apy * totalStakedFor[address(msg.sender)].field_0 != totalStakedFor[address(msg.sender)].field_768 - totalStakedFor[address(msg.sender)].field_512:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ((totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600) + totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStakedFor[msg.sender].field_256 += (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600
        else:
            if totalStakedFor[address(msg.sender)].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalStakedFor[address(msg.sender)].field_0:
                if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if apy * totalStakedFor[address(msg.sender)].field_0 / totalStakedFor[address(msg.sender)].field_0 != apy:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not apy * totalStakedFor[address(msg.sender)].field_0:
                    if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / apy * totalStakedFor[address(msg.sender)].field_0 != block.timestamp - totalStakedFor[address(msg.sender)].field_512:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ((block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600) + totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStakedFor[msg.sender].field_256 += (block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600
    totalStakedFor[msg.sender].field_512 = block.timestamp
    if not totalStakedFor[msg.sender].field_256:
        revert with 0, 'No rewards to claim'
    totalStakedFor[msg.sender].field_256 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, totalStakedFor[msg.sender].field_288
    mem[324 len 0] = 0
    call tokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args totalStakedFor[msg.sender].field_256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, totalStakedFor[msg.sender].field_256
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Claimed(totalStakedFor[msg.sender].field_256, msg.sender);
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor1.field_160):
        revert with 0, 'Staking is closed right now'
    if totalStakedFor[address(msg.sender)].field_768:
        if totalStakedFor[address(msg.sender)].field_768 > 0:
            if totalStakedFor[address(msg.sender)].field_768 > totalStakedFor[address(msg.sender)].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalStakedFor[address(msg.sender)].field_0:
                if apy * totalStakedFor[address(msg.sender)].field_0 / totalStakedFor[address(msg.sender)].field_0 != apy:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if apy * totalStakedFor[address(msg.sender)].field_0:
                    if 0 / apy * totalStakedFor[address(msg.sender)].field_0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
            if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if not totalStakedFor[address(msg.sender)].field_0:
                if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if apy * totalStakedFor[address(msg.sender)].field_0 / totalStakedFor[address(msg.sender)].field_0 != apy:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not apy * totalStakedFor[address(msg.sender)].field_0:
                    if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) / apy * totalStakedFor[address(msg.sender)].field_0 != block.timestamp - totalStakedFor[address(msg.sender)].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ((block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600) + totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStakedFor[msg.sender].field_256 += (block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600
    else:
        if totalStakedFor[address(msg.sender)].field_768 > 0:
            if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalStakedFor[address(msg.sender)].field_0:
                if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if apy * totalStakedFor[address(msg.sender)].field_0 / totalStakedFor[address(msg.sender)].field_0 != apy:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not apy * totalStakedFor[address(msg.sender)].field_0:
                    if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / apy * totalStakedFor[address(msg.sender)].field_0 != totalStakedFor[address(msg.sender)].field_768 - totalStakedFor[address(msg.sender)].field_512:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ((totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600) + totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStakedFor[msg.sender].field_256 += (totalStakedFor[address(msg.sender)].field_768 * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600
        else:
            if totalStakedFor[address(msg.sender)].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalStakedFor[address(msg.sender)].field_0:
                if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if apy * totalStakedFor[address(msg.sender)].field_0 / totalStakedFor[address(msg.sender)].field_0 != apy:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not apy * totalStakedFor[address(msg.sender)].field_0:
                    if totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / apy * totalStakedFor[address(msg.sender)].field_0 != block.timestamp - totalStakedFor[address(msg.sender)].field_512:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ((block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600) + totalStakedFor[msg.sender].field_256 < totalStakedFor[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStakedFor[msg.sender].field_256 += (block.timestamp * apy * totalStakedFor[address(msg.sender)].field_0) - (totalStakedFor[address(msg.sender)].field_512 * apy * totalStakedFor[address(msg.sender)].field_0) / 10000 / 8760 * 24 * 3600
    totalStakedFor[msg.sender].field_512 = block.timestamp
    if arg1 + totalStakedFor[msg.sender].field_0 < totalStakedFor[msg.sender].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + totalStakedFor[msg.sender].field_0 < sub_bcedc663:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6c43616e6e6f74207374616b65206c657373207468616e206d696e696d756d20616c6c6f7765,
                    mem[202 len 26]
    if not totalStakedFor[msg.sender].field_0:
        stor8.length++
        uint256(stor8[stor8.length]) = msg.sender or Mask(96, 160, uint256(stor8[stor8.length]))
    totalStakedFor[msg.sender].field_768 = 0
    if arg1 + totalStakedFor[msg.sender].field_0 < totalStakedFor[msg.sender].field_0:
        revert with 0, 'SafeMath: addition overflow'
    totalStakedFor[msg.sender].field_0 += arg1
    if arg1 + totalStaked < totalStaked:
        revert with 0, 'SafeMath: addition overflow'
    totalStaked += arg1
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    emit Staked(arg1, msg.sender);
}



}
