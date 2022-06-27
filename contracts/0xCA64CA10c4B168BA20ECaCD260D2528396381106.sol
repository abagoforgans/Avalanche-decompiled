contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const getName = 'aTriCrypto Curve Strategy'

const unirouter = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const isTendable = 0

const sub_86a8b4b5(?) = 0x58e57ca18b7a47112b877e31929798cd3d703b0f

const baseStrategyVersion = ''

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const CRV = 0x47536f17f4ff30e64a96a7555826b8f9e66ec468

const WETH = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab

const MAX_FEE = 10000

const DAI = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint8 stor51;
address governanceAddress;
address strategistAddress;
address keeperAddress;
uint8 stor154; offset 152
address wantAddress;
address lpTokenAddress;
uint256 performanceFeeGovernance;
uint256 performanceFeeStrategist;
uint256 withdrawalFee;
uint32 stor159;
address vaultAddress;
uint256 stor159;
address guardianAddress;
uint256 withdrawalMaxDeviationThreshold;

function performanceFeeGovernance() payable {
    return performanceFeeGovernance
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function guardian() payable {
    return guardianAddress
}

function performanceFeeStrategist() payable {
    return performanceFeeStrategist
}

function governance() payable {
    return governanceAddress
}

function paused() payable {
    return bool(stor51)
}

function lpToken() payable {
    return lpTokenAddress
}

function withdrawalFee() payable {
    return withdrawalFee
}

function keeper() payable {
    return keeperAddress
}

function withdrawalMaxDeviationThreshold() payable {
    return withdrawalMaxDeviationThreshold
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function getProtectedTokens() payable {
    return Array(len=1, data=wantAddress)
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    keeperAddress = arg1
}

function setGuardian(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    guardianAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    address(vaultAddress) = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    governanceAddress = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    strategistAddress = arg1
}

function unpause() payable {
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    if not stor51:
        revert with 0, 'Pausable: not paused'
    stor51 = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    if guardianAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'onlyPausers'
    if stor51:
        revert with 0, 'Pausable: paused'
    stor51 = 1
    emit Paused(msg.sender);
}

function isProtectedToken(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = wantAddress
    idx = 0
    while idx < 1:
        require idx < 1
        if arg1 != mem[(32 * idx) + 140 len 20]:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x65626173652d73747261746567792f6578636573736976652d7769746864726177616c2d6665,
                    mem[202 len 26]
    withdrawalFee = arg1
}

function setPerformanceFeeGovernance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x64626173652d73747261746567792f6578636573736976652d676f7665726e616e63652d706572666f726d616e63652d6665,
                    mem[214 len 14]
    performanceFeeGovernance = arg1
}

function setPerformanceFeeStrategist(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x6c626173652d73747261746567792f6578636573736976652d737472617465676973742d706572666f726d616e63652d6665,
                    mem[214 len 14]
    performanceFeeStrategist = arg1
}

function setWithdrawalMaxDeviationThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x77626173652d73747261746567792f6578636573736976652d6d61782d646576696174696f6e2d7468726573686f6c,
                    mem[211 len 17]
    withdrawalMaxDeviationThreshold = arg1
}

function balanceOf() payable {
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function earn() payable {
    if stor51:
        revert with 0, 'Pausable: paused'
    if keeperAddress != msg.sender:
        if governanceAddress != msg.sender:
            if address(vaultAddress) != msg.sender:
                revert with 0, 'onlyAuthorizedActorsOrVault'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(lpTokenAddress)
        call lpTokenAddress.0xb6b55f25 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function deposit() payable {
    if stor51:
        revert with 0, 'Pausable: paused'
    if keeperAddress != msg.sender:
        if governanceAddress != msg.sender:
            if address(vaultAddress) != msg.sender:
                revert with 0, 'onlyAuthorizedActorsOrVault'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(lpTokenAddress)
        call lpTokenAddress.0xb6b55f25 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdrawOther(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor51:
        revert with 0, 'Pausable: paused'
    if address(vaultAddress) != msg.sender:
        revert with 0, 'onlyVault'
    mem[128] = wantAddress
    idx = 0
    while idx < 1:
        require idx < 1
        if arg1 == mem[(32 * idx) + 140 len 20]:
            revert with 0, '_onlyNotProtectedTokens'
        idx = idx + 1
        continue 
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0 len 28]
    mem[388 len 0] = 0
    call arg1 with:
       funct uint32(stor159)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with stor154
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
    return ext_call.return_data[0]
}

function sub_84f22721(?) payable {
    if stor51:
        revert with 0, 'Pausable: paused'
    if address(vaultAddress) != msg.sender:
        revert with 0, 'onlyVault'
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lpTokenAddress)
    call lpTokenAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'not enough to transfer'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call wantAddress with:
       funct uint32(stor159)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor159):
            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return 0
}

