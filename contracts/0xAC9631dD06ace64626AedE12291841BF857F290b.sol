contract main {




// =====================  Runtime code  =====================


#
#  - resetAllowances()
#  - unpause()
#  - convertDustToEarned()
#
const usdcAddress = 0xc7198437980c041c805a1edcba50c1ce5db95118

const feeAddress = 0xe768c11ce3250f65b57c08e0afefda1df81f8f5c

const wethAddress = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const withdrawFeeFactorMax = 10000

const buyBackAddress = 57005

const withdrawFeeAddress = 0xd12bc198269a14475baf42fa38967f0075e9df1e

const withdrawFeeFactorLL = 9900

const rewardAddress = 0xe768c11ce3250f65b57c08e0afefda1df81f8f5c

const sub_8d465aad(?) = 0xe896cdeaac9615145c0ca09c8cd5c25bced6384c

const feeMaxTotal = 1000

const slippageFactorUL = 995

const feeMax = 10000


address owner;
uint256 stor1;
uint8 paused;
uint32 stor2;
address stor2;
address vaultChefAddress; offset 8
uint256 stor2;
address masterchefAddress;
address wantAddress;
uint32 stor5;
address token0Address;
address token1Address;
address earnedAddress;
address uniRouterAddress;
address govAddress;
uint256 lastEarnBlock;
uint256 sharesTotal;
uint256 controllerFee;
uint256 rewardRate;
uint256 buyBackRate;
uint256 withdrawFeeFactor;
uint256 slippageFactor;
array of address sub_4c751c17;
array of address sub_49281683;
array of address sub_abf0c24a;
array of struct earnedToToken0Path;
array of struct earnedToToken1Path;
array of address token0ToEarnedPath;
array of address token1ToEarnedPath;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1]
}

function lastEarnBlock() payable {
    return lastEarnBlock
}

function buyBackRate() payable {
    return buyBackRate
}

function vaultChefAddress() payable {
    return vaultChefAddress
}

function masterchefAddress() payable {
    return masterchefAddress
}

function sharesTotal() payable {
    return sharesTotal
}

function govAddress() payable {
    return govAddress
}

function sub_49281683(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_49281683.length
    return sub_49281683[arg1]
}

function sub_4c751c17(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4c751c17.length
    return sub_4c751c17[arg1]
}

function paused() payable {
    return bool(paused)
}

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function rewardRate() payable {
    return rewardRate
}

function token0Address() payable {
    return address(token0Address)
}

function controllerFee() payable {
    return controllerFee
}

function owner() payable {
    return owner
}

function earnedToToken1Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken1Path.length
    return earnedToToken1Path[arg1].field_0
}

function sub_abf0c24a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_abf0c24a.length
    return sub_abf0c24a[arg1]
}

function token0ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token0ToEarnedPath.length
    return token0ToEarnedPath[arg1]
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1].field_0
}

function token1Address() payable {
    return token1Address
}

function earnedAddress() payable {
    return earnedAddress
}

function wantAddress() payable {
    return wantAddress
}

function slippageFactor() payable {
    return slippageFactor
}

