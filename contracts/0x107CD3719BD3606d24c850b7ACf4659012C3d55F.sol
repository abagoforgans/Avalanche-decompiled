contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const balanceOfPool = ext_call.return_data[0]

const unirouter = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106

const treasury = 0x3bdf76dc9ab46955a003a15e9232ec4d59e4befd

const wbnb = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const rewards = 0x3bdf76dc9ab46955a003a15e9232ec4d59e4befd

const sub_d68220c7(?) = 0x60781c2586d68229fde47564546784ab3faca982

const masterchef = 0x830a966b9b447c9b15ab24c0369c4018e75f31c9

const REWARDS_FEE = 667

const WITHDRAWAL_MAX = 10000

const TREASURY_FEE = 250

const CALL_FEE = 83

const WITHDRAWAL_FEE = 50

const MAX_FEE = 1000


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address lpPairAddress;
address lpToken0Address;
address lpToken1Address;
uint32 stor4;
address vaultAddress;
array of address sub_72321d5e;
array of address sub_f49f5d30;
array of address sub_15e636d5;

function sub_15e636d5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_15e636d5.length
    return sub_15e636d5[arg1]
}

function lpPair() payable {
    return lpPairAddress
}

function paused() payable {
    return bool(uint8(stor0.field_160))
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
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
}

