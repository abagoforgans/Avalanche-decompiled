contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const unirouter = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const treasury = 0xd5c564e6e2c7d59f509d05b0ff101b2ab3c23062

const wbnb = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const rewards = 0x90be41e8537ae52c5b2f6ed7e2adc937c4e4fc46

const sub_d68220c7(?) = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd

const masterchef = 0xd6a4f121ca35509af06a0be99093d08462f53052

const REWARDS_FEE = 667

const WITHDRAWAL_MAX = 10000

const TREASURY_FEE = 250

const CALL_FEE = 83

const WITHDRAWAL_FEE = 50

const MAX_FEE = 1000


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
address lpPairAddress;
address lpToken0Address;
address lpToken1Address;
uint256 poolId;
uint32 stor5;
address vaultAddress;
uint256 stor5;
array of address sub_72321d5e;
array of address sub_f49f5d30;
array of address sub_15e636d5;

function sub_15e636d5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_15e636d5.length
    return sub_15e636d5[arg1]
}

function poolId() payable {
    return poolId
}

function lpPair() payable {
    return lpPairAddress
}

function paused() payable {
    return bool(paused)
}

function lpToken0() payable {
    return lpToken0Address
}

function sub_72321d5e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_72321d5e.length
    return sub_72321d5e[arg1]
}

function lpToken1() payable {
    return lpToken1Address
}

function owner() payable {
    return owner
}

function sub_f49f5d30(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_f49f5d30.length
    return sub_f49f5d30[arg1]
}

