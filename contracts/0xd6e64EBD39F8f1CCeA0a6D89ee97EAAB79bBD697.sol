contract main {




// =====================  Runtime code  =====================


#
#  - withdrawFromSP(uint256 arg1)
#  - sub_768cc575(?)
#  - sub_78c77a24(?)
#  - sub_8d561b39(?)
#  - sub_a7a24edd(?)
#
const DECIMAL_PRECISION = 10^18

const NAME = 'StabilityPool'

const SCALE_FACTOR = 10^9


address stor0;
address stor50;
address stor51;
mapping of uint256 stor99;
uint256 stor150;
address stor200;
address stor201;
address stor202;
address stor203;
address stor204;
address stor205;
uint256 totalYUSDDeposits;
array of struct stor207;
array of struct collateral;
mapping of uint256 deposits;
mapping of struct depositSnapshots;
uint256 P;
uint128 currentScale;
uint128 currentEpoch; offset 128
mapping of uint256 sub_7ee4196b;
mapping of uint256 epochToScaleToG;
uint256 sub_19caf0d4;
array of uint256 sub_be35d3bd;
uint256 sub_f769e896;
uint8 stor218;
array of uint256 stor37599703682966249818443462190625314388849402233380234756306922391662002376854;
array of address stor78124409783719932406374152597529114957380397136489353056513409383928196874025;
array of uint256 stor105214450597916789452200673906107145187153736981567882595921507622676379323339;

function sub_19caf0d4(?) payable {
    return sub_19caf0d4
}

function currentEpoch() payable {
    return currentEpoch
}

function sub_7ee4196b(?) payable {
    require calldata.size - 4 >= 96
    return sub_7ee4196b[arg1][arg2][arg3]
}

function epochToScaleToG(uint128 arg1, uint128 arg2) payable {
    require calldata.size - 4 >= 64
    return epochToScaleToG[arg1][arg2]
}

function depositSnapshots(address arg1) payable {
    require calldata.size - 4 >= 32
    return depositSnapshots[arg1].field_256, 
           depositSnapshots[arg1].field_512,
           uint128(depositSnapshots[arg1].field_768),
           uint128(depositSnapshots[arg1].field_896)
}

function P() payable {
    return P
}

function getCollateral(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.getIndex(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < collateral.length
    return collateral[ext_call.return_data[0]].field_0
}

function currentScale() payable {
    return currentScale
}

function getTotalYUSDDeposits() payable {
    return totalYUSDDeposits
}

function sub_be35d3bd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_be35d3bd.length
    return sub_be35d3bd[arg1]
}

function sub_c5e1c9c3(?) payable {
    require calldata.size - 4 >= 64
    return depositSnapshots[address(arg1)][address(arg2)].field_0
}

function sub_f769e896(?) payable {
    return sub_f769e896
}

function deposits(address arg1) payable {
    require calldata.size - 4 >= 32
    return deposits[arg1]
}

function _fallback() payable {
    revert
}

function sub_ec0d5e0c(?) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'WFC'
    sub_be35d3bd.length++
    stor5320[stor216.length] = 0
    stor207.length++
    storACB8[stor207.length] = arg1
    collateral.length++
    storE89D[stor208.length] = 0
}

function getEntireSystemColl() payable {
    require ext_code.size(stor50)
    staticcall stor50.0x651340c4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getEntireSystemDebt() payable {
    require ext_code.size(stor50)
    staticcall stor50.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor51)
    staticcall stor51.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add overflow'
    return (2 * ext_call.return_data[0])
}

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8) payable {
    require calldata.size - 4 >= 256
    if stor218:
        revert with 0, 'Addresses already set'
    stor218 = 1
    if stor150:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x775265656e7472616e637947756172645570677261646561626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                    mem[223 len 5]
    stor150 = 1
    stor201 = arg1
    stor202 = arg2
    stor50 = arg3
    stor203 = arg4
    stor205 = arg5
    stor204 = arg6
    stor0 = arg7
    P = 10^18
    stor200 = arg8
}

function sub_4542c2ef(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor204)
    staticcall stor204.getRewardRate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalYUSDDeposits:
        if not ext_call.return_data[0]:
            return 0
        if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
            revert with 0, 'mul overflow'
        return (arg2 * ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if not totalYUSDDeposits:
            revert with 0, 'div by 0'
        return (0 / totalYUSDDeposits)
    if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
        revert with 0, 'mul overflow'
    if not arg2 * ext_call.return_data[0]:
        if not totalYUSDDeposits:
            revert with 0, 'div by 0'
        return (0 / totalYUSDDeposits)
    if arg1 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] != arg1:
        revert with 0, 'mul overflow'
    if not totalYUSDDeposits:
        revert with 0, 'div by 0'
    return (arg1 * arg2 * ext_call.return_data[0] / totalYUSDDeposits)
}

function sub_c6ba0936(?) payable {
    if stor207.length:
        mem[128] = address(stor207.field_0)
        idx = 128
        s = 0
        while (32 * stor207.length) + 96 > idx:
            mem[idx + 32] = address(stor207[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    if collateral.length:
        mem[(32 * stor207.length) + 160] = uint256(collateral.field_0)
        idx = (32 * stor207.length) + 160
        s = 0
        while (32 * stor207.length) + (32 * collateral.length) + 128 > idx:
            mem[idx + 32] = collateral[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor207.length) + (32 * collateral.length) + 256 len floor32(stor207.length)] = mem[128 len floor32(stor207.length)]
    mem[(64 * stor207.length) + (32 * collateral.length) + 256] = collateral.length
    mem[(64 * stor207.length) + (32 * collateral.length) + 288 len floor32(collateral.length)] = mem[(32 * stor207.length) + 160 len floor32(collateral.length)]
    return Array(len=stor207.length, data=mem[128 len floor32(stor207.length)], mem[(32 * stor207.length) + (32 * collateral.length) + floor32(stor207.length) + 256 len (32 * stor207.length) + (32 * collateral.length) + -floor32(stor207.length) + 32]), 
           (32 * stor207.length) + 96
}

function sub_01d40b63(?) payable {
    if stor207.length:
        mem[192] = address(stor207.field_0)
        idx = 192
        s = 0
        while (32 * stor207.length) + 192 > idx + 32:
            mem[idx + 32] = address(stor207[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    if collateral.length:
        mem[(32 * stor207.length) + 224] = uint256(collateral.field_0)
        idx = (32 * stor207.length) + 224
        s = 0
        while (32 * stor207.length) + (32 * collateral.length) + 192 > idx:
            mem[idx + 32] = collateral[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor207.length) + (32 * collateral.length) + 324 len floor32(stor207.length)] = mem[192 len floor32(stor207.length)]
    mem[(64 * stor207.length) + (32 * collateral.length) + 324] = collateral.length
    mem[(64 * stor207.length) + (32 * collateral.length) + 356 len floor32(collateral.length)] = mem[(32 * stor207.length) + 224 len floor32(collateral.length)]
    require ext_code.size(stor0)
    staticcall stor0.0x97a4b9f7 with:
            gas gas_remaining wei
           args Array(len=stor207.length, data=mem[192 len floor32(stor207.length)], mem[(32 * stor207.length) + (32 * collateral.length) + floor32(stor207.length) + 324 len (32 * stor207.length) + (32 * collateral.length) + -floor32(stor207.length) + 32]), (32 * stor207.length) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f7094b0b(?) payable {
    require calldata.size - 4 >= 32
    if not deposits[address(arg1)]:
        return 0
    if depositSnapshots[address(arg1)].field_512 > epochToScaleToG[uint128(stor210[address(arg1)].field_768)][uint128(stor210[address(arg1)].field_768)]:
        revert with 0, 'sub overflow'
    if uint128(uint128(depositSnapshots[address(arg1)].field_768) + 1) < uint128(depositSnapshots[address(arg1)].field_768):
        revert with 0, 32, 34, 0x6459657469536166654d6174683132383a206164646974696f6e206f766572666c6f, mem[262 len 30]
    if epochToScaleToG[uint128(stor210[address(arg1)].field_768)][uint128(stor210[address(arg1)].field_768) + 1 << 128] / 10^9 < 0:
        revert with 0, 'add overflow'
    if not deposits[address(arg1)]:
        if not depositSnapshots[address(arg1)].field_256:
            revert with 0, 'div by 0'
        return (0 / depositSnapshots[address(arg1)].field_256 / 10^18)
    if (epochToScaleToG[uint128(stor210[address(arg1)].field_768)][uint128(stor210[address(arg1)].field_768) + 1 << 128] / 10^9 * deposits[address(arg1)]) + (epochToScaleToG[uint128(stor210[address(arg1)].field_768)][uint128(stor210[address(arg1)].field_768)] * deposits[address(arg1)]) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)]) / deposits[address(arg1)] != (epochToScaleToG[uint128(stor210[address(arg1)].field_768)][uint128(stor210[address(arg1)].field_768) + 1 << 128] / 10^9) + epochToScaleToG[uint128(stor210[address(arg1)].field_768)][uint128(stor210[address(arg1)].field_768)] - depositSnapshots[address(arg1)].field_512:
        revert with 0, 'mul overflow'
    if not depositSnapshots[address(arg1)].field_256:
        revert with 0, 'div by 0'
    return ((epochToScaleToG[uint128(stor210[address(arg1)].field_768)][uint128(stor210[address(arg1)].field_768) + 1 << 128] / 10^9 * deposits[address(arg1)]) + (epochToScaleToG[uint128(stor210[address(arg1)].field_768)][uint128(stor210[address(arg1)].field_768)] * deposits[address(arg1)]) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)]) / depositSnapshots[address(arg1)].field_256 / 10^18)
}