function _fallback() payable {
    revert
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    govAddress = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function vaultSharesTotal() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.balanceOf(address rg1) with:
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
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function wantLockedTotal() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function setSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 + arg2 + arg1 > 1000:
        revert with 0, 'Max fee of 10%'
    if arg4 < 9900:
        revert with 0, '_withdrawFeeFactor too low'
    if arg4 > 10000:
        revert with 0, '_withdrawFeeFactor too high'
    if arg5 > 995:
        revert with 0, '_slippageFactor too high'
    controllerFee = arg1
    rewardRate = arg2
    buyBackRate = arg3
    withdrawFeeFactor = arg4
    slippageFactor = arg5
    uniRouterAddress = arg6
    emit SetSettings(arg1, arg2, arg3, arg4, arg5, address(arg6));
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call wantAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
        if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
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
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(masterchefAddress)
        call masterchefAddress.stake(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
    if not sharesTotal:
        if sharesTotal < sharesTotal:
            revert with 0, 'SafeMath: addition overflow'
        stor1 = 1
        return 0
    if not 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (0 / 2 * ext_call.return_data[0]) + sharesTotal < sharesTotal:
        revert with 0, 'SafeMath: addition overflow'
    sharesTotal += 0 / 2 * ext_call.return_data[0]
    stor1 = 1
    return (0 / 2 * ext_call.return_data[0])
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not arg2:
        revert with 0, '_wantAmt is 0'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 <= ext_call.return_data[0]:
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 <= 2 * ext_call.return_data[0]:
            if not arg2:
                if not 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / 2 * ext_call.return_data[0] <= sharesTotal:
                    sharesTotal -= 0 / 2 * ext_call.return_data[0]
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2) >> 32
                        call wantAddress with:
                           funct uint32(stor2.field_0)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000:
                            if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                            call wantAddress with:
                               funct uint32(stor2.field_0)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                            call wantAddress.0x75e9df1e with:
                                 gas gas_remaining wei
                                args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor2.field_0)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                stor1 = 1
                                return 0 / 2 * ext_call.return_data[0], 
                                       mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                            if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                            mem[ceil32(return_data.size) + 809 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor2.field_0)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                    stor1 = 1
                    return (0 / 2 * ext_call.return_data[0])
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if withdrawFeeFactor > 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg2:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2) >> 32
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                    stor1 = 1
                    return sharesTotal
                if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000:
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                    stor1 = 1
                    return sharesTotal
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                call wantAddress.0x75e9df1e with:
                     gas gas_remaining wei
                    args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                    mem[ceil32(return_data.size) + 809 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len 22]
                    stor1 = 1
                    return sharesTotal
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
            else:
                if sharesTotal * arg2 / arg2 != sharesTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * arg2 / 2 * ext_call.return_data[0] <= sharesTotal:
                    sharesTotal -= sharesTotal * arg2 / 2 * ext_call.return_data[0]
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2) >> 32
                        call wantAddress with:
                           funct uint32(stor2.field_0)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        stor1 = 1
                        return (sharesTotal * arg2 / 2 * ext_call.return_data[0])
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000:
                        if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                        mem[644 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor2.field_0)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        stor1 = 1
                        return (sharesTotal * arg2 / 2 * ext_call.return_data[0])
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                    call wantAddress.0x75e9df1e with:
                         gas gas_remaining wei
                        args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 627 len 22]
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return sharesTotal * arg2 / 2 * ext_call.return_data[0], 
                           mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if withdrawFeeFactor > 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg2:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2) >> 32
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                    stor1 = 1
                    return sharesTotal
                if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000:
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                    stor1 = 1
                    return sharesTotal
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                call wantAddress.0x75e9df1e with:
                     gas gas_remaining wei
                    args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
            if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 745 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
            mem[ceil32(return_data.size) + 837 len 4] = 0
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
        else:
            require ext_code.size(masterchefAddress)
            staticcall masterchefAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if not 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / 2 * ext_call.return_data[0] <= sharesTotal:
                    sharesTotal -= 0 / 2 * ext_call.return_data[0]
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 2 * ext_call.return_data[0]:
                        if 0 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                        call wantAddress with:
                           funct uint32(stor2.field_0)
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        stor1 = 1
                        return (0 / 2 * ext_call.return_data[0])
                    if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor2.field_0)
                             gas gas_remaining wei
                            args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        stor1 = 1
                        return (0 / 2 * ext_call.return_data[0])
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                    call wantAddress.0x75e9df1e with:
                         gas gas_remaining wei
                        args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 627 len 22]
                    if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return 0 / 2 * ext_call.return_data[0], 
                           mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                if (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0] != sharesTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0] <= sharesTotal:
                    sharesTotal -= (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0]
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 2 * ext_call.return_data[0]:
                        if 0 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                        call wantAddress with:
                           funct uint32(stor2.field_0)
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                            call wantAddress with:
                               funct uint32(stor2.field_0)
                                 gas gas_remaining wei
                                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                            call wantAddress.0x75e9df1e with:
                                 gas gas_remaining wei
                                args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor2.field_0)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                stor1 = 1
                                return (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0], 
                                       mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                            mem[ceil32(return_data.size) + 809 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor2.field_0)
                                 gas gas_remaining wei
                                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                    stor1 = 1
                    return ((ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0])
            if sharesTotal > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal = 0
            if withdrawFeeFactor > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 2 * ext_call.return_data[0]:
                if 0 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
                stor1 = 1
                return sharesTotal
            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
                stor1 = 1
                return sharesTotal
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[516 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
            call wantAddress.0x75e9df1e with:
                 gas gas_remaining wei
                args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 745 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
            mem[ceil32(return_data.size) + 837 len 4] = 0
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 777]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        stor1 = 1
        return sharesTotal, 
               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if ext_call.return_data[0] > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(masterchefAddress)
    call masterchefAddress.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args (arg2 - ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 <= ext_call.return_data[0]:
        if arg2 <= 2 * ext_call.return_data[0]:
            if not arg2:
                if not 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / 2 * ext_call.return_data[0] <= sharesTotal:
                    sharesTotal -= 0 / 2 * ext_call.return_data[0]
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2) >> 32
                        call wantAddress with:
                           funct uint32(stor2.field_0)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 755 len 22]
                        stor1 = 1
                        return (0 / 2 * ext_call.return_data[0])
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000:
                        if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor2.field_0)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 755 len 22]
                        stor1 = 1
                        return (0 / 2 * ext_call.return_data[0])
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                    call wantAddress.0x75e9df1e with:
                         gas gas_remaining wei
                        args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 841]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return 0 / 2 * ext_call.return_data[0], 
                           mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if withdrawFeeFactor > 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg2:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2) >> 32
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 755 len 22]
                    stor1 = 1
                    return sharesTotal
                if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000:
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 755 len 22]
                    stor1 = 1
                    return sharesTotal
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                call wantAddress.0x75e9df1e with:
                     gas gas_remaining wei
                    args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
                if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 809 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                mem[ceil32(return_data.size) + 901 len 4] = 0
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 841]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                stor1 = 1
                return sharesTotal, 
                       mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if sharesTotal * arg2 / arg2 != sharesTotal:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if sharesTotal * arg2 / 2 * ext_call.return_data[0] <= sharesTotal:
                sharesTotal -= sharesTotal * arg2 / 2 * ext_call.return_data[0]
                if withdrawFeeFactor > 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg2:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2) >> 32
                    mem[708 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 755 len 22]
                    stor1 = 1
                    return (sharesTotal * arg2 / 2 * ext_call.return_data[0])
                if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000:
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 755 len 22]
                    stor1 = 1
                    return (sharesTotal * arg2 / 2 * ext_call.return_data[0])
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                call wantAddress.0x75e9df1e with:
                     gas gas_remaining wei
                    args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                    mem[ceil32(return_data.size) + 873 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 841]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 920 len 22]
                    stor1 = 1
                    return (sharesTotal * arg2 / 2 * ext_call.return_data[0])
                require return_data.size >= 32
                if not mem[612]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 691 len 22]
                if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 809 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                mem[ceil32(return_data.size) + 901 len 4] = 0
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 841]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                stor1 = 1
                return sharesTotal * arg2 / 2 * ext_call.return_data[0], 
                       mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if sharesTotal > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal = 0
            if withdrawFeeFactor > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg2:
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2) >> 32
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[708 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[676]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 755 len 22]
            else:
                if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000:
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) << 224, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 755 len 22]
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) >> 32
                    mem[644 len 0] = 0
                    call wantAddress.0x75e9df1e with:
                         gas gas_remaining wei
                        args Mask(224, 32, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                    if (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = 0, address(stor2.field_0), Mask(224, 32, arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000)) >> 32
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args arg2 - ((10000 * arg2) - (withdrawFeeFactor * arg2) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 841]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 920 len 22]
            stor1 = 1
            return sharesTotal
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / 2 * ext_call.return_data[0] <= sharesTotal:
                sharesTotal -= 0 / 2 * ext_call.return_data[0]
                if withdrawFeeFactor > 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not 2 * ext_call.return_data[0]:
                    if 0 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 755 len 22]
                    stor1 = 1
                    return (0 / 2 * ext_call.return_data[0])
                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                    if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                    mem[708 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 755 len 22]
                    stor1 = 1
                    return (0 / 2 * ext_call.return_data[0])
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                call wantAddress.0x75e9df1e with:
                     gas gas_remaining wei
                    args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 809 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                mem[ceil32(return_data.size) + 901 len 4] = 0
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 841]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                stor1 = 1
                return 0 / 2 * ext_call.return_data[0], 
                       mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if sharesTotal > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal = 0
            if withdrawFeeFactor > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 2 * ext_call.return_data[0]:
                if 0 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[708 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[676]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 755 len 22]
            else:
                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                    if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 755 len 22]
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                    mem[644 len 0] = 0
                    call wantAddress.0x75e9df1e with:
                         gas gas_remaining wei
                        args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                    if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = 0, address(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 841]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 920 len 22]
            stor1 = 1
            return sharesTotal
        if (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0] != sharesTotal:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0] <= sharesTotal:
            sharesTotal -= (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0]
            if withdrawFeeFactor > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 2 * ext_call.return_data[0]:
                if 0 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[708 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[676]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 755 len 22]
                stor1 = 1
                return ((ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0])
            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[708 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[676]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 755 len 22]
                stor1 = 1
                return ((ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0])
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[580 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
            call wantAddress.0x75e9df1e with:
                 gas gas_remaining wei
                args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[644 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[612]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 691 len 22]
            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 809 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
            mem[ceil32(return_data.size) + 901 len 4] = 0
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 841]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            stor1 = 1
            return (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0], 
                   mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if sharesTotal > sharesTotal:
            revert with 0, 'SafeMath: subtraction overflow'
        sharesTotal = 0
        if withdrawFeeFactor > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 2 * ext_call.return_data[0]:
            if 0 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[708 len 0] = 0
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[708 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[676]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 755 len 22]
            stor1 = 1
            return sharesTotal
        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[708 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[676]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 755 len 22]
            stor1 = 1
            return sharesTotal
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[580 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
        call wantAddress.0x75e9df1e with:
             gas gas_remaining wei
            args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[644 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[612]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 691 len 22]
        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 809 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
        mem[ceil32(return_data.size) + 901 len 4] = 0
        call wantAddress with:
           funct uint32(stor2.field_0)
             gas gas_remaining wei
            args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 841]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        stor1 = 1
        return sharesTotal, 
               mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if ext_call.return_data[0] <= 2 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / 2 * ext_call.return_data[0] <= sharesTotal:
                sharesTotal -= 0 / 2 * ext_call.return_data[0]
                if withdrawFeeFactor > 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0]:
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 755 len 22]
                    stor1 = 1
                    return (0 / 2 * ext_call.return_data[0])
                if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000:
                    if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) >> 32
                    mem[708 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) << 224, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 755 len 22]
                    stor1 = 1
                    return (0 / 2 * ext_call.return_data[0])
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000) >> 32
                call wantAddress.0x75e9df1e with:
                     gas gas_remaining wei
                    args Mask(224, 32, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000) << 224, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
                if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 809 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) >> 32
                mem[ceil32(return_data.size) + 901 len 4] = 0
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 841]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                stor1 = 1
                return 0 / 2 * ext_call.return_data[0], 
                       mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if sharesTotal > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal = 0
            if withdrawFeeFactor > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), ext_call.return_data[0 len 28]
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[708 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[676]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 755 len 22]
                stor1 = 1
                return sharesTotal
            if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000:
                if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) >> 32
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) << 224, mem[708 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[676]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 755 len 22]
                stor1 = 1
                return sharesTotal
        else:
            if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if sharesTotal * ext_call.return_data[0] / 2 * ext_call.return_data[0] <= sharesTotal:
                sharesTotal -= sharesTotal * ext_call.return_data[0] / 2 * ext_call.return_data[0]
                if withdrawFeeFactor > 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0]:
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), ext_call.return_data[0 len 28]
                    mem[708 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 755 len 22]
                    stor1 = 1
                    return (sharesTotal * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000:
                    if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) >> 32
                    mem[708 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) << 224, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 755 len 22]
                    stor1 = 1
                    return (sharesTotal * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000) >> 32
                call wantAddress.0x75e9df1e with:
                     gas gas_remaining wei
                    args Mask(224, 32, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000) << 224, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
                if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 809 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) >> 32
                mem[ceil32(return_data.size) + 901 len 4] = 0
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 841]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                stor1 = 1
                return sharesTotal * ext_call.return_data[0] / 2 * ext_call.return_data[0], 
                       mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if sharesTotal > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal = 0
            if withdrawFeeFactor > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), ext_call.return_data[0 len 28]
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[708 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[676]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 755 len 22]
                stor1 = 1
                return sharesTotal
            if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000:
                if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) >> 32
                mem[708 len 0] = 0
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) << 224, mem[708 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[676]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 755 len 22]
                stor1 = 1
                return sharesTotal
        ('bool', ('div', ('add', ('mul', 10000, ('ext_call.return_data', 0, 32)), ('mul', -1, ('stor', ('name', 'withdrawFeeFactor', 15)), ('ext_call.return_data', 0, 32))), 10000))
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[580 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000) >> 32
        call wantAddress.0x75e9df1e with:
             gas gas_remaining wei
            args Mask(224, 32, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000) << 224, mem[644 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[612]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 691 len 22]
        if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 809 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) >> 32
        mem[ceil32(return_data.size) + 901 len 4] = 0
        call wantAddress with:
           funct uint32(stor2.field_0)
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 841]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        stor1 = 1
        return sharesTotal, 
               mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if not 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 0 / 2 * ext_call.return_data[0] <= sharesTotal:
            sharesTotal -= 0 / 2 * ext_call.return_data[0]
            if withdrawFeeFactor > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 2 * ext_call.return_data[0]:
                if 0 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[708 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[676]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 755 len 22]
                stor1 = 1
                return (0 / 2 * ext_call.return_data[0])
            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[708 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[676]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 755 len 22]
                stor1 = 1
                return (0 / 2 * ext_call.return_data[0])
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[580 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
            call wantAddress.0x75e9df1e with:
                 gas gas_remaining wei
                args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[644 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[612]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 691 len 22]
            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 809 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
            mem[ceil32(return_data.size) + 901 len 4] = 0
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 841]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            stor1 = 1
            return 0 / 2 * ext_call.return_data[0], 
                   mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if sharesTotal > sharesTotal:
            revert with 0, 'SafeMath: subtraction overflow'
        sharesTotal = 0
        if withdrawFeeFactor > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 2 * ext_call.return_data[0]:
            if 0 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[708 len 0] = 0
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[708 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[676]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 755 len 22]
            stor1 = 1
            return sharesTotal
        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[708 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[676]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 755 len 22]
            stor1 = 1
            return sharesTotal
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[580 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
        call wantAddress.0x75e9df1e with:
             gas gas_remaining wei
            args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[644 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 809 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
            mem[ceil32(return_data.size) + 873 len 0] = 0
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 841]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 920 len 22]
            stor1 = 1
            return sharesTotal
        require return_data.size >= 32
        if not mem[612]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 691 len 22]
        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 809 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
        mem[ceil32(return_data.size) + 901 len 4] = 0
        call wantAddress with:
           funct uint32(stor2.field_0)
             gas gas_remaining wei
            args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 841]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        stor1 = 1
        return sharesTotal, 
               mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0] != sharesTotal:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0] <= sharesTotal:
        sharesTotal -= (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0]
        if withdrawFeeFactor > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 2 * ext_call.return_data[0]:
            if 0 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[708 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[676]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 755 len 22]
        else:
            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[708 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[676]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 755 len 22]
            else:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
                mem[644 len 0] = 0
                call wantAddress.0x75e9df1e with:
                     gas gas_remaining wei
                    args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 809 len 64] = 0, address(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000), mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 841]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 920 len 22]
        stor1 = 1
        return ((ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0])
    if sharesTotal > sharesTotal:
        revert with 0, 'SafeMath: subtraction overflow'
    sharesTotal = 0
    if withdrawFeeFactor > 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    if not 2 * ext_call.return_data[0]:
        if 0 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
        call wantAddress with:
           funct uint32(stor2.field_0)
             gas gas_remaining wei
            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[708 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[676]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 755 len 22]
    else:
        if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 2 * ext_call.return_data[0] != -withdrawFeeFactor + 10000:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000:
            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[644 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[708 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[676]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 755 len 22]
        else:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[580 len 64] = transfer(address rg1, uint256 rg2), 0xd12bc198269a14475baf42fa, 0, Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) >> 32
            call wantAddress.0x75e9df1e with:
                 gas gas_remaining wei
                args Mask(224, 32, (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000) << 224, mem[644 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 809 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
                mem[ceil32(return_data.size) + 901 len 4] = 0
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 841]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                stor1 = 1
                return sharesTotal, 
                       mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            require return_data.size >= 32
            if not mem[612]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 691 len 22]
            if (20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 809 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) >> 32
            mem[ceil32(return_data.size) + 873 len 0] = 0
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 32, (2 * ext_call.return_data[0]) - ((20000 * ext_call.return_data[0]) - (ext_call.return_data[0] * withdrawFeeFactor) - (ext_call.return_data[0] * withdrawFeeFactor) / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 841]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 920 len 22]
    stor1 = 1
    return sharesTotal
}