function vault() payable {
    return address(vaultAddress)
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

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function balanceOfLpPair() payable {
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function panic() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    call 0xd6a4f121ca35509af06a0be99093d08462f53052.emergencyWithdraw(uint256 rg1) with:
         gas gas_remaining wei
        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf() payable {
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if ext_code.size(lpPairAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0
        call lpPairAddress.0x62f53052 with:
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0
            if not approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if not ext_call.return_data[0]:
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, ext_call.return_data[0 len 28]
            else:
                require ext_code.size(lpPairAddress)
                staticcall lpPairAddress.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), 0xd6a4f121ca35509af06a0be99093d08462f53052
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[382 len 10]
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, ext_call.return_data[0 len 28]
                mem[488 len 0] = 0
            call lpPairAddress.0x62f53052 with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0
                if not approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
            call 0xd6a4f121ca35509af06a0be99093d08462f53052.deposit(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args poolId, ext_call.return_data[0]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if ext_call.return_data[0]:
                    require ext_code.size(lpPairAddress)
                    staticcall lpPairAddress.allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), 0xd6a4f121ca35509af06a0be99093d08462f53052
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 383 len 10]
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, ext_call.return_data[0 len 28]
                mem[ceil32(return_data.size) + 517 len 4] = 0
                call lpPairAddress.0x62f53052 with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0
                    if not approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
                    call 0xd6a4f121ca35509af06a0be99093d08462f53052.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args poolId, ext_call.return_data[0]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
                    call 0xd6a4f121ca35509af06a0be99093d08462f53052.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args poolId, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
                if not ext_call.return_data[0]:
                    if ext_code.size(lpPairAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 517 len 4] = 0
                    call lpPairAddress.0x62f53052 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0
                        if not approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
                        call 0xd6a4f121ca35509af06a0be99093d08462f53052.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args poolId, ext_call.return_data[0]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
                        call 0xd6a4f121ca35509af06a0be99093d08462f53052.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args poolId, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    require ext_code.size(lpPairAddress)
                    staticcall lpPairAddress.allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), 0xd6a4f121ca35509af06a0be99093d08462f53052
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 383 len 10]
                    if ext_code.size(lpPairAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 489 len 0] = 0
                    call lpPairAddress.0x62f53052 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0
                        if not approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
                    call 0xd6a4f121ca35509af06a0be99093d08462f53052.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    else:
        require ext_code.size(lpPairAddress)
        staticcall lpPairAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg1:
                if ext_call.return_data[0] <= arg1:
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        if 50 * ext_call.return_data[0] / ext_call.return_data[0] != 50:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        else:
                            if ext_code.size(lpPairAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            else:
                                mem[324 len 64] = transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, Mask(224, 32, 50 * ext_call.return_data[0] / 10000) >> 32
                                call lpPairAddress.0xb3c23062 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, 50 * ext_call.return_data[0] / 10000) << 224, mem[388 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                else:
                                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                    else:
                                        if return_data.size <= 0:
                                            if 50 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if ext_code.size(lpPairAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                else:
                                                    mem[ceil32(return_data.size) + 553 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) >> 32
                                                    call lpPairAddress with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) << 224, mem[ceil32(return_data.size) + 617 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: division by zero'
                                                    else:
                                                        mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size > 0:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                        else:
                                                            if return_data.size <= 0:
                                                            else:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 585]:
                                                                    revert with 0, 
                                                                                32,
                                                                                42,
                                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                                else:
                                        else:
                                            require return_data.size >= 32
                                            if not mem[356]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 435 len 22]
                                            else:
                                                if 50 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if ext_code.size(lpPairAddress) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    else:
                                                        mem[ceil32(return_data.size) + 553 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) >> 32
                                                        call lpPairAddress with:
                                                           funct uint32(stor5)
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) << 224, mem[ceil32(return_data.size) + 617 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: division by zero'
                                                        else:
                                                            mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                if return_data.size > 0:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                            else:
                                                                if return_data.size <= 0:
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if not mem[ceil32(return_data.size) + 585]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    42,
                                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                    mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                                    else:
                    else:
                        if ext_code.size(lpPairAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        else:
                            mem[324 len 64] = transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, 0
                            call lpPairAddress.0xb3c23062 with:
                                 gas gas_remaining wei
                                args 0, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            else:
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                else:
                                    if return_data.size <= 0:
                                        if 0 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if ext_code.size(lpPairAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            else:
                                                mem[ceil32(return_data.size) + 553 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                                                call lpPairAddress with:
                                                   funct uint32(stor5)
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 617 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: division by zero'
                                                else:
                                                    mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                    else:
                                                        if return_data.size <= 0:
                                                        else:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 585]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                            else:
                                    else:
                                        require return_data.size >= 32
                                        if not mem[356]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 435 len 22]
                                        else:
                                            if 0 > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if ext_code.size(lpPairAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                else:
                                                    mem[ceil32(return_data.size) + 553 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                                                    call lpPairAddress with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 617 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: division by zero'
                                                    else:
                                                        mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size > 0:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                        else:
                                                            if return_data.size <= 0:
                                                            else:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 585]:
                                                                    revert with 0, 
                                                                                32,
                                                                                42,
                                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                                else:
                else:
                    if arg1:
                        require arg1
                        if 50 * arg1 / arg1 != 50:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        else:
                            if ext_code.size(lpPairAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            else:
                                mem[324 len 64] = transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, Mask(224, 32, 50 * arg1 / 10000) >> 32
                                mem[388 len 0] = 0
                                call lpPairAddress.0xb3c23062 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, 50 * arg1 / 10000) << 224, mem[388 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                else:
                                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                    else:
                                        if return_data.size <= 0:
                                            if 50 * arg1 / 10000 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if ext_code.size(lpPairAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                else:
                                                    mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1 - (50 * arg1 / 10000)) >> 32
                                                    call lpPairAddress with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args arg1 - (50 * arg1 / 10000), mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: division by zero'
                                                    else:
                                                        mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size > 0:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                        else:
                                                            if return_data.size <= 0:
                                                            else:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 585]:
                                                                    revert with 0, 
                                                                                32,
                                                                                42,
                                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                mem[(2 * ceil32(return_data.size)) + 664 len 22]
                                                                else:
                                        else:
                                            require return_data.size >= 32
                                            if not mem[356]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 435 len 22]
                                            else:
                                                if 50 * arg1 / 10000 > arg1:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if ext_code.size(lpPairAddress) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    else:
                                                        mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1 - (50 * arg1 / 10000)) >> 32
                                                        call lpPairAddress with:
                                                           funct uint32(stor5)
                                                             gas gas_remaining wei
                                                            args arg1 - (50 * arg1 / 10000), mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: division by zero'
                                                        else:
                                                            mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                if return_data.size > 0:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                            else:
                                                                if return_data.size <= 0:
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if not mem[ceil32(return_data.size) + 585]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    42,
                                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                    mem[(2 * ceil32(return_data.size)) + 664 len 22]
                                                                    else:
                    else:
                        if ext_code.size(lpPairAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        else:
                            mem[324 len 64] = transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, 0
                            call lpPairAddress.0xb3c23062 with:
                                 gas gas_remaining wei
                                args 0, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            else:
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                else:
                                    if return_data.size <= 0:
                                        if 0 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if ext_code.size(lpPairAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            else:
                                                mem[ceil32(return_data.size) + 553 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, arg1) >> 32
                                                call lpPairAddress with:
                                                   funct uint32(stor5)
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 617 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: division by zero'
                                                else:
                                                    mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                    else:
                                                        if return_data.size <= 0:
                                                        else:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 585]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                            else:
                                    else:
                                        require return_data.size >= 32
                                        if not mem[356]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 435 len 22]
                                        else:
                                            if 0 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if ext_code.size(lpPairAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                else:
                                                    mem[ceil32(return_data.size) + 553 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, arg1) >> 32
                                                    mem[ceil32(return_data.size) + 617 len 0] = 0
                                                    call lpPairAddress with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 617 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: division by zero'
                                                    else:
                                                        mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size > 0:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                        else:
                                                            if return_data.size <= 0:
                                                            else:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 585]:
                                                                    revert with 0, 
                                                                                32,
                                                                                42,
                                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                mem[(2 * ceil32(return_data.size)) + 664 len 22]
                                                                else:
            else:
                if ext_call.return_data[0] > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
                    call 0xd6a4f121ca35509af06a0be99093d08462f53052.withdraw(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args poolId, arg1 - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(lpPairAddress)
                        staticcall lpPairAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= arg1:
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0]
                                    if 50 * ext_call.return_data[0] / ext_call.return_data[0] != 50:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    else:
                                        if ext_code.size(lpPairAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        else:
                                            mem[388 len 64] = transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, Mask(224, 32, 50 * ext_call.return_data[0] / 10000) >> 32
                                            call lpPairAddress.0xb3c23062 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, 50 * ext_call.return_data[0] / 10000) << 224, mem[452 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            else:
                                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                else:
                                                    if return_data.size <= 0:
                                                        if 50 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            if ext_code.size(lpPairAddress) <= 0:
                                                                revert with 0, 'Address: call to non-contract'
                                                            else:
                                                                mem[ceil32(return_data.size) + 617 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) >> 32
                                                                call lpPairAddress with:
                                                                   funct uint32(stor5)
                                                                     gas gas_remaining wei
                                                                    args Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) << 224, mem[ceil32(return_data.size) + 681 len 4]
                                                                if not return_data.size:
                                                                    require not ext_call.success
                                                                    revert with 'SafeMath: subtraction overflow'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size > 0:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                    else:
                                                                        if return_data.size <= 0:
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if not mem[ceil32(return_data.size) + 649]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            42,
                                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                            mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                                            else:
                                                    else:
                                                        require return_data.size >= 32
                                                        if not mem[420]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 499 len 22]
                                                        else:
                                                            if 50 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                if ext_code.size(lpPairAddress) <= 0:
                                                                    revert with 0, 'Address: call to non-contract'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 617 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) >> 32
                                                                    mem[ceil32(return_data.size) + 681 len 0] = 0
                                                                    call lpPairAddress with:
                                                                       funct uint32(stor5)
                                                                         gas gas_remaining wei
                                                                        args Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) << 224, mem[ceil32(return_data.size) + 681 len 4]
                                                                    if not return_data.size:
                                                                        require not ext_call.success
                                                                        revert with 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        if not ext_call.success:
                                                                            if return_data.size > 0:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                                        else:
                                                                            if return_data.size <= 0:
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if not mem[ceil32(return_data.size) + 649]:
                                                                                    revert with 0, 
                                                                                                32,
                                                                                                42,
                                                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                mem[(2 * ceil32(return_data.size)) + 728 len 22]
                                                                                else:
                                else:
                                    if ext_code.size(lpPairAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    else:
                                        mem[388 len 64] = transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, 0
                                        call lpPairAddress.0xb3c23062 with:
                                             gas gas_remaining wei
                                            args 0, mem[452 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        else:
                                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                            else:
                                                if return_data.size <= 0:
                                                    if 0 > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if ext_code.size(lpPairAddress) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        else:
                                                            mem[ceil32(return_data.size) + 617 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                                                            call lpPairAddress with:
                                                               funct uint32(stor5)
                                                                 gas gas_remaining wei
                                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 681 len 4]
                                                            if not return_data.size:
                                                                require not ext_call.success
                                                                revert with 'SafeMath: subtraction overflow'
                                                            else:
                                                                mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size > 0:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                else:
                                                                    if return_data.size <= 0:
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if not mem[ceil32(return_data.size) + 649]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        42,
                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                        mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                                        else:
                                                else:
                                                    require return_data.size >= 32
                                                    if not mem[420]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 499 len 22]
                                                    else:
                                                        if 0 > ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            if ext_code.size(lpPairAddress) <= 0:
                                                                revert with 0, 'Address: call to non-contract'
                                                            else:
                                                                mem[ceil32(return_data.size) + 617 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                                                                call lpPairAddress with:
                                                                   funct uint32(stor5)
                                                                     gas gas_remaining wei
                                                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 681 len 4]
                                                                if not return_data.size:
                                                                    require not ext_call.success
                                                                    revert with 'SafeMath: subtraction overflow'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size > 0:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                    else:
                                                                        if return_data.size <= 0:
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if not mem[ceil32(return_data.size) + 649]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            42,
                                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                            mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                                            else:
                            else:
                                if arg1:
                                    require arg1
                                    if 50 * arg1 / arg1 != 50:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    else:
                                        if ext_code.size(lpPairAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        else:
                                            mem[388 len 64] = transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, Mask(224, 32, 50 * arg1 / 10000) >> 32
                                            call lpPairAddress.0xb3c23062 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, 50 * arg1 / 10000) << 224, mem[452 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            else:
                                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                else:
                                                    if return_data.size <= 0:
                                                        if 50 * arg1 / 10000 > arg1:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            if ext_code.size(lpPairAddress) <= 0:
                                                                revert with 0, 'Address: call to non-contract'
                                                            else:
                                                                mem[ceil32(return_data.size) + 617 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, arg1 - (50 * arg1 / 10000)) >> 32
                                                                call lpPairAddress with:
                                                                   funct uint32(stor5)
                                                                     gas gas_remaining wei
                                                                    args Mask(224, 32, arg1 - (50 * arg1 / 10000)) << 224, mem[ceil32(return_data.size) + 681 len 4]
                                                                if not return_data.size:
                                                                    require not ext_call.success
                                                                    revert with 'SafeMath: subtraction overflow'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size > 0:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                    else:
                                                                        if return_data.size <= 0:
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if not mem[ceil32(return_data.size) + 649]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            42,
                                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                            mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                                            else:
                                                    else:
                                                        require return_data.size >= 32
                                                        if not mem[420]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 499 len 22]
                                                        else:
                                                            if 50 * arg1 / 10000 > arg1:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                if ext_code.size(lpPairAddress) <= 0:
                                                                    revert with 0, 'Address: call to non-contract'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 617 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, arg1 - (50 * arg1 / 10000)) >> 32
                                                                    mem[ceil32(return_data.size) + 681 len 0] = 0
                                                                    call lpPairAddress with:
                                                                       funct uint32(stor5)
                                                                         gas gas_remaining wei
                                                                        args Mask(224, 32, arg1 - (50 * arg1 / 10000)) << 224, mem[ceil32(return_data.size) + 681 len 4]
                                                                    if not return_data.size:
                                                                        require not ext_call.success
                                                                        revert with 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        if not ext_call.success:
                                                                            if return_data.size > 0:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                                        else:
                                                                            if return_data.size <= 0:
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if not mem[ceil32(return_data.size) + 649]:
                                                                                    revert with 0, 
                                                                                                32,
                                                                                                42,
                                                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                mem[(2 * ceil32(return_data.size)) + 728 len 22]
                                                                                else:
                                else:
                                    if ext_code.size(lpPairAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    else:
                                        mem[388 len 64] = transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, 0
                                        call lpPairAddress.0xb3c23062 with:
                                             gas gas_remaining wei
                                            args 0, mem[452 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        else:
                                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                            else:
                                                if return_data.size <= 0:
                                                    if 0 > arg1:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if ext_code.size(lpPairAddress) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        else:
                                                            mem[ceil32(return_data.size) + 617 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, arg1) >> 32
                                                            call lpPairAddress with:
                                                               funct uint32(stor5)
                                                                 gas gas_remaining wei
                                                                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 681 len 4]
                                                            if not return_data.size:
                                                                require not ext_call.success
                                                                revert with 'SafeMath: subtraction overflow'
                                                            else:
                                                                mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size > 0:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                else:
                                                                    if return_data.size <= 0:
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if not mem[ceil32(return_data.size) + 649]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        42,
                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                        mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                                        else:
                                                else:
                                                    require return_data.size >= 32
                                                    if not mem[420]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 499 len 22]
                                                    else:
                                                        if 0 > arg1:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            if ext_code.size(lpPairAddress) <= 0:
                                                                revert with 0, 'Address: call to non-contract'
                                                            else:
                                                                mem[ceil32(return_data.size) + 617 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, arg1) >> 32
                                                                call lpPairAddress with:
                                                                   funct uint32(stor5)
                                                                     gas gas_remaining wei
                                                                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 681 len 4]
                                                                if not return_data.size:
                                                                    require not ext_call.success
                                                                    revert with 'SafeMath: subtraction overflow'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size > 0:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                    else:
                                                                        if return_data.size <= 0:
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if not mem[ceil32(return_data.size) + 649]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            42,
                                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                            mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                                            else:
}



}