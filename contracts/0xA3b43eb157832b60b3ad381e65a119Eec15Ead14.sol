contract main {




// =====================  Runtime code  =====================


const getName = Array(len=33, data=0xfe4570696353747261746567795f417661785f41627261636164616272615f4d49, mem[161 len 31], mem[223 len 1])

const want = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const performanceMax = 10000

const sub_86a8b4b5(?) = 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd

const sub_89f4e2f3(?) = 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd

const balanceOfWant = ext_call.return_data[0]

const withdrawalMax = 10000

const pid = 0

const SPELL = 0xce1bffbd5374dac86a2893119683f4911a2f7814

const USDC = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const MIM = 0x130966628846bfd36ff31a822705796e8cb8c18d

const DAI = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70

const MAX_BPS = 10000


address rewardAddress;
uint32 stor1;
address sub_208362c1Address;
uint256 stor1;
uint32 stor2;
address SWAPAddress;
uint256 stor2;
uint256 sl;
uint256 performanceFee;
uint256 withdrawalFee;
address governanceAddress;
address strategistAddress;
uint32 stor8;
address vaultAddress;
uint256 stor8;
uint256 sub_3eff3a74;

function SWAP() payable {
    return address(SWAPAddress)
}

function strategist() payable {
    return strategistAddress
}

function sub_208362c1(?) payable {
    return address(sub_208362c1Address)
}

function reward() payable {
    return rewardAddress
}

function sub_3eff3a74(?) payable {
    return sub_3eff3a74
}

function governance() payable {
    return governanceAddress
}

function sl() payable {
    return sl
}

function performanceFee() payable {
    return performanceFee
}

function withdrawalFee() payable {
    return withdrawalFee
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function setSwap(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    address(SWAPAddress) = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    address(vaultAddress) = arg1
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    withdrawalFee = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    strategistAddress = arg1
}

function setPerformanceFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    performanceFee = arg1
}

function setSlippageTolerance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!authorized'
    sl = arg1
}

function balanceOfToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(address(sub_208362c1Address))
    staticcall address(sub_208362c1Address).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
    staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function deposit() payable {
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
    call 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.add_liquidity(uint256[3] arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] >> 512, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
    staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, '!_balCRVLP'
    require ext_code.size(address(sub_208362c1Address))
    call address(sub_208362c1Address).deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(address(sub_208362c1Address))
    staticcall address(sub_208362c1Address).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] <= 0:
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ext_call.return_data[0]
    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
    staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg1:
        revert with 0, 'want'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x4d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor8)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor8):
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
    return ext_call.return_data[0]
}

function withdrawAll() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(address(sub_208362c1Address))
    staticcall address(sub_208362c1Address).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0:
        require ext_code.size(address(sub_208362c1Address))
        call address(sub_208362c1Address).withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
        staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
        call 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x4d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
           funct uint32(stor8)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor8):
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
    return ext_call.return_data[0]
}

