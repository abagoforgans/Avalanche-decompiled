contract main {




// =====================  Runtime code  =====================


#
#  - reportEarning(address arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#
const MAX_BPS = 10000

const VERSION = '', 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint32 stor0;
address poolAddress; offset 16
uint256 stor0;
uint256 totalDebtRatio;
uint256 totalDebt;
array of struct strategies;
array of struct sub_62518ddf;
mapping of struct strategy;
uint256 sub_346162d5;

function pool() payable {
    return poolAddress
}

function strategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(strategy[arg1].field_0), 
           uint256(strategy[arg1].field_256),
           uint256(strategy[arg1].field_512),
           uint256(strategy[arg1].field_768),
           uint256(strategy[arg1].field_1024),
           uint256(strategy[arg1].field_1280),
           uint256(strategy[arg1].field_1536),
           uint256(strategy[arg1].field_1792),
           uint256(strategy[arg1].field_2048)
}

function totalDebtRatio() payable {
    return totalDebtRatio
}

function sub_346162d5(?) payable {
    return sub_346162d5
}

function sub_62518ddf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_62518ddf.length
    return address(sub_62518ddf[arg1].field_0)
}

function totalDebtOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(strategy[address(arg1)].field_1024)
}

function strategies(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < strategies.length
    return address(strategies[arg1].field_0)
}

function totalDebt() payable {
    return totalDebt
}

function _fallback() payable {
    revert
}

function init(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0, '', 0
    poolAddress = arg1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function updateDebtRate(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(poolAddress)
    staticcall poolAddress.isKeeper(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'not-a-keeper'
    if not strategy[address(arg1)].field_0:
        revert with 0, '', 0
    uint256(strategy[address(arg1)].field_512) = arg2
    emit UpdatedStrategyDebtParams(uint256(strategy[address(arg1)].field_1792), arg2, arg1);
}

function updateInterestFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(poolAddress)
    staticcall poolAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-the-governor'
    if not strategy[address(arg1)].field_0:
        revert with 0, '', 0
    if arg2 > 10000:
        revert with 0, '', 0
    emit 0x1a003377: uint256(strategy[address(arg1)].field_256), arg2, arg1
    uint256(strategy[address(arg1)].field_256) = arg2
}

function decreaseDebt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if poolAddress != msg.sender:
        revert with 0, 'not-a-pool'
    if uint256(strategy[address(arg1)].field_1024) < arg2:
        if uint256(strategy[address(arg1)].field_1024) < uint256(strategy[address(arg1)].field_1024):
            revert with 0, 17
        uint256(strategy[address(arg1)].field_1024) = 0
        if totalDebt < uint256(strategy[address(arg1)].field_1024):
            revert with 0, 17
        totalDebt -= uint256(strategy[address(arg1)].field_1024)
    else:
        if uint256(strategy[address(arg1)].field_1024) < arg2:
            revert with 0, 17
        uint256(strategy[address(arg1)].field_1024) -= arg2
        if totalDebt < arg2:
            revert with 0, 17
        totalDebt -= arg2
}

function getStrategies() payable {
    if strategies.length:
        mem[128] = address(strategies.field_0)
        if (32 * strategies.length) + 32 > 64:
            mem[160] = address(strategies.field_256)
            idx = 160
            s = 1
            while (32 * strategies.length) + 96 > idx:
                mem[idx + 32] = address(strategies[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * strategies.length) + 128] = 32
    mem[(32 * strategies.length) + 160] = strategies.length
    idx = 0
    s = (32 * strategies.length) + 192
    t = 128
    while idx < strategies.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * strategies.length) + 128
       len (96 * strategies.length) + 64
}

function getWithdrawQueue() payable {
    mem[64] = (32 * sub_62518ddf.length) + 128
    mem[96] = sub_62518ddf.length
    if not sub_62518ddf.length:
        mem[(32 * sub_62518ddf.length) + 128] = 32
        mem[(32 * sub_62518ddf.length) + 160] = sub_62518ddf.length
        idx = 0
        s = (32 * sub_62518ddf.length) + 192
        t = 128
        while idx < sub_62518ddf.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_62518ddf.length) + 128
           len (96 * sub_62518ddf.length) + 64
    mem[128] = address(sub_62518ddf.field_0)
    idx = 128
    s = 0
    while (32 * sub_62518ddf.length) + 96 > idx:
        mem[idx + 32] = address(sub_62518ddf[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_62518ddf.length) + 128] = 32
    mem[(32 * sub_62518ddf.length) + 160] = sub_62518ddf.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_62518ddf.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_62518ddf.length) + -mem[64] + 192
}

function excessDebt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(poolAddress)
    staticcall poolAddress.stopEverything() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        return uint256(strategy[address(arg1)].field_1024)
    require ext_code.size(poolAddress)
    staticcall poolAddress.totalValue() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint256(strategy[address(arg1)].field_1792) and ext_call.return_data[0] > -1 / uint256(strategy[address(arg1)].field_1792):
        revert with 0, 17
    if uint256(strategy[address(arg1)].field_1024) <= uint256(strategy[address(arg1)].field_1792) * ext_call.return_data[0] / 10000:
        return 0
    if uint256(strategy[address(arg1)].field_1024) < uint256(strategy[address(arg1)].field_1792) * ext_call.return_data[0] / 10000:
        revert with 0, 17
    return (uint256(strategy[address(arg1)].field_1024) - (uint256(strategy[address(arg1)].field_1792) * ext_call.return_data[0] / 10000))
}

function reportLoss(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if poolAddress != msg.sender:
        revert with 0, 'not-a-pool'
    if not strategy[address(arg1)].field_0:
        revert with 0, '', 0
    if uint256(strategy[address(arg1)].field_1024) < arg2:
        revert with 0, '', 0
    if uint256(strategy[address(arg1)].field_1280) > !arg2:
        revert with 0, 17
    uint256(strategy[address(arg1)].field_1280) += arg2
    if uint256(strategy[address(arg1)].field_1024) < arg2:
        revert with 0, 17
    uint256(strategy[address(arg1)].field_1024) -= arg2
    if totalDebt < arg2:
        revert with 0, 17
    totalDebt -= arg2
    require ext_code.size(poolAddress)
    staticcall poolAddress.totalValue() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 and 10000 > -1 / arg2:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 10000 * arg2 / ext_call.return_data[0] < uint256(strategy[address(arg1)].field_1792):
        if uint256(strategy[address(arg1)].field_1792) < 10000 * arg2 / ext_call.return_data[0]:
            revert with 0, 17
        uint256(strategy[address(arg1)].field_1792) -= 10000 * arg2 / ext_call.return_data[0]
        if totalDebtRatio < 10000 * arg2 / ext_call.return_data[0]:
            revert with 0, 17
        totalDebtRatio -= 10000 * arg2 / ext_call.return_data[0]
    else:
        if uint256(strategy[address(arg1)].field_1792) < uint256(strategy[address(arg1)].field_1792):
            revert with 0, 17
        uint256(strategy[address(arg1)].field_1792) = 0
        if totalDebtRatio < uint256(strategy[address(arg1)].field_1792):
            revert with 0, 17
        totalDebtRatio -= uint256(strategy[address(arg1)].field_1792)
}