function earn() payable {
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if govAddress != msg.sender:
        revert with 0, '!gov'
    require ext_code.size(masterchefAddress)
    call masterchefAddress.getReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(earnedAddress)
    staticcall earnedAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if address(token0Address) == earnedAddress:
            if token1Address == earnedAddress:
                require ext_code.size(address(token0Address))
                staticcall address(token0Address).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(token1Address)
                staticcall token1Address.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if ext_call.return_data[0] > 0:
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args 0, uint32(stor5), token1Address, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
            else:
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                mem[160] = earnedToToken1Path.length
                if not earnedToToken1Path.length:
                    mem[(32 * earnedToToken1Path.length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * earnedToToken1Path.length) + 196] = ext_call.return_data[0] / 2
                    mem[(32 * earnedToToken1Path.length) + 228] = 64
                    mem[(32 * earnedToToken1Path.length) + 260] = earnedToToken1Path.length
                    mem[(32 * earnedToToken1Path.length) + 292 len floor32(earnedToToken1Path.length)] = mem[192 len floor32(earnedToToken1Path.length)]
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[192 len floor32(earnedToToken1Path.length)], mem[(32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 292 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * earnedToToken1Path.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _3004 = mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * earnedToToken1Path.length) + mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] <= 4294967296 and mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * earnedToToken1Path.length) + mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 32 <= return_data.size
                    mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] = mem[(32 * earnedToToken1Path.length) + mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                    _3016 = mem[(32 * earnedToToken1Path.length) + _3004 + 192]
                    mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224 len floor32(mem[(32 * earnedToToken1Path.length) + _3004 + 192])] = mem[(32 * earnedToToken1Path.length) + _3004 + 224 len floor32(mem[(32 * earnedToToken1Path.length) + _3004 + 192])]
                    mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224] = 30
                    mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                    if 1 > mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] - 1 < mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192]
                    _5912 = mem[(32 * mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224]
                    if not mem[(32 * mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224]:
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 356] = ext_call.return_data[0] / 2
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 388] = 0
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 452] = this.address
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 484] = block.timestamp + 600
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 420] = 160
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 516] = earnedToToken1Path.length
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 548 len floor32(earnedToToken1Path.length)] = mem[192 len floor32(earnedToToken1Path.length)]
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[192 len floor32(earnedToToken1Path.length)], mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + floor32(earnedToToken1Path.length) + 548 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                    else:
                        if slippageFactor * mem[(32 * mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224] / mem[(32 * mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224] != slippageFactor:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 389 len 31]
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 356] = ext_call.return_data[0] / 2
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 388] = slippageFactor * _5912 / 1000
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 452] = this.address
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 484] = block.timestamp + 600
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 420] = 160
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 516] = earnedToToken1Path.length
                        mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 548 len floor32(earnedToToken1Path.length)] = mem[192 len floor32(earnedToToken1Path.length)]
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _5912 / 1000, Array(len=earnedToToken1Path.length, data=mem[192 len floor32(earnedToToken1Path.length)], mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + floor32(earnedToToken1Path.length) + 548 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3016) + (32 * earnedToToken1Path.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    require mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352] <= 4294967296 and mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + mem[(32 * _3016) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352]) + 32 <= return_data.size
                else:
                    mem[0] = 21
                    mem[192] = address(earnedToToken1Path.field_0)
                    if (32 * earnedToToken1Path.length) + 32 <= 64:
                        mem[(32 * earnedToToken1Path.length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * earnedToToken1Path.length) + 196] = ext_call.return_data[0] / 2
                        mem[(32 * earnedToToken1Path.length) + 228] = 64
                        mem[(32 * earnedToToken1Path.length) + 260] = earnedToToken1Path.length
                        mem[(32 * earnedToToken1Path.length) + 292 len floor32(earnedToToken1Path.length)] = mem[192 len floor32(earnedToToken1Path.length)]
                        require ext_code.size(uniRouterAddress)
                        staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[192 len floor32(earnedToToken1Path.length)], mem[(32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 292 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * earnedToToken1Path.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _3006 = mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                        require mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                        require mem[(32 * earnedToToken1Path.length) + mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] <= 4294967296 and mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * earnedToToken1Path.length) + mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 32 <= return_data.size
                        mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] = mem[(32 * earnedToToken1Path.length) + mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                        _3017 = mem[(32 * earnedToToken1Path.length) + _3006 + 192]
                        mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224 len floor32(mem[(32 * earnedToToken1Path.length) + _3006 + 192])] = mem[(32 * earnedToToken1Path.length) + _3006 + 224 len floor32(mem[(32 * earnedToToken1Path.length) + _3006 + 192])]
                        mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224] = 30
                        mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 1 > mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] - 1 < mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192]
                        _5916 = mem[(32 * mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224]
                        if not mem[(32 * mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224]:
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 356] = ext_call.return_data[0] / 2
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 388] = 0
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 452] = this.address
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 484] = block.timestamp + 600
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 420] = 160
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 516] = earnedToToken1Path.length
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 548 len floor32(earnedToToken1Path.length)] = mem[192 len floor32(earnedToToken1Path.length)]
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[192 len floor32(earnedToToken1Path.length)], mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + floor32(earnedToToken1Path.length) + 548 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                        else:
                            if slippageFactor * mem[(32 * mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224] / mem[(32 * mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224] != slippageFactor:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 389 len 31]
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 356] = ext_call.return_data[0] / 2
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 388] = slippageFactor * _5916 / 1000
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 452] = this.address
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 484] = block.timestamp + 600
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 420] = 160
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 516] = earnedToToken1Path.length
                            mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 548 len floor32(earnedToToken1Path.length)] = mem[192 len floor32(earnedToToken1Path.length)]
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _5916 / 1000, Array(len=earnedToToken1Path.length, data=mem[192 len floor32(earnedToToken1Path.length)], mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + floor32(earnedToToken1Path.length) + 548 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3017) + (32 * earnedToToken1Path.length) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        require mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                        require mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352] <= 4294967296 and mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + mem[(32 * _3017) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352]) + 32 <= return_data.size
                    else:
                        mem[224] = address(earnedToToken1Path.field_256)
                        idx = 224
                        s = 1
                        while (32 * earnedToToken1Path.length) + 160 > idx:
                            mem[idx + 32] = earnedToToken1Path[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(32 * earnedToToken1Path.length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * earnedToToken1Path.length) + 196] = ext_call.return_data[0] / 2
                        mem[(32 * earnedToToken1Path.length) + 228] = 64
                        mem[(32 * earnedToToken1Path.length) + 260] = earnedToToken1Path.length
                        mem[(32 * earnedToToken1Path.length) + 292 len floor32(earnedToToken1Path.length)] = mem[192 len floor32(earnedToToken1Path.length)]
                        require ext_code.size(uniRouterAddress)
                        staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[192 len floor32(earnedToToken1Path.length)], mem[(32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 292 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * earnedToToken1Path.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _10160 = mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                        require mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                        require mem[(32 * earnedToToken1Path.length) + mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] <= 4294967296 and mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * earnedToToken1Path.length) + mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 32 <= return_data.size
                        mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] = mem[(32 * earnedToToken1Path.length) + mem[(32 * earnedToToken1Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                        _10188 = mem[(32 * earnedToToken1Path.length) + _10160 + 192]
                        mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224 len floor32(mem[(32 * earnedToToken1Path.length) + _10160 + 192])] = mem[(32 * earnedToToken1Path.length) + _10160 + 224 len floor32(mem[(32 * earnedToToken1Path.length) + _10160 + 192])]
                        mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224] = 30
                        mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 1 > mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] - 1 < mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192]
                        _14352 = mem[(32 * mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224]
                        if not mem[(32 * mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224]:
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 356] = ext_call.return_data[0] / 2
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 388] = 0
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 452] = this.address
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 484] = block.timestamp + 600
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 420] = 160
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 516] = earnedToToken1Path.length
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 548 len floor32(earnedToToken1Path.length)] = mem[192 len floor32(earnedToToken1Path.length)]
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[192 len floor32(earnedToToken1Path.length)], mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + floor32(earnedToToken1Path.length) + 548 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                        else:
                            if slippageFactor * mem[(32 * mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224] / mem[(32 * mem[(32 * earnedToToken1Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 224] != slippageFactor:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 389 len 31]
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 356] = ext_call.return_data[0] / 2
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 388] = slippageFactor * _14352 / 1000
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 452] = this.address
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 484] = block.timestamp + 600
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 420] = 160
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 516] = earnedToToken1Path.length
                            mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 548 len floor32(earnedToToken1Path.length)] = mem[192 len floor32(earnedToToken1Path.length)]
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _14352 / 1000, Array(len=earnedToToken1Path.length, data=mem[192 len floor32(earnedToToken1Path.length)], mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + floor32(earnedToToken1Path.length) + 548 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _10188) + (32 * earnedToToken1Path.length) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        require mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                        require mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352] <= 4294967296 and mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + mem[(32 * _10188) + (32 * earnedToToken1Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352]) + 32 <= return_data.size
                require ext_code.size(address(token0Address))
                staticcall address(token0Address).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(token1Address)
                staticcall token1Address.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if ext_call.return_data[0] > 0:
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(token0Address), token1Address, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
        else:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[160] = earnedToToken0Path.length
            if not earnedToToken0Path.length:
                mem[(32 * earnedToToken0Path.length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * earnedToToken0Path.length) + 196] = ext_call.return_data[0] / 2
                mem[(32 * earnedToToken0Path.length) + 228] = 64
                mem[(32 * earnedToToken0Path.length) + 260] = earnedToToken0Path.length
                mem[(32 * earnedToToken0Path.length) + 292 len floor32(earnedToToken0Path.length)] = mem[192 len floor32(earnedToToken0Path.length)]
                require ext_code.size(uniRouterAddress)
                staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken0Path.length, data=mem[192 len floor32(earnedToToken0Path.length)], mem[(32 * earnedToToken0Path.length) + floor32(earnedToToken0Path.length) + 292 len (32 * earnedToToken0Path.length) - floor32(earnedToToken0Path.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * earnedToToken0Path.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192
                require return_data.size >= 32
                _3008 = mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * earnedToToken0Path.length) + mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] <= 4294967296 and mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * earnedToToken0Path.length) + mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 32 <= return_data.size
                mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] = mem[(32 * earnedToToken0Path.length) + mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                _3018 = mem[(32 * earnedToToken0Path.length) + _3008 + 192]
                mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224 len floor32(mem[(32 * earnedToToken0Path.length) + _3008 + 192])] = mem[(32 * earnedToToken0Path.length) + _3008 + 224 len floor32(mem[(32 * earnedToToken0Path.length) + _3008 + 192])]
                mem[64] = (32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 288
                mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224] = 30
                mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                if 1 > mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] - 1 < mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192]
                _5919 = mem[(32 * mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224]
                if not mem[(32 * mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224]:
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 288] = 26
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 356] = ext_call.return_data[0] / 2
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 388] = 0
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 484] = block.timestamp + 600
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 516] = earnedToToken0Path.length
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 548 len floor32(earnedToToken0Path.length)] = mem[192 len floor32(earnedToToken0Path.length)]
                    require ext_code.size(uniRouterAddress)
                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken0Path.length, mem[192 len floor32(earnedToToken0Path.length)], mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + floor32(earnedToToken0Path.length) + 548 len (32 * earnedToToken0Path.length) - floor32(earnedToToken0Path.length)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _10168 = mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352] <= 4294967296 and mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352]) + 32 <= return_data.size
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352]
                    _10192 = mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _10168 + 352]
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _10168 + 352])] = mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _10168 + 384 len floor32(mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _10168 + 352])]
                    if token1Address != earnedAddress:
                        mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 384] = 26
                        mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 416] = 'SafeMath: division by zero'
                        mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 448] = earnedToToken1Path.length
                        if not earnedToToken1Path.length:
                            mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                            mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                            mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                            mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                            require ext_code.size(uniRouterAddress)
                            staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                            require return_data.size >= 32
                            _18476 = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                            require mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                            require mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                            mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                            _18508 = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18476 + 480]
                            mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18476 + 480])] = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18476 + 512 len floor32(mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18476 + 480])]
                            mem[64] = (32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576
                            mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                            mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                            if 1 > mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                            _21835 = mem[(32 * mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                            if not mem[(32 * mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                require ext_code.size(uniRouterAddress)
                                call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                            else:
                                if slippageFactor * mem[(32 * mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _21835 / 1000
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                require ext_code.size(uniRouterAddress)
                                call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _21835 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                            require return_data.size >= 32
                            require mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                            require mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18508) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
                        else:
                            mem[0] = 21
                            mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480] = address(earnedToToken1Path.field_0)
                            if (32 * earnedToToken1Path.length) + 32 <= 64:
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                                require return_data.size >= 32
                                _18478 = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                                require mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                require mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                require mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                                _18509 = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18478 + 480]
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18478 + 480])] = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18478 + 512 len floor32(mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18478 + 480])]
                                mem[64] = (32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576
                                mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                                mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                                if 1 > mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                                _21839 = mem[(32 * mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                                if not mem[(32 * mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                                else:
                                    if slippageFactor * mem[(32 * mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _21839 / 1000
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                    mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _21839 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                                require return_data.size >= 32
                                require mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                require mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                require mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18509) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
                            else:
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 512] = address(earnedToToken1Path.field_256)
                                idx = (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 512
                                s = 1
                                while (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 448 > idx:
                                    mem[idx + 32] = earnedToToken1Path[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                                require return_data.size >= 32
                                _25934 = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                                require mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                require mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                require mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                                _25999 = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25934 + 480]
                                mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25934 + 480])] = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25934 + 512 len floor32(mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25934 + 480])]
                                mem[64] = (32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576
                                mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                                mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                                if 1 > mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                                _29561 = mem[(32 * mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                                if not mem[(32 * mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                                else:
                                    if slippageFactor * mem[(32 * mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _29561 / 1000
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                    mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _29561 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                                require return_data.size >= 32
                                require mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                require mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                require mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _25999) + (32 * _10192) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
                else:
                    if slippageFactor * mem[(32 * mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224] / mem[(32 * mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224] != slippageFactor:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 389 len 31]
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 288] = 26
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 356] = ext_call.return_data[0] / 2
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 388] = slippageFactor * _5919 / 1000
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 484] = block.timestamp + 600
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 516] = earnedToToken0Path.length
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 548 len floor32(earnedToToken0Path.length)] = mem[192 len floor32(earnedToToken0Path.length)]
                    require ext_code.size(uniRouterAddress)
                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _5919 / 1000, Array(len=earnedToToken0Path.length, data=mem[192 len floor32(earnedToToken0Path.length)], mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + floor32(earnedToToken0Path.length) + 548 len (32 * earnedToToken0Path.length) - floor32(earnedToToken0Path.length)]), address(this.address), block.timestamp + 600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _10166 = mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352] <= 4294967296 and mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352]) + 32 <= return_data.size
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352]
                    _10191 = mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _10166 + 352]
                    mem[(32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _10166 + 352])] = mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _10166 + 384 len floor32(mem[(32 * _3018) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _10166 + 352])]
                    if token1Address != earnedAddress:
                        mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 384] = 26
                        mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 416] = 'SafeMath: division by zero'
                        mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 448] = earnedToToken1Path.length
                        if not earnedToToken1Path.length:
                            mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                            mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                            mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                            mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                            require ext_code.size(uniRouterAddress)
                            staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                            require return_data.size >= 32
                            _18472 = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                            require mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                            require mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                            mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                            _18506 = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18472 + 480]
                            mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18472 + 480])] = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18472 + 512 len floor32(mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18472 + 480])]
                            mem[64] = (32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576
                            mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                            mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                            if 1 > mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                            _21828 = mem[(32 * mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                            if not mem[(32 * mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                require ext_code.size(uniRouterAddress)
                                call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                            else:
                                if slippageFactor * mem[(32 * mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _21828 / 1000
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                require ext_code.size(uniRouterAddress)
                                call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _21828 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                            require return_data.size >= 32
                            require mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                            require mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18506) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
                        else:
                            mem[0] = 21
                            mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480] = address(earnedToToken1Path.field_0)
                            if (32 * earnedToToken1Path.length) + 32 <= 64:
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                                require return_data.size >= 32
                                _18474 = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                                require mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                require mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                require mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                                _18507 = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18474 + 480]
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18474 + 480])] = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18474 + 512 len floor32(mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18474 + 480])]
                                mem[64] = (32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576
                                mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                                mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                                if 1 > mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                                _21832 = mem[(32 * mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                                if not mem[(32 * mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                                else:
                                    if slippageFactor * mem[(32 * mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _21832 / 1000
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                    mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _21832 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                                require return_data.size >= 32
                                require mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                require mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                require mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18507) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
                            else:
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 512] = address(earnedToToken1Path.field_256)
                                idx = (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 512
                                s = 1
                                while (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 448 > idx:
                                    mem[idx + 32] = earnedToToken1Path[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                                require return_data.size >= 32
                                _25924 = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                                require mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                require mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                require mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                                _25994 = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25924 + 480]
                                mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25924 + 480])] = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25924 + 512 len floor32(mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25924 + 480])]
                                mem[64] = (32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576
                                mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                                mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                                if 1 > mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                                _29554 = mem[(32 * mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                                if not mem[(32 * mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                                else:
                                    if slippageFactor * mem[(32 * mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _29554 / 1000
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                    mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _29554 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                                require return_data.size >= 32
                                require mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                require mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                require mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _25994) + (32 * _10191) + (32 * _3018) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
            else:
                mem[0] = 20
                mem[192] = address(earnedToToken0Path.field_0)
                if (32 * earnedToToken0Path.length) + 32 <= 64:
                    mem[(32 * earnedToToken0Path.length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * earnedToToken0Path.length) + 196] = ext_call.return_data[0] / 2
                    mem[(32 * earnedToToken0Path.length) + 228] = 64
                    mem[(32 * earnedToToken0Path.length) + 260] = earnedToToken0Path.length
                    mem[(32 * earnedToToken0Path.length) + 292 len floor32(earnedToToken0Path.length)] = mem[192 len floor32(earnedToToken0Path.length)]
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken0Path.length, data=mem[192 len floor32(earnedToToken0Path.length)], mem[(32 * earnedToToken0Path.length) + floor32(earnedToToken0Path.length) + 292 len (32 * earnedToToken0Path.length) - floor32(earnedToToken0Path.length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * earnedToToken0Path.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _3010 = mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * earnedToToken0Path.length) + mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] <= 4294967296 and mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * earnedToToken0Path.length) + mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 32 <= return_data.size
                    mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] = mem[(32 * earnedToToken0Path.length) + mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                    _3019 = mem[(32 * earnedToToken0Path.length) + _3010 + 192]
                    mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224 len floor32(mem[(32 * earnedToToken0Path.length) + _3010 + 192])] = mem[(32 * earnedToToken0Path.length) + _3010 + 224 len floor32(mem[(32 * earnedToToken0Path.length) + _3010 + 192])]
                    mem[64] = (32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 288
                    mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224] = 30
                    mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                    if 1 > mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] - 1 < mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192]
                    _5923 = mem[(32 * mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224]
                    if mem[(32 * mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224]:
                        if slippageFactor * mem[(32 * mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224] / mem[(32 * mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224] != slippageFactor:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 389 len 31]
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 288] = 26
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 356] = ext_call.return_data[0] / 2
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 388] = slippageFactor * _5923 / 1000
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 452] = this.address
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 484] = block.timestamp + 600
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 420] = 160
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 516] = earnedToToken0Path.length
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 548 len floor32(earnedToToken0Path.length)] = mem[192 len floor32(earnedToToken0Path.length)]
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _5923 / 1000, Array(len=earnedToToken0Path.length, data=mem[192 len floor32(earnedToToken0Path.length)], mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + floor32(earnedToToken0Path.length) + 548 len (32 * earnedToToken0Path.length) - floor32(earnedToToken0Path.length)]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _10172 = mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                        require mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352] <= 4294967296 and mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352]) + 32 <= return_data.size
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352]
                        _10194 = mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _10172 + 352]
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _10172 + 352])] = mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _10172 + 384 len floor32(mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _10172 + 352])]
                        if token1Address != earnedAddress:
                            mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 384] = 26
                            mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 416] = 'SafeMath: division by zero'
                            mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 448] = earnedToToken1Path.length
                            if not earnedToToken1Path.length:
                                mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                                mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                                mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                                mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                                require return_data.size >= 32
                                _18484 = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                                require mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                require mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                require mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                                mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                                _18512 = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18484 + 480]
                                mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18484 + 480])] = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18484 + 512 len floor32(mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18484 + 480])]
                                mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                                mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                                if 1 > mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                                _21844 = mem[(32 * mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                                if not mem[(32 * mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                                else:
                                    if slippageFactor * mem[(32 * mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _21844 / 1000
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                    mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _21844 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                                require return_data.size >= 32
                                require mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                require mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                require mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18512) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
                            else:
                                mem[0] = 21
                                mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480] = address(earnedToToken1Path.field_0)
                                if (32 * earnedToToken1Path.length) + 32 <= 64:
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                                    require return_data.size >= 32
                                    _18486 = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                                    require mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                    require mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                                    _18513 = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18486 + 480]
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18486 + 480])] = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18486 + 512 len floor32(mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18486 + 480])]
                                    mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                                    mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                                    if 1 > mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                                    _21848 = mem[(32 * mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                                    if not mem[(32 * mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                                    else:
                                        if slippageFactor * mem[(32 * mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _21848 / 1000
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                        mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _21848 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                                    require return_data.size >= 32
                                    require mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                    require mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18513) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
                                else:
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 512] = address(earnedToToken1Path.field_256)
                                    idx = (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 512
                                    s = 1
                                    while (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 448 > idx:
                                        mem[idx + 32] = earnedToToken1Path[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                                    require return_data.size >= 32
                                    _25952 = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                                    require mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                    require mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                                    _26008 = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25952 + 480]
                                    mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25952 + 480])] = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25952 + 512 len floor32(mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25952 + 480])]
                                    mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                                    mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                                    if 1 > mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                                    _29582 = mem[(32 * mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                                    if not mem[(32 * mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                                    else:
                                        if slippageFactor * mem[(32 * mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _29582 / 1000
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                        mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _29582 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                                    require return_data.size >= 32
                                    require mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                    require mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _26008) + (32 * _10194) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
                    else:
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 288] = 26
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 356] = ext_call.return_data[0] / 2
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 388] = 0
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 452] = this.address
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 484] = block.timestamp + 600
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 420] = 160
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 516] = earnedToToken0Path.length
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 548 len floor32(earnedToToken0Path.length)] = mem[192 len floor32(earnedToToken0Path.length)]
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken0Path.length, mem[192 len floor32(earnedToToken0Path.length)], mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + floor32(earnedToToken0Path.length) + 548 len (32 * earnedToToken0Path.length) - floor32(earnedToToken0Path.length)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _10174 = mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                        require mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352] <= 4294967296 and mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352]) + 32 <= return_data.size
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352]
                        _10195 = mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _10174 + 352]
                        mem[(32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _10174 + 352])] = mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _10174 + 384 len floor32(mem[(32 * _3019) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _10174 + 352])]
                        if token1Address != earnedAddress:
                            mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 384] = 26
                            mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 416] = 'SafeMath: division by zero'
                            mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 448] = earnedToToken1Path.length
                            if not earnedToToken1Path.length:
                                mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                                mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                                mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                                mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                                require return_data.size >= 32
                                _18488 = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                                require mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                require mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                require mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                                mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                                _18514 = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18488 + 480]
                                mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18488 + 480])] = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18488 + 512 len floor32(mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18488 + 480])]
                                mem[64] = (32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576
                                mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                                mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                                if 1 > mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                                _21851 = mem[(32 * mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                                if not mem[(32 * mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                                else:
                                    if slippageFactor * mem[(32 * mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _21851 / 1000
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                    mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _21851 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                                require return_data.size >= 32
                                require mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                require mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                require mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18514) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
                            else:
                                mem[0] = 21
                                mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480] = address(earnedToToken1Path.field_0)
                                if (32 * earnedToToken1Path.length) + 32 <= 64:
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                                    require return_data.size >= 32
                                    _18490 = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                                    require mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                    require mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                                    _18515 = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18490 + 480]
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18490 + 480])] = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18490 + 512 len floor32(mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _18490 + 480])]
                                    mem[64] = (32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576
                                    mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                                    mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                                    if 1 > mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                                    _21855 = mem[(32 * mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                                    if not mem[(32 * mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                                    else:
                                        if slippageFactor * mem[(32 * mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _21855 / 1000
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                        mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _21855 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                                    require return_data.size >= 32
                                    require mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                    require mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18515) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
                                else:
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 512] = address(earnedToToken1Path.field_256)
                                    idx = (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 512
                                    s = 1
                                    while (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 448 > idx:
                                        mem[idx + 32] = earnedToToken1Path[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                                    require return_data.size >= 32
                                    _25962 = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                                    require mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                    require mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                                    _26013 = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25962 + 480]
                                    mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25962 + 480])] = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25962 + 512 len floor32(mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25962 + 480])]
                                    mem[64] = (32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576
                                    mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                                    mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                                    if 1 > mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                                    _29589 = mem[(32 * mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                                    if not mem[(32 * mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                                    else:
                                        if slippageFactor * mem[(32 * mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _29589 / 1000
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                        mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _29589 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                                    require return_data.size >= 32
                                    require mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                    require mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _26013) + (32 * _10195) + (32 * _3019) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
                else:
                    mem[224] = address(earnedToToken0Path.field_256)
                    idx = 224
                    s = 1
                    while (32 * earnedToToken0Path.length) + 160 > idx:
                        mem[idx + 32] = earnedToToken0Path[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[(32 * earnedToToken0Path.length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * earnedToToken0Path.length) + 196] = ext_call.return_data[0] / 2
                    mem[(32 * earnedToToken0Path.length) + 228] = 64
                    mem[(32 * earnedToToken0Path.length) + 260] = earnedToToken0Path.length
                    mem[(32 * earnedToToken0Path.length) + 292 len floor32(earnedToToken0Path.length)] = mem[192 len floor32(earnedToToken0Path.length)]
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken0Path.length, data=mem[192 len floor32(earnedToToken0Path.length)], mem[(32 * earnedToToken0Path.length) + floor32(earnedToToken0Path.length) + 292 len (32 * earnedToToken0Path.length) - floor32(earnedToToken0Path.length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * earnedToToken0Path.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _10170 = mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * earnedToToken0Path.length) + mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] <= 4294967296 and mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * earnedToToken0Path.length) + mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 32 <= return_data.size
                    mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] = mem[(32 * earnedToToken0Path.length) + mem[(32 * earnedToToken0Path.length) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                    _10193 = mem[(32 * earnedToToken0Path.length) + _10170 + 192]
                    mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224 len floor32(mem[(32 * earnedToToken0Path.length) + _10170 + 192])] = mem[(32 * earnedToToken0Path.length) + _10170 + 224 len floor32(mem[(32 * earnedToToken0Path.length) + _10170 + 192])]
                    mem[64] = (32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 288
                    mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224] = 30
                    mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                    if 1 > mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] - 1 < mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192]
                    _14359 = mem[(32 * mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224]
                    if not mem[(32 * mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224]:
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 288] = 26
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 356] = ext_call.return_data[0] / 2
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 388] = 0
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 452] = this.address
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 484] = block.timestamp + 600
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 420] = 160
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 516] = earnedToToken0Path.length
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 548 len floor32(earnedToToken0Path.length)] = mem[192 len floor32(earnedToToken0Path.length)]
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken0Path.length, mem[192 len floor32(earnedToToken0Path.length)], mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + floor32(earnedToToken0Path.length) + 548 len (32 * earnedToToken0Path.length) - floor32(earnedToToken0Path.length)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _18482 = mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                        require mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352] <= 4294967296 and mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352]) + 32 <= return_data.size
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352]
                        _18511 = mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _18482 + 352]
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _18482 + 352])] = mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _18482 + 384 len floor32(mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _18482 + 352])]
                        if token1Address != earnedAddress:
                            mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 384] = 26
                            mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 416] = 'SafeMath: division by zero'
                            mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 448] = earnedToToken1Path.length
                            if not earnedToToken1Path.length:
                                mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                                mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                                mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                                mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                var85001 = floor32(earnedToToken1Path.length)
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                                require return_data.size >= 32
                                _25944 = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                                require mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                require mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                require mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                                mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                                _26004 = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25944 + 480]
                                mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25944 + 480])] = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25944 + 512 len floor32(mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25944 + 480])]
                                mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                                mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                                if 1 > mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                                _29573 = mem[(32 * mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                                if not mem[(32 * mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                                else:
                                    if slippageFactor * mem[(32 * mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _29573 / 1000
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                    mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _29573 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                                require return_data.size >= 32
                                require mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                require mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                require mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _26004) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
                            else:
                                mem[0] = 21
                                mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480] = address(earnedToToken1Path.field_0)
                                if (32 * earnedToToken1Path.length) + 32 <= 64:
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                                    require return_data.size >= 32
                                    _25946 = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                                    require mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                    require mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                                    _26005 = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25946 + 480]
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25946 + 480])] = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25946 + 512 len floor32(mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25946 + 480])]
                                    mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                                    mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                                    if 1 > mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                                    _29577 = mem[(32 * mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                                    if not mem[(32 * mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                                    else:
                                        if slippageFactor * mem[(32 * mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _29577 / 1000
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                        mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _29577 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                                    require return_data.size >= 32
                                    require mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                    require mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _26005) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
                                else:
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 512] = address(earnedToToken1Path.field_256)
                                    idx = (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 512
                                    s = 1
                                    while (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 448 > idx:
                                        mem[idx + 32] = earnedToToken1Path[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                                    require return_data.size >= 32
                                    _33384 = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                                    require mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                    require mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                                    _33427 = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _33384 + 480]
                                    mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _33384 + 480])] = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _33384 + 512 len floor32(mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _33384 + 480])]
                                    mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                                    mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                                    if 1 > mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                                    _35527 = mem[(32 * mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                                    if not mem[(32 * mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                                    else:
                                        if slippageFactor * mem[(32 * mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _35527 / 1000
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                        mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _35527 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                                    require return_data.size >= 32
                                    require mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                    require mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _33427) + (32 * _18511) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
                    else:
                        if slippageFactor * mem[(32 * mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224] / mem[(32 * mem[(32 * earnedToToken0Path.length) + ceil32(return_data.size) + 192] - 1) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 224] != slippageFactor:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 389 len 31]
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 288] = 26
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 356] = ext_call.return_data[0] / 2
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 388] = slippageFactor * _14359 / 1000
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 452] = this.address
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 484] = block.timestamp + 600
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 420] = 160
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 516] = earnedToToken0Path.length
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 548 len floor32(earnedToToken0Path.length)] = mem[192 len floor32(earnedToToken0Path.length)]
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _14359 / 1000, Array(len=earnedToToken0Path.length, data=mem[192 len floor32(earnedToToken0Path.length)], mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + floor32(earnedToToken0Path.length) + 548 len (32 * earnedToToken0Path.length) - floor32(earnedToToken0Path.length)]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _18480 = mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                        require mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352] <= 4294967296 and mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352]) + 32 <= return_data.size
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 352]
                        _18510 = mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _18480 + 352]
                        mem[(32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _18480 + 352])] = mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _18480 + 384 len floor32(mem[(32 * _10193) + (32 * earnedToToken0Path.length) + ceil32(return_data.size) + _18480 + 352])]
                        if token1Address != earnedAddress:
                            mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 384] = 26
                            mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 416] = 'SafeMath: division by zero'
                            mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 448] = earnedToToken1Path.length
                            if not earnedToToken1Path.length:
                                mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                                mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                                mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                                mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                                require return_data.size >= 32
                                _25940 = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                                require mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                require mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                require mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                                mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                                _26002 = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25940 + 480]
                                mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25940 + 480])] = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25940 + 512 len floor32(mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25940 + 480])]
                                mem[64] = (32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576
                                mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                                mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                                if 1 > mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                                _29566 = mem[(32 * mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                                if not mem[(32 * mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                                else:
                                    if slippageFactor * mem[(32 * mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _29566 / 1000
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                    mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _29566 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                                require return_data.size >= 32
                                require mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                require mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                require mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _26002) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
                            else:
                                mem[0] = 21
                                mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480] = address(earnedToToken1Path.field_0)
                                if (32 * earnedToToken1Path.length) + 32 <= 64:
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                                    require return_data.size >= 32
                                    _25942 = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                                    require mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                    require mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                                    _26003 = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25942 + 480]
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25942 + 480])] = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25942 + 512 len floor32(mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _25942 + 480])]
                                    mem[64] = (32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576
                                    mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                                    mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                                    if 1 > mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                                    _29570 = mem[(32 * mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                                    if not mem[(32 * mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                                    else:
                                        if slippageFactor * mem[(32 * mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _29570 / 1000
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                        mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _29570 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                                    require return_data.size >= 32
                                    require mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                    require mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _26003) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
                                else:
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 512] = address(earnedToToken1Path.field_256)
                                    idx = (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 512
                                    s = 1
                                    while (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 448 > idx:
                                        mem[idx + 32] = earnedToToken1Path[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 484] = ext_call.return_data[0] / 2
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 516] = 64
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 548] = earnedToToken1Path.length
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 580 len floor32(earnedToToken1Path.length)] = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args Mask(255, 1, ext_call.return_data[0]), Array(len=earnedToToken1Path.length, data=mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 580 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480
                                    require return_data.size >= 32
                                    _33374 = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                                    require mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                    require mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480] <= 4294967296 and mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]) + 32 <= return_data.size
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 480]
                                    _33422 = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _33374 + 480]
                                    mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512 len floor32(mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _33374 + 480])] = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _33374 + 512 len floor32(mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + _33374 + 480])]
                                    mem[64] = (32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576
                                    mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] = 30
                                    mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 544] = 'SafeMath: subtraction overflow'
                                    if 1 > mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1 < mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480]
                                    _35520 = mem[(32 * mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]
                                    if not mem[(32 * mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512]:
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = 0
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, earnedToToken1Path.length, mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]
                                    else:
                                        if slippageFactor * mem[(32 * mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] / mem[(32 * mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 480] - 1) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 512] != slippageFactor:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 677 len 31]
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 576] = 26
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 608] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 644] = ext_call.return_data[0] / 2
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 676] = slippageFactor * _35520 / 1000
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 740] = this.address
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 772] = block.timestamp + 600
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 708] = 160
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 804] = earnedToToken1Path.length
                                        mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 836 len floor32(earnedToToken1Path.length)] = mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, ext_call.return_data[0]), slippageFactor * _35520 / 1000, Array(len=earnedToToken1Path.length, data=mem[(32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (2 * ceil32(return_data.size)) + 480 len floor32(earnedToToken1Path.length)], mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + floor32(earnedToToken1Path.length) + 836 len (32 * earnedToToken1Path.length) - floor32(earnedToToken1Path.length)]), address(this.address), block.timestamp + 600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (6 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640
                                    require return_data.size >= 32
                                    require mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                                    require mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640] <= 4294967296 and mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + mem[(32 * _33422) + (32 * _18510) + (32 * _10193) + (32 * earnedToToken0Path.length) + (4 * ceil32(return_data.size)) + (32 * earnedToToken1Path.length) + 640 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 640]) + 32 <= return_data.size
            require ext_code.size(address(token0Address))
            staticcall address(token0Address).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(token1Address)
            staticcall token1Address.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if ext_call.return_data[0] > 0:
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(uniRouterAddress)
                    call uniRouterAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(token0Address), token1Address, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
        lastEarnBlock = block.number
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(masterchefAddress)
            staticcall masterchefAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(masterchefAddress)
            call masterchefAddress.stake(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(masterchefAddress)
            staticcall masterchefAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
    stor1 = 1
}



}