function __BaseStrategy_init(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if stor51:
        revert with 0, 'Pausable: paused'
    if uint8(stor0.field_8):
        stor51 = 0
        governanceAddress = arg1
        strategistAddress = arg2
        keeperAddress = arg4
        address(vaultAddress) = arg3
        guardianAddress = arg5
        withdrawalMaxDeviationThreshold = 50
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            stor51 = 0
            governanceAddress = arg1
            strategistAddress = arg2
            keeperAddress = arg4
            address(vaultAddress) = arg3
            guardianAddress = arg5
            withdrawalMaxDeviationThreshold = 50
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                stor51 = 0
                governanceAddress = arg1
                strategistAddress = arg2
                keeperAddress = arg4
                address(vaultAddress) = arg3
                guardianAddress = arg5
                withdrawalMaxDeviationThreshold = 50
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    stor51 = 0
                    governanceAddress = arg1
                    strategistAddress = arg2
                    keeperAddress = arg4
                    address(vaultAddress) = arg3
                    guardianAddress = arg5
                    withdrawalMaxDeviationThreshold = 50
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    stor51 = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    governanceAddress = arg1
                    strategistAddress = arg2
                    keeperAddress = arg4
                    address(vaultAddress) = arg3
                    guardianAddress = arg5
                    withdrawalMaxDeviationThreshold = 50
                    uint8(stor0.field_8) = 0
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address[2] arg6, uint256[3] arg7) payable {
    require calldata.size - 4 >= 320
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[370 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0, 
                                32,
                                46,
                                0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[370 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
    if stor51:
        revert with 0, 'Pausable: paused'
    if uint8(stor0.field_8):
        stor51 = 0
        governanceAddress = arg1
        strategistAddress = arg2
        keeperAddress = arg4
        address(vaultAddress) = arg3
        guardianAddress = arg5
        withdrawalMaxDeviationThreshold = 50
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[370 len 18]
        if uint8(stor0.field_8):
            stor51 = 0
            governanceAddress = arg1
            strategistAddress = arg2
            keeperAddress = arg4
            address(vaultAddress) = arg3
            guardianAddress = arg5
            withdrawalMaxDeviationThreshold = 50
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0, 
                                32,
                                46,
                                0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[370 len 18]
            if uint8(stor0.field_8):
                stor51 = 0
                governanceAddress = arg1
                strategistAddress = arg2
                keeperAddress = arg4
                address(vaultAddress) = arg3
                guardianAddress = arg5
                withdrawalMaxDeviationThreshold = 50
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0, 
                                    32,
                                    46,
                                    0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[370 len 18]
                if uint8(stor0.field_8):
                    stor51 = 0
                    governanceAddress = arg1
                    strategistAddress = arg2
                    keeperAddress = arg4
                    address(vaultAddress) = arg3
                    guardianAddress = arg5
                    withdrawalMaxDeviationThreshold = 50
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    stor51 = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    governanceAddress = arg1
                    strategistAddress = arg2
                    keeperAddress = arg4
                    address(vaultAddress) = arg3
                    guardianAddress = arg5
                    withdrawalMaxDeviationThreshold = 50
                    uint8(stor0.field_8) = 0
    wantAddress = address(call.data[164])
    lpTokenAddress = address(call.data[196])
    performanceFeeGovernance = call.data[228]
    performanceFeeStrategist = call.data[260]
    withdrawalFee = call.data[292]
    require ext_code.size(address(call.data[164]))
    call address(call.data[164]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(call.data[196]), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lpTokenAddress)
    call lpTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args lpTokenAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
    call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x58e57ca18b7a47112b877e31929798cd3d703b0f, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x47536f17f4ff30e64a96a7555826b8f9e66ec468)
    call 0x47536f17f4ff30e64a96a7555826b8f9e66ec468.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor51:
        revert with 0, 'Pausable: paused'
    if address(vaultAddress) != msg.sender:
        revert with 0, 'onlyVault'
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lpTokenAddress)
    if arg1 <= ext_call.return_data[0]:
        call lpTokenAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg1:
            if 0 == withdrawalFee:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg1:
                    revert with 0, 'not enough to transfer'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), Mask(224, 32, arg1) >> 32
                call wantAddress with:
                   funct uint32(stor159)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), arg1
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor159):
                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if not arg1:
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).0x9ec5a894 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[132] = ext_call.return_data[12 len 20]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = 0, ext_call.return_data[12 len 20], 0
                    mem[324 len 0] = 0
                    call wantAddress.mem[160 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, 0, ext_call.return_data[12 len 20], 0) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, ext_call.return_data[12 len 20], 0
                        if not 0, mem[132 len 28]:
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            revert with 0, 'not enough to transfer'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                        call wantAddress with:
                           funct uint32(stor159)
                             gas gas_remaining wei
                            args arg1, mem[360 len 28], mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, ext_call.return_data[12 len 20], 0
                            if not 0, mem[132 len 28]:
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            revert with 0, 'not enough to transfer'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                        call wantAddress with:
                           funct uint32(stor159)
                             gas gas_remaining wei
                            args arg1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, ext_call.return_data[12 len 20], 0
                            if not 0, mem[132 len 28]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
                else:
                    if withdrawalFee * arg1 / arg1 != withdrawalFee:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).0x9ec5a894 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[132] = ext_call.return_data[12 len 20]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, withdrawalFee * arg1 / 10000) >> 32
                    call wantAddress.mem[160 len 4] with:
                         gas gas_remaining wei
                        args withdrawalFee * arg1 / 10000, 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                        if not 0, mem[132 len 28]:
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            revert with 0, 'not enough to transfer'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), Mask(224, 32, arg1) >> 32
                        call wantAddress with:
                           funct uint32(stor159)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                            if not 0, mem[132 len 28]:
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            revert with 0, 'not enough to transfer'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 489 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor159)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                            if not 0, mem[132 len 28]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
        else:
            if arg1 < ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            45,
                            0x64646966662f65787065637465642d6869676865722d6e756d6265722d696e2d66697273742d706f736974696f,
                            mem[209 len 19]
            if ext_call.return_data[0] > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                if arg1 - ext_call.return_data[0] > 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                53,
                                0xfe626173652d73747261746567792f77697468647261772d6578636565642d6d61782d646576696174696f6e2d7468726573686f6c,
                                mem[217 len 11]
                if ext_call.return_data[0] < arg1:
                    if 0 == withdrawalFee:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'not enough to transfer'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0 len 28]
                        call wantAddress with:
                           funct uint32(stor159)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor159):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).0x9ec5a894 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = ext_call.return_data[12 len 20]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, ext_call.return_data[12 len 20], 0
                            call wantAddress.mem[160 len 4] with:
                                 gas gas_remaining wei
                                args 0, 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], 0
                                if not 0, mem[132 len 28]:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0 len 28]
                                mem[488 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], 0
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], 0
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).0x9ec5a894 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = ext_call.return_data[12 len 20]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, withdrawalFee * ext_call.return_data[0] / 10000) >> 32
                            call wantAddress.mem[160 len 4] with:
                                 gas gas_remaining wei
                                args withdrawalFee * ext_call.return_data[0] / 10000, 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], withdrawalFee * ext_call.return_data[0] / 10000
                                if not 0, mem[132 len 28]:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], withdrawalFee * ext_call.return_data[0] / 10000
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'not enough to transfer'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 531 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0 len 28]
                                    mem[ceil32(return_data.size) + 489 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor159)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, ext_call.return_data[12 len 20], withdrawalFee * ext_call.return_data[0] / 10000
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                else:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'not enough to transfer'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 531 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor159)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, ext_call.return_data[12 len 20], withdrawalFee * ext_call.return_data[0] / 10000
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if 0 == withdrawalFee:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            revert with 0, 'not enough to transfer'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), Mask(224, 32, arg1) >> 32
                        mem[324 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor159)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), arg1
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor159):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if not arg1:
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).0x9ec5a894 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = ext_call.return_data[12 len 20]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, ext_call.return_data[12 len 20], 0
                            call wantAddress.mem[160 len 4] with:
                                 gas gas_remaining wei
                                args 0, 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], 0
                                if not 0, mem[132 len 28]:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < arg1:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), Mask(224, 32, arg1) >> 32
                                mem[488 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 224, mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], 0
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < arg1:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 489 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], 0
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                        else:
                            if withdrawalFee * arg1 / arg1 != withdrawalFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).0x9ec5a894 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = ext_call.return_data[12 len 20]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, withdrawalFee * arg1 / 10000) >> 32
                            mem[324 len 0] = 0
                            call wantAddress.mem[160 len 4] with:
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawalFee * arg1 / 10000) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                                if not 0, mem[132 len 28]:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < arg1:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args arg1, mem[360 len 28], mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < arg1:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                if withdrawalMaxDeviationThreshold * arg1 / arg1 != withdrawalMaxDeviationThreshold:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg1 - ext_call.return_data[0] > withdrawalMaxDeviationThreshold * arg1 / 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                53,
                                0xfe626173652d73747261746567792f77697468647261772d6578636565642d6d61782d646576696174696f6e2d7468726573686f6c,
                                mem[217 len 11]
                if ext_call.return_data[0] < arg1:
                    if 0 == withdrawalFee:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'not enough to transfer'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0 len 28]
                        mem[324 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor159)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor159):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).0x9ec5a894 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = ext_call.return_data[12 len 20]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, ext_call.return_data[12 len 20], 0
                            mem[324 len 0] = 0
                            call wantAddress.mem[160 len 4] with:
                                 gas gas_remaining wei
                                args Mask(480, -256, 0, ext_call.return_data[12 len 20], 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], 0
                                if not 0, mem[132 len 28]:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], 0
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], 0
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).0x9ec5a894 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = ext_call.return_data[12 len 20]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, withdrawalFee * ext_call.return_data[0] / 10000) >> 32
                            mem[324 len 0] = 0
                            call wantAddress.mem[160 len 4] with:
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawalFee * ext_call.return_data[0] / 10000) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], withdrawalFee * ext_call.return_data[0] / 10000
                                if not 0, mem[132 len 28]:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], withdrawalFee * ext_call.return_data[0] / 10000
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'not enough to transfer'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 531 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor159)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, ext_call.return_data[12 len 20], withdrawalFee * ext_call.return_data[0] / 10000
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                else:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'not enough to transfer'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 531 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor159)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, ext_call.return_data[12 len 20], withdrawalFee * ext_call.return_data[0] / 10000
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if 0 == withdrawalFee:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            revert with 0, 'not enough to transfer'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), Mask(224, 32, arg1) >> 32
                        call wantAddress with:
                           funct uint32(stor159)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), arg1
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor159):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if not arg1:
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).0x9ec5a894 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = ext_call.return_data[12 len 20]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, ext_call.return_data[12 len 20], 0
                            mem[324 len 0] = 0
                            call wantAddress.mem[160 len 4] with:
                                 gas gas_remaining wei
                                args Mask(480, -256, 0, ext_call.return_data[12 len 20], 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], 0
                                if not 0, mem[132 len 28]:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < arg1:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args arg1, mem[360 len 28], mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], 0
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < arg1:
                                        revert with 0, 'not enough to transfer'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 531 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                                    call wantAddress with:
                                       funct uint32(stor159)
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, ext_call.return_data[12 len 20], 0
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                else:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < arg1:
                                        revert with 0, 'not enough to transfer'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 531 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                                    call wantAddress with:
                                       funct uint32(stor159)
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, ext_call.return_data[12 len 20], 0
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            if withdrawalFee * arg1 / arg1 != withdrawalFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).0x9ec5a894 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = ext_call.return_data[12 len 20]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, withdrawalFee * arg1 / 10000) >> 32
                            mem[324 len 0] = 0
                            call wantAddress.mem[160 len 4] with:
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawalFee * arg1 / 10000) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                                if not 0, mem[132 len 28]:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < arg1:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args arg1, mem[360 len 28], mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < arg1:
                                        revert with 0, 'not enough to transfer'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 531 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                                    call wantAddress with:
                                       funct uint32(stor159)
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                else:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < arg1:
                                        revert with 0, 'not enough to transfer'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 531 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                                    call wantAddress with:
                                       funct uint32(stor159)
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        staticcall lpTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(lpTokenAddress)
        call lpTokenAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg1:
            if 0 == withdrawalFee:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg1:
                    revert with 0, 'not enough to transfer'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), Mask(224, 32, arg1) >> 32
                mem[324 len 0] = 0
                call wantAddress with:
                   funct uint32(stor159)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), arg1
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor159):
                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if not arg1:
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).0x9ec5a894 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[132] = ext_call.return_data[12 len 20]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = 0, ext_call.return_data[12 len 20], 0
                    mem[324 len 0] = 0
                    call wantAddress.mem[160 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, 0, ext_call.return_data[12 len 20], 0) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, ext_call.return_data[12 len 20], 0
                        if not 0, mem[132 len 28]:
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            revert with 0, 'not enough to transfer'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                        call wantAddress with:
                           funct uint32(stor159)
                             gas gas_remaining wei
                            args arg1, mem[360 len 28], mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, ext_call.return_data[12 len 20], 0
                            if not 0, mem[132 len 28]:
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < arg1:
                                revert with 0, 'not enough to transfer'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                            call wantAddress with:
                               funct uint32(stor159)
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], 0
                                if not 0, mem[132 len 28]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < arg1:
                                revert with 0, 'not enough to transfer'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                            call wantAddress with:
                               funct uint32(stor159)
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], 0
                                if not 0, mem[132 len 28]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                else:
                    if withdrawalFee * arg1 / arg1 != withdrawalFee:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).0x9ec5a894 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[132] = ext_call.return_data[12 len 20]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, withdrawalFee * arg1 / 10000) >> 32
                    call wantAddress.mem[160 len 4] with:
                         gas gas_remaining wei
                        args withdrawalFee * arg1 / 10000, 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                        if not 0, mem[132 len 28]:
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            revert with 0, 'not enough to transfer'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), Mask(224, 32, arg1) >> 32
                        call wantAddress with:
                           funct uint32(stor159)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                            if not 0, mem[132 len 28]:
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            revert with 0, 'not enough to transfer'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 489 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor159)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                            if not 0, mem[132 len 28]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
        else:
            if arg1 < ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            45,
                            0x64646966662f65787065637465642d6869676865722d6e756d6265722d696e2d66697273742d706f736974696f,
                            mem[209 len 19]
            if ext_call.return_data[0] > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                if arg1 - ext_call.return_data[0] > 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                53,
                                0xfe626173652d73747261746567792f77697468647261772d6578636565642d6d61782d646576696174696f6e2d7468726573686f6c,
                                mem[217 len 11]
                if ext_call.return_data[0] < arg1:
                    if 0 == withdrawalFee:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'not enough to transfer'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0 len 28]
                        mem[324 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor159)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor159):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if ext_call.return_data[0]:
                            if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).0x9ec5a894 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = ext_call.return_data[12 len 20]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, withdrawalFee * ext_call.return_data[0] / 10000) >> 32
                            call wantAddress.mem[160 len 4] with:
                                 gas gas_remaining wei
                                args withdrawalFee * ext_call.return_data[0] / 10000, 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], withdrawalFee * ext_call.return_data[0] / 10000
                                if not 0, mem[132 len 28]:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], withdrawalFee * ext_call.return_data[0] / 10000
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'not enough to transfer'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 531 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0 len 28]
                                    mem[ceil32(return_data.size) + 489 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor159)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, ext_call.return_data[12 len 20], withdrawalFee * ext_call.return_data[0] / 10000
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                else:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'not enough to transfer'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 531 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor159)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, ext_call.return_data[12 len 20], withdrawalFee * ext_call.return_data[0] / 10000
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).0x9ec5a894 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = ext_call.return_data[12 len 20]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, ext_call.return_data[12 len 20], 0
                            mem[324 len 0] = 0
                            call wantAddress.mem[160 len 4] with:
                                 gas gas_remaining wei
                                args Mask(480, -256, 0, ext_call.return_data[12 len 20], 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], 0
                                if not 0, mem[132 len 28]:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], 0
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'not enough to transfer'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 531 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor159)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, ext_call.return_data[12 len 20], 0
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                else:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'not enough to transfer'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 531 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor159)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, ext_call.return_data[12 len 20], 0
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                else:
                    if 0 == withdrawalFee:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            revert with 0, 'not enough to transfer'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), Mask(224, 32, arg1) >> 32
                        mem[324 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor159)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), arg1
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor159):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if not arg1:
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).0x9ec5a894 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = ext_call.return_data[12 len 20]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, ext_call.return_data[12 len 20], 0
                            call wantAddress.mem[160 len 4] with:
                                 gas gas_remaining wei
                                args 0, 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], 0
                                if not 0, mem[132 len 28]:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < arg1:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), Mask(224, 32, arg1) >> 32
                                mem[488 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 224, mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], 0
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < arg1:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 489 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], 0
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                        else:
                            if withdrawalFee * arg1 / arg1 != withdrawalFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).0x9ec5a894 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = ext_call.return_data[12 len 20]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, withdrawalFee * arg1 / 10000) >> 32
                            mem[324 len 0] = 0
                            call wantAddress.mem[160 len 4] with:
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawalFee * arg1 / 10000) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                                if not 0, mem[132 len 28]:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < arg1:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args arg1, mem[360 len 28], mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < arg1:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                if withdrawalMaxDeviationThreshold * arg1 / arg1 != withdrawalMaxDeviationThreshold:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg1 - ext_call.return_data[0] > withdrawalMaxDeviationThreshold * arg1 / 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                53,
                                0xfe626173652d73747261746567792f77697468647261772d6578636565642d6d61782d646576696174696f6e2d7468726573686f6c,
                                mem[217 len 11]
                if ext_call.return_data[0] < arg1:
                    if 0 == withdrawalFee:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'not enough to transfer'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0 len 28]
                        call wantAddress with:
                           funct uint32(stor159)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor159):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).0x9ec5a894 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = ext_call.return_data[12 len 20]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, ext_call.return_data[12 len 20], 0
                            mem[324 len 0] = 0
                            call wantAddress.mem[160 len 4] with:
                                 gas gas_remaining wei
                                args Mask(480, -256, 0, ext_call.return_data[12 len 20], 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], 0
                                if not 0, mem[132 len 28]:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], 0
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'not enough to transfer'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 531 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor159)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, ext_call.return_data[12 len 20], 0
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                else:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'not enough to transfer'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 531 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor159)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, ext_call.return_data[12 len 20], 0
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                        else:
                            if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).0x9ec5a894 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = ext_call.return_data[12 len 20]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, withdrawalFee * ext_call.return_data[0] / 10000) >> 32
                            mem[324 len 0] = 0
                            call wantAddress.mem[160 len 4] with:
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawalFee * ext_call.return_data[0] / 10000) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], withdrawalFee * ext_call.return_data[0] / 10000
                                if not 0, mem[132 len 28]:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], withdrawalFee * ext_call.return_data[0] / 10000
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], withdrawalFee * ext_call.return_data[0] / 10000
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if 0 == withdrawalFee:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            revert with 0, 'not enough to transfer'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), Mask(224, 32, arg1) >> 32
                        mem[324 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor159)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor159), uint32(stor159), arg1
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor159):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if not arg1:
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).0x9ec5a894 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = ext_call.return_data[12 len 20]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, ext_call.return_data[12 len 20], 0
                            mem[324 len 0] = 0
                            call wantAddress.mem[160 len 4] with:
                                 gas gas_remaining wei
                                args Mask(480, -256, 0, ext_call.return_data[12 len 20], 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], 0
                                if not 0, mem[132 len 28]:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < arg1:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args arg1, mem[360 len 28], mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], 0
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < arg1:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], 0
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                        else:
                            if withdrawalFee * arg1 / arg1 != withdrawalFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).0x9ec5a894 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = ext_call.return_data[12 len 20]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, withdrawalFee * arg1 / 10000) >> 32
                            mem[324 len 0] = 0
                            call wantAddress.mem[160 len 4] with:
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawalFee * arg1 / 10000) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                                if not 0, mem[132 len 28]:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < arg1:
                                    revert with 0, 'not enough to transfer'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                                call wantAddress with:
                                   funct uint32(stor159)
                                     gas gas_remaining wei
                                    args arg1, mem[360 len 28], mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < arg1:
                                        revert with 0, 'not enough to transfer'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 531 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                                    call wantAddress with:
                                       funct uint32(stor159)
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                else:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < arg1:
                                        revert with 0, 'not enough to transfer'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 531 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                                    call wantAddress with:
                                       funct uint32(stor159)
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, ext_call.return_data[12 len 20], withdrawalFee * arg1 / 10000
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
}



}
