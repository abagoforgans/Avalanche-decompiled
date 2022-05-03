contract main {




// =====================  Runtime code  =====================


#
#  - doApprovals()
#
const getName = 'EpicStrategy_Avax_Stablize_USDC'

const want = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const sub_208362c1(?) = 0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2

const sub_2d6270b4(?) = 0x360c233a63314b2b75cf0172e63b489bcea8e4b4

const sub_56ccb72c(?) = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const performanceMax = 10000

const sub_9d2e7169(?) = 0x37d87e316cb4e35163881fdb6c6bc0cdba91dc0a

const balanceOfWant = ext_call.return_data[0]

const withdrawalMax = 10000

const SUSD = 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d

const USDC = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const DAI = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70

const MAX_BPS = 10000


address rewardAddress;
uint256 sl;
uint256 performanceFee;
uint256 withdrawalFee;
address governanceAddress;
address strategistAddress;
uint32 stor6;
address vaultAddress;
uint256 stor6;
uint256 sub_3eff3a74;

function strategist() payable {
    return strategistAddress
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

function sub_21c3b917(?) payable {
    require calldata.size - 4 >= 32
    return arg1
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

function sub_769ece6c(?) payable {
    require ext_code.size(0x360c233a63314b2b75cf0172e63b489bcea8e4b4)
    staticcall 0x360c233a63314b2b75cf0172e63b489bcea8e4b4.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(0x360c233a63314b2b75cf0172e63b489bcea8e4b4)
    staticcall 0x360c233a63314b2b75cf0172e63b489bcea8e4b4.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not Mask(112, 0, ext_call.return_data[0]):
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if Mask(112, 0, ext_call.return_data[0]):
            if 2 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
    revert
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
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor6)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor6):
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

function balanceOfPool() payable {
    require ext_code.size(0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2)
    staticcall 0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(0x360c233a63314b2b75cf0172e63b489bcea8e4b4)
    staticcall 0x360c233a63314b2b75cf0172e63b489bcea8e4b4.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(0x360c233a63314b2b75cf0172e63b489bcea8e4b4)
    staticcall 0x360c233a63314b2b75cf0172e63b489bcea8e4b4.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not Mask(112, 0, ext_call.return_data[0]):
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not ext_call.return_data[0]:
            return 0
        require ext_call.return_data[0]
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
    require Mask(112, 0, ext_call.return_data[0])
    if 2 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 0
    require ext_call.return_data[0]
    if ext_call.return_data[0] * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / ext_call.return_data[0] != 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
}

function withdrawAll() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(0x360c233a63314b2b75cf0172e63b489bcea8e4b4)
    staticcall 0x360c233a63314b2b75cf0172e63b489bcea8e4b4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2)
    call 0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x360c233a63314b2b75cf0172e63b489bcea8e4b4)
    staticcall 0x360c233a63314b2b75cf0172e63b489bcea8e4b4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0, 3248801380, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[96] = 2
    mem[128] = 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d
    mem[160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    require ext_code.size(0xaafd2577fb67366d3c89db0d627c49d769ee2e5d)
    staticcall 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0]
    mem[228] = 0
    mem[292] = this.address
    mem[324] = block.timestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _94 = mem[192 len 4], ext_call.return_data[0 len 28]
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
    _97 = mem[_94 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_94 + 192])] = mem[_94 + 224 len floor32(mem[_94 + 192])]
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(32 * _97) + ceil32(return_data.size) + 494 len 26]
    if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _97) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
    call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
       funct uint32(stor6)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _97) + ceil32(return_data.size) + 452 len 4]
    require return_data.size
    mem[(32 * _97) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[(32 * _97) + ceil32(return_data.size) + 420]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * _97) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
    return ext_call.return_data[0]
}

function balanceOf() payable {
    require ext_code.size(0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2)
    staticcall 0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    require ext_code.size(0x360c233a63314b2b75cf0172e63b489bcea8e4b4)
    staticcall 0x360c233a63314b2b75cf0172e63b489bcea8e4b4.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(0x360c233a63314b2b75cf0172e63b489bcea8e4b4)
    staticcall 0x360c233a63314b2b75cf0172e63b489bcea8e4b4.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not Mask(112, 0, ext_call.return_data[0]):
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not ext_call.return_data[0]:
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
        require ext_call.return_data[0]
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0]) < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return (ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0]))
    require Mask(112, 0, ext_call.return_data[0])
    if 2 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not ext_call.return_data[0]:
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
    require ext_call.return_data[0]
    if ext_call.return_data[0] * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / ext_call.return_data[0] != 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + (ext_call.return_data[0] * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (ext_call.return_data[0] + (ext_call.return_data[0] * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]))
}