function harvest() payable {
    if strategistAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!authorized'
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_208362c1Address))
    call address(sub_208362c1Address).deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rewardAddress)
    staticcall rewardAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        mem[96] = 3
        mem[128] = rewardAddress
        mem[160] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[192] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[228] = ext_call.return_data[0]
        mem[260] = 0
        mem[324] = this.address
        mem[356] = block.timestamp
        mem[292] = 160
        mem[388] = 3
        mem[420 len 0] = None
        require ext_code.size(address(SWAPAddress))
        call address(SWAPAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[420 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        require mem[224 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_3eff3a74 < sub_3eff3a74:
        revert with 0, 'SafeMath: addition overflow'
    emit Harvest(0, sub_3eff3a74);
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
    call 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.add_liquidity(uint256[3] arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] >> 512, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
    staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, '!_balCRVLP'
    require ext_code.size(address(sub_208362c1Address))
    call address(sub_208362c1Address).deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x4d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, arg1) >> 32
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor8)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), arg1
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor8):
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
            require arg1
            if arg1 * withdrawalFee / arg1 != withdrawalFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg1 * withdrawalFee / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x4d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) >> 32
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor8)
                 gas gas_remaining wei
                args Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), arg1 - (arg1 * withdrawalFee / 10000)
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor8):
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
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(sub_208362c1Address))
        staticcall address(sub_208362c1Address).userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] <= 0:
            if arg1 - ext_call.return_data[0] <= 0:
                require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
                staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.calc_token_amount(uint256[3] arg1, bool arg2) with:
                        gas gas_remaining wei
                       args 0, 0, arg1 - ext_call.return_data[0] >> 512, 0
            else:
                require ext_code.size(address(sub_208362c1Address))
                staticcall address(sub_208362c1Address).userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
                    staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.calc_token_amount(uint256[3] arg1, bool arg2) with:
                            gas gas_remaining wei
                           args 0
                else:
                    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
                    staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
                    staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.calc_token_amount(uint256[3] arg1, bool arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] >> 512, 0
        else:
            require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
            staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 - ext_call.return_data[0] <= ext_call.return_data[0]:
                require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
                staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.calc_token_amount(uint256[3] arg1, bool arg2) with:
                        gas gas_remaining wei
                       args 0, 0, arg1 - ext_call.return_data[0] >> 512, 0
            else:
                require ext_code.size(address(sub_208362c1Address))
                staticcall address(sub_208362c1Address).userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
                    staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.calc_token_amount(uint256[3] arg1, bool arg2) with:
                            gas gas_remaining wei
                           args 0
                else:
                    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
                    staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
                    staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.calc_token_amount(uint256[3] arg1, bool arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] >> 512, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_208362c1Address))
        staticcall address(sub_208362c1Address).userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(address(sub_208362c1Address))
        call address(sub_208362c1Address).withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
        staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
        call 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x4d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
            if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[356 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor8)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[292 len 28], mem[420 len 4]
        else:
            require ext_call.return_data[0]
            if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / ext_call.return_data[0] != withdrawalFee:
                revert with 0, 'lSafeMath: multiplication overflo'
            if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x4d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
            if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[356 len 64] = 0, address(vaultAddress), Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) >> 32
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor8)
                 gas gas_remaining wei
                args ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000), mem[292 len 28], mem[420 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
        else:
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
}

function doApprovals() payable {
    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
    staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(sub_208362c1Address)
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
        revert with 0, 32, 38, 0x4d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    call 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd with:
       funct uint32(stor1)
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), -1
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor1):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(rewardAddress)
        staticcall rewardAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(SWAPAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x4d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if ext_code.size(rewardAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call rewardAddress with:
           funct uint32(stor2)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), -1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor1):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
            staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[546 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x4d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[694 len 26]
            if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = approve(address arg1, uint256 arg2), 0xaea2e71b631fa93683bcf256, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xe094fcd with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), -1
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor1):
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
            require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
            staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 547 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x4d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 695 len 26]
            if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), 0xaea2e71b631fa93683bcf256, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xe094fcd with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), -1
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor1):
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
                    revert with 0, 'SafeERC20: low-level call failed'
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
        require ext_code.size(rewardAddress)
        staticcall rewardAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(SWAPAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[ceil32(return_data.size) + 383 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x4d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if ext_code.size(rewardAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[ceil32(return_data.size) + 517 len 4] = 0
        call rewardAddress with:
           funct uint32(stor2)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), -1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor1):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
            staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 547 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x4d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 695 len 26]
            if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), 0xaea2e71b631fa93683bcf256, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xe094fcd with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), -1
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor1):
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
                    revert with 0, 'SafeERC20: low-level call failed'
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
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
            staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(2 * ceil32(return_data.size)) + 548 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x4d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 696 len 26]
            if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), 0xaea2e71b631fa93683bcf256, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 224, 235491277) >> 224, mem[(2 * ceil32(return_data.size)) + 494 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                 gas gas_remaining wei
                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), -1
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor1):
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



}
