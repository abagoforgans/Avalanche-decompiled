contract main {




// =====================  Runtime code  =====================


#
#  - doAppovals()
#
const getName = 'StrategyCurveTricryptoAvax'

const want = 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828

const performanceMax = 10000

const sub_86a8b4b5(?) = 0x58e57ca18b7a47112b877e31929798cd3d703b0f

const balanceOfWant = ext_call.return_data[0]

const withdrawalMax = 10000

const SUSHISWAP_ROUTER = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const USDC = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const CRV = 0x249848beca43ac405b8102ec90dd5f22ca513c06


address rewardAddress;
uint32 stor1;
address sub_7651b1e6Address;
uint256 stor1;
uint256 performanceFee;
uint256 withdrawalFee;
address governanceAddress;
uint32 stor5;
address controllerAddress;
uint256 stor5;
address strategistAddress;
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

function sub_7651b1e6(?) payable {
    return address(sub_7651b1e6Address)
}

function performanceFee() payable {
    return performanceFee
}

function withdrawalFee() payable {
    return withdrawalFee
}

function controller() payable {
    return address(controllerAddress)
}

function _fallback() payable {
    revert
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

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    address(controllerAddress) = arg1
}

function balanceOfPool() payable {
    require ext_code.size(address(sub_7651b1e6Address))
    staticcall address(sub_7651b1e6Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function deposit() payable {
    require ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828)
    staticcall 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_7651b1e6Address))
    call address(sub_7651b1e6Address).0xb6b55f25 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(address(sub_7651b1e6Address))
    staticcall address(sub_7651b1e6Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828)
    staticcall 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.0x70a08231 with:
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
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828 == arg1:
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
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor5)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
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
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(address(sub_7651b1e6Address))
    staticcall address(sub_7651b1e6Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_7651b1e6Address))
    call address(sub_7651b1e6Address).0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828)
    staticcall 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).vaults(address rg1) with:
            gas gas_remaining wei
           args 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, '!vault'
    mem[132] = ext_call.return_data[12 len 20]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
    call 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.mem[160 len 4] with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, ext_call.return_data[12 len 20], ext_call.return_data[0]
        if not 0, mem[132 len 28]:
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
    require ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828)
    staticcall 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_7651b1e6Address))
    call address(sub_7651b1e6Address).claim_rewards() with:
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
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x58e57ca18b7a47112b877e31929798cd3d703b0f)
    call 0x58e57ca18b7a47112b877e31929798cd3d703b0f.add_liquidity(uint256[5] rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[0], 0, 0, 0 >> 1024, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828)
    staticcall 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.0x70a08231 with:
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
    require ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828)
    staticcall 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_7651b1e6Address))
    call address(sub_7651b1e6Address).0xb6b55f25 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setGauge(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    require ext_code.size(address(sub_7651b1e6Address))
    staticcall address(sub_7651b1e6Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_7651b1e6Address))
    call address(sub_7651b1e6Address).0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), 0
    mem[324 len 0] = 0
    call 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828 with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), 0
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor1):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        address(sub_7651b1e6Address) = arg1
        require ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828)
        staticcall 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(sub_7651b1e6Address)
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
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(sub_7651b1e6Address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828 with:
           funct uint32(stor1)
             gas gas_remaining wei
            args -1, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), 0
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor1):
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
        if return_data.size <= 0:
            address(sub_7651b1e6Address) = arg1
            require ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828)
            staticcall 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(sub_7651b1e6Address)
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
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(sub_7651b1e6Address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828 with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), 0
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor1):
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
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            address(sub_7651b1e6Address) = arg1
            require ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828)
            staticcall 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(sub_7651b1e6Address)
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
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(sub_7651b1e6Address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828 with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), 0
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor1):
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
    require ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828)
    staticcall 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_7651b1e6Address))
    call address(sub_7651b1e6Address).0xb6b55f25 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828)
    staticcall 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if not arg1:
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[132] = ext_call.return_data[12 len 20]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, arg1) >> 32
            call 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.mem[160 len 4] with:
                 gas gas_remaining wei
                args arg1, 0, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, ext_call.return_data[12 len 20], arg1
                if not 0, mem[132 len 28]:
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
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if arg1 * withdrawalFee / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[132] = ext_call.return_data[12 len 20]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) >> 32
            mem[324 len 0] = 0
            call 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.mem[160 len 4] with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, ext_call.return_data[12 len 20], arg1 - (arg1 * withdrawalFee / 10000)
                if not 0, mem[132 len 28]:
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
        require ext_code.size(address(sub_7651b1e6Address))
        staticcall address(sub_7651b1e6Address).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_7651b1e6Address))
        if arg1 - ext_call.return_data[0] <= ext_call.return_data[0]:
            call address(sub_7651b1e6Address).0x2e1a7d4d with:
                 gas gas_remaining wei
                args (arg1 - ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 < arg1 - ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not arg1:
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address rg1) with:
                        gas gas_remaining wei
                       args 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '!vault'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[132] = ext_call.return_data[12 len 20]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, arg1) >> 32
                mem[324 len 0] = 0
                call 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.mem[160 len 4] with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, ext_call.return_data[12 len 20], arg1
                    if not 0, mem[132 len 28]:
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
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address rg1) with:
                        gas gas_remaining wei
                       args 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '!vault'
                if arg1 * withdrawalFee / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[132] = ext_call.return_data[12 len 20]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) >> 32
                call 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.mem[160 len 4] with:
                     gas gas_remaining wei
                    args arg1 - (arg1 * withdrawalFee / 10000), 0, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, ext_call.return_data[12 len 20], arg1 - (arg1 * withdrawalFee / 10000)
                    if not 0, mem[132 len 28]:
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
            staticcall address(sub_7651b1e6Address).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sub_7651b1e6Address))
            call address(sub_7651b1e6Address).0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not uint255(ext_call.return_data[0]):
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address rg1) with:
                        gas gas_remaining wei
                       args 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '!vault'
                if 0 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[132] = ext_call.return_data[12 len 20]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 31, ext_call.return_data[0]) >> 31
                call 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.mem[160 len 4] with:
                     gas gas_remaining wei
                    args 2 * ext_call.return_data[0], 0, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, ext_call.return_data[12 len 20], 2 * ext_call.return_data[0]
                    if not 0, mem[132 len 28]:
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
                require 2 * ext_call.return_data[0]
                if (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 2 * ext_call.return_data[0] != withdrawalFee:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address rg1) with:
                        gas gas_remaining wei
                       args 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '!vault'
                if (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[132] = ext_call.return_data[12 len 20]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(0x1dab6560494b04473a0be3e7d83cf3fdf3a51828) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) >> 32
                call 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828.mem[160 len 4] with:
                     gas gas_remaining wei
                    args (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000), 0, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    ext_call.return_data[12 len 20],
                                    (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)
                    if not 0, mem[132 len 28]:
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
}



}