function sub_854f4d80(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[ceil32(32 * ('cd', 4).length) + 101] = msg.sender
    require ext_code.size(poolAddress)
    staticcall poolAddress.isMaintainer(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'not-a-maintainer'
    if ('cd', 4).length != sub_62518ddf.length:
        revert with 0, '', 0
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 161
    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97] = 1
    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129] = 0x3400000000000000000000000000000000000000000000000000000000000000
    if ('cd', 4).length != strategies.length:
        revert with 0, '', 0
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        _70 = sha3(mem[(32 * idx) + 140 len 20], 5)
        _71 = mem[64]
        mem[64] = mem[64] + 64
        mem[_71] = 2
        mem[_71 + 32] = 0x3136000000000000000000000000000000000000000000000000000000000000
        if stor[_70]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _72 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 2
        idx = 0
        while idx < 2:
            mem[idx + _72 + 68] = mem[idx + _71 + 32]
            idx = idx + 32
            continue 
        mem[_72 + 70] = 0
        revert with memory
          from mem[64]
           len _72 + -mem[64] + 100
    sub_62518ddf.length = mem[96]
    if not mem[96]:
        idx = 0
        while sub_62518ddf.length > idx:
            uint256(sub_62518ddf[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            address(sub_62518ddf[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while sub_62518ddf.length > idx:
            uint256(sub_62518ddf[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function sweepERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(poolAddress)
    staticcall poolAddress.isKeeper(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'not-a-keeper'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 132] = poolAddress
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0.field_0)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function migrateStrategy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if poolAddress != msg.sender:
        revert with 0, 'not-a-pool'
    if not strategy[address(arg1)].field_0:
        revert with 0, '', 0
    if strategy[address(arg2)].field_0:
        revert with 0, '', 0
    strategy[address(arg1)].field_0 = 0
    uint256(strategy[address(arg1)].field_256) = 0
    uint256(strategy[address(arg1)].field_512) = 0
    uint256(strategy[address(arg1)].field_768) = 0
    uint256(strategy[address(arg1)].field_1024) = 0
    uint256(strategy[address(arg1)].field_1280) = 0
    uint256(strategy[address(arg1)].field_1536) = 0
    uint256(strategy[address(arg1)].field_1792) = 0
    uint256(strategy[address(arg1)].field_2048) = 0
    strategy[address(arg2)].field_0 = 1
    uint256(strategy[address(arg2)].field_256) = uint256(strategy[address(arg1)].field_256)
    uint256(strategy[address(arg2)].field_512) = uint256(strategy[address(arg1)].field_512)
    uint256(strategy[address(arg2)].field_768) = uint256(strategy[address(arg1)].field_768)
    uint256(strategy[address(arg2)].field_1024) = uint256(strategy[address(arg1)].field_1024)
    uint256(strategy[address(arg2)].field_1280) = 0
    uint256(strategy[address(arg2)].field_1536) = 0
    uint256(strategy[address(arg2)].field_1792) = uint256(strategy[address(arg1)].field_1792)
    uint256(strategy[address(arg2)].field_2048) = uint256(strategy[address(arg1)].field_2048)
    idx = 0
    while idx < strategies.length:
        mem[0] = 3
        if address(strategies[idx].field_0) != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= strategies.length:
            revert with 0, 50
        address(strategies[idx].field_0) = arg2
        idx = 0
        while idx < sub_62518ddf.length:
            mem[0] = 4
            if address(sub_62518ddf[idx].field_0) != arg1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= sub_62518ddf.length:
                revert with 0, 50
            address(sub_62518ddf[idx].field_0) = arg2
            emit 0x57fa1e7d: uint256(strategy[address(arg2)].field_256), uint256(strategy[address(arg2)].field_1792), uint256(strategy[address(arg2)].field_512), uint256(strategy[address(arg2)].field_2048), arg1, arg2
        emit 0x57fa1e7d: uint256(strategy[address(arg2)].field_256), uint256(strategy[address(arg2)].field_1792), uint256(strategy[address(arg2)].field_512), uint256(strategy[address(arg2)].field_2048), arg1, arg2
    idx = 0
    while idx < sub_62518ddf.length:
        mem[0] = 4
        if address(sub_62518ddf[idx].field_0) != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_62518ddf.length:
            revert with 0, 50
        address(sub_62518ddf[idx].field_0) = arg2
        emit 0x57fa1e7d: uint256(strategy[address(arg2)].field_256), uint256(strategy[address(arg2)].field_1792), uint256(strategy[address(arg2)].field_512), uint256(strategy[address(arg2)].field_2048), arg1, arg2
    emit 0x57fa1e7d: uint256(strategy[address(arg2)].field_256), uint256(strategy[address(arg2)].field_1792), uint256(strategy[address(arg2)].field_512), uint256(strategy[address(arg2)].field_2048), arg1, arg2
}

function availableCreditLimit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(poolAddress)
    staticcall poolAddress.stopEverything() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        return 0
    require ext_code.size(poolAddress)
    staticcall poolAddress.totalValue() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint256(strategy[address(arg1)].field_1792) and ext_call.return_data[0] > -1 / uint256(strategy[address(arg1)].field_1792):
        revert with 0, 17
    if uint256(strategy[address(arg1)].field_1024) >= uint256(strategy[address(arg1)].field_1792) * ext_call.return_data[0] / 10000:
        return 0
    if totalDebtRatio and ext_call.return_data[0] > -1 / totalDebtRatio:
        revert with 0, 17
    if totalDebt >= totalDebtRatio * ext_call.return_data[0] / 10000:
        return 0
    if uint256(strategy[address(arg1)].field_1792) * ext_call.return_data[0] / 10000 < uint256(strategy[address(arg1)].field_1024):
        revert with 0, 17
    require ext_code.size(poolAddress)
    staticcall poolAddress.tokensHere() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalDebtRatio * ext_call.return_data[0] / 10000 < totalDebt:
        revert with 0, 17
    if ext_call.return_data[0] < (uint256(strategy[address(arg1)].field_1792) * ext_call.return_data[0] / 10000) - uint256(strategy[address(arg1)].field_1024):
        if ext_call.return_data[0] < (totalDebtRatio * ext_call.return_data[0] / 10000) - totalDebt:
            if block.number < uint256(strategy[address(arg1)].field_768):
                revert with 0, 17
            if block.number - uint256(strategy[address(arg1)].field_768) and uint256(strategy[address(arg1)].field_512) > -1 / block.number - uint256(strategy[address(arg1)].field_768):
                revert with 0, 17
            if (block.number * uint256(strategy[address(arg1)].field_512)) - (uint256(strategy[address(arg1)].field_768) * uint256(strategy[address(arg1)].field_512)) < ext_call.return_data[0]:
                return ((block.number * uint256(strategy[address(arg1)].field_512)) - (uint256(strategy[address(arg1)].field_768) * uint256(strategy[address(arg1)].field_512)))
            return ext_call.return_data[0]
    else:
        if (uint256(strategy[address(arg1)].field_1792) * ext_call.return_data[0] / 10000) - uint256(strategy[address(arg1)].field_1024) < (totalDebtRatio * ext_call.return_data[0] / 10000) - totalDebt:
            if block.number < uint256(strategy[address(arg1)].field_768):
                revert with 0, 17
            if block.number - uint256(strategy[address(arg1)].field_768) and uint256(strategy[address(arg1)].field_512) > -1 / block.number - uint256(strategy[address(arg1)].field_768):
                revert with 0, 17
            if (block.number * uint256(strategy[address(arg1)].field_512)) - (uint256(strategy[address(arg1)].field_768) * uint256(strategy[address(arg1)].field_512)) < (uint256(strategy[address(arg1)].field_1792) * ext_call.return_data[0] / 10000) - uint256(strategy[address(arg1)].field_1024):
                return ((block.number * uint256(strategy[address(arg1)].field_512)) - (uint256(strategy[address(arg1)].field_768) * uint256(strategy[address(arg1)].field_512)))
            return ((uint256(strategy[address(arg1)].field_1792) * ext_call.return_data[0] / 10000) - uint256(strategy[address(arg1)].field_1024))
    if block.number < uint256(strategy[address(arg1)].field_768):
        revert with 0, 17
    if block.number - uint256(strategy[address(arg1)].field_768) and uint256(strategy[address(arg1)].field_512) > -1 / block.number - uint256(strategy[address(arg1)].field_768):
        revert with 0, 17
    if (block.number * uint256(strategy[address(arg1)].field_512)) - (uint256(strategy[address(arg1)].field_768) * uint256(strategy[address(arg1)].field_512)) < (totalDebtRatio * ext_call.return_data[0] / 10000) - totalDebt:
        return ((block.number * uint256(strategy[address(arg1)].field_512)) - (uint256(strategy[address(arg1)].field_768) * uint256(strategy[address(arg1)].field_512)))
    return ((totalDebtRatio * ext_call.return_data[0] / 10000) - totalDebt)
}

function sub_32b77a76(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(poolAddress)
    staticcall poolAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-the-governor'
    if not strategy[address(arg1)].field_0:
        revert with 0, '', 0
    if arg2 > 10000:
        revert with 0, '', 0
    uint256(strategy[address(arg1)].field_2048) = arg2
    emit 0x3e57eabb: uint256(strategy[address(arg1)].field_2048), arg2, address(arg1)
    if not totalDebtRatio:
        sub_346162d5 = 0
        emit 0x2d6a5770: sub_346162d5, 0
    else:
        idx = 0
        s = 0
        while idx < strategies.length:
            mem[0] = address(strategies[idx].field_0)
            mem[32] = 5
            if uint256(strategy[address(stor3[idx].field_0)].field_2048) and uint256(strategy[address(stor3[idx].field_0)].field_1792) > -1 / uint256(strategy[address(stor3[idx].field_0)].field_2048):
                revert with 0, 17
            if not totalDebtRatio:
                revert with 0, 18
            if s > !(uint256(strategy[address(stor3[idx].field_0)].field_2048) * uint256(strategy[address(stor3[idx].field_0)].field_1792) / totalDebtRatio):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (uint256(strategy[address(stor3[idx].field_0)].field_2048) * uint256(strategy[address(stor3[idx].field_0)].field_1792) / totalDebtRatio)
            continue 
        sub_346162d5 = s * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length
        emit 0x2d6a5770: sub_346162d5, s * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length
}

function updateDebtRatio(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(poolAddress)
    staticcall poolAddress.isMaintainer(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'not-a-maintainer'
    if not strategy[address(arg1)].field_0:
        revert with 0, '', 0
    if totalDebtRatio < uint256(strategy[address(arg1)].field_1792):
        revert with 0, 17
    if totalDebtRatio - uint256(strategy[address(arg1)].field_1792) > !arg2:
        revert with 0, 17
    totalDebtRatio = totalDebtRatio - uint256(strategy[address(arg1)].field_1792) + arg2
    if 10000 < totalDebtRatio - uint256(strategy[address(arg1)].field_1792) + arg2:
        revert with 0, '', 0
    uint256(strategy[address(arg1)].field_1792) = arg2
    emit UpdatedStrategyDebtParams(arg2, uint256(strategy[address(arg1)].field_512), arg1);
    if not totalDebtRatio:
        sub_346162d5 = 0
        emit 0x2d6a5770: sub_346162d5, 0
    else:
        idx = 0
        s = 0
        while idx < strategies.length:
            mem[0] = address(strategies[idx].field_0)
            mem[32] = 5
            if uint256(strategy[address(stor3[idx].field_0)].field_2048) and uint256(strategy[address(stor3[idx].field_0)].field_1792) > -1 / uint256(strategy[address(stor3[idx].field_0)].field_2048):
                revert with 0, 17
            if not totalDebtRatio:
                revert with 0, 18
            if s > !(uint256(strategy[address(stor3[idx].field_0)].field_2048) * uint256(strategy[address(stor3[idx].field_0)].field_1792) / totalDebtRatio):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (uint256(strategy[address(stor3[idx].field_0)].field_2048) * uint256(strategy[address(stor3[idx].field_0)].field_1792) / totalDebtRatio)
            continue 
        sub_346162d5 = s * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length
        emit 0x2d6a5770: sub_346162d5, s * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length
}

function addStrategy(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require ext_code.size(poolAddress)
    staticcall poolAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-the-governor'
    if not arg1:
        revert with 0, '', 0
    if strategy[address(arg1)].field_0:
        revert with 0, '', 0
    if totalDebtRatio > !arg3:
        revert with 0, 17
    totalDebtRatio += arg3
    if 10000 < totalDebtRatio + arg3:
        revert with 0, '', 0
    if arg2 > 10000:
        revert with 0, '', 0
    if arg5 > 10000:
        revert with 0, '', 0
    strategy[address(arg1)].field_0 = 1
    uint256(strategy[address(arg1)].field_256) = arg2
    uint256(strategy[address(arg1)].field_512) = arg4
    uint256(strategy[address(arg1)].field_768) = block.number
    uint256(strategy[address(arg1)].field_1024) = 0
    uint256(strategy[address(arg1)].field_1280) = 0
    uint256(strategy[address(arg1)].field_1536) = 0
    uint256(strategy[address(arg1)].field_1792) = arg3
    uint256(strategy[address(arg1)].field_2048) = arg5
    strategies.length++
    address(strategies[strategies.length].field_0) = arg1
    sub_62518ddf.length++
    address(sub_62518ddf[sub_62518ddf.length].field_0) = arg1
    emit StrategyAdded(arg2, arg3, arg4, arg5, arg1);
    if not totalDebtRatio:
        sub_346162d5 = 0
        emit 0x2d6a5770: sub_346162d5, 0
    else:
        idx = 0
        s = 0
        while idx < strategies.length:
            mem[0] = address(strategies[idx].field_0)
            mem[32] = 5
            if uint256(strategy[address(stor3[idx].field_0)].field_2048) and uint256(strategy[address(stor3[idx].field_0)].field_1792) > -1 / uint256(strategy[address(stor3[idx].field_0)].field_2048):
                revert with 0, 17
            if not totalDebtRatio:
                revert with 0, 18
            if s > !(uint256(strategy[address(stor3[idx].field_0)].field_2048) * uint256(strategy[address(stor3[idx].field_0)].field_1792) / totalDebtRatio):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (uint256(strategy[address(stor3[idx].field_0)].field_2048) * uint256(strategy[address(stor3[idx].field_0)].field_1792) / totalDebtRatio)
            continue 
        sub_346162d5 = s * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length
        emit 0x2d6a5770: sub_346162d5, s * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length
}

function removeStrategy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(poolAddress)
    staticcall poolAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-the-governor'
    if arg1 >= strategies.length:
        revert with 0, 50
    if not strategy[address(stor3[arg1].field_0)].field_0:
        revert with 0, '', 0
    if uint256(strategy[address(stor3[arg1].field_0)].field_1024):
        revert with 0, '', 0
    if totalDebtRatio < uint256(strategy[address(stor3[arg1].field_0)].field_1792):
        revert with 0, 17
    totalDebtRatio -= uint256(strategy[address(stor3[arg1].field_0)].field_1792)
    strategy[address(stor3[arg1].field_0)].field_0 = 0
    uint256(strategy[address(stor3[arg1].field_0)].field_256) = 0
    uint256(strategy[address(stor3[arg1].field_0)].field_512) = 0
    uint256(strategy[address(stor3[arg1].field_0)].field_768) = 0
    uint256(strategy[address(stor3[arg1].field_0)].field_1024) = 0
    uint256(strategy[address(stor3[arg1].field_0)].field_1280) = 0
    uint256(strategy[address(stor3[arg1].field_0)].field_1536) = 0
    uint256(strategy[address(stor3[arg1].field_0)].field_1792) = 0
    uint256(strategy[address(stor3[arg1].field_0)].field_2048) = 0
    if strategies.length < 1:
        revert with 0, 17
    if strategies.length - 1 >= strategies.length:
        revert with 0, 50
    if arg1 >= strategies.length:
        revert with 0, 50
    address(strategies[arg1].field_0) = address(strategies[strategies.length].field_0)
    if not strategies.length:
        revert with 0, 49
    address(strategies[strategies.length].field_0) = 0
    strategies.length--
    if strategies.length > test266151307():
        revert with 0, 65
    if strategies.length:
        mem[ceil32(return_data.size) + 256 len 32 * strategies.length] = call.data[calldata.size len 32 * strategies.length]
    idx = 0
    s = 0
    while idx < sub_62518ddf.length:
        mem[0] = 4
        if address(sub_62518ddf[idx].field_0) == address(strategies[arg1].field_0):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_62518ddf.length:
            revert with 0, 50
        mem[0] = 4
        if s >= strategies.length:
            revert with 0, 50
        mem[(32 * s) + ceil32(return_data.size) + 256] = address(sub_62518ddf[idx].field_0)
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    sub_62518ddf.length = strategies.length
    if not strategies.length:
        idx = 0
        while sub_62518ddf.length > idx:
            uint256(sub_62518ddf[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(return_data.size) + 256
        while ceil32(return_data.size) + (32 * strategies.length) + 256 > idx:
            address(sub_62518ddf[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * strategies.length) + 31) >> 5
        while sub_62518ddf.length > idx:
            uint256(sub_62518ddf[idx].field_0) = 0
            idx = idx + 1
            continue 
    emit StrategyRemoved(address(strategies[arg1].field_0));
    if not totalDebtRatio:
        sub_346162d5 = 0
        emit 0x2d6a5770: sub_346162d5, 0
    else:
        idx = 0
        s = 0
        while idx < strategies.length:
            mem[0] = address(strategies[idx].field_0)
            mem[32] = 5
            if uint256(strategy[address(stor3[idx].field_0)].field_2048) and uint256(strategy[address(stor3[idx].field_0)].field_1792) > -1 / uint256(strategy[address(stor3[idx].field_0)].field_2048):
                revert with 0, 17
            if not totalDebtRatio:
                revert with 0, 18
            if s > !(uint256(strategy[address(stor3[idx].field_0)].field_2048) * uint256(strategy[address(stor3[idx].field_0)].field_1792) / totalDebtRatio):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (uint256(strategy[address(stor3[idx].field_0)].field_2048) * uint256(strategy[address(stor3[idx].field_0)].field_1792) / totalDebtRatio)
            continue 
        sub_346162d5 = s * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length
        emit 0x2d6a5770: sub_346162d5, s * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length * strategies.length
}



}
