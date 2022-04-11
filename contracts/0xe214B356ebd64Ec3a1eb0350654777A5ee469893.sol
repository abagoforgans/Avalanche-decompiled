contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const balanceOfPool = ext_call.return_data[0]

const unirouter = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106

const treasury = 0xd5c564e6e2c7d59f509d05b0ff101b2ab3c23062

const rewardPool = 0x90be41e8537ae52c5b2f6ed7e2adc937c4e4fc46

const balanceOf = (2 * ext_call.return_data[0])

const balanceOfCake = ext_call.return_data[0]

const wbnb = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const storm = 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b

const sub_c1f46aa4(?) = 667

const masterchef = 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446

const WITHDRAWAL_MAX = 10000

const TREASURY_FEE = 250

const CALL_FEE = 83

const WITHDRAWAL_FEE = 50

const MAX_FEE = 1000


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
uint32 stor1;
address vaultAddress;
uint256 stor1;
address stor2;
array of address sub_72321d5e;

function paused() payable {
    return bool(paused)
}

function sub_72321d5e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_72321d5e.length
    return sub_72321d5e[arg1]
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
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b)
    staticcall 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0xc1a97bcbacf0566fc8c40291ffe7e634964b0446)
        call 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446.deposit(uint256 rg1, uint256 rg2, address rg3) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0], stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function retireStrat() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xc1a97bcbacf0566fc8c40291ffe7e634964b0446)
    call 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446.0x5312ea8e with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b)
    staticcall 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b)
    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function calculateTotalPendingCakeRewards() payable {
    require ext_code.size(0xc1a97bcbacf0566fc8c40291ffe7e634964b0446)
    staticcall 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446.pendingStorm(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b)
    staticcall 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        return 0
    require 2 * ext_call.return_data[0]
    if 100 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (100 * ext_call.return_data[0] / 10000)
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0
    mem[324 len 0] = 0
    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0xb6c89106 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0
        if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, 0
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xb6c89106 with:
             gas gas_remaining wei
            args 0, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0
            if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = 0, 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446, 0
            call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0x964b0446 with:
                 gas gas_remaining wei
                args 0, mem[524 len 28], mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0
                if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
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
            if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446, 0
            call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0x964b0446 with:
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0
                if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
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
        if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, 0
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xb6c89106 with:
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0
            if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446, 0
            call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0x964b0446 with:
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0
                if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
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
            if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446, 0
            call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0x964b0446 with:
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0
                if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 622]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
}

function panic() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0
    mem[324 len 0] = 0
    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0xb6c89106 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0
        if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, 0
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xb6c89106 with:
             gas gas_remaining wei
            args 0, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0
            if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = 0, 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446, 0
            call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0x964b0446 with:
                 gas gas_remaining wei
                args 0, mem[524 len 28], mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0
                if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
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
            if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446, 0
            call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0x964b0446 with:
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0
                if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
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
        if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, 0
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xb6c89106 with:
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0
            if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446, 0
            call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0x964b0446 with:
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0
                if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
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
            if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446, 0
            call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0x964b0446 with:
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0
                if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 622]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
    require ext_code.size(0xc1a97bcbacf0566fc8c40291ffe7e634964b0446)
    call 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446.0x5312ea8e with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
    require ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b)
    staticcall 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0xb6c89106 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, -1
        if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xb6c89106 with:
             gas gas_remaining wei
            args -1, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, -1
            if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            require ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b)
            staticcall 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[546 len 10]
            if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = 0, 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0x964b0446 with:
                 gas gas_remaining wei
                args -1, mem[524 len 28], mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, -1
                if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
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
            require ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b)
            staticcall 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 547 len 10]
            if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0x964b0446 with:
                 gas gas_remaining wei
                args -1, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, -1
                if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
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
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[ceil32(return_data.size) + 383 len 10]
        if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[ceil32(return_data.size) + 517 len 4] = 0
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xb6c89106 with:
             gas gas_remaining wei
            args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, -1
            if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b)
            staticcall 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 547 len 10]
            if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0x964b0446 with:
                 gas gas_remaining wei
                args -1, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, -1
                if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
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
            require ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b)
            staticcall 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(2 * ceil32(return_data.size)) + 548 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
            if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0x964b0446 with:
                 gas gas_remaining wei
                args -1, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, -1
                if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 622]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b)
    staticcall 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
                mem[324 len 0] = 0
                call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0]
                    if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor1):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
            else:
                if not ext_call.return_data[0]:
                    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, 0
                    mem[388 len 0] = 0
                    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0xb3c23062 with:
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, 0) << 256, mem[388 len 4]
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
                    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b with:
                       funct uint32(stor1)
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
                    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, Mask(224, 32, 50 * ext_call.return_data[0] / 10000) >> 32
                    mem[388 len 0] = 0
                    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0xb3c23062 with:
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
                    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) >> 32
                    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
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
            if tx.origin == owner:
                if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg1) >> 32
                mem[324 len 0] = 0
                call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), arg1
                    if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor1):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
            else:
                if not arg1:
                    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, 0
                    mem[388 len 0] = 0
                    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0xb3c23062 with:
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, 0) << 256, mem[388 len 4]
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
                    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b with:
                       funct uint32(stor1)
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
                    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, Mask(224, 32, 50 * arg1 / 10000) >> 32
                    mem[388 len 0] = 0
                    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0xb3c23062 with:
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
                    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1 - (50 * arg1 / 10000)) >> 32
                    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b with:
                       funct uint32(stor1)
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
        require ext_code.size(0xc1a97bcbacf0566fc8c40291ffe7e634964b0446)
        call 0xc1a97bcbacf0566fc8c40291ffe7e634964b0446.0x441a3e70 with:
             gas gas_remaining wei
            args 0, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b)
        staticcall 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
                mem[388 len 0] = 0
                call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
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
            else:
                if not ext_call.return_data[0]:
                    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, 0
                    mem[452 len 0] = 0
                    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0xb3c23062 with:
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, 0) << 256, mem[452 len 4]
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
                    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 617 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                else:
                    require ext_call.return_data[0]
                    if 50 * ext_call.return_data[0] / ext_call.return_data[0] != 50:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, Mask(224, 32, 50 * ext_call.return_data[0] / 10000) >> 32
                    mem[452 len 0] = 0
                    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0xb3c23062 with:
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
                    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 617 len 64] = 0, address(vaultAddress), Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) >> 32
                    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
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
        else:
            if tx.origin == owner:
                if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg1) >> 32
                mem[388 len 0] = 0
                call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
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
            else:
                if not arg1:
                    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, 0
                    mem[452 len 0] = 0
                    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0xb3c23062 with:
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, 0) << 256, mem[452 len 4]
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
                    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 617 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args arg1, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                else:
                    require arg1
                    if 50 * arg1 / arg1 != 50:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = transfer(address rg1, uint256 rg2), 0xd5c564e6e2c7d59f509d05b0, 0, Mask(224, 32, 50 * arg1 / 10000) >> 32
                    mem[452 len 0] = 0
                    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b.0xb3c23062 with:
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
                    if ext_code.size(0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 617 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1 - (50 * arg1 / 10000)) >> 32
                    call 0x6afd5a1ea4b793cc1526d6dc7e99a608b356ef7b with:
                       funct uint32(stor1)
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