function getCompoundedYUSDDeposit(address arg1) payable {
    require calldata.size - 4 >= 32
    if deposits[address(arg1)]:
        if uint128(depositSnapshots[address(arg1)].field_896) >= currentEpoch:
            if uint128(depositSnapshots[address(arg1)].field_768) > currentScale:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7359657469536166654d6174683132383a207375627472616374696f6e206f766572666c6f,
                            mem[201 len 27]
            if not uint128(currentScale - uint128(depositSnapshots[address(arg1)].field_768)):
                if not deposits[address(arg1)]:
                    if not depositSnapshots[address(arg1)].field_256:
                        revert with 0, 'div by 0'
                    if 0 / depositSnapshots[address(arg1)].field_256 >= deposits[address(arg1)] / 10^9:
                        return (0 / depositSnapshots[address(arg1)].field_256)
                else:
                    if P * deposits[address(arg1)] / deposits[address(arg1)] != P:
                        revert with 0, 'mul overflow'
                    if not depositSnapshots[address(arg1)].field_256:
                        revert with 0, 'div by 0'
                    if P * deposits[address(arg1)] / depositSnapshots[address(arg1)].field_256 >= deposits[address(arg1)] / 10^9:
                        return (P * deposits[address(arg1)] / depositSnapshots[address(arg1)].field_256)
            else:
                if 1 == uint128(currentScale - uint128(depositSnapshots[address(arg1)].field_768)):
                    if not deposits[address(arg1)]:
                        if not depositSnapshots[address(arg1)].field_256:
                            revert with 0, 'div by 0'
                        if 0 / depositSnapshots[address(arg1)].field_256 / 10^9 >= deposits[address(arg1)] / 10^9:
                            return (0 / depositSnapshots[address(arg1)].field_256 / 10^9)
                    else:
                        if P * deposits[address(arg1)] / deposits[address(arg1)] != P:
                            revert with 0, 'mul overflow'
                        if not depositSnapshots[address(arg1)].field_256:
                            revert with 0, 'div by 0'
                        if P * deposits[address(arg1)] / depositSnapshots[address(arg1)].field_256 / 10^9 >= deposits[address(arg1)] / 10^9:
                            return (P * deposits[address(arg1)] / depositSnapshots[address(arg1)].field_256 / 10^9)
            return 0
        else:
            return 0
    else:
        return 0
}

