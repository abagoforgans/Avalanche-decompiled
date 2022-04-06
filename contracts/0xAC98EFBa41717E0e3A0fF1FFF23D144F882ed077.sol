contract main {




// =====================  Runtime code  =====================


const balanceOfPool = ext_call.return_data[0]

const sub_50ed1471(?) = 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33

const joe = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd

const pid = 24

const masterchef = 0xd6a4f121ca35509af06a0be99093d08462f53052

const WITHDRAWAL_MAX = 10000

const WITHDRAWAL_FEE = 10


uint8 stor0; offset 160
address owner;
address sub_40b86224Address;
uint32 stor2;
address vaultAddress;
uint256 stor2;
address lpPairAddress;

function sub_40b86224(?) payable {
    return sub_40b86224Address
}

function lpPair() payable {
    return lpPairAddress
}

function paused() payable {
    return bool(stor0)
}

function owner() payable {
    return owner
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setBuybackStrat(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_40b86224Address = arg1
}

function getBPSFee() payable {
    require ext_code.size(sub_40b86224Address)
    staticcall sub_40b86224Address.0xbcae25a4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deposit() payable {
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
        call 0xd6a4f121ca35509af06a0be99093d08462f53052.deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 24, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 24, this.address
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

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if not ext_code.size(lpPairAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0
    mem[324 len 0] = 0
    call lpPairAddress.0x62f53052 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0
        if not approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9:
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
}

function panic() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if not ext_code.size(lpPairAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0
    mem[324 len 0] = 0
    call lpPairAddress.0x62f53052 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0
        if not approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9:
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
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    call 0xd6a4f121ca35509af06a0be99093d08462f53052.emergencyWithdraw(uint256 rg1) with:
         gas gas_remaining wei
        args 24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function retireStrat() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if not ext_code.size(lpPairAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0
    mem[324 len 0] = 0
    call lpPairAddress.0x62f53052 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0
        if not approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9:
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
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    call 0xd6a4f121ca35509af06a0be99093d08462f53052.emergencyWithdraw(uint256 rg1) with:
         gas gas_remaining wei
        args 24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lpPairAddress)
    call lpPairAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function harvest() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    if tx.origin != msg.sender:
        revert with 0, '!contract'
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    call 0xd6a4f121ca35509af06a0be99093d08462f53052.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 24, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_40b86224Address:
        require ext_code.size(sub_40b86224Address)
        staticcall sub_40b86224Address.0xbcae25a4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
        staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
            call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_40b86224Address, 0
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
            call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_40b86224Address, ext_call.return_data[0] * ext_call.return_data[0] / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
    call 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.enter(uint256 rg1) with:
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
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if arg1:
            if 10 * arg1 / arg1 != 10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10 * arg1 / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_code.size(lpPairAddress):
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1 - (10 * arg1 / 10000)) >> 32
            call lpPairAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(224, 32, arg1 - (10 * arg1 / 10000)) << 224, mem[452 len 4]
        else:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_code.size(lpPairAddress):
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1) >> 32
            mem[452 len 0] = 0
            call lpPairAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 499 len 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
        call 0xd6a4f121ca35509af06a0be99093d08462f53052.withdraw(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 24, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(lpPairAddress)
        staticcall lpPairAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_code.size(lpPairAddress):
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1) >> 32
            call lpPairAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[516 len 4]
        else:
            if 10 * arg1 / arg1 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 10 * arg1 / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_code.size(lpPairAddress):
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1 - (10 * arg1 / 10000)) >> 32
            mem[516 len 0] = 0
            call lpPairAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(224, 32, arg1 - (10 * arg1 / 10000)) << 224, mem[516 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[484]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 563 len 22]
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
    if not ext_code.size(lpPairAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0
    mem[324 len 0] = 0
    call lpPairAddress.0x62f53052 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0
        if not approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(lpPairAddress)
        staticcall lpPairAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, 0xd6a4f121ca35509af06a0be99093d08462f53052
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if not ext_code.size(lpPairAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, 0xd6a4f121ca35509af06a0be99093d08462f53052, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call lpPairAddress.0x62f53052 with:
             gas gas_remaining wei
            args -1, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0
            if not approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9:
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
        require ext_code.size(lpPairAddress)
        staticcall lpPairAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, 0xd6a4f121ca35509af06a0be99093d08462f53052
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[ceil32(return_data.size) + 383 len 10]
        if not ext_code.size(lpPairAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, 0xd6a4f121ca35509af06a0be99093d08462f53052, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call lpPairAddress.0x62f53052 with:
             gas gas_remaining wei
            args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, 0
            if not approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9:
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
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
}



}
