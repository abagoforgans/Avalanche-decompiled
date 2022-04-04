contract main {




// =====================  Runtime code  =====================


#
#  - resetAllowances()
#  - unpause()
#  - earn()
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
array of address earnedToToken0Path;
array of address earnedToToken1Path;
array of struct token0ToEarnedPath;
array of struct token1ToEarnedPath;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1].field_0
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
    return token0Address
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
    return earnedToToken1Path[arg1]
}

function sub_abf0c24a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_abf0c24a.length
    return sub_abf0c24a[arg1]
}

function token0ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token0ToEarnedPath.length
    return token0ToEarnedPath[arg1].field_0
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
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

function convertDustToEarned() payable {
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    mem[100] = this.address
    require ext_code.size(token0Address)
    staticcall token0Address.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[100] = this.address
        require ext_code.size(token1Address)
        staticcall token1Address.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if earnedAddress != token1Address:
                mem[96] = token1ToEarnedPath.length
                if not token1ToEarnedPath.length:
                    mem[(32 * token1ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * token1ToEarnedPath.length) + 132] = ext_call.return_data[0]
                    mem[(32 * token1ToEarnedPath.length) + 164] = 64
                    mem[(32 * token1ToEarnedPath.length) + 196] = token1ToEarnedPath.length
                    mem[(32 * token1ToEarnedPath.length) + 228 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 228 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * token1ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _556 = mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                    mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] = mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                    _571 = mem[(32 * token1ToEarnedPath.length) + _556 + 128]
                    mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * token1ToEarnedPath.length) + _556 + 128])] = mem[(32 * token1ToEarnedPath.length) + _556 + 160 len floor32(mem[(32 * token1ToEarnedPath.length) + _556 + 128])]
                    mem[64] = (32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 224
                    mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] = 30
                    mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                    if 1 > mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1 < mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128]
                    _1126 = mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160]
                    if not mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160]:
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 324] = 0
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 388] = this.address
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 420] = block.timestamp + 600
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 356] = 160
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 452] = token1ToEarnedPath.length
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 484 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + floor32(token1ToEarnedPath.length) + 484 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                    else:
                        if slippageFactor * mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] / mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] != slippageFactor:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 325 len 31]
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 324] = slippageFactor * _1126 / 1000
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 388] = this.address
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 420] = block.timestamp + 600
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 356] = 160
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 452] = token1ToEarnedPath.length
                        mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 484 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], slippageFactor * _1126 / 1000, Array(len=token1ToEarnedPath.length, data=mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + floor32(token1ToEarnedPath.length) + 484 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _571) + (32 * token1ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    require mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= 4294967296 and mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _571) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 <= return_data.size
                else:
                    mem[0] = 23
                    mem[128] = address(token1ToEarnedPath.field_0)
                    if (32 * token1ToEarnedPath.length) + 32 <= 64:
                        mem[(32 * token1ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * token1ToEarnedPath.length) + 132] = ext_call.return_data[0]
                        mem[(32 * token1ToEarnedPath.length) + 164] = 64
                        mem[(32 * token1ToEarnedPath.length) + 196] = token1ToEarnedPath.length
                        mem[(32 * token1ToEarnedPath.length) + 228 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                        require ext_code.size(uniRouterAddress)
                        staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 228 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * token1ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _558 = mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                        require mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                        mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] = mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                        _572 = mem[(32 * token1ToEarnedPath.length) + _558 + 128]
                        mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * token1ToEarnedPath.length) + _558 + 128])] = mem[(32 * token1ToEarnedPath.length) + _558 + 160 len floor32(mem[(32 * token1ToEarnedPath.length) + _558 + 128])]
                        mem[64] = (32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 224
                        mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] = 30
                        mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                        if 1 > mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1 < mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128]
                        _1130 = mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160]
                        if not mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160]:
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 324] = 0
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 388] = this.address
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 420] = block.timestamp + 600
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 356] = 160
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 452] = token1ToEarnedPath.length
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 484 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + floor32(token1ToEarnedPath.length) + 484 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                        else:
                            if slippageFactor * mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] / mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] != slippageFactor:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 325 len 31]
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 324] = slippageFactor * _1130 / 1000
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 388] = this.address
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 420] = block.timestamp + 600
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 356] = 160
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 452] = token1ToEarnedPath.length
                            mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 484 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], slippageFactor * _1130 / 1000, Array(len=token1ToEarnedPath.length, data=mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + floor32(token1ToEarnedPath.length) + 484 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _572) + (32 * token1ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        require mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= 4294967296 and mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _572) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 <= return_data.size
                    else:
                        mem[160] = address(token1ToEarnedPath.field_256)
                        idx = 160
                        s = 1
                        while (32 * token1ToEarnedPath.length) + 96 > idx:
                            mem[idx + 32] = token1ToEarnedPath[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(32 * token1ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * token1ToEarnedPath.length) + 132] = ext_call.return_data[0]
                        mem[(32 * token1ToEarnedPath.length) + 164] = 64
                        mem[(32 * token1ToEarnedPath.length) + 196] = token1ToEarnedPath.length
                        mem[(32 * token1ToEarnedPath.length) + 228 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                        require ext_code.size(uniRouterAddress)
                        staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 228 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * token1ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _1975 = mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                        require mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                        mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] = mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                        _2012 = mem[(32 * token1ToEarnedPath.length) + _1975 + 128]
                        mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * token1ToEarnedPath.length) + _1975 + 128])] = mem[(32 * token1ToEarnedPath.length) + _1975 + 160 len floor32(mem[(32 * token1ToEarnedPath.length) + _1975 + 128])]
                        mem[64] = (32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 224
                        mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] = 30
                        mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                        if 1 > mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1 < mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128]
                        _2697 = mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160]
                        if not mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160]:
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 324] = 0
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 388] = this.address
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 420] = block.timestamp + 600
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 356] = 160
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 452] = token1ToEarnedPath.length
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 484 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + floor32(token1ToEarnedPath.length) + 484 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                        else:
                            if slippageFactor * mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] / mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] != slippageFactor:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 325 len 31]
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 324] = slippageFactor * _2697 / 1000
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 388] = this.address
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 420] = block.timestamp + 600
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 356] = 160
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 452] = token1ToEarnedPath.length
                            mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 484 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], slippageFactor * _2697 / 1000, Array(len=token1ToEarnedPath.length, data=mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + floor32(token1ToEarnedPath.length) + 484 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _2012) + (32 * token1ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        require mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= 4294967296 and mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _2012) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 <= return_data.size
    else:
        if earnedAddress == token0Address:
            mem[100] = this.address
            require ext_code.size(token1Address)
            staticcall token1Address.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if earnedAddress != token1Address:
                    mem[96] = token1ToEarnedPath.length
                    if not token1ToEarnedPath.length:
                        mem[(32 * token1ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * token1ToEarnedPath.length) + 132] = ext_call.return_data[0]
                        mem[(32 * token1ToEarnedPath.length) + 164] = 64
                        mem[(32 * token1ToEarnedPath.length) + 196] = token1ToEarnedPath.length
                        mem[(32 * token1ToEarnedPath.length) + 228 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                        require ext_code.size(uniRouterAddress)
                        staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 228 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * token1ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _560 = mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                        require mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                        mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] = mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                        _573 = mem[(32 * token1ToEarnedPath.length) + _560 + 128]
                        mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * token1ToEarnedPath.length) + _560 + 128])] = mem[(32 * token1ToEarnedPath.length) + _560 + 160 len floor32(mem[(32 * token1ToEarnedPath.length) + _560 + 128])]
                        mem[64] = (32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 224
                        mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] = 30
                        mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                        if 1 > mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1 < mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128]
                        _1133 = mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160]
                        if not mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160]:
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 324] = 0
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 388] = this.address
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 420] = block.timestamp + 600
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 356] = 160
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 452] = token1ToEarnedPath.length
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 484 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + floor32(token1ToEarnedPath.length) + 484 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                        else:
                            if slippageFactor * mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] / mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] != slippageFactor:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 325 len 31]
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 324] = slippageFactor * _1133 / 1000
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 388] = this.address
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 420] = block.timestamp + 600
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 356] = 160
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 452] = token1ToEarnedPath.length
                            mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 484 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], slippageFactor * _1133 / 1000, Array(len=token1ToEarnedPath.length, data=mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + floor32(token1ToEarnedPath.length) + 484 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _573) + (32 * token1ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        require mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= 4294967296 and mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _573) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 <= return_data.size
                    else:
                        mem[0] = 23
                        mem[128] = address(token1ToEarnedPath.field_0)
                        if (32 * token1ToEarnedPath.length) + 32 <= 64:
                            mem[(32 * token1ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * token1ToEarnedPath.length) + 132] = ext_call.return_data[0]
                            mem[(32 * token1ToEarnedPath.length) + 164] = 64
                            mem[(32 * token1ToEarnedPath.length) + 196] = token1ToEarnedPath.length
                            mem[(32 * token1ToEarnedPath.length) + 228 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                            require ext_code.size(uniRouterAddress)
                            staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 228 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * token1ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            _562 = mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                            require mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                            mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] = mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                            _574 = mem[(32 * token1ToEarnedPath.length) + _562 + 128]
                            mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * token1ToEarnedPath.length) + _562 + 128])] = mem[(32 * token1ToEarnedPath.length) + _562 + 160 len floor32(mem[(32 * token1ToEarnedPath.length) + _562 + 128])]
                            mem[64] = (32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 224
                            mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] = 30
                            mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                            if 1 > mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1 < mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128]
                            _1137 = mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160]
                            if not mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160]:
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 324] = 0
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 388] = this.address
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 420] = block.timestamp + 600
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 356] = 160
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 452] = token1ToEarnedPath.length
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 484 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                                require ext_code.size(uniRouterAddress)
                                call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + floor32(token1ToEarnedPath.length) + 484 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                            else:
                                if slippageFactor * mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] / mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] != slippageFactor:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 325 len 31]
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 324] = slippageFactor * _1137 / 1000
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 388] = this.address
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 420] = block.timestamp + 600
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 356] = 160
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 452] = token1ToEarnedPath.length
                                mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 484 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                                require ext_code.size(uniRouterAddress)
                                call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], slippageFactor * _1137 / 1000, Array(len=token1ToEarnedPath.length, data=mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + floor32(token1ToEarnedPath.length) + 484 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _574) + (32 * token1ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            require mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= 4294967296 and mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _574) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 <= return_data.size
                        else:
                            mem[160] = address(token1ToEarnedPath.field_256)
                            idx = 160
                            s = 1
                            while (32 * token1ToEarnedPath.length) + 96 > idx:
                                mem[idx + 32] = token1ToEarnedPath[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[(32 * token1ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * token1ToEarnedPath.length) + 132] = ext_call.return_data[0]
                            mem[(32 * token1ToEarnedPath.length) + 164] = 64
                            mem[(32 * token1ToEarnedPath.length) + 196] = token1ToEarnedPath.length
                            mem[(32 * token1ToEarnedPath.length) + 228 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                            require ext_code.size(uniRouterAddress)
                            staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 228 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * token1ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            _1985 = mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                            require mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                            mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] = mem[(32 * token1ToEarnedPath.length) + mem[(32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                            _2017 = mem[(32 * token1ToEarnedPath.length) + _1985 + 128]
                            mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * token1ToEarnedPath.length) + _1985 + 128])] = mem[(32 * token1ToEarnedPath.length) + _1985 + 160 len floor32(mem[(32 * token1ToEarnedPath.length) + _1985 + 128])]
                            mem[64] = (32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 224
                            mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] = 30
                            mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                            if 1 > mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1 < mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128]
                            _2700 = mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160]
                            if not mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160]:
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 324] = 0
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 388] = this.address
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 420] = block.timestamp + 600
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 356] = 160
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 452] = token1ToEarnedPath.length
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 484 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                                require ext_code.size(uniRouterAddress)
                                call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + floor32(token1ToEarnedPath.length) + 484 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                            else:
                                if slippageFactor * mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] / mem[(32 * mem[(32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 160] != slippageFactor:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 325 len 31]
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 324] = slippageFactor * _2700 / 1000
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 388] = this.address
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 420] = block.timestamp + 600
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 356] = 160
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 452] = token1ToEarnedPath.length
                                mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 484 len floor32(token1ToEarnedPath.length)] = mem[128 len floor32(token1ToEarnedPath.length)]
                                require ext_code.size(uniRouterAddress)
                                call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], slippageFactor * _2700 / 1000, Array(len=token1ToEarnedPath.length, data=mem[128 len floor32(token1ToEarnedPath.length)], mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + floor32(token1ToEarnedPath.length) + 484 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2017) + (32 * token1ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            require mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= 4294967296 and mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _2017) + (32 * token1ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 <= return_data.size
        else:
            mem[96] = token0ToEarnedPath.length
            if not token0ToEarnedPath.length:
                mem[(32 * token0ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * token0ToEarnedPath.length) + 132] = ext_call.return_data[0]
                mem[(32 * token0ToEarnedPath.length) + 164] = 64
                mem[(32 * token0ToEarnedPath.length) + 196] = token0ToEarnedPath.length
                mem[(32 * token0ToEarnedPath.length) + 228 len floor32(token0ToEarnedPath.length)] = mem[128 len floor32(token0ToEarnedPath.length)]
                require ext_code.size(uniRouterAddress)
                staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=token0ToEarnedPath.length, data=mem[128 len floor32(token0ToEarnedPath.length)], mem[(32 * token0ToEarnedPath.length) + floor32(token0ToEarnedPath.length) + 228 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * token0ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _564 = mem[(32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * token0ToEarnedPath.length) + mem[(32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * token0ToEarnedPath.length) + mem[(32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128] = mem[(32 * token0ToEarnedPath.length) + mem[(32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                _575 = mem[(32 * token0ToEarnedPath.length) + _564 + 128]
                mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * token0ToEarnedPath.length) + _564 + 128])] = mem[(32 * token0ToEarnedPath.length) + _564 + 160 len floor32(mem[(32 * token0ToEarnedPath.length) + _564 + 128])]
                mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 160] = 30
                mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                if 1 > mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1 < mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128]
                _1140 = mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 160]
                if not mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 160]:
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 224] = 26
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324] = 0
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 388] = this.address
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 420] = block.timestamp + 600
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 356] = 160
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 452] = token0ToEarnedPath.length
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 484 len floor32(token0ToEarnedPath.length)] = mem[128 len floor32(token0ToEarnedPath.length)]
                    require ext_code.size(uniRouterAddress)
                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token0ToEarnedPath.length, mem[128 len floor32(token0ToEarnedPath.length)], mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + floor32(token0ToEarnedPath.length) + 484 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    _1993 = mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= 4294967296 and mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 <= return_data.size
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                    _2021 = mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + _1993 + 288]
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + _1993 + 288])] = mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + _1993 + 320 len floor32(mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + _1993 + 288])]
                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 324] = this.address
                    require ext_code.size(token1Address)
                    staticcall token1Address.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if earnedAddress != token1Address:
                            mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 320] = token1ToEarnedPath.length
                            if not token1ToEarnedPath.length:
                                mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 356] = ext_call.return_data[0]
                                mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 388] = 64
                                mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 420] = token1ToEarnedPath.length
                                mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 452 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 452 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352
                                require return_data.size >= 32
                                _3317 = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= 4294967296 and mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 <= return_data.size
                                mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                                _3341 = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _3317 + 352]
                                mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384 len floor32(mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _3317 + 352])] = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _3317 + 384 len floor32(mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _3317 + 352])]
                                mem[64] = (32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448
                                mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] = 30
                                mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 416] = 'SafeMath: subtraction overflow'
                                if 1 > mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1 < mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]
                                _3856 = mem[(32 * mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]
                                if not mem[(32 * mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]:
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = 0
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                                else:
                                    if slippageFactor * mem[(32 * mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] / mem[(32 * mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] != slippageFactor:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 549 len 31]
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = slippageFactor * _3856 / 1000
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                    mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], slippageFactor * _3856 / 1000, Array(len=token1ToEarnedPath.length, data=mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (6 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512
                                require return_data.size >= 32
                                require mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512] <= 4294967296 and mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3341) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512]) + 32 <= return_data.size
                            else:
                                mem[0] = 23
                                mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352] = address(token1ToEarnedPath.field_0)
                                if (32 * token1ToEarnedPath.length) + 32 <= 64:
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 356] = ext_call.return_data[0]
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 388] = 64
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 420] = token1ToEarnedPath.length
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 452 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 452 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352
                                    require return_data.size >= 32
                                    _3319 = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= 4294967296 and mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 <= return_data.size
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                                    _3342 = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _3319 + 352]
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384 len floor32(mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _3319 + 352])] = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _3319 + 384 len floor32(mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _3319 + 352])]
                                    mem[64] = (32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448
                                    mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] = 30
                                    mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 416] = 'SafeMath: subtraction overflow'
                                    if 1 > mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1 < mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]
                                    _3860 = mem[(32 * mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]
                                    if not mem[(32 * mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]:
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = 0
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                                    else:
                                        if slippageFactor * mem[(32 * mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] / mem[(32 * mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] != slippageFactor:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 549 len 31]
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = slippageFactor * _3860 / 1000
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                        mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], slippageFactor * _3860 / 1000, Array(len=token1ToEarnedPath.length, data=mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (6 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512
                                    require return_data.size >= 32
                                    require mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512] <= 4294967296 and mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3342) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512]) + 32 <= return_data.size
                                else:
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 384] = address(token1ToEarnedPath.field_256)
                                    idx = (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 384
                                    s = 1
                                    while (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 320 > idx:
                                        mem[idx + 32] = token1ToEarnedPath[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 356] = ext_call.return_data[0]
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 388] = 64
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 420] = token1ToEarnedPath.length
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 452 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 452 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352
                                    require return_data.size >= 32
                                    _4381 = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= 4294967296 and mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 <= return_data.size
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                                    _4416 = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4381 + 352]
                                    mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384 len floor32(mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4381 + 352])] = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4381 + 384 len floor32(mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4381 + 352])]
                                    mem[64] = (32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448
                                    mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] = 30
                                    mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 416] = 'SafeMath: subtraction overflow'
                                    if 1 > mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1 < mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]
                                    _4806 = mem[(32 * mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]
                                    if not mem[(32 * mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]:
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = 0
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                                    else:
                                        if slippageFactor * mem[(32 * mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] / mem[(32 * mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] != slippageFactor:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 549 len 31]
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = slippageFactor * _4806 / 1000
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                        mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], slippageFactor * _4806 / 1000, Array(len=token1ToEarnedPath.length, data=mem[(32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (6 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512
                                    require return_data.size >= 32
                                    require mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512] <= 4294967296 and mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _4416) + (32 * _2021) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512]) + 32 <= return_data.size
                else:
                    if slippageFactor * mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 160] / mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 160] != slippageFactor:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325 len 31]
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 224] = 26
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324] = slippageFactor * _1140 / 1000
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 388] = this.address
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 420] = block.timestamp + 600
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 356] = 160
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 452] = token0ToEarnedPath.length
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 484 len floor32(token0ToEarnedPath.length)] = mem[128 len floor32(token0ToEarnedPath.length)]
                    require ext_code.size(uniRouterAddress)
                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], slippageFactor * _1140 / 1000, Array(len=token0ToEarnedPath.length, data=mem[128 len floor32(token0ToEarnedPath.length)], mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + floor32(token0ToEarnedPath.length) + 484 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    _1991 = mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= 4294967296 and mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 <= return_data.size
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                    _2020 = mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + _1991 + 288]
                    mem[(32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + _1991 + 288])] = mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + _1991 + 320 len floor32(mem[(32 * _575) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + _1991 + 288])]
                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 324] = this.address
                    require ext_code.size(token1Address)
                    staticcall token1Address.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if earnedAddress != token1Address:
                            mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 320] = token1ToEarnedPath.length
                            if not token1ToEarnedPath.length:
                                mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 356] = ext_call.return_data[0]
                                mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 388] = 64
                                mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 420] = token1ToEarnedPath.length
                                mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 452 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 452 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352
                                require return_data.size >= 32
                                _3313 = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= 4294967296 and mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 <= return_data.size
                                mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                                _3339 = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _3313 + 352]
                                mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384 len floor32(mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _3313 + 352])] = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _3313 + 384 len floor32(mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _3313 + 352])]
                                mem[64] = (32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448
                                mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] = 30
                                mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 416] = 'SafeMath: subtraction overflow'
                                if 1 > mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1 < mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]
                                _3849 = mem[(32 * mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]
                                if not mem[(32 * mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]:
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = 0
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                                else:
                                    if slippageFactor * mem[(32 * mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] / mem[(32 * mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] != slippageFactor:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 549 len 31]
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = slippageFactor * _3849 / 1000
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                    mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], slippageFactor * _3849 / 1000, Array(len=token1ToEarnedPath.length, data=mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (6 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512
                                require return_data.size >= 32
                                require mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512] <= 4294967296 and mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3339) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512]) + 32 <= return_data.size
                            else:
                                mem[0] = 23
                                mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352] = address(token1ToEarnedPath.field_0)
                                if (32 * token1ToEarnedPath.length) + 32 <= 64:
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 356] = ext_call.return_data[0]
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 388] = 64
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 420] = token1ToEarnedPath.length
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 452 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 452 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352
                                    require return_data.size >= 32
                                    _3315 = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= 4294967296 and mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 <= return_data.size
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                                    _3340 = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _3315 + 352]
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384 len floor32(mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _3315 + 352])] = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _3315 + 384 len floor32(mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _3315 + 352])]
                                    mem[64] = (32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448
                                    mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] = 30
                                    mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 416] = 'SafeMath: subtraction overflow'
                                    if 1 > mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1 < mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]
                                    _3853 = mem[(32 * mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]
                                    if not mem[(32 * mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]:
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = 0
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                                    else:
                                        if slippageFactor * mem[(32 * mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] / mem[(32 * mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] != slippageFactor:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 549 len 31]
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = slippageFactor * _3853 / 1000
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                        mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], slippageFactor * _3853 / 1000, Array(len=token1ToEarnedPath.length, data=mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (6 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512
                                    require return_data.size >= 32
                                    require mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512] <= 4294967296 and mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3340) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512]) + 32 <= return_data.size
                                else:
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 384] = address(token1ToEarnedPath.field_256)
                                    idx = (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 384
                                    s = 1
                                    while (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 320 > idx:
                                        mem[idx + 32] = token1ToEarnedPath[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 356] = ext_call.return_data[0]
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 388] = 64
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 420] = token1ToEarnedPath.length
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 452 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 452 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352
                                    require return_data.size >= 32
                                    _4371 = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= 4294967296 and mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 <= return_data.size
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                                    _4411 = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4371 + 352]
                                    mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384 len floor32(mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4371 + 352])] = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4371 + 384 len floor32(mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4371 + 352])]
                                    mem[64] = (32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448
                                    mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] = 30
                                    mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 416] = 'SafeMath: subtraction overflow'
                                    if 1 > mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1 < mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]
                                    _4803 = mem[(32 * mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]
                                    if not mem[(32 * mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]:
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = 0
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                                    else:
                                        if slippageFactor * mem[(32 * mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] / mem[(32 * mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] != slippageFactor:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 549 len 31]
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = slippageFactor * _4803 / 1000
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                        mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], slippageFactor * _4803 / 1000, Array(len=token1ToEarnedPath.length, data=mem[(32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (6 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512
                                    require return_data.size >= 32
                                    require mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512] <= 4294967296 and mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _4411) + (32 * _2020) + (32 * _575) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512]) + 32 <= return_data.size
            else:
                mem[0] = 22
                mem[128] = address(token0ToEarnedPath.field_0)
                idx = 128
                s = 0
                while (32 * token0ToEarnedPath.length) + 96 > idx:
                    mem[idx + 32] = token0ToEarnedPath[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[(32 * token0ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * token0ToEarnedPath.length) + 132] = ext_call.return_data[0]
                mem[(32 * token0ToEarnedPath.length) + 164] = 64
                mem[(32 * token0ToEarnedPath.length) + 196] = token0ToEarnedPath.length
                mem[(32 * token0ToEarnedPath.length) + 228 len floor32(token0ToEarnedPath.length)] = mem[128 len floor32(token0ToEarnedPath.length)]
                require ext_code.size(uniRouterAddress)
                staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=token0ToEarnedPath.length, data=mem[128 len floor32(token0ToEarnedPath.length)], mem[(32 * token0ToEarnedPath.length) + floor32(token0ToEarnedPath.length) + 228 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * token0ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1995 = mem[(32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * token0ToEarnedPath.length) + mem[(32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * token0ToEarnedPath.length) + mem[(32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128] = mem[(32 * token0ToEarnedPath.length) + mem[(32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                _2022 = mem[(32 * token0ToEarnedPath.length) + _1995 + 128]
                mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * token0ToEarnedPath.length) + _1995 + 128])] = mem[(32 * token0ToEarnedPath.length) + _1995 + 160 len floor32(mem[(32 * token0ToEarnedPath.length) + _1995 + 128])]
                mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 160] = 30
                mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                if 1 > mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1 < mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128]
                _2705 = mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 160]
                if mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 160]:
                    if slippageFactor * mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 160] / mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 128] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 160] != slippageFactor:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325 len 31]
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 224] = 26
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324] = slippageFactor * _2705 / 1000
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 388] = this.address
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 420] = block.timestamp + 600
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 356] = 160
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 452] = token0ToEarnedPath.length
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 484 len floor32(token0ToEarnedPath.length)] = mem[128 len floor32(token0ToEarnedPath.length)]
                    require ext_code.size(uniRouterAddress)
                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], slippageFactor * _2705 / 1000, Array(len=token0ToEarnedPath.length, data=mem[128 len floor32(token0ToEarnedPath.length)], mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + floor32(token0ToEarnedPath.length) + 484 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    _3321 = mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= 4294967296 and mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 <= return_data.size
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                    _3343 = mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + _3321 + 288]
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + _3321 + 288])] = mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + _3321 + 320 len floor32(mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + _3321 + 288])]
                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 324] = this.address
                    require ext_code.size(token1Address)
                    staticcall token1Address.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if earnedAddress != token1Address:
                            mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 320] = token1ToEarnedPath.length
                            if not token1ToEarnedPath.length:
                                mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 356] = ext_call.return_data[0]
                                mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 388] = 64
                                mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 420] = token1ToEarnedPath.length
                                mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 452 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 452 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352
                                require return_data.size >= 32
                                _4387 = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= 4294967296 and mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 <= return_data.size
                                mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                                _4419 = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4387 + 352]
                                mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384 len floor32(mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4387 + 352])] = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4387 + 384 len floor32(mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4387 + 352])]
                                mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] = 30
                                mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 416] = 'SafeMath: subtraction overflow'
                                if 1 > mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1 < mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]
                                _4809 = mem[(32 * mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]
                                if not mem[(32 * mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]:
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = 0
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                                else:
                                    if slippageFactor * mem[(32 * mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] / mem[(32 * mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] != slippageFactor:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 549 len 31]
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = slippageFactor * _4809 / 1000
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                    mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], slippageFactor * _4809 / 1000, Array(len=token1ToEarnedPath.length, data=mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (6 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512
                                require return_data.size >= 32
                                require mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512] <= 4294967296 and mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _4419) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512]) + 32 <= return_data.size
                            else:
                                mem[0] = 23
                                mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352] = address(token1ToEarnedPath.field_0)
                                if (32 * token1ToEarnedPath.length) + 32 <= 64:
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 356] = ext_call.return_data[0]
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 388] = 64
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 420] = token1ToEarnedPath.length
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 452 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 452 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352
                                    require return_data.size >= 32
                                    _4389 = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= 4294967296 and mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 <= return_data.size
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                                    _4420 = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4389 + 352]
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384 len floor32(mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4389 + 352])] = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4389 + 384 len floor32(mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4389 + 352])]
                                    mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] = 30
                                    mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 416] = 'SafeMath: subtraction overflow'
                                    if 1 > mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1 < mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]
                                    _4813 = mem[(32 * mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]
                                    if not mem[(32 * mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]:
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = 0
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                                    else:
                                        if slippageFactor * mem[(32 * mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] / mem[(32 * mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] != slippageFactor:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 549 len 31]
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = slippageFactor * _4813 / 1000
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                        mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], slippageFactor * _4813 / 1000, Array(len=token1ToEarnedPath.length, data=mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (6 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512
                                    require return_data.size >= 32
                                    require mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512] <= 4294967296 and mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _4420) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512]) + 32 <= return_data.size
                                else:
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 384] = address(token1ToEarnedPath.field_256)
                                    idx = (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 384
                                    s = 1
                                    while (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 320 > idx:
                                        mem[idx + 32] = token1ToEarnedPath[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 356] = ext_call.return_data[0]
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 388] = 64
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 420] = token1ToEarnedPath.length
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 452 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 452 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352
                                    require return_data.size >= 32
                                    _5181 = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= 4294967296 and mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 <= return_data.size
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                                    _5217 = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _5181 + 352]
                                    mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384 len floor32(mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _5181 + 352])] = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _5181 + 384 len floor32(mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _5181 + 352])]
                                    mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] = 30
                                    mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 416] = 'SafeMath: subtraction overflow'
                                    if 1 > mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1 < mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]
                                    _5365 = mem[(32 * mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]
                                    if not mem[(32 * mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]:
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = 0
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                                    else:
                                        if slippageFactor * mem[(32 * mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] / mem[(32 * mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] != slippageFactor:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 549 len 31]
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = slippageFactor * _5365 / 1000
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                        mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], slippageFactor * _5365 / 1000, Array(len=token1ToEarnedPath.length, data=mem[(32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (6 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512
                                    require return_data.size >= 32
                                    require mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512] <= 4294967296 and mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _5217) + (32 * _3343) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512]) + 32 <= return_data.size
                else:
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 224] = 26
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324] = 0
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 388] = this.address
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 420] = block.timestamp + 600
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 356] = 160
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 452] = token0ToEarnedPath.length
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 484 len floor32(token0ToEarnedPath.length)] = mem[128 len floor32(token0ToEarnedPath.length)]
                    require ext_code.size(uniRouterAddress)
                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token0ToEarnedPath.length, mem[128 len floor32(token0ToEarnedPath.length)], mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + floor32(token0ToEarnedPath.length) + 484 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    _3323 = mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= 4294967296 and mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 <= return_data.size
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                    _3344 = mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + _3323 + 288]
                    mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + _3323 + 288])] = mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + _3323 + 320 len floor32(mem[(32 * _2022) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + _3323 + 288])]
                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 324] = this.address
                    require ext_code.size(token1Address)
                    staticcall token1Address.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if earnedAddress != token1Address:
                            mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 320] = token1ToEarnedPath.length
                            if not token1ToEarnedPath.length:
                                mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 356] = ext_call.return_data[0]
                                mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 388] = 64
                                mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 420] = token1ToEarnedPath.length
                                mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 452 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                var74001 = floor32(token1ToEarnedPath.length)
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 452 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352
                                require return_data.size >= 32
                                _4391 = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= 4294967296 and mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 <= return_data.size
                                mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                                _4421 = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4391 + 352]
                                mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384 len floor32(mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4391 + 352])] = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4391 + 384 len floor32(mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4391 + 352])]
                                mem[64] = (32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448
                                mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] = 30
                                mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 416] = 'SafeMath: subtraction overflow'
                                if 1 > mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1 < mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]
                                _4816 = mem[(32 * mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]
                                if not mem[(32 * mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]:
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = 0
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                                else:
                                    if slippageFactor * mem[(32 * mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] / mem[(32 * mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] != slippageFactor:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 549 len 31]
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                    if block.timestamp + 600 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = slippageFactor * _4816 / 1000
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                    mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], slippageFactor * _4816 / 1000, Array(len=token1ToEarnedPath.length, data=mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (6 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512
                                require return_data.size >= 32
                                require mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512] <= 4294967296 and mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _4421) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512]) + 32 <= return_data.size
                            else:
                                mem[0] = 23
                                mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352] = address(token1ToEarnedPath.field_0)
                                if (32 * token1ToEarnedPath.length) + 32 <= 64:
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 356] = ext_call.return_data[0]
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 388] = 64
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 420] = token1ToEarnedPath.length
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 452 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 452 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352
                                    require return_data.size >= 32
                                    _4393 = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= 4294967296 and mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 <= return_data.size
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                                    _4422 = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4393 + 352]
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384 len floor32(mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4393 + 352])] = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4393 + 384 len floor32(mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _4393 + 352])]
                                    mem[64] = (32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448
                                    mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] = 30
                                    mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 416] = 'SafeMath: subtraction overflow'
                                    if 1 > mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1 < mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]
                                    _4820 = mem[(32 * mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]
                                    if not mem[(32 * mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]:
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = 0
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                                    else:
                                        if slippageFactor * mem[(32 * mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] / mem[(32 * mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] != slippageFactor:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 549 len 31]
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = slippageFactor * _4820 / 1000
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                        mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], slippageFactor * _4820 / 1000, Array(len=token1ToEarnedPath.length, data=mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (6 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512
                                    require return_data.size >= 32
                                    require mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512] <= 4294967296 and mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _4422) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512]) + 32 <= return_data.size
                                else:
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 384] = address(token1ToEarnedPath.field_256)
                                    idx = (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 384
                                    s = 1
                                    while (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 320 > idx:
                                        mem[idx + 32] = token1ToEarnedPath[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 356] = ext_call.return_data[0]
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 388] = 64
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 420] = token1ToEarnedPath.length
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 452 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0], Array(len=token1ToEarnedPath.length, data=mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 452 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352
                                    require return_data.size >= 32
                                    _5191 = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= 4294967296 and mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 <= return_data.size
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                                    _5222 = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _5191 + 352]
                                    mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384 len floor32(mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _5191 + 352])] = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _5191 + 384 len floor32(mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _5191 + 352])]
                                    mem[64] = (32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448
                                    mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] = 30
                                    mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 416] = 'SafeMath: subtraction overflow'
                                    if 1 > mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1 < mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352]
                                    _5368 = mem[(32 * mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]
                                    if not mem[(32 * mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384]:
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = 0
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token1ToEarnedPath.length, mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]
                                    else:
                                        if slippageFactor * mem[(32 * mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] / mem[(32 * mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 352] - 1) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 384] != slippageFactor:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 549 len 31]
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 448] = 26
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 480] = 'SafeMath: division by zero'
                                        if block.timestamp + 600 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 516] = ext_call.return_data[0]
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 548] = slippageFactor * _5368 / 1000
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 612] = this.address
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 644] = block.timestamp + 600
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 580] = 160
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 676] = token1ToEarnedPath.length
                                        mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 708 len floor32(token1ToEarnedPath.length)] = mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)]
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], slippageFactor * _5368 / 1000, Array(len=token1ToEarnedPath.length, data=mem[(32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (2 * ceil32(return_data.size)) + 352 len floor32(token1ToEarnedPath.length)], mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(token1ToEarnedPath.length) + 708 len (32 * token1ToEarnedPath.length) - floor32(token1ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (6 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512
                                    require return_data.size >= 32
                                    require mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512] <= 4294967296 and mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(32 * _5222) + (32 * _3344) + (32 * _2022) + (32 * token0ToEarnedPath.length) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 512 len 4], ext_call.return_data[0 len 28] + 512]) + 32 <= return_data.size
    stor1 = 1
}



}