function sub_792b50e3(?) payable {
    require calldata.size - 4 >= 32
    if not deposits[address(arg1)]:
        return 64, 96, 0, 0
    mem[0] = arg1
    mem[32] = 210
    mem[96] = 0x9d6aea0a00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.getValidCollateral() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _10 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _18 = mem[_10 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_10 + 96])] = mem[_10 + 128 len floor32(mem[_10 + 96])]
    _134 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    mem[(32 * _18) + ceil32(return_data.size) + 128] = mem[ceil32(return_data.size) + 96]
    mem[64] = (32 * _18) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 96]) + 160
    if not mem[ceil32(return_data.size) + 96]:
        idx = 0
        while idx < _134:
            require idx < mem[ceil32(return_data.size) + 96]
            _258 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _260 = sha3(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20], sha3(address(arg1), 210))
            _262 = sha3(uint128(depositSnapshots[address(arg1)].field_768), sha3(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20], 213))
            mem[0] = uint128(depositSnapshots[address(arg1)].field_768)
            mem[32] = sha3(uint128(depositSnapshots[address(arg1)].field_768), sha3(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20], 213))
            _271 = mem[64]
            mem[64] = mem[64] + 64
            mem[_271] = 12
            mem[_271 + 32] = 'sub overflow'
            if stor[_260] > stor[_262][uint128(stor210[address(arg1)].field_768)]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                mem[mem[64] + 68] = 'sub overflow'
                idx = 32
                while idx < 12:
                    mem[idx + mem[64] + 68] = mem[idx + _271 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'sub overflow'
            if uint128(uint128(depositSnapshots[address(arg1)].field_768) + 1) < uint128(depositSnapshots[address(arg1)].field_768):
                revert with 0, 32, 34, 0x6459657469536166654d6174683132383a206164646974696f6e206f766572666c6f, mem[mem[64] + 102 len 30]
            mem[0] = uint128(uint128(depositSnapshots[address(arg1)].field_768) + 1)
            mem[32] = sha3(uint128(depositSnapshots[address(arg1)].field_768), sha3(address(_258), 213))
            _318 = mem[64]
            mem[64] = mem[64] + 64
            mem[_318] = 8
            mem[_318 + 32] = 'div by 0'
            if sub_7ee4196b[address(_258)][uint128(stor210[address(arg1)].field_768)][uint128(stor210[address(arg1)].field_768) + 1 << 128] / 10^9 < 0:
                revert with 0, 'add overflow'
            if not deposits[address(arg1)]:
                _328 = mem[64]
                mem[64] = mem[64] + 64
                mem[_328] = 8
                mem[_328 + 32] = 'div by 0'
                if depositSnapshots[address(arg1)].field_256:
                    _354 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_354] = 8
                    mem[_354 + 32] = 'div by 0'
                    require idx < mem[(32 * _18) + ceil32(return_data.size) + 128]
                    mem[(32 * idx) + (32 * _18) + ceil32(return_data.size) + 160] = 0 / depositSnapshots[address(arg1)].field_256 / 10^18
                    idx = idx + 1
                    continue 
                _332 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 8
                idx = 0
                while idx < 8:
                    mem[idx + _332 + 68] = mem[idx + _328 + 32]
                    idx = idx + 32
                    continue 
                mem[_332 + 68] = mem[_332 + 92 len 8]
                revert with memory
                  from mem[64]
                   len _332 + -mem[64] + 100
            if (sub_7ee4196b[address(_258)][uint128(stor210[address(arg1)].field_768)][uint128(stor210[address(arg1)].field_768) + 1 << 128] / 10^9 * deposits[address(arg1)]) + (stor[_262][uint128(stor210[address(arg1)].field_768)] * deposits[address(arg1)]) - (stor[_260] * deposits[address(arg1)]) / deposits[address(arg1)] != (sub_7ee4196b[address(_258)][uint128(stor210[address(arg1)].field_768)][uint128(stor210[address(arg1)].field_768) + 1 << 128] / 10^9) + stor[_262][uint128(stor210[address(arg1)].field_768)] - stor[_260]:
                revert with 0, 'mul overflow'
            _330 = mem[64]
            mem[64] = mem[64] + 64
            mem[_330] = 8
            mem[_330 + 32] = 'div by 0'
            if depositSnapshots[address(arg1)].field_256:
                _360 = mem[64]
                mem[64] = mem[64] + 64
                mem[_360] = 8
                mem[_360 + 32] = 'div by 0'
                require idx < mem[(32 * _18) + ceil32(return_data.size) + 128]
                mem[(32 * idx) + (32 * _18) + ceil32(return_data.size) + 160] = (sub_7ee4196b[address(_258)][uint128(stor210[address(arg1)].field_768)][uint128(stor210[address(arg1)].field_768) + 1 << 128] / 10^9 * deposits[address(arg1)]) + (stor[_262][uint128(stor210[address(arg1)].field_768)] * deposits[address(arg1)]) - (stor[_260] * deposits[address(arg1)]) / depositSnapshots[address(arg1)].field_256 / 10^18
                idx = idx + 1
                continue 
            _338 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 8
            idx = 0
            while idx < 8:
                mem[idx + _338 + 68] = mem[idx + _330 + 32]
                idx = idx + 32
                continue 
            mem[_338 + 68] = mem[_338 + 92 len 8]
            revert with memory
              from mem[64]
               len _338 + -mem[64] + 100
        _268 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        _270 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 96 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        mem[mem[64] + 32] = (32 * _270) + 96
        mem[(32 * _270) + _268 + 96] = mem[(32 * _18) + ceil32(return_data.size) + 128]
        _369 = mem[(32 * _18) + ceil32(return_data.size) + 128]
        mem[(32 * _270) + _268 + 128 len floor32(mem[(32 * _18) + ceil32(return_data.size) + 128])] = mem[(32 * _18) + ceil32(return_data.size) + 160 len floor32(mem[(32 * _18) + ceil32(return_data.size) + 128])]
        return memory
          from mem[64]
           len (32 * _369) + (32 * _270) + _268 + -mem[64] + 128
    mem[(32 * _18) + ceil32(return_data.size) + 160 len 32 * mem[ceil32(return_data.size) + 96]] = call.data[calldata.size len 32 * mem[ceil32(return_data.size) + 96]]
    idx = 0
    while idx < _134:
        require idx < mem[ceil32(return_data.size) + 96]
        _259 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _264 = sha3(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20], sha3(address(arg1), 210))
        _266 = sha3(uint128(depositSnapshots[address(arg1)].field_768), sha3(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20], 213))
        mem[0] = uint128(depositSnapshots[address(arg1)].field_768)
        mem[32] = sha3(uint128(depositSnapshots[address(arg1)].field_768), sha3(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20], 213))
        _275 = mem[64]
        mem[64] = mem[64] + 64
        mem[_275] = 12
        mem[_275 + 32] = 'sub overflow'
        if stor[_264] > stor[_266][uint128(stor210[address(arg1)].field_768)]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 12
            mem[mem[64] + 68] = 'sub overflow'
            idx = 32
            while idx < 12:
                mem[idx + mem[64] + 68] = mem[idx + _275 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'sub overflow'
        if uint128(uint128(depositSnapshots[address(arg1)].field_768) + 1) < uint128(depositSnapshots[address(arg1)].field_768):
            revert with 0, 32, 34, 0x6459657469536166654d6174683132383a206164646974696f6e206f766572666c6f, mem[mem[64] + 102 len 30]
        mem[0] = uint128(uint128(depositSnapshots[address(arg1)].field_768) + 1)
        mem[32] = sha3(uint128(depositSnapshots[address(arg1)].field_768), sha3(address(_259), 213))
        _319 = mem[64]
        mem[64] = mem[64] + 64
        mem[_319] = 8
        mem[_319 + 32] = 'div by 0'
        if sub_7ee4196b[address(_259)][uint128(stor210[address(arg1)].field_768)][uint128(stor210[address(arg1)].field_768) + 1 << 128] / 10^9 < 0:
            revert with 0, 'add overflow'
        if not deposits[address(arg1)]:
            _329 = mem[64]
            mem[64] = mem[64] + 64
            mem[_329] = 8
            mem[_329 + 32] = 'div by 0'
            if depositSnapshots[address(arg1)].field_256:
                _358 = mem[64]
                mem[64] = mem[64] + 64
                mem[_358] = 8
                mem[_358 + 32] = 'div by 0'
                require idx < mem[(32 * _18) + ceil32(return_data.size) + 128]
                mem[(32 * idx) + (32 * _18) + ceil32(return_data.size) + 160] = 0 / depositSnapshots[address(arg1)].field_256 / 10^18
                idx = idx + 1
                continue 
            _335 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 8
            idx = 0
            while idx < 8:
                mem[idx + _335 + 68] = mem[idx + _329 + 32]
                idx = idx + 32
                continue 
            mem[_335 + 68] = mem[_335 + 92 len 8]
            revert with memory
              from mem[64]
               len _335 + -mem[64] + 100
        if (sub_7ee4196b[address(_259)][uint128(stor210[address(arg1)].field_768)][uint128(stor210[address(arg1)].field_768) + 1 << 128] / 10^9 * deposits[address(arg1)]) + (stor[_266][uint128(stor210[address(arg1)].field_768)] * deposits[address(arg1)]) - (stor[_264] * deposits[address(arg1)]) / deposits[address(arg1)] != (sub_7ee4196b[address(_259)][uint128(stor210[address(arg1)].field_768)][uint128(stor210[address(arg1)].field_768) + 1 << 128] / 10^9) + stor[_266][uint128(stor210[address(arg1)].field_768)] - stor[_264]:
            revert with 0, 'mul overflow'
        _331 = mem[64]
        mem[64] = mem[64] + 64
        mem[_331] = 8
        mem[_331 + 32] = 'div by 0'
        if depositSnapshots[address(arg1)].field_256:
            _362 = mem[64]
            mem[64] = mem[64] + 64
            mem[_362] = 8
            mem[_362 + 32] = 'div by 0'
            require idx < mem[(32 * _18) + ceil32(return_data.size) + 128]
            mem[(32 * idx) + (32 * _18) + ceil32(return_data.size) + 160] = (sub_7ee4196b[address(_259)][uint128(stor210[address(arg1)].field_768)][uint128(stor210[address(arg1)].field_768) + 1 << 128] / 10^9 * deposits[address(arg1)]) + (stor[_266][uint128(stor210[address(arg1)].field_768)] * deposits[address(arg1)]) - (stor[_264] * deposits[address(arg1)]) / depositSnapshots[address(arg1)].field_256 / 10^18
            idx = idx + 1
            continue 
        _341 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 8
        idx = 0
        while idx < 8:
            mem[idx + _341 + 68] = mem[idx + _331 + 32]
            idx = idx + 32
            continue 
        mem[_341 + 68] = mem[_341 + 92 len 8]
        revert with memory
          from mem[64]
           len _341 + -mem[64] + 100
    _272 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
    _274 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 96 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    mem[mem[64] + 32] = (32 * _274) + 96
    mem[(32 * _274) + _272 + 96] = mem[(32 * _18) + ceil32(return_data.size) + 128]
    _375 = mem[(32 * _18) + ceil32(return_data.size) + 128]
    mem[(32 * _274) + _272 + 128 len floor32(mem[(32 * _18) + ceil32(return_data.size) + 128])] = mem[(32 * _18) + ceil32(return_data.size) + 160 len floor32(mem[(32 * _18) + ceil32(return_data.size) + 128])]
    return memory
      from mem[64]
       len (32 * _375) + (32 * _274) + _272 + -mem[64] + 128
}



}