function deposit() payable {
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[160] = 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = 0
        mem[228] = 0
        mem[292] = this.address
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _167 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= 4294967296
        require mem[192 len 4], 0 + 32 <= return_data.size
        require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        _172 = mem[_167 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_167 + 192])] = mem[_167 + 224 len floor32(mem[_167 + 192])]
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xaafd2577fb67366d3c89db0d627c49d769ee2e5d)
        staticcall 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _172) + ceil32(return_data.size) + 325 len 31]
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], 0, ext_call.return_data[0] * sl / 10000, address(this.address), block.timestamp
        else:
            require ext_call.return_data[0]
            if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _172) + ceil32(return_data.size) + 325 len 31]
            if not ext_call.return_data[0]:
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sl / 10000, 0, address(this.address), block.timestamp
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _172) + ceil32(return_data.size) + 325 len 31]
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sl / 10000, ext_call.return_data[0] * sl / 10000, address(this.address), block.timestamp
    else:
        require ext_call.return_data[0]
        if 5000 * ext_call.return_data[0] / ext_call.return_data[0] != 5000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[160] = 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = 5000 * ext_call.return_data[0] / 10000
        mem[228] = 0
        mem[292] = this.address
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 5000 * ext_call.return_data[0] / 10000, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _165 = mem[192 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32
        require mem[192 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + 192]
        _171 = mem[_165 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_165 + 192])] = mem[_165 + 224 len floor32(mem[_165 + 192])]
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xaafd2577fb67366d3c89db0d627c49d769ee2e5d)
        staticcall 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _171) + ceil32(return_data.size) + 325 len 31]
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], 0, ext_call.return_data[0] * sl / 10000, address(this.address), block.timestamp
        else:
            require ext_call.return_data[0]
            if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _171) + ceil32(return_data.size) + 325 len 31]
            if not ext_call.return_data[0]:
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sl / 10000, 0, address(this.address), block.timestamp
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _171) + ceil32(return_data.size) + 325 len 31]
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sl / 10000, ext_call.return_data[0] * sl / 10000, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(0x360c233a63314b2b75cf0172e63b489bcea8e4b4)
    staticcall 0x360c233a63314b2b75cf0172e63b489bcea8e4b4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2)
    call 0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2.stake(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function harvest() payable {
    if msg.sender == strategistAddress:
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2)
        call 0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2.claimReward() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(rewardAddress)
        staticcall rewardAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'No Rewards to Harvest'
        mem[96] = 2
        mem[128] = rewardAddress
        mem[160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = 0
        mem[292] = this.address
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _3181 = mem[192 len 4], ext_call.return_data[0 len 28]
        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
        _3187 = mem[_3181 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_3181 + 192])] = mem[_3181 + 224 len floor32(mem[_3181 + 192])]
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
        if not ext_call.return_data[0]:
            mem[(32 * _3187) + ceil32(return_data.size) + 288] = 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d
            mem[(32 * _3187) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _3187) + ceil32(return_data.size) + 324] = 0
            mem[(32 * _3187) + ceil32(return_data.size) + 356] = 0
            mem[(32 * _3187) + ceil32(return_data.size) + 420] = this.address
            mem[(32 * _3187) + ceil32(return_data.size) + 452] = block.timestamp
            mem[(32 * _3187) + ceil32(return_data.size) + 388] = 160
            mem[(32 * _3187) + ceil32(return_data.size) + 484] = 2
            mem[(32 * _3187) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _3187) + ceil32(return_data.size) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _3187) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _3187) + (2 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _9467 = mem[(32 * _3187) + ceil32(return_data.size) + 320 len 4], 0
            require mem[(32 * _3187) + ceil32(return_data.size) + 320 len 4], 0 <= 4294967296
            require mem[(32 * _3187) + ceil32(return_data.size) + 320 len 4], 0 + 32 <= return_data.size
            require mem[mem[(32 * _3187) + ceil32(return_data.size) + 320 len 4], 0 + (32 * _3187) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _3187) + ceil32(return_data.size) + 320 len 4], 0 + (32 * mem[mem[(32 * _3187) + ceil32(return_data.size) + 320 len 4], 0 + (32 * _3187) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
            mem[(32 * _3187) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _3187) + ceil32(return_data.size) + 320 len 4], 0 + (32 * _3187) + ceil32(return_data.size) + 320]
            _9518 = mem[_9467 + (32 * _3187) + ceil32(return_data.size) + 320]
            mem[(32 * _3187) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_9467 + (32 * _3187) + ceil32(return_data.size) + 320])] = mem[_9467 + (32 * _3187) + ceil32(return_data.size) + 352 len floor32(mem[_9467 + (32 * _3187) + ceil32(return_data.size) + 320])]
            require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
            staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xaafd2577fb67366d3c89db0d627c49d769ee2e5d)
            staticcall 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _9518) + (32 * _3187) + (2 * ceil32(return_data.size)) + 453 len 31]
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], 0, ext_call.return_data[0] * sl / 10000, address(this.address), block.timestamp
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _9518) + (32 * _3187) + (2 * ceil32(return_data.size)) + 453 len 31]
                if not ext_call.return_data[0]:
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sl / 10000, 0, address(this.address), block.timestamp
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _9518) + (32 * _3187) + (2 * ceil32(return_data.size)) + 453 len 31]
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sl / 10000, ext_call.return_data[0] * sl / 10000, address(this.address), block.timestamp
        else:
            require ext_call.return_data[0]
            if 5000 * ext_call.return_data[0] / ext_call.return_data[0] != 5000:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _3187) + ceil32(return_data.size) + 325 len 31]
            mem[(32 * _3187) + ceil32(return_data.size) + 288] = 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d
            mem[(32 * _3187) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _3187) + ceil32(return_data.size) + 324] = 5000 * ext_call.return_data[0] / 10000
            mem[(32 * _3187) + ceil32(return_data.size) + 356] = 0
            mem[(32 * _3187) + ceil32(return_data.size) + 420] = this.address
            mem[(32 * _3187) + ceil32(return_data.size) + 452] = block.timestamp
            mem[(32 * _3187) + ceil32(return_data.size) + 388] = 160
            mem[(32 * _3187) + ceil32(return_data.size) + 484] = 2
            mem[(32 * _3187) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 5000 * ext_call.return_data[0] / 10000, 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _3187) + ceil32(return_data.size) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _3187) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _3187) + (2 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _9465 = mem[(32 * _3187) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32
            require mem[(32 * _3187) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 <= 4294967296
            require mem[(32 * _3187) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _3187) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + (32 * _3187) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _3187) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + (32 * mem[mem[(32 * _3187) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + (32 * _3187) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
            mem[(32 * _3187) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _3187) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + (32 * _3187) + ceil32(return_data.size) + 320]
            _9517 = mem[_9465 + (32 * _3187) + ceil32(return_data.size) + 320]
            mem[(32 * _3187) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_9465 + (32 * _3187) + ceil32(return_data.size) + 320])] = mem[_9465 + (32 * _3187) + ceil32(return_data.size) + 352 len floor32(mem[_9465 + (32 * _3187) + ceil32(return_data.size) + 320])]
            require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
            staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xaafd2577fb67366d3c89db0d627c49d769ee2e5d)
            staticcall 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _9517) + (32 * _3187) + (2 * ceil32(return_data.size)) + 453 len 31]
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], 0, ext_call.return_data[0] * sl / 10000, address(this.address), block.timestamp
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _9517) + (32 * _3187) + (2 * ceil32(return_data.size)) + 453 len 31]
                if not ext_call.return_data[0]:
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sl / 10000, 0, address(this.address), block.timestamp
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _9517) + (32 * _3187) + (2 * ceil32(return_data.size)) + 453 len 31]
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sl / 10000, ext_call.return_data[0] * sl / 10000, address(this.address), block.timestamp
    else:
        if governanceAddress != msg.sender:
            revert with 0, '!authorized'
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2)
        call 0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2.claimReward() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(rewardAddress)
        staticcall rewardAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'No Rewards to Harvest'
        mem[96] = 2
        mem[128] = rewardAddress
        mem[160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = 0
        mem[292] = this.address
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _3183 = mem[192 len 4], ext_call.return_data[0 len 28]
        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
        _3188 = mem[_3183 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_3183 + 192])] = mem[_3183 + 224 len floor32(mem[_3183 + 192])]
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
        if not ext_call.return_data[0]:
            mem[(32 * _3188) + ceil32(return_data.size) + 288] = 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d
            mem[(32 * _3188) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _3188) + ceil32(return_data.size) + 324] = 0
            mem[(32 * _3188) + ceil32(return_data.size) + 356] = 0
            mem[(32 * _3188) + ceil32(return_data.size) + 420] = this.address
            mem[(32 * _3188) + ceil32(return_data.size) + 452] = block.timestamp
            mem[(32 * _3188) + ceil32(return_data.size) + 388] = 160
            mem[(32 * _3188) + ceil32(return_data.size) + 484] = 2
            mem[(32 * _3188) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _3188) + ceil32(return_data.size) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _3188) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _3188) + (2 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _9471 = mem[(32 * _3188) + ceil32(return_data.size) + 320 len 4], 0
            require mem[(32 * _3188) + ceil32(return_data.size) + 320 len 4], 0 <= 4294967296
            require mem[(32 * _3188) + ceil32(return_data.size) + 320 len 4], 0 + 32 <= return_data.size
            require mem[mem[(32 * _3188) + ceil32(return_data.size) + 320 len 4], 0 + (32 * _3188) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _3188) + ceil32(return_data.size) + 320 len 4], 0 + (32 * mem[mem[(32 * _3188) + ceil32(return_data.size) + 320 len 4], 0 + (32 * _3188) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
            mem[(32 * _3188) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _3188) + ceil32(return_data.size) + 320 len 4], 0 + (32 * _3188) + ceil32(return_data.size) + 320]
            _9520 = mem[_9471 + (32 * _3188) + ceil32(return_data.size) + 320]
            mem[(32 * _3188) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_9471 + (32 * _3188) + ceil32(return_data.size) + 320])] = mem[_9471 + (32 * _3188) + ceil32(return_data.size) + 352 len floor32(mem[_9471 + (32 * _3188) + ceil32(return_data.size) + 320])]
            require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
            staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xaafd2577fb67366d3c89db0d627c49d769ee2e5d)
            staticcall 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _9520) + (32 * _3188) + (2 * ceil32(return_data.size)) + 453 len 31]
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], 0, ext_call.return_data[0] * sl / 10000, address(this.address), block.timestamp
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _9520) + (32 * _3188) + (2 * ceil32(return_data.size)) + 453 len 31]
                if not ext_call.return_data[0]:
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sl / 10000, 0, address(this.address), block.timestamp
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _9520) + (32 * _3188) + (2 * ceil32(return_data.size)) + 453 len 31]
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sl / 10000, ext_call.return_data[0] * sl / 10000, address(this.address), block.timestamp
        else:
            require ext_call.return_data[0]
            if 5000 * ext_call.return_data[0] / ext_call.return_data[0] != 5000:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _3188) + ceil32(return_data.size) + 325 len 31]
            mem[(32 * _3188) + ceil32(return_data.size) + 288] = 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d
            mem[(32 * _3188) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _3188) + ceil32(return_data.size) + 324] = 5000 * ext_call.return_data[0] / 10000
            mem[(32 * _3188) + ceil32(return_data.size) + 356] = 0
            mem[(32 * _3188) + ceil32(return_data.size) + 420] = this.address
            mem[(32 * _3188) + ceil32(return_data.size) + 452] = block.timestamp
            mem[(32 * _3188) + ceil32(return_data.size) + 388] = 160
            mem[(32 * _3188) + ceil32(return_data.size) + 484] = 2
            mem[(32 * _3188) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 5000 * ext_call.return_data[0] / 10000, 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _3188) + ceil32(return_data.size) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _3188) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _3188) + (2 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _9469 = mem[(32 * _3188) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32
            require mem[(32 * _3188) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 <= 4294967296
            require mem[(32 * _3188) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _3188) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + (32 * _3188) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _3188) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + (32 * mem[mem[(32 * _3188) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + (32 * _3188) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
            mem[(32 * _3188) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _3188) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + (32 * _3188) + ceil32(return_data.size) + 320]
            _9519 = mem[_9469 + (32 * _3188) + ceil32(return_data.size) + 320]
            mem[(32 * _3188) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_9469 + (32 * _3188) + ceil32(return_data.size) + 320])] = mem[_9469 + (32 * _3188) + ceil32(return_data.size) + 352 len floor32(mem[_9469 + (32 * _3188) + ceil32(return_data.size) + 320])]
            require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
            staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xaafd2577fb67366d3c89db0d627c49d769ee2e5d)
            staticcall 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _9519) + (32 * _3188) + (2 * ceil32(return_data.size)) + 453 len 31]
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], 0, ext_call.return_data[0] * sl / 10000, address(this.address), block.timestamp
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _9519) + (32 * _3188) + (2 * ceil32(return_data.size)) + 453 len 31]
                if not ext_call.return_data[0]:
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sl / 10000, 0, address(this.address), block.timestamp
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * sl / ext_call.return_data[0] != sl:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _9519) + (32 * _3188) + (2 * ceil32(return_data.size)) + 453 len 31]
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sl / 10000, ext_call.return_data[0] * sl / 10000, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(0x360c233a63314b2b75cf0172e63b489bcea8e4b4)
    staticcall 0x360c233a63314b2b75cf0172e63b489bcea8e4b4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2)
    call 0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2.stake(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
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
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, arg1) >> 32
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor6)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), arg1
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor6):
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
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) >> 32
            mem[324 len 0] = 0
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor6)
                 gas gas_remaining wei
                args Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), arg1 - (arg1 * withdrawalFee / 10000)
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor6):
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
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x360c233a63314b2b75cf0172e63b489bcea8e4b4)
        staticcall 0x360c233a63314b2b75cf0172e63b489bcea8e4b4.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(0x360c233a63314b2b75cf0172e63b489bcea8e4b4)
        staticcall 0x360c233a63314b2b75cf0172e63b489bcea8e4b4.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not Mask(112, 0, ext_call.return_data[0]):
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                require ext_code.size(0x360c233a63314b2b75cf0172e63b489bcea8e4b4)
                staticcall 0x360c233a63314b2b75cf0172e63b489bcea8e4b4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2)
                if 0 <= ext_call.return_data[0]:
                    call 0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[32 len 64], 0, 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[96] = 2
                    mem[128] = 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d
                    mem[160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                    require ext_code.size(0xaafd2577fb67366d3c89db0d627c49d769ee2e5d)
                    staticcall 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = ext_call.return_data[0]
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1187 = mem[192 len 4], ext_call.return_data[0 len 28]
                    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                    _1225 = mem[_1187 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1187 + 192])] = mem[_1187 + 224 len floor32(mem[_1187 + 192])]
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
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _1225) + ceil32(return_data.size) + 494 len 26]
                        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _1225) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
                        mem[(32 * _1225) + ceil32(return_data.size) + 452 len 0] = 0
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1225) + ceil32(return_data.size) + 452 len 4]
                    else:
                        require ext_call.return_data[0]
                        if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _1225) + ceil32(return_data.size) + 325 len 31]
                        if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _1225) + ceil32(return_data.size) + 494 len 26]
                        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _1225) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) >> 32
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) << 224, mem[(32 * _1225) + ceil32(return_data.size) + 452 len 4]
                    require return_data.size
                    mem[(32 * _1225) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1225) + ceil32(return_data.size) + 420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1225) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
                else:
                    call 0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[32 len 64], ext_call.return_data[28 len 4], 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[96] = 2
                    mem[128] = 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d
                    mem[160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                    require ext_code.size(0xaafd2577fb67366d3c89db0d627c49d769ee2e5d)
                    staticcall 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = ext_call.return_data[0]
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1189 = mem[192 len 4], ext_call.return_data[0 len 28]
                    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                    _1226 = mem[_1189 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1189 + 192])] = mem[_1189 + 224 len floor32(mem[_1189 + 192])]
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
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _1226) + ceil32(return_data.size) + 494 len 26]
                        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _1226) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
                        mem[(32 * _1226) + ceil32(return_data.size) + 452 len 0] = 0
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1226) + ceil32(return_data.size) + 452 len 4]
                    else:
                        require ext_call.return_data[0]
                        if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _1226) + ceil32(return_data.size) + 325 len 31]
                        if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _1226) + ceil32(return_data.size) + 494 len 26]
                        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _1226) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) >> 32
                        mem[(32 * _1226) + ceil32(return_data.size) + 452 len 0] = 0
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) << 224, mem[(32 * _1226) + ceil32(return_data.size) + 452 len 4]
                    require return_data.size
                    mem[(32 * _1226) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1226) + ceil32(return_data.size) + 420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1226) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
            else:
                require 0 / ext_call.return_data[0]
                if (arg1 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != arg1 - ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(0x360c233a63314b2b75cf0172e63b489bcea8e4b4)
                staticcall 0x360c233a63314b2b75cf0172e63b489bcea8e4b4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2)
                if (arg1 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) <= ext_call.return_data[0]:
                    call 0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((arg1 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[32 len 64], uint32((arg1 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0])), 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[96] = 2
                    mem[128] = 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d
                    mem[160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                    require ext_code.size(0xaafd2577fb67366d3c89db0d627c49d769ee2e5d)
                    staticcall 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = ext_call.return_data[0]
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1183 = mem[192 len 4], ext_call.return_data[0 len 28]
                    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                    _1223 = mem[_1183 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1183 + 192])] = mem[_1183 + 224 len floor32(mem[_1183 + 192])]
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
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _1223) + ceil32(return_data.size) + 494 len 26]
                        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _1223) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
                        mem[(32 * _1223) + ceil32(return_data.size) + 452 len 0] = 0
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1223) + ceil32(return_data.size) + 452 len 4]
                    else:
                        require ext_call.return_data[0]
                        if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _1223) + ceil32(return_data.size) + 325 len 31]
                        if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _1223) + ceil32(return_data.size) + 494 len 26]
                        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _1223) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) >> 32
                        mem[(32 * _1223) + ceil32(return_data.size) + 452 len 0] = 0
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) << 224, mem[(32 * _1223) + ceil32(return_data.size) + 452 len 4]
                    require return_data.size
                    mem[(32 * _1223) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1223) + ceil32(return_data.size) + 420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1223) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
                else:
                    call 0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[32 len 64], ext_call.return_data[28 len 4], 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[96] = 2
                    mem[128] = 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d
                    mem[160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                    require ext_code.size(0xaafd2577fb67366d3c89db0d627c49d769ee2e5d)
                    staticcall 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = ext_call.return_data[0]
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1185 = mem[192 len 4], ext_call.return_data[0 len 28]
                    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                    _1224 = mem[_1185 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1185 + 192])] = mem[_1185 + 224 len floor32(mem[_1185 + 192])]
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
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _1224) + ceil32(return_data.size) + 494 len 26]
                        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _1224) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
                        mem[(32 * _1224) + ceil32(return_data.size) + 452 len 0] = 0
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1224) + ceil32(return_data.size) + 452 len 4]
                    else:
                        require ext_call.return_data[0]
                        if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _1224) + ceil32(return_data.size) + 325 len 31]
                        if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _1224) + ceil32(return_data.size) + 494 len 26]
                        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _1224) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) >> 32
                        mem[(32 * _1224) + ceil32(return_data.size) + 452 len 0] = 0
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) << 224, mem[(32 * _1224) + ceil32(return_data.size) + 452 len 4]
                    require return_data.size
                    mem[(32 * _1224) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1224) + ceil32(return_data.size) + 420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1224) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
        else:
            require Mask(112, 0, ext_call.return_data[0])
            if 2 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                require ext_code.size(0x360c233a63314b2b75cf0172e63b489bcea8e4b4)
                staticcall 0x360c233a63314b2b75cf0172e63b489bcea8e4b4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2)
                if 0 <= ext_call.return_data[0]:
                    call 0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[32 len 64], 0, 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[96] = 2
                    mem[128] = 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d
                    mem[160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                    require ext_code.size(0xaafd2577fb67366d3c89db0d627c49d769ee2e5d)
                    staticcall 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = ext_call.return_data[0]
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1179 = mem[192 len 4], ext_call.return_data[0 len 28]
                    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                    _1221 = mem[_1179 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1179 + 192])] = mem[_1179 + 224 len floor32(mem[_1179 + 192])]
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
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _1221) + ceil32(return_data.size) + 494 len 26]
                        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _1221) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
                        mem[(32 * _1221) + ceil32(return_data.size) + 452 len 0] = 0
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1221) + ceil32(return_data.size) + 452 len 4]
                    else:
                        require ext_call.return_data[0]
                        if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _1221) + ceil32(return_data.size) + 325 len 31]
                        if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _1221) + ceil32(return_data.size) + 494 len 26]
                        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _1221) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) >> 32
                        mem[(32 * _1221) + ceil32(return_data.size) + 452 len 0] = 0
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) << 224, mem[(32 * _1221) + ceil32(return_data.size) + 452 len 4]
                    require return_data.size
                    mem[(32 * _1221) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1221) + ceil32(return_data.size) + 420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1221) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
                else:
                    call 0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[32 len 64], ext_call.return_data[28 len 4], 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[96] = 2
                    mem[128] = 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d
                    mem[160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                    require ext_code.size(0xaafd2577fb67366d3c89db0d627c49d769ee2e5d)
                    staticcall 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = ext_call.return_data[0]
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1181 = mem[192 len 4], ext_call.return_data[0 len 28]
                    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                    _1222 = mem[_1181 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1181 + 192])] = mem[_1181 + 224 len floor32(mem[_1181 + 192])]
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
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _1222) + ceil32(return_data.size) + 494 len 26]
                        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _1222) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
                        mem[(32 * _1222) + ceil32(return_data.size) + 452 len 0] = 0
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1222) + ceil32(return_data.size) + 452 len 4]
                    else:
                        require ext_call.return_data[0]
                        if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _1222) + ceil32(return_data.size) + 325 len 31]
                        if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _1222) + ceil32(return_data.size) + 494 len 26]
                        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _1222) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) >> 32
                        mem[(32 * _1222) + ceil32(return_data.size) + 452 len 0] = 0
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) << 224, mem[(32 * _1222) + ceil32(return_data.size) + 452 len 4]
                    require return_data.size
                    mem[(32 * _1222) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1222) + ceil32(return_data.size) + 420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1222) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
            else:
                require 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                if (arg1 * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != arg1 - ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(0x360c233a63314b2b75cf0172e63b489bcea8e4b4)
                staticcall 0x360c233a63314b2b75cf0172e63b489bcea8e4b4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2)
                if (arg1 * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > ext_call.return_data[0]:
                    call 0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[32 len 64], ext_call.return_data[28 len 4], 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[96] = 2
                    mem[128] = 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d
                    mem[160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                    require ext_code.size(0xaafd2577fb67366d3c89db0d627c49d769ee2e5d)
                    staticcall 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = ext_call.return_data[0]
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1177 = mem[192 len 4], ext_call.return_data[0 len 28]
                    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                    _1220 = mem[_1177 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1177 + 192])] = mem[_1177 + 224 len floor32(mem[_1177 + 192])]
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
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _1220) + ceil32(return_data.size) + 494 len 26]
                        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _1220) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
                        mem[(32 * _1220) + ceil32(return_data.size) + 452 len 0] = 0
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1220) + ceil32(return_data.size) + 452 len 4]
                    else:
                        require ext_call.return_data[0]
                        if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _1220) + ceil32(return_data.size) + 325 len 31]
                        if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _1220) + ceil32(return_data.size) + 494 len 26]
                        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _1220) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) >> 32
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) << 224, mem[(32 * _1220) + ceil32(return_data.size) + 452 len 4]
                    require return_data.size
                    mem[(32 * _1220) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1220) + ceil32(return_data.size) + 420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1220) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
                else:
                    call 0xdb9e11363ecbac008b42c59b80bc25b1f1c66cb2.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((arg1 * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[32 len 64], uint32((arg1 * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])), 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[96] = 2
                    mem[128] = 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d
                    mem[160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                    require ext_code.size(0xaafd2577fb67366d3c89db0d627c49d769ee2e5d)
                    staticcall 0xaafd2577fb67366d3c89db0d627c49d769ee2e5d.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = ext_call.return_data[0]
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1175 = mem[192 len 4], ext_call.return_data[0 len 28]
                    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                    _1219 = mem[_1175 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1175 + 192])] = mem[_1175 + 224 len floor32(mem[_1175 + 192])]
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
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _1219) + ceil32(return_data.size) + 494 len 26]
                        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _1219) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
                        mem[(32 * _1219) + ceil32(return_data.size) + 452 len 0] = 0
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1219) + ceil32(return_data.size) + 452 len 4]
                    else:
                        require ext_call.return_data[0]
                        if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _1219) + ceil32(return_data.size) + 325 len 31]
                        if (ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _1219) + ceil32(return_data.size) + 494 len 26]
                        if ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _1219) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) >> 32
                        mem[(32 * _1219) + ceil32(return_data.size) + 452 len 0] = 0
                        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - ((ext_call.return_data[0] * withdrawalFee) - (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) << 224, mem[(32 * _1219) + ceil32(return_data.size) + 452 len 4]
                    require return_data.size
                    mem[(32 * _1219) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1219) + ceil32(return_data.size) + 420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1219) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
}



}