function balanceOfLpPair() payable {
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function panic() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
    require ext_code.size(0x830a966b9b447c9b15ab24c0369c4018e75f31c9)
    call 0x830a966b9b447c9b15ab24c0369c4018e75f31c9.exit() with:
         gas gas_remaining wei
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
    require ext_code.size(0x830a966b9b447c9b15ab24c0369c4018e75f31c9)
    staticcall 0x830a966b9b447c9b15ab24c0369c4018e75f31c9.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.balanceOf(address rg1) with:
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
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if ext_code.size(lpPairAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address rg1, uint256 rg2), 0x830a966b9b447c9b15ab24c0, 0, 0
        mem[324 len 0] = 0
        call lpPairAddress.0xe75f31c9 with:
             gas gas_remaining wei
            args Mask(480, -256, approve(address rg1, uint256 rg2), 0x830a966b9b447c9b15ab24c0, 0, 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x830a966b9b447c9b15ab24c0, 0, 0
            if not approve(address rg1, uint256 rg2), 0x830a966b9b447c9b15ab24c0:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(lpPairAddress)
                staticcall lpPairAddress.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), 0x830a966b9b447c9b15ab24c0369c4018e75f31c9
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
            mem[424 len 64] = 0, 0x830a966b9b447c9b15ab24c0369c4018e75f31c9, ext_call.return_data[0 len 28]
            call lpPairAddress.0xe75f31c9 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x830a966b9b447c9b15ab24c0, 0, 0
                if not approve(address rg1, uint256 rg2), 0x830a966b9b447c9b15ab24c0:
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
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(lpPairAddress)
                staticcall lpPairAddress.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), 0x830a966b9b447c9b15ab24c0369c4018e75f31c9
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
            mem[ceil32(return_data.size) + 425 len 64] = 0, 0x830a966b9b447c9b15ab24c0369c4018e75f31c9, ext_call.return_data[0 len 28]
            call lpPairAddress.0xe75f31c9 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x830a966b9b447c9b15ab24c0, 0, 0
                if not approve(address rg1, uint256 rg2), 0x830a966b9b447c9b15ab24c0:
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
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        require ext_code.size(0x830a966b9b447c9b15ab24c0369c4018e75f31c9)
        call 0x830a966b9b447c9b15ab24c0369c4018e75f31c9.stake(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] <= arg1:
            if not ext_call.return_data[0]:
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = transfer(address rg1, uint256 rg2), 0x3bdf76dc9ab46955a003a15e, 0, 0
                mem[388 len 0] = 0
                call lpPairAddress.0x59e4befd with:
                     gas gas_remaining wei
                    args Mask(480, -256, transfer(address rg1, uint256 rg2), 0x3bdf76dc9ab46955a003a15e, 0, 0) << 256, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                call lpPairAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
            else:
                require ext_call.return_data[0]
                if 50 * ext_call.return_data[0] / ext_call.return_data[0] != 50:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = transfer(address rg1, uint256 rg2), 0x3bdf76dc9ab46955a003a15e, 0, Mask(224, 32, 50 * ext_call.return_data[0] / 10000) >> 32
                mem[388 len 0] = 0
                call lpPairAddress.0x59e4befd with:
                     gas gas_remaining wei
                    args Mask(224, 32, 50 * ext_call.return_data[0] / 10000) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                if 50 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) >> 32
                call lpPairAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
        else:
            if not arg1:
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = transfer(address rg1, uint256 rg2), 0x3bdf76dc9ab46955a003a15e, 0, 0
                mem[388 len 0] = 0
                call lpPairAddress.0x59e4befd with:
                     gas gas_remaining wei
                    args Mask(480, -256, transfer(address rg1, uint256 rg2), 0x3bdf76dc9ab46955a003a15e, 0, 0) << 256, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                call lpPairAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args arg1, mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
            else:
                require arg1
                if 50 * arg1 / arg1 != 50:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = transfer(address rg1, uint256 rg2), 0x3bdf76dc9ab46955a003a15e, 0, Mask(224, 32, 50 * arg1 / 10000) >> 32
                mem[388 len 0] = 0
                call lpPairAddress.0x59e4befd with:
                     gas gas_remaining wei
                    args Mask(224, 32, 50 * arg1 / 10000) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                if 50 * arg1 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1 - (50 * arg1 / 10000)) >> 32
                call lpPairAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args arg1 - (50 * arg1 / 10000), mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 585]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0x830a966b9b447c9b15ab24c0369c4018e75f31c9)
        call 0x830a966b9b447c9b15ab24c0369c4018e75f31c9.0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(lpPairAddress)
        staticcall lpPairAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if not ext_call.return_data[0]:
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = transfer(address rg1, uint256 rg2), 0x3bdf76dc9ab46955a003a15e, 0, 0
                mem[452 len 0] = 0
                call lpPairAddress.0x59e4befd with:
                     gas gas_remaining wei
                    args Mask(480, -256, transfer(address rg1, uint256 rg2), 0x3bdf76dc9ab46955a003a15e, 0, 0) << 256, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                call lpPairAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
            else:
                require ext_call.return_data[0]
                if 50 * ext_call.return_data[0] / ext_call.return_data[0] != 50:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = transfer(address rg1, uint256 rg2), 0x3bdf76dc9ab46955a003a15e, 0, Mask(224, 32, 50 * ext_call.return_data[0] / 10000) >> 32
                mem[452 len 0] = 0
                call lpPairAddress.0x59e4befd with:
                     gas gas_remaining wei
                    args Mask(224, 32, 50 * ext_call.return_data[0] / 10000) << 224, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
                if 50 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = 0, address(vaultAddress), Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) >> 32
                call lpPairAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
        else:
            if not arg1:
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = transfer(address rg1, uint256 rg2), 0x3bdf76dc9ab46955a003a15e, 0, 0
                mem[452 len 0] = 0
                call lpPairAddress.0x59e4befd with:
                     gas gas_remaining wei
                    args Mask(480, -256, transfer(address rg1, uint256 rg2), 0x3bdf76dc9ab46955a003a15e, 0, 0) << 256, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                call lpPairAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args arg1, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
            else:
                require arg1
                if 50 * arg1 / arg1 != 50:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = transfer(address rg1, uint256 rg2), 0x3bdf76dc9ab46955a003a15e, 0, Mask(224, 32, 50 * arg1 / 10000) >> 32
                mem[452 len 0] = 0
                call lpPairAddress.0x59e4befd with:
                     gas gas_remaining wei
                    args Mask(224, 32, 50 * arg1 / 10000) << 224, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
                if 50 * arg1 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1 - (50 * arg1 / 10000)) >> 32
                call lpPairAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args arg1 - (50 * arg1 / 10000), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 649]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}



}
