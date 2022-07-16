contract main {




// =====================  Runtime code  =====================


#
#  - sub_092d4d12(?)
#  - executeProposal(uint256 arg1)
#  - sub_33cd812c(?)
#  - sub_864b3ec0(?)
#  - sub_f4d2fee4(?)
#  - _fallback()
#
const sub_f556fcdb(?) = address(this.address)


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
uint256 stor5;
mapping of uint8 stor6;
uint256 globalEpoch;
uint256 harvestPeriod;
uint256 sub_e59df165;
uint256 startDate;
mapping of struct stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
array of address stor18;
mapping of address stor20;
mapping of uint8 stor21;
mapping of uint8 stor22;
uint8 stor23;
uint256 stor23;
uint256 globalState;
uint256 stor26;
mapping of struct sub_2d28f29d;
mapping of uint256 stor28;

function startDate() {
    return startDate
}

function safeContracts(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor22[arg1]))
}

function sub_2d28f29d(?) {
    require calldata.size - 4 >= 32
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    if arg1 >= globalState:
        revert with 0, 'invalid proposal'
    return sub_2d28f29d[arg1].field_0, 
           sub_2d28f29d[arg1].field_256,
           sub_2d28f29d[arg1].field_512,
           sub_2d28f29d[arg1].field_768,
           sub_2d28f29d[arg1].field_1024,
           sub_2d28f29d[arg1].field_1280,
           bool(sub_2d28f29d[arg1].field_1536)
}

function globalEpoch() {
    return globalEpoch
}

function sub_62feb5e7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(stor21[arg1]))
}

function getGlobalState() {
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    return globalState
}

function sub_e59df165(?) {
    return sub_e59df165
}

function harvestPeriod() {
    return harvestPeriod
}

function sub_1c6f2ae2(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'not owner'
    require stor26 <= stor14
    stor26 = arg1
}

function sub_f87b7982(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    return stor20[address(arg1)]
}

function sub_3188292f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'not owner'
    return bool(uint8(stor6[address(arg1)]))
}

function sub_2d8e510b(?) {
    require calldata.size - 4 >= 32
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    if arg1 >= stor18.length:
        revert with 0, 50
    return stor18[arg1]
}

function sub_d451b0a8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'not owner'
    stor11[address(arg1)].field_768 = globalEpoch
    stor11[address(arg1)].field_256 = stor12
}

function sub_1fe49587(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'not owner'
    uint256(stor6[address(arg1)]) = not uint8(stor6[address(arg1)]) or Mask(248, 8, uint256(stor6[address(arg1)]))
}

function sub_8e6a1bb3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'not owner'
    uint256(stor21[address(arg1)]) = not uint8(stor21[address(arg1)]) or Mask(248, 8, uint256(stor21[address(arg1)]))
}

function sub_934fbf2a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    return stor11[address(arg1)].field_0, stor11[address(arg1)].field_256, stor11[address(arg1)].field_512
}

function sub_5bd9950a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'not owner'
    stor2 = address(arg1)
    stor3 = address(arg2)
    uint8(stor6[address(arg1)]) = 1
}

function approveContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'not owner'
    uint256(stor22[address(arg1)]) = not uint8(stor22[address(arg1)]) or Mask(248, 8, uint256(stor22[address(arg1)]))
}

function sub_2327e020(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    if stor19[address(arg1)].field_0:
        require address(arg1)
        if uint8(stor23):
            return 0
        return stor19[address(arg1)].field_1536
    require stor20[address(arg1)]
    if uint8(stor23):
        return 0
    return stor19[stor20[address(arg1)]].field_1536
}

function sub_f5e2ca3d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'not owner'
    stor4 = address(arg1)
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor5 = ext_call.return_data[0]
}

function sub_b7d33740(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] == stor11[address(arg1)].field_512)
}

function sub_2fd62021(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    sub_2d28f29d[stor25].field_0 = address(arg1)
    sub_2d28f29d[stor25].field_768 = 0
    sub_2d28f29d[stor25].field_512 = 0
    sub_2d28f29d[stor25].field_1024 = 2
    sub_2d28f29d[stor25].field_256 = 0
    if globalState == -1:
        revert with 0, 17
    globalState++
}

function sub_e7221c9f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    sub_2d28f29d[stor25].field_0 = address(arg1)
    sub_2d28f29d[stor25].field_768 = 0
    sub_2d28f29d[stor25].field_512 = 0
    sub_2d28f29d[stor25].field_1024 = 4
    sub_2d28f29d[stor25].field_256 = 0
    if globalState == -1:
        revert with 0, 17
    globalState++
}

function sub_21f04ac6(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    sub_2d28f29d[stor25].field_0 = address(arg1)
    sub_2d28f29d[stor25].field_768 = arg3
    sub_2d28f29d[stor25].field_512 = arg2
    sub_2d28f29d[stor25].field_1024 = 1
    sub_2d28f29d[stor25].field_256 = 0
    if globalState == -1:
        revert with 0, 17
    globalState++
}

function sub_605cf323(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    sub_2d28f29d[stor25].field_0 = 0
    sub_2d28f29d[stor25].field_768 = arg3
    sub_2d28f29d[stor25].field_512 = arg2
    sub_2d28f29d[stor25].field_1024 = 0
    sub_2d28f29d[stor25].field_256 = address(arg1)
    if globalState == -1:
        revert with 0, 17
    globalState++
}

function sub_8fce0e21(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    sub_2d28f29d[stor25].field_0 = address(arg1)
    sub_2d28f29d[stor25].field_768 = 0
    sub_2d28f29d[stor25].field_512 = 0
    sub_2d28f29d[stor25].field_1024 = 3
    sub_2d28f29d[stor25].field_256 = address(arg2)
    if globalState == -1:
        revert with 0, 17
    globalState++
}

function sub_c44c06d0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    if stor19[address(arg1)].field_0:
        require address(arg1)
        return stor19[address(arg1)][10][address(arg2)].field_0, 
               stor19[address(arg1)][10][address(arg2)].field_512,
               stor19[address(arg1)][10][address(arg2)].field_768
    require stor20[address(arg1)]
    return stor19[stor20[address(arg1)]][10][address(arg2)].field_0, 
           stor19[stor20[address(arg1)]][10][address(arg2)].field_512,
           stor19[stor20[address(arg1)]][10][address(arg2)].field_768
}

function sub_a0c22c57(?) {
    require calldata.size - 4 >= 96
    require arg3 == bool(arg3)
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'not owner'
    if arg1 > 0:
        harvestPeriod = arg1
        if arg2:
            sub_e59df165 = arg2
        if arg3:
            uint8(stor23) = 1
        else:
            uint8(stor23) = 0
        startDate = block.timestamp
        if globalEpoch > -2:
            revert with 0, 17
        globalEpoch++
    else:
        if arg2 > 0:
            if arg1 > 0:
                harvestPeriod = arg1
            if arg2:
                sub_e59df165 = arg2
            if arg3:
                uint8(stor23) = 1
            else:
                uint8(stor23) = 0
            startDate = block.timestamp
            if globalEpoch > -2:
                revert with 0, 17
            globalEpoch++
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'not owner'
    if not arg1:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_307fc11b(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    if arg2 >= globalState:
        revert with 0, 'invalid proposal'
    if stor28[address(arg1)][arg2]:
        if sub_2d28f29d[arg2].field_1280 < stor28[address(arg1)][arg2]:
            revert with 0, 17
        sub_2d28f29d[arg2].field_1280 -= stor28[address(arg1)][arg2]
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > 100:
        if ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        stor28[address(arg1)][arg2] = 100 * ext_call.return_data[0] / 100
        if sub_2d28f29d[arg2].field_1280 > !(100 * ext_call.return_data[0] / 100):
            revert with 0, 17
        sub_2d28f29d[arg2].field_1280 += 100 * ext_call.return_data[0] / 100
    else:
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        stor28[address(arg1)][arg2] = arg3 * ext_call.return_data[0] / 100
        if sub_2d28f29d[arg2].field_1280 > !(arg3 * ext_call.return_data[0] / 100):
            revert with 0, 17
        sub_2d28f29d[arg2].field_1280 += arg3 * ext_call.return_data[0] / 100
}

function getNextPayoutTime() {
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    if not uint8(stor23):
        if startDate > !sub_e59df165:
            revert with 0, 17
        if startDate + sub_e59df165 < block.timestamp:
            revert with 0, 17
        if startDate + sub_e59df165 - block.timestamp <= 0:
            if 0 > !harvestPeriod:
                revert with 0, 17
            return 0, harvestPeriod
        if startDate > !sub_e59df165:
            revert with 0, 17
        if startDate + sub_e59df165 < block.timestamp:
            revert with 0, 17
        if startDate + sub_e59df165 - block.timestamp > !harvestPeriod:
            revert with 0, 17
        return startDate + sub_e59df165 - block.timestamp, startDate + sub_e59df165 - block.timestamp + harvestPeriod
    if startDate > !harvestPeriod:
        revert with 0, 17
    if startDate + harvestPeriod < block.timestamp:
        revert with 0, 17
    if startDate + harvestPeriod - block.timestamp <= 0:
        if 0 > !sub_e59df165:
            revert with 0, 17
        return sub_e59df165, 0
    if startDate > !harvestPeriod:
        revert with 0, 17
    if startDate + harvestPeriod < block.timestamp:
        revert with 0, 17
    if startDate + harvestPeriod - block.timestamp > !sub_e59df165:
        revert with 0, 17
    return startDate + harvestPeriod - block.timestamp + sub_e59df165, startDate + harvestPeriod - block.timestamp
}

function sub_be443885(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    if stor19[address(arg1)].field_0:
        require address(arg1)
        if uint8(stor23):
            return stor19[address(arg1)].field_256, 
                   stor19[address(arg1)].field_512,
                   stor19[address(arg1)].field_1280,
                   0,
                   stor19[address(arg1)].field_1792,
                   stor19[address(arg1)].field_2048,
                   stor17
        return stor19[address(arg1)].field_256, 
               stor19[address(arg1)].field_512,
               stor19[address(arg1)].field_1280,
               stor19[address(arg1)].field_1536,
               stor19[address(arg1)].field_1792,
               stor19[address(arg1)].field_2048,
               stor17
    require stor20[address(arg1)]
    if uint8(stor23):
        return stor19[stor20[address(arg1)]].field_256, 
               stor19[stor20[address(arg1)]].field_512,
               stor19[stor20[address(arg1)]].field_1280,
               0,
               stor19[stor20[address(arg1)]].field_1792,
               stor19[stor20[address(arg1)]].field_2048,
               stor17
    return stor19[stor20[address(arg1)]].field_256, 
           stor19[stor20[address(arg1)]].field_512,
           stor19[stor20[address(arg1)]].field_1280,
           stor19[stor20[address(arg1)]].field_1536,
           stor19[stor20[address(arg1)]].field_1792,
           stor19[stor20[address(arg1)]].field_2048,
           stor17
}

function sub_536954e4(?) {
    mem[0] = msg.sender
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    idx = 0
    s = 0
    while idx < stor18.length:
        mem[0] = stor18[idx]
        mem[32] = 19
        if not stor19[stor18[idx]].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if s:
        mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    t = 0
    while idx < stor18.length:
        mem[0] = stor18[idx]
        mem[32] = 19
        if not stor19[stor18[idx]].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if idx >= stor18.length:
            revert with 0, 50
        mem[0] = 18
        if t >= s:
            revert with 0, 50
        mem[(32 * t) + 128] = stor18[idx]
        if t == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 128] = 32
    mem[(32 * s) + 160] = s
    t = 0
    u = 128
    v = mem[64] + 64
    while t < s:
        mem[v] = mem[u + 12 len 20]
        t = t + 1
        u = u + 32
        v = v + 32
        continue 
    return memory
      from mem[64]
       len (64 * s) + -mem[64] + 192
}

function claimDividend(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    if not uint8(stor23):
        if startDate > !sub_e59df165:
            revert with 0, 17
        if block.timestamp >= startDate + sub_e59df165:
            if globalEpoch > -2:
                revert with 0, 17
            globalEpoch++
            startDate = block.timestamp
            uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
            stor13 = 0
            stor15 = eth.balance(stor2)
            stor16 = 0
            stor17 = 0
    else:
        if startDate > !harvestPeriod:
            revert with 0, 17
        if block.timestamp >= startDate + harvestPeriod:
            if globalEpoch > -2:
                revert with 0, 17
            globalEpoch++
            startDate = block.timestamp
            uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
            stor13 = 0
            stor15 = eth.balance(stor2)
            stor16 = 0
            stor17 = 0
        else:
            if not uint8(stor23):
                if startDate > !sub_e59df165:
                    revert with 0, 17
                if block.timestamp >= startDate + sub_e59df165:
                    if globalEpoch > -2:
                        revert with 0, 17
                    globalEpoch++
                    startDate = block.timestamp
                    uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
                    stor13 = 0
                    stor15 = eth.balance(stor2)
                    stor16 = 0
                    stor17 = 0
    if stor11[address(arg1)].field_768 != globalEpoch:
        stor11[address(arg1)].field_768 = globalEpoch
        stor11[address(arg1)].field_256 = 0
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor23):
        stor12 = 0
    else:
        if stor13 > !eth.balance(stor2):
            revert with 0, 17
        stor12 = stor13 + eth.balance(stor2)
    if ext_call.return_data[0] == stor11[address(arg1)].field_512:
        if stor12 < stor11[address(arg1)].field_256:
            revert with 0, 17
        if ext_call.return_data[0] and stor12 - stor11[address(arg1)].field_256 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not stor5:
            revert with 0, 18
        if stor11[address(arg1)].field_0 > !((stor12 * ext_call.return_data[0]) - (stor11[address(arg1)].field_256 * ext_call.return_data[0]) / stor5):
            revert with 0, 17
        stor11[address(arg1)].field_0 += (stor12 * ext_call.return_data[0]) - (stor11[address(arg1)].field_256 * ext_call.return_data[0]) / stor5
    if ext_call.return_data[0] != stor11[address(arg1)].field_512:
        stor11[address(arg1)].field_512 = ext_call.return_data[0]
    if not stor11[address(arg1)].field_512:
        if not stor11[address(arg1)].field_256:
            stor11[address(arg1)].field_512 = ext_call.return_data[0]
    stor11[address(arg1)].field_256 = stor12
    stor11[address(arg1)].field_0 = 0
    if stor13 > !stor11[address(arg1)].field_0:
        revert with 0, 17
    stor13 += stor11[address(arg1)].field_0
    return stor11[address(arg1)].field_0
}

function sub_dc3d6e2e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    if stor19[address(arg1)].field_0:
        require address(arg1)
        mem[64] = (32 * stor19[address(arg1)].field_2304) + 128
        mem[96] = stor19[address(arg1)].field_2304
        if not stor19[address(arg1)].field_2304:
            mem[(32 * stor19[address(arg1)].field_2304) + 128] = 32
            mem[(32 * stor19[address(arg1)].field_2304) + 160] = stor19[address(arg1)].field_2304
            idx = 0
            s = 128
            t = (32 * stor19[address(arg1)].field_2304) + 192
            while idx < stor19[address(arg1)].field_2304:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor19[address(arg1)].field_2304) + 128
               len (96 * stor19[address(arg1)].field_2304) + 64
        mem[128] = stor19[address(arg1)][9].field_0
        idx = 128
        s = 0
        while (32 * stor19[address(arg1)].field_2304) + 96 > idx:
            mem[idx + 32] = stor19[address(arg1)][s + 9].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor19[address(arg1)].field_2304) + 128] = 32
        mem[(32 * stor19[address(arg1)].field_2304) + 160] = stor19[address(arg1)].field_2304
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < stor19[address(arg1)].field_2304:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * stor19[address(arg1)].field_2304) + -mem[64] + 192
    require stor20[address(arg1)]
    mem[64] = (32 * stor19[stor20[address(arg1)]].field_2304) + 128
    mem[96] = stor19[stor20[address(arg1)]].field_2304
    if not stor19[stor20[address(arg1)]].field_2304:
        mem[(32 * stor19[stor20[address(arg1)]].field_2304) + 128] = 32
        mem[(32 * stor19[stor20[address(arg1)]].field_2304) + 160] = stor19[stor20[address(arg1)]].field_2304
        idx = 0
        s = 128
        t = (32 * stor19[stor20[address(arg1)]].field_2304) + 192
        while idx < stor19[stor20[address(arg1)]].field_2304:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor19[stor20[address(arg1)]].field_2304) + 128
           len (96 * stor19[stor20[address(arg1)]].field_2304) + 64
    mem[128] = stor19[stor20[address(arg1)]][9].field_0
    idx = 128
    s = 0
    while (32 * stor19[stor20[address(arg1)]].field_2304) + 96 > idx:
        mem[idx + 32] = stor19[stor20[address(arg1)]][s + 9].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor19[stor20[address(arg1)]].field_2304) + 128] = 32
    mem[(32 * stor19[stor20[address(arg1)]].field_2304) + 160] = stor19[stor20[address(arg1)]].field_2304
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor19[stor20[address(arg1)]].field_2304:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor19[stor20[address(arg1)]].field_2304) + -mem[64] + 192
}

function sub_755873c5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor11[address(arg1)].field_512 != ext_call.return_data[0]:
        return 0
    if not uint8(stor23):
        if startDate > !sub_e59df165:
            revert with 0, 17
        if block.timestamp >= startDate + sub_e59df165:
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and eth.balance(stor2) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not stor5:
                revert with 0, 18
            return (ext_call.return_data[0] * eth.balance(stor2) / stor5)
    else:
        if startDate > !harvestPeriod:
            revert with 0, 17
        if block.timestamp >= startDate + harvestPeriod:
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and eth.balance(stor2) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not stor5:
                revert with 0, 18
            return (ext_call.return_data[0] * eth.balance(stor2) / stor5)
        if not uint8(stor23):
            if startDate > !sub_e59df165:
                revert with 0, 17
            if block.timestamp >= startDate + sub_e59df165:
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and eth.balance(stor2) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not stor5:
                    revert with 0, 18
                return (ext_call.return_data[0] * eth.balance(stor2) / stor5)
    if stor13 > !eth.balance(stor2):
        revert with 0, 17
    if stor11[address(arg1)].field_768 != globalEpoch:
        if stor13 + eth.balance(stor2) < 0:
            revert with 0, 17
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and stor13 + eth.balance(stor2) > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not stor5:
            revert with 0, 18
        return ((stor13 * ext_call.return_data[0]) + (eth.balance(stor2) * ext_call.return_data[0]) / stor5)
    if stor13 + eth.balance(stor2) < stor11[address(arg1)].field_256:
        revert with 0, 17
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and stor13 + eth.balance(stor2) - stor11[address(arg1)].field_256 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not stor5:
        revert with 0, 18
    return ((stor13 * ext_call.return_data[0]) + (eth.balance(stor2) * ext_call.return_data[0]) - (stor11[address(arg1)].field_256 * ext_call.return_data[0]) / stor5)
}

function sub_3345906f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    if not uint8(stor23):
        return 0
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor11[address(arg1)].field_512 != ext_call.return_data[0]:
        return 0
    if not uint8(stor23):
        if startDate > !sub_e59df165:
            revert with 0, 17
        if block.timestamp >= startDate + sub_e59df165:
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and eth.balance(stor2) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not stor5:
                revert with 0, 18
            return (ext_call.return_data[0] * eth.balance(stor2) / stor5)
    else:
        if startDate > !harvestPeriod:
            revert with 0, 17
        if block.timestamp >= startDate + harvestPeriod:
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and eth.balance(stor2) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not stor5:
                revert with 0, 18
            return (ext_call.return_data[0] * eth.balance(stor2) / stor5)
        if not uint8(stor23):
            if startDate > !sub_e59df165:
                revert with 0, 17
            if block.timestamp >= startDate + sub_e59df165:
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and eth.balance(stor2) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not stor5:
                    revert with 0, 18
                return (ext_call.return_data[0] * eth.balance(stor2) / stor5)
    if stor13 > !eth.balance(stor2):
        revert with 0, 17
    if stor11[address(arg1)].field_768 != globalEpoch:
        if stor13 + eth.balance(stor2) < 0:
            revert with 0, 17
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and stor13 + eth.balance(stor2) > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not stor5:
            revert with 0, 18
        return ((stor13 * ext_call.return_data[0]) + (eth.balance(stor2) * ext_call.return_data[0]) / stor5)
    if stor13 + eth.balance(stor2) < stor11[address(arg1)].field_256:
        revert with 0, 17
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and stor13 + eth.balance(stor2) - stor11[address(arg1)].field_256 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not stor5:
        revert with 0, 18
    return ((stor13 * ext_call.return_data[0]) + (eth.balance(stor2) * ext_call.return_data[0]) - (stor11[address(arg1)].field_256 * ext_call.return_data[0]) / stor5)
}

function sub_3958b891(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    if not uint8(stor23):
        if startDate > !sub_e59df165:
            revert with 0, 17
        if block.timestamp >= startDate + sub_e59df165:
            if globalEpoch > -2:
                revert with 0, 17
            globalEpoch++
            startDate = block.timestamp
            uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
            stor13 = 0
            stor15 = eth.balance(stor2)
            stor16 = 0
            stor17 = 0
    else:
        if startDate > !harvestPeriod:
            revert with 0, 17
        if block.timestamp >= startDate + harvestPeriod:
            if globalEpoch > -2:
                revert with 0, 17
            globalEpoch++
            startDate = block.timestamp
            uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
            stor13 = 0
            stor15 = eth.balance(stor2)
            stor16 = 0
            stor17 = 0
        else:
            if not uint8(stor23):
                if startDate > !sub_e59df165:
                    revert with 0, 17
                if block.timestamp >= startDate + sub_e59df165:
                    if globalEpoch > -2:
                        revert with 0, 17
                    globalEpoch++
                    startDate = block.timestamp
                    uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
                    stor13 = 0
                    stor15 = eth.balance(stor2)
                    stor16 = 0
                    stor17 = 0
    if stor11[address(arg1)].field_768 != globalEpoch:
        stor11[address(arg1)].field_768 = globalEpoch
        stor11[address(arg1)].field_256 = 0
    mem[100] = address(arg1)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor23):
        stor12 = 0
    else:
        if stor13 > !eth.balance(stor2):
            revert with 0, 17
        stor12 = stor13 + eth.balance(stor2)
    if ext_call.return_data[0] == stor11[address(arg1)].field_512:
        if stor12 < stor11[address(arg1)].field_256:
            revert with 0, 17
        if ext_call.return_data[0] and stor12 - stor11[address(arg1)].field_256 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not stor5:
            revert with 0, 18
        if stor11[address(arg1)].field_0 > !((stor12 * ext_call.return_data[0]) - (stor11[address(arg1)].field_256 * ext_call.return_data[0]) / stor5):
            revert with 0, 17
        stor11[address(arg1)].field_0 += (stor12 * ext_call.return_data[0]) - (stor11[address(arg1)].field_256 * ext_call.return_data[0]) / stor5
    if ext_call.return_data[0] != stor11[address(arg1)].field_512:
        stor11[address(arg1)].field_512 = ext_call.return_data[0]
    if not stor11[address(arg1)].field_512:
        if not stor11[address(arg1)].field_256:
            stor11[address(arg1)].field_512 = ext_call.return_data[0]
    stor11[address(arg1)].field_256 = stor12
    stor11[address(arg1)].field_0 = 0
    if stor13 > !stor11[address(arg1)].field_0:
        revert with 0, 17
    stor13 += stor11[address(arg1)].field_0
    if stor11[address(arg1)].field_0 < msg.value:
        revert with 0, 'values mismatch'
    mem[ceil32(return_data.size) + 96] = 2
    staticcall address(arg3).WAVAX() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = address(arg2)
    if 300 > !block.timestamp:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    mem[(2 * ceil32(return_data.size)) + 228] = 128
    mem[(2 * ceil32(return_data.size)) + 324] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 356
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 260] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp + 300
    require ext_code.size(address(arg3))
    call address(arg3).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(arg1), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 324 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > !msg.value:
        revert with 0, 17
    if eth.balance(this.address) + msg.value > eth.balance(this.address):
        if eth.balance(this.address) > !msg.value:
            revert with 0, 17
        if eth.balance(this.address) + msg.value < eth.balance(this.address):
            revert with 0, 17
        call address(arg1) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_a0aeb250(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    if stor19[address(arg1)].field_0:
        require address(arg1)
        if uint8(stor23):
            if stor19[address(arg1)].field_1792 <= 0:
                return 0
            if stor19[address(arg1)].field_1792 and stor19[address(arg1)].field_256 > -1 / stor19[address(arg1)].field_1792:
                revert with 0, 17
            if not stor14:
                revert with 0, 18
            return 0, stor19[address(arg1)].field_1792 * stor19[address(arg1)].field_256 / stor14
        if eth.balance(stor2) > !stor17:
            revert with 0, 17
        if eth.balance(stor2) + stor17 < stor16:
            revert with 0, 17
        if eth.balance(stor2) + stor17 - stor16 <= stor19[address(arg1)].field_1024:
            if stor19[address(arg1)].field_1792 <= 0:
                return 0
            if stor19[address(arg1)].field_1792 and stor19[address(arg1)].field_256 > -1 / stor19[address(arg1)].field_1792:
                revert with 0, 17
            if not stor14:
                revert with 0, 18
            return 0, stor19[address(arg1)].field_1792 * stor19[address(arg1)].field_256 / stor14
        if not stor19[address(arg1)].field_0:
            if stor19[address(arg1)].field_1792 <= 0:
                return 0
            if stor19[address(arg1)].field_1792 and stor19[address(arg1)].field_256 > -1 / stor19[address(arg1)].field_1792:
                revert with 0, 17
            if not stor14:
                revert with 0, 18
            return 0, stor19[address(arg1)].field_1792 * stor19[address(arg1)].field_256 / stor14
        if eth.balance(stor2) > !stor17:
            revert with 0, 17
        if eth.balance(stor2) + stor17 < stor16:
            revert with 0, 17
        if eth.balance(stor2) + stor17 - stor16 < stor19[address(arg1)].field_1024:
            revert with 0, 17
        if eth.balance(stor2) + stor17 - stor16 - stor19[address(arg1)].field_1024 and stor19[address(arg1)].field_512 > -1 / eth.balance(stor2) + stor17 - stor16 - stor19[address(arg1)].field_1024:
            revert with 0, 17
        if not stor14:
            revert with 0, 18
        if stor19[address(arg1)].field_1792 <= 0:
            return (eth.balance(stor2) * stor19[address(arg1)].field_512) + (stor17 * stor19[address(arg1)].field_512) - (stor16 * stor19[address(arg1)].field_512) - (stor19[address(arg1)].field_1024 * stor19[address(arg1)].field_512) / stor14, 
                   0
        if stor19[address(arg1)].field_1792 and stor19[address(arg1)].field_256 > -1 / stor19[address(arg1)].field_1792:
            revert with 0, 17
        if not stor14:
            revert with 0, 18
        return (eth.balance(stor2) * stor19[address(arg1)].field_512) + (stor17 * stor19[address(arg1)].field_512) - (stor16 * stor19[address(arg1)].field_512) - (stor19[address(arg1)].field_1024 * stor19[address(arg1)].field_512) / stor14, 
               stor19[address(arg1)].field_1792 * stor19[address(arg1)].field_256 / stor14
    require stor20[address(arg1)]
    if uint8(stor23):
        if stor19[stor20[address(arg1)]].field_1792 <= 0:
            return 0
        if stor19[stor20[address(arg1)]].field_1792 and stor19[stor20[address(arg1)]].field_256 > -1 / stor19[stor20[address(arg1)]].field_1792:
            revert with 0, 17
        if not stor14:
            revert with 0, 18
        return 0, stor19[stor20[address(arg1)]].field_1792 * stor19[stor20[address(arg1)]].field_256 / stor14
    if eth.balance(stor2) > !stor17:
        revert with 0, 17
    if eth.balance(stor2) + stor17 < stor16:
        revert with 0, 17
    if eth.balance(stor2) + stor17 - stor16 <= stor19[stor20[address(arg1)]].field_1024:
        if stor19[stor20[address(arg1)]].field_1792 <= 0:
            return 0
        if stor19[stor20[address(arg1)]].field_1792 and stor19[stor20[address(arg1)]].field_256 > -1 / stor19[stor20[address(arg1)]].field_1792:
            revert with 0, 17
        if not stor14:
            revert with 0, 18
        return 0, stor19[stor20[address(arg1)]].field_1792 * stor19[stor20[address(arg1)]].field_256 / stor14
    if not stor19[stor20[address(arg1)]].field_0:
        if stor19[stor20[address(arg1)]].field_1792 <= 0:
            return 0
        if stor19[stor20[address(arg1)]].field_1792 and stor19[stor20[address(arg1)]].field_256 > -1 / stor19[stor20[address(arg1)]].field_1792:
            revert with 0, 17
        if not stor14:
            revert with 0, 18
        return 0, stor19[stor20[address(arg1)]].field_1792 * stor19[stor20[address(arg1)]].field_256 / stor14
    if eth.balance(stor2) > !stor17:
        revert with 0, 17
    if eth.balance(stor2) + stor17 < stor16:
        revert with 0, 17
    if eth.balance(stor2) + stor17 - stor16 < stor19[stor20[address(arg1)]].field_1024:
        revert with 0, 17
    if eth.balance(stor2) + stor17 - stor16 - stor19[stor20[address(arg1)]].field_1024 and stor19[stor20[address(arg1)]].field_512 > -1 / eth.balance(stor2) + stor17 - stor16 - stor19[stor20[address(arg1)]].field_1024:
        revert with 0, 17
    if not stor14:
        revert with 0, 18
    if stor19[stor20[address(arg1)]].field_1792 <= 0:
        return (eth.balance(stor2) * stor19[stor20[address(arg1)]].field_512) + (stor17 * stor19[stor20[address(arg1)]].field_512) - (stor16 * stor19[stor20[address(arg1)]].field_512) - (stor19[stor20[address(arg1)]].field_1024 * stor19[stor20[address(arg1)]].field_512) / stor14, 
               0
    if stor19[stor20[address(arg1)]].field_1792 and stor19[stor20[address(arg1)]].field_256 > -1 / stor19[stor20[address(arg1)]].field_1792:
        revert with 0, 17
    if not stor14:
        revert with 0, 18
    return (eth.balance(stor2) * stor19[stor20[address(arg1)]].field_512) + (stor17 * stor19[stor20[address(arg1)]].field_512) - (stor16 * stor19[stor20[address(arg1)]].field_512) - (stor19[stor20[address(arg1)]].field_1024 * stor19[stor20[address(arg1)]].field_512) / stor14, 
           stor19[stor20[address(arg1)]].field_1792 * stor19[stor20[address(arg1)]].field_256 / stor14
}

function sub_7879c177(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    if stor19[address(arg1)].field_0:
        require address(arg1)
        if not uint8(stor23):
            if startDate > !sub_e59df165:
                revert with 0, 17
            if block.timestamp >= startDate + sub_e59df165:
                if globalEpoch > -2:
                    revert with 0, 17
                globalEpoch++
                startDate = block.timestamp
                uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
                stor13 = 0
                stor15 = eth.balance(stor2)
                stor16 = 0
                stor17 = 0
        else:
            if startDate > !harvestPeriod:
                revert with 0, 17
            if block.timestamp >= startDate + harvestPeriod:
                if globalEpoch > -2:
                    revert with 0, 17
                globalEpoch++
                startDate = block.timestamp
                uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
                stor13 = 0
                stor15 = eth.balance(stor2)
                stor16 = 0
                stor17 = 0
            else:
                if not uint8(stor23):
                    if startDate > !sub_e59df165:
                        revert with 0, 17
                    if block.timestamp >= startDate + sub_e59df165:
                        if globalEpoch > -2:
                            revert with 0, 17
                        globalEpoch++
                        startDate = block.timestamp
                        uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
                        stor13 = 0
                        stor15 = eth.balance(stor2)
                        stor16 = 0
                        stor17 = 0
        if uint8(stor23):
            return 0
        if stor19[address(arg1)].field_768 != globalEpoch:
            if stor19[address(arg1)].field_0:
                stor19[address(arg1)].field_768 = globalEpoch
                if eth.balance(stor2) > !stor17:
                    revert with 0, 17
                if eth.balance(stor2) + stor17 < stor16:
                    revert with 0, 17
                if eth.balance(stor2) + stor17 - stor16 and stor19[address(arg1)].field_512 > -1 / eth.balance(stor2) + stor17 - stor16:
                    revert with 0, 17
                if not stor14:
                    revert with 0, 18
                stor19[address(arg1)].field_1280 = (eth.balance(stor2) * stor19[address(arg1)].field_512) + (stor17 * stor19[address(arg1)].field_512) - (stor16 * stor19[address(arg1)].field_512) / stor14
                if eth.balance(stor2) > !stor17:
                    revert with 0, 17
                if eth.balance(stor2) + stor17 < stor16:
                    revert with 0, 17
                stor19[address(arg1)].field_1024 = eth.balance(stor2) + stor17 - stor16
                stor19[address(arg1)].field_1536 = stor19[address(arg1)].field_1280
                if stor19[address(arg1)].field_1792 >= 0:
                    stor19[address(arg1)].field_1792 = 0
        if uint8(stor23):
            return 0
        if stor19[address(arg1)].field_1792 <= 0:
            return 0
        if stor19[address(arg1)].field_768 != globalEpoch:
            return 0
        if not stor19[address(arg1)].field_0:
            return 0
        if stor19[address(arg1)].field_1792 and stor19[address(arg1)].field_256 > -1 / stor19[address(arg1)].field_1792:
            revert with 0, 17
        if not stor14:
            revert with 0, 18
        stor19[address(arg1)].field_1792 = 0
        return (stor19[address(arg1)].field_1792 * stor19[address(arg1)].field_256 / stor14)
    require stor20[address(arg1)]
    if not uint8(stor23):
        if startDate > !sub_e59df165:
            revert with 0, 17
        if block.timestamp >= startDate + sub_e59df165:
            if globalEpoch > -2:
                revert with 0, 17
            globalEpoch++
            startDate = block.timestamp
            uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
            stor13 = 0
            stor15 = eth.balance(stor2)
            stor16 = 0
            stor17 = 0
    else:
        if startDate > !harvestPeriod:
            revert with 0, 17
        if block.timestamp >= startDate + harvestPeriod:
            if globalEpoch > -2:
                revert with 0, 17
            globalEpoch++
            startDate = block.timestamp
            uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
            stor13 = 0
            stor15 = eth.balance(stor2)
            stor16 = 0
            stor17 = 0
        else:
            if not uint8(stor23):
                if startDate > !sub_e59df165:
                    revert with 0, 17
                if block.timestamp >= startDate + sub_e59df165:
                    if globalEpoch > -2:
                        revert with 0, 17
                    globalEpoch++
                    startDate = block.timestamp
                    uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
                    stor13 = 0
                    stor15 = eth.balance(stor2)
                    stor16 = 0
                    stor17 = 0
    if uint8(stor23):
        return 0
    if stor19[stor20[address(arg1)]].field_768 != globalEpoch:
        if stor19[stor20[address(arg1)]].field_0:
            stor19[stor20[address(arg1)]].field_768 = globalEpoch
            if eth.balance(stor2) > !stor17:
                revert with 0, 17
            if eth.balance(stor2) + stor17 < stor16:
                revert with 0, 17
            if eth.balance(stor2) + stor17 - stor16 and stor19[stor20[address(arg1)]].field_512 > -1 / eth.balance(stor2) + stor17 - stor16:
                revert with 0, 17
            if not stor14:
                revert with 0, 18
            stor19[stor20[address(arg1)]].field_1280 = (eth.balance(stor2) * stor19[stor20[address(arg1)]].field_512) + (stor17 * stor19[stor20[address(arg1)]].field_512) - (stor16 * stor19[stor20[address(arg1)]].field_512) / stor14
            if eth.balance(stor2) > !stor17:
                revert with 0, 17
            if eth.balance(stor2) + stor17 < stor16:
                revert with 0, 17
            stor19[stor20[address(arg1)]].field_1024 = eth.balance(stor2) + stor17 - stor16
            stor19[stor20[address(arg1)]].field_1536 = stor19[stor20[address(arg1)]].field_1280
            if stor19[stor20[address(arg1)]].field_1792 >= 0:
                stor19[stor20[address(arg1)]].field_1792 = 0
    if uint8(stor23):
        return 0
    if stor19[stor20[address(arg1)]].field_1792 <= 0:
        return 0
    if stor19[stor20[address(arg1)]].field_768 != globalEpoch:
        return 0
    if not stor19[stor20[address(arg1)]].field_0:
        return 0
    if stor19[stor20[address(arg1)]].field_1792 and stor19[stor20[address(arg1)]].field_256 > -1 / stor19[stor20[address(arg1)]].field_1792:
        revert with 0, 17
    if not stor14:
        revert with 0, 18
    stor19[stor20[address(arg1)]].field_1792 = 0
    return (stor19[stor20[address(arg1)]].field_1792 * stor19[stor20[address(arg1)]].field_256 / stor14)
}

function sub_4daf30d9(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    if stor19[address(arg1)].field_0:
        require address(arg1)
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if arg4 > 0:
                if not address(arg2):
                    if 1 >= stor19[address(arg1)][10][address(arg3)].field_768:
                        require ext_code.size(address(arg1))
                        call address(arg1).sellToken(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args stor19[address(arg1)][10][address(arg3)].field_512, address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 4 == stor19[address(arg1)][10][address(arg3)].field_768:
                        require ext_code.size(address(arg1))
                        call address(arg1).withdrawWETH(address arg1) with:
                             gas gas_remaining wei
                            args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if stor19[address(arg1)].field_1536 > -1:
                        revert with 0, 17
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if stor16 > -1:
                        revert with 0, 17
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if 0 > -stor19[address(arg1)].field_1792 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor19[address(arg1)].field_1792 >= 0:
                        revert with 0, 17
                    if stor19[address(arg1)].field_1792 < 0 and 0 < -stor19[address(arg1)].field_1792 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor19[address(arg1)][10][address(arg3)].field_512 = stor19[address(arg1)][10][address(arg3)].field_512
                else:
                    if 1 >= stor19[address(arg1)][10][address(arg3)].field_768:
                        require ext_code.size(address(arg1))
                        call address(arg1).sellToken(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 4 == stor19[address(arg1)][10][address(arg3)].field_768:
                        require ext_code.size(address(arg1))
                        call address(arg1).withdrawWETH(address arg1) with:
                             gas gas_remaining wei
                            args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if stor19[address(arg1)].field_1536 > -1:
                        revert with 0, 17
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if stor16 > -1:
                        revert with 0, 17
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if 0 > -stor19[address(arg1)].field_1792 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor19[address(arg1)].field_1792 >= 0:
                        revert with 0, 17
                    if stor19[address(arg1)].field_1792 < 0 and 0 < -stor19[address(arg1)].field_1792 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor19[address(arg1)][10][address(arg3)].field_512 = address(arg2)
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor19[address(arg1)][10][address(arg3)].field_0 = ext_call.return_data[0]
    else:
        require stor20[address(arg1)]
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args stor20[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if arg4 > 0:
                if not address(arg2):
                    if 1 >= stor19[stor20[address(arg1)]][10][address(arg3)].field_768:
                        require ext_code.size(stor20[address(arg1)])
                        call stor20[address(arg1)].sellToken(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args stor19[stor20[address(arg1)]][10][address(arg3)].field_512, address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 4 == stor19[stor20[address(arg1)]][10][address(arg3)].field_768:
                        require ext_code.size(stor20[address(arg1)])
                        call stor20[address(arg1)].withdrawWETH(address arg1) with:
                             gas gas_remaining wei
                            args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if stor19[stor20[address(arg1)]].field_1536 > -1:
                        revert with 0, 17
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if stor16 > -1:
                        revert with 0, 17
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if 0 > -stor19[stor20[address(arg1)]].field_1792 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor19[stor20[address(arg1)]].field_1792 >= 0:
                        revert with 0, 17
                    if stor19[stor20[address(arg1)]].field_1792 < 0 and 0 < -stor19[stor20[address(arg1)]].field_1792 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor19[stor20[address(arg1)]][10][address(arg3)].field_512 = stor19[stor20[address(arg1)]][10][address(arg3)].field_512
                else:
                    if 1 >= stor19[stor20[address(arg1)]][10][address(arg3)].field_768:
                        require ext_code.size(stor20[address(arg1)])
                        call stor20[address(arg1)].sellToken(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 4 == stor19[stor20[address(arg1)]][10][address(arg3)].field_768:
                        require ext_code.size(stor20[address(arg1)])
                        call stor20[address(arg1)].withdrawWETH(address arg1) with:
                             gas gas_remaining wei
                            args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if stor19[stor20[address(arg1)]].field_1536 > -1:
                        revert with 0, 17
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if stor16 > -1:
                        revert with 0, 17
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if 0 > -stor19[stor20[address(arg1)]].field_1792 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor19[stor20[address(arg1)]].field_1792 >= 0:
                        revert with 0, 17
                    if stor19[stor20[address(arg1)]].field_1792 < 0 and 0 < -stor19[stor20[address(arg1)]].field_1792 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor19[stor20[address(arg1)]][10][address(arg3)].field_512 = address(arg2)
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args stor20[address(arg1)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor19[stor20[address(arg1)]][10][address(arg3)].field_0 = ext_call.return_data[0]
}

function sub_51361893(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    if stor19[address(arg1)].field_0:
        require address(arg1)
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if arg4 > 0:
                if not address(arg2):
                    if 1 >= stor19[address(arg1)][10][address(arg3)].field_768:
                        require ext_code.size(address(arg1))
                        call address(arg1).sellToken(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args stor19[address(arg1)][10][address(arg3)].field_512, address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 4 == stor19[address(arg1)][10][address(arg3)].field_768:
                        require ext_code.size(address(arg1))
                        call address(arg1).withdrawWETH(address arg1) with:
                             gas gas_remaining wei
                            args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if stor19[address(arg1)].field_1536 > -1:
                        revert with 0, 17
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if stor16 > -1:
                        revert with 0, 17
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if 0 > -stor19[address(arg1)].field_1792 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor19[address(arg1)].field_1792 >= 0:
                        revert with 0, 17
                    if stor19[address(arg1)].field_1792 < 0 and 0 < -stor19[address(arg1)].field_1792 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor19[address(arg1)][10][address(arg3)].field_512 = stor19[address(arg1)][10][address(arg3)].field_512
                else:
                    if 1 >= stor19[address(arg1)][10][address(arg3)].field_768:
                        require ext_code.size(address(arg1))
                        call address(arg1).sellToken(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 4 == stor19[address(arg1)][10][address(arg3)].field_768:
                        require ext_code.size(address(arg1))
                        call address(arg1).withdrawWETH(address arg1) with:
                             gas gas_remaining wei
                            args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if stor19[address(arg1)].field_1536 > -1:
                        revert with 0, 17
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if stor16 > -1:
                        revert with 0, 17
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if 0 > -stor19[address(arg1)].field_1792 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor19[address(arg1)].field_1792 >= 0:
                        revert with 0, 17
                    if stor19[address(arg1)].field_1792 < 0 and 0 < -stor19[address(arg1)].field_1792 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor19[address(arg1)][10][address(arg3)].field_512 = address(arg2)
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor19[address(arg1)][10][address(arg3)].field_0 = ext_call.return_data[0]
    else:
        require stor20[address(arg1)]
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args stor20[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if arg4 > 0:
                if not address(arg2):
                    if 1 >= stor19[stor20[address(arg1)]][10][address(arg3)].field_768:
                        require ext_code.size(stor20[address(arg1)])
                        call stor20[address(arg1)].sellToken(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args stor19[stor20[address(arg1)]][10][address(arg3)].field_512, address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 4 == stor19[stor20[address(arg1)]][10][address(arg3)].field_768:
                        require ext_code.size(stor20[address(arg1)])
                        call stor20[address(arg1)].withdrawWETH(address arg1) with:
                             gas gas_remaining wei
                            args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if stor19[stor20[address(arg1)]].field_1536 > -1:
                        revert with 0, 17
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if stor16 > -1:
                        revert with 0, 17
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if 0 > -stor19[stor20[address(arg1)]].field_1792 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor19[stor20[address(arg1)]].field_1792 >= 0:
                        revert with 0, 17
                    if stor19[stor20[address(arg1)]].field_1792 < 0 and 0 < -stor19[stor20[address(arg1)]].field_1792 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor19[stor20[address(arg1)]][10][address(arg3)].field_512 = stor19[stor20[address(arg1)]][10][address(arg3)].field_512
                else:
                    if 1 >= stor19[stor20[address(arg1)]][10][address(arg3)].field_768:
                        require ext_code.size(stor20[address(arg1)])
                        call stor20[address(arg1)].sellToken(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 4 == stor19[stor20[address(arg1)]][10][address(arg3)].field_768:
                        require ext_code.size(stor20[address(arg1)])
                        call stor20[address(arg1)].withdrawWETH(address arg1) with:
                             gas gas_remaining wei
                            args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if stor19[stor20[address(arg1)]].field_1536 > -1:
                        revert with 0, 17
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if stor16 > -1:
                        revert with 0, 17
                    if eth.balance(stor2) < eth.balance(stor2):
                        revert with 0, 17
                    if 0 > -stor19[stor20[address(arg1)]].field_1792 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor19[stor20[address(arg1)]].field_1792 >= 0:
                        revert with 0, 17
                    if stor19[stor20[address(arg1)]].field_1792 < 0 and 0 < -stor19[stor20[address(arg1)]].field_1792 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor19[stor20[address(arg1)]][10][address(arg3)].field_512 = address(arg2)
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args stor20[address(arg1)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor19[stor20[address(arg1)]][10][address(arg3)].field_0 = ext_call.return_data[0]
}

function sub_9fc63277(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    if stor19[address(arg1)].field_0:
        require address(arg1)
        if not uint8(stor23):
            if startDate > !sub_e59df165:
                revert with 0, 17
            if block.timestamp >= startDate + sub_e59df165:
                if globalEpoch > -2:
                    revert with 0, 17
                globalEpoch++
                startDate = block.timestamp
                uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
                stor13 = 0
                stor15 = eth.balance(stor2)
                stor16 = 0
                stor17 = 0
        else:
            if startDate > !harvestPeriod:
                revert with 0, 17
            if block.timestamp >= startDate + harvestPeriod:
                if globalEpoch > -2:
                    revert with 0, 17
                globalEpoch++
                startDate = block.timestamp
                uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
                stor13 = 0
                stor15 = eth.balance(stor2)
                stor16 = 0
                stor17 = 0
            else:
                if not uint8(stor23):
                    if startDate > !sub_e59df165:
                        revert with 0, 17
                    if block.timestamp >= startDate + sub_e59df165:
                        if globalEpoch > -2:
                            revert with 0, 17
                        globalEpoch++
                        startDate = block.timestamp
                        uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
                        stor13 = 0
                        stor15 = eth.balance(stor2)
                        stor16 = 0
                        stor17 = 0
        if not uint8(stor23):
            if stor19[address(arg1)].field_768 != globalEpoch:
                if stor19[address(arg1)].field_0:
                    stor19[address(arg1)].field_768 = globalEpoch
                    if eth.balance(stor2) > !stor17:
                        revert with 0, 17
                    if eth.balance(stor2) + stor17 < stor16:
                        revert with 0, 17
                    if eth.balance(stor2) + stor17 - stor16 and stor19[address(arg1)].field_512 > -1 / eth.balance(stor2) + stor17 - stor16:
                        revert with 0, 17
                    if not stor14:
                        revert with 0, 18
                    stor19[address(arg1)].field_1280 = (eth.balance(stor2) * stor19[address(arg1)].field_512) + (stor17 * stor19[address(arg1)].field_512) - (stor16 * stor19[address(arg1)].field_512) / stor14
                    if eth.balance(stor2) > !stor17:
                        revert with 0, 17
                    if eth.balance(stor2) + stor17 < stor16:
                        revert with 0, 17
                    stor19[address(arg1)].field_1024 = eth.balance(stor2) + stor17 - stor16
                    stor19[address(arg1)].field_1536 = stor19[address(arg1)].field_1280
                    if stor19[address(arg1)].field_1792 >= 0:
                        stor19[address(arg1)].field_1792 = 0
            if not uint8(stor23):
                if eth.balance(stor2) > !stor17:
                    revert with 0, 17
                if eth.balance(stor2) + stor17 < stor16:
                    revert with 0, 17
                if eth.balance(stor2) + stor17 - stor16 > stor19[address(arg1)].field_1024:
                    if stor19[address(arg1)].field_0:
                        if eth.balance(stor2) > !stor17:
                            revert with 0, 17
                        if eth.balance(stor2) + stor17 < stor16:
                            revert with 0, 17
                        if eth.balance(stor2) + stor17 - stor16 < stor19[address(arg1)].field_1024:
                            revert with 0, 17
                        if eth.balance(stor2) + stor17 - stor16 - stor19[address(arg1)].field_1024 and stor19[address(arg1)].field_512 > -1 / eth.balance(stor2) + stor17 - stor16 - stor19[address(arg1)].field_1024:
                            revert with 0, 17
                        if not stor14:
                            revert with 0, 18
                        if stor19[address(arg1)].field_1280 > !((eth.balance(stor2) * stor19[address(arg1)].field_512) + (stor17 * stor19[address(arg1)].field_512) - (stor16 * stor19[address(arg1)].field_512) - (stor19[address(arg1)].field_1024 * stor19[address(arg1)].field_512) / stor14):
                            revert with 0, 17
                        stor19[address(arg1)].field_1280 += (eth.balance(stor2) * stor19[address(arg1)].field_512) + (stor17 * stor19[address(arg1)].field_512) - (stor16 * stor19[address(arg1)].field_512) - (stor19[address(arg1)].field_1024 * stor19[address(arg1)].field_512) / stor14
                        if stor19[address(arg1)].field_1536 > !((eth.balance(stor2) * stor19[address(arg1)].field_512) + (stor17 * stor19[address(arg1)].field_512) - (stor16 * stor19[address(arg1)].field_512) - (stor19[address(arg1)].field_1024 * stor19[address(arg1)].field_512) / stor14):
                            revert with 0, 17
                        stor19[address(arg1)].field_1536 += (eth.balance(stor2) * stor19[address(arg1)].field_512) + (stor17 * stor19[address(arg1)].field_512) - (stor16 * stor19[address(arg1)].field_512) - (stor19[address(arg1)].field_1024 * stor19[address(arg1)].field_512) / stor14
                        if eth.balance(stor2) > !stor17:
                            revert with 0, 17
                        if eth.balance(stor2) + stor17 < stor16:
                            revert with 0, 17
                        stor19[address(arg1)].field_1024 = eth.balance(stor2) + stor17 - stor16
    else:
        require stor20[address(arg1)]
        if not uint8(stor23):
            if startDate > !sub_e59df165:
                revert with 0, 17
            if block.timestamp >= startDate + sub_e59df165:
                if globalEpoch > -2:
                    revert with 0, 17
                globalEpoch++
                startDate = block.timestamp
                uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
                stor13 = 0
                stor15 = eth.balance(stor2)
                stor16 = 0
                stor17 = 0
        else:
            if startDate > !harvestPeriod:
                revert with 0, 17
            if block.timestamp >= startDate + harvestPeriod:
                if globalEpoch > -2:
                    revert with 0, 17
                globalEpoch++
                startDate = block.timestamp
                uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
                stor13 = 0
                stor15 = eth.balance(stor2)
                stor16 = 0
                stor17 = 0
            else:
                if not uint8(stor23):
                    if startDate > !sub_e59df165:
                        revert with 0, 17
                    if block.timestamp >= startDate + sub_e59df165:
                        if globalEpoch > -2:
                            revert with 0, 17
                        globalEpoch++
                        startDate = block.timestamp
                        uint256(stor23) = not uint8(stor23) or Mask(248, 8, uint256(stor23))
                        stor13 = 0
                        stor15 = eth.balance(stor2)
                        stor16 = 0
                        stor17 = 0
        if not uint8(stor23):
            if stor19[stor20[address(arg1)]].field_768 != globalEpoch:
                if stor19[stor20[address(arg1)]].field_0:
                    stor19[stor20[address(arg1)]].field_768 = globalEpoch
                    if eth.balance(stor2) > !stor17:
                        revert with 0, 17
                    if eth.balance(stor2) + stor17 < stor16:
                        revert with 0, 17
                    if eth.balance(stor2) + stor17 - stor16 and stor19[stor20[address(arg1)]].field_512 > -1 / eth.balance(stor2) + stor17 - stor16:
                        revert with 0, 17
                    if not stor14:
                        revert with 0, 18
                    stor19[stor20[address(arg1)]].field_1280 = (eth.balance(stor2) * stor19[stor20[address(arg1)]].field_512) + (stor17 * stor19[stor20[address(arg1)]].field_512) - (stor16 * stor19[stor20[address(arg1)]].field_512) / stor14
                    if eth.balance(stor2) > !stor17:
                        revert with 0, 17
                    if eth.balance(stor2) + stor17 < stor16:
                        revert with 0, 17
                    stor19[stor20[address(arg1)]].field_1024 = eth.balance(stor2) + stor17 - stor16
                    stor19[stor20[address(arg1)]].field_1536 = stor19[stor20[address(arg1)]].field_1280
                    if stor19[stor20[address(arg1)]].field_1792 >= 0:
                        stor19[stor20[address(arg1)]].field_1792 = 0
            if not uint8(stor23):
                if eth.balance(stor2) > !stor17:
                    revert with 0, 17
                if eth.balance(stor2) + stor17 < stor16:
                    revert with 0, 17
                if eth.balance(stor2) + stor17 - stor16 > stor19[stor20[address(arg1)]].field_1024:
                    if stor19[stor20[address(arg1)]].field_0:
                        if eth.balance(stor2) > !stor17:
                            revert with 0, 17
                        if eth.balance(stor2) + stor17 < stor16:
                            revert with 0, 17
                        if eth.balance(stor2) + stor17 - stor16 < stor19[stor20[address(arg1)]].field_1024:
                            revert with 0, 17
                        if eth.balance(stor2) + stor17 - stor16 - stor19[stor20[address(arg1)]].field_1024 and stor19[stor20[address(arg1)]].field_512 > -1 / eth.balance(stor2) + stor17 - stor16 - stor19[stor20[address(arg1)]].field_1024:
                            revert with 0, 17
                        if not stor14:
                            revert with 0, 18
                        if stor19[stor20[address(arg1)]].field_1280 > !((eth.balance(stor2) * stor19[stor20[address(arg1)]].field_512) + (stor17 * stor19[stor20[address(arg1)]].field_512) - (stor16 * stor19[stor20[address(arg1)]].field_512) - (stor19[stor20[address(arg1)]].field_1024 * stor19[stor20[address(arg1)]].field_512) / stor14):
                            revert with 0, 17
                        stor19[stor20[address(arg1)]].field_1280 += (eth.balance(stor2) * stor19[stor20[address(arg1)]].field_512) + (stor17 * stor19[stor20[address(arg1)]].field_512) - (stor16 * stor19[stor20[address(arg1)]].field_512) - (stor19[stor20[address(arg1)]].field_1024 * stor19[stor20[address(arg1)]].field_512) / stor14
                        if stor19[stor20[address(arg1)]].field_1536 > !((eth.balance(stor2) * stor19[stor20[address(arg1)]].field_512) + (stor17 * stor19[stor20[address(arg1)]].field_512) - (stor16 * stor19[stor20[address(arg1)]].field_512) - (stor19[stor20[address(arg1)]].field_1024 * stor19[stor20[address(arg1)]].field_512) / stor14):
                            revert with 0, 17
                        stor19[stor20[address(arg1)]].field_1536 += (eth.balance(stor2) * stor19[stor20[address(arg1)]].field_512) + (stor17 * stor19[stor20[address(arg1)]].field_512) - (stor16 * stor19[stor20[address(arg1)]].field_512) - (stor19[stor20[address(arg1)]].field_1024 * stor19[stor20[address(arg1)]].field_512) / stor14
                        if eth.balance(stor2) > !stor17:
                            revert with 0, 17
                        if eth.balance(stor2) + stor17 < stor16:
                            revert with 0, 17
                        stor19[stor20[address(arg1)]].field_1024 = eth.balance(stor2) + stor17 - stor16
}

function sub_2f9250aa(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    if stor19[address(arg1)].field_0:
        require address(arg1)
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor19[address(arg1)][10][address(arg3)].field_0 = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = stor19[address(arg1)].field_2304
        if stor19[address(arg1)].field_2304:
            mem[ceil32(return_data.size) + 128] = stor19[address(arg1)][9].field_0
            idx = ceil32(return_data.size) + 128
            s = 0
            while ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 96 > idx:
                mem[idx + 32] = stor19[address(arg1)][s + 9].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if not stor19[address(arg1)].field_2304:
            if address(arg3):
                stor19[address(arg1)].field_2304++
                stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg3)
        else:
            idx = 0
            s = -1
            while idx < stor19[address(arg1)].field_2304:
                if idx >= stor19[address(arg1)].field_2304:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg3):
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = idx
                continue 
            if address(arg3):
                if s < 0:
                    stor19[address(arg1)].field_2304++
                    stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg3)
        mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 164] = stor19[address(arg1)][10][address(arg3)][5][address(arg2)].field_256
        require ext_code.size(address(arg1))
        call address(arg1).0xa6392674 with:
             gas gas_remaining wei
            args address(arg2), stor19[address(arg1)][10][address(arg3)][5][address(arg2)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 132] = address(arg1)
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 128] = ext_call.return_data[0]
        require return_data.size >= 32
        stor19[address(arg1)][10][address(arg3)].field_0 = ext_call.return_data[0]
        stor19[address(arg1)][10][address(arg3)][5][address(arg2)].field_0 = 0
        if not stor19[address(arg1)][10][address(arg3)].field_1024:
            if not stor19[address(arg1)][10][address(arg3)].field_1024:
                if address(arg2):
                    stor19[address(arg1)][10][address(arg3)].field_1024++
                    stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
            else:
                idx = 0
                s = -1
                while idx < stor19[address(arg1)][10][address(arg3)].field_1024:
                    if idx >= stor19[address(arg1)][10][address(arg3)].field_1024:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + 172 len 20] != address(arg2):
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = idx
                    continue 
                if address(arg2):
                    if s < 0:
                        stor19[address(arg1)][10][address(arg3)].field_1024++
                        stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
        else:
            mem[(2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + 160] = stor19[address(arg1)][10][address(arg3)][4].field_0
            if (32 * stor19[address(arg1)][10][address(arg3)].field_1024) + 32 > 64:
                mem[(2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + 192] = stor19[address(arg1)][10][address(arg3)][4].field_256
                idx = (2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + 192
                s = 1
                while (2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + (32 * stor19[address(arg1)][10][address(arg3)].field_1024) + 128 > idx:
                    mem[idx + 32] = stor19[address(arg1)][10][address(arg3)][s + 4].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if not stor19[address(arg1)][10][address(arg3)].field_1024:
                if address(arg2):
                    stor19[address(arg1)][10][address(arg3)].field_1024++
                    stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
            else:
                idx = 0
                s = -1
                while idx < stor19[address(arg1)][10][address(arg3)].field_1024:
                    if idx >= stor19[address(arg1)][10][address(arg3)].field_1024:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + 172 len 20] != address(arg2):
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = idx
                    continue 
                if address(arg2):
                    if s < 0:
                        stor19[address(arg1)][10][address(arg3)].field_1024++
                        stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
    else:
        require stor20[address(arg1)]
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args stor20[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor19[stor20[address(arg1)]][10][address(arg3)].field_0 = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = stor19[stor20[address(arg1)]].field_2304
        if stor19[stor20[address(arg1)]].field_2304:
            mem[ceil32(return_data.size) + 128] = stor19[stor20[address(arg1)]][9].field_0
            idx = ceil32(return_data.size) + 128
            s = 0
            while ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 96 > idx:
                mem[idx + 32] = stor19[stor20[address(arg1)]][s + 9].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if not stor19[stor20[address(arg1)]].field_2304:
            if address(arg3):
                stor19[stor20[address(arg1)]].field_2304++
                stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg3)
        else:
            idx = 0
            s = -1
            while idx < stor19[stor20[address(arg1)]].field_2304:
                if idx >= stor19[stor20[address(arg1)]].field_2304:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg3):
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = idx
                continue 
            if address(arg3):
                if s < 0:
                    stor19[stor20[address(arg1)]].field_2304++
                    stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg3)
        mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 164] = stor19[stor20[address(arg1)]][10][address(arg3)][5][address(arg2)].field_256
        require ext_code.size(stor20[address(arg1)])
        call stor20[address(arg1)].0xa6392674 with:
             gas gas_remaining wei
            args address(arg2), stor19[stor20[address(arg1)]][10][address(arg3)][5][address(arg2)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 132] = stor20[address(arg1)]
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args stor20[address(arg1)]
        mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 128] = ext_call.return_data[0]
        require return_data.size >= 32
        stor19[stor20[address(arg1)]][10][address(arg3)].field_0 = ext_call.return_data[0]
        stor19[stor20[address(arg1)]][10][address(arg3)][5][address(arg2)].field_0 = 0
        if not stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
            if not stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                if address(arg2):
                    stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                    stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
            else:
                idx = 0
                s = -1
                while idx < stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                    if idx >= stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + 172 len 20] != address(arg2):
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = idx
                    continue 
                if address(arg2):
                    if s < 0:
                        stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                        stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
        else:
            mem[(2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + 160] = stor19[stor20[address(arg1)]][10][address(arg3)][4].field_0
            if (32 * stor19[stor20[address(arg1)]][10][address(arg3)].field_1024) + 32 > 64:
                mem[(2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + 192] = stor19[stor20[address(arg1)]][10][address(arg3)][4].field_256
                idx = (2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + 192
                s = 1
                while (2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + (32 * stor19[stor20[address(arg1)]][10][address(arg3)].field_1024) + 128 > idx:
                    mem[idx + 32] = stor19[stor20[address(arg1)]][10][address(arg3)][s + 4].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if not stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                if address(arg2):
                    stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                    stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
            else:
                idx = 0
                s = -1
                while idx < stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                    if idx >= stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + 172 len 20] != address(arg2):
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = idx
                    continue 
                if address(arg2):
                    if s < 0:
                        stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                        stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
}

function sub_a715f204(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    if stor19[address(arg1)].field_0:
        require address(arg1)
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor19[address(arg1)][10][address(arg3)].field_0 = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = stor19[address(arg1)].field_2304
        if stor19[address(arg1)].field_2304:
            mem[ceil32(return_data.size) + 128] = stor19[address(arg1)][9].field_0
            idx = ceil32(return_data.size) + 128
            s = 0
            while ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 96 > idx:
                mem[idx + 32] = stor19[address(arg1)][s + 9].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if not stor19[address(arg1)].field_2304:
            if address(arg3):
                stor19[address(arg1)].field_2304++
                stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg3)
        else:
            idx = 0
            s = -1
            while idx < stor19[address(arg1)].field_2304:
                if idx >= stor19[address(arg1)].field_2304:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg3):
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = idx
                continue 
            if address(arg3):
                if s < 0:
                    stor19[address(arg1)].field_2304++
                    stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg3)
        if arg4 > 100:
            mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 164] = stor19[address(arg1)][10][address(arg3)][5][address(arg2)].field_256
            mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 196] = stor19[address(arg1)][10][address(arg3)][5][address(arg2)].field_0
            require ext_code.size(address(arg1))
            call address(arg1).0x4f60bad5 with:
                 gas gas_remaining wei
                args address(arg2), stor19[address(arg1)][10][address(arg3)][5][address(arg2)].field_256, stor19[address(arg1)][10][address(arg3)][5][address(arg2)].field_0
        else:
            if arg4 and stor19[address(arg1)][10][address(arg3)][5][address(arg2)].field_0 > -1 / arg4:
                revert with 0, 17
            mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 164] = stor19[address(arg1)][10][address(arg3)][5][address(arg2)].field_256
            mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 196] = arg4 * stor19[address(arg1)][10][address(arg3)][5][address(arg2)].field_0 / 100
            require ext_code.size(address(arg1))
            call address(arg1).0x4f60bad5 with:
                 gas gas_remaining wei
                args address(arg2), stor19[address(arg1)][10][address(arg3)][5][address(arg2)].field_256, arg4 * stor19[address(arg1)][10][address(arg3)][5][address(arg2)].field_0 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 132] = address(arg1)
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 128] = ext_call.return_data[0]
        require return_data.size >= 32
        stor19[address(arg1)][10][address(arg3)].field_0 = ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        stor19[address(arg1)][10][address(arg3)][5][address(arg2)].field_0 = 0
        if not stor19[address(arg1)][10][address(arg3)].field_1024:
            if not stor19[address(arg1)][10][address(arg3)].field_1024:
                if address(arg2):
                    stor19[address(arg1)][10][address(arg3)].field_1024++
                    stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
            else:
                idx = 0
                s = -1
                while idx < stor19[address(arg1)][10][address(arg3)].field_1024:
                    if idx >= stor19[address(arg1)][10][address(arg3)].field_1024:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + 172 len 20] != address(arg2):
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = idx
                    continue 
                if address(arg2):
                    if s < 0:
                        stor19[address(arg1)][10][address(arg3)].field_1024++
                        stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
        else:
            mem[(2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + 160] = stor19[address(arg1)][10][address(arg3)][4].field_0
            if (32 * stor19[address(arg1)][10][address(arg3)].field_1024) + 32 > 64:
                mem[(2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + 192] = stor19[address(arg1)][10][address(arg3)][4].field_256
                idx = (2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + 192
                s = 1
                while (2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + (32 * stor19[address(arg1)][10][address(arg3)].field_1024) + 128 > idx:
                    mem[idx + 32] = stor19[address(arg1)][10][address(arg3)][s + 4].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if not stor19[address(arg1)][10][address(arg3)].field_1024:
                if address(arg2):
                    stor19[address(arg1)][10][address(arg3)].field_1024++
                    stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
            else:
                idx = 0
                s = -1
                while idx < stor19[address(arg1)][10][address(arg3)].field_1024:
                    if idx >= stor19[address(arg1)][10][address(arg3)].field_1024:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + 172 len 20] != address(arg2):
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = idx
                    continue 
                if address(arg2):
                    if s < 0:
                        stor19[address(arg1)][10][address(arg3)].field_1024++
                        stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
    else:
        require stor20[address(arg1)]
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args stor20[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor19[stor20[address(arg1)]][10][address(arg3)].field_0 = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = stor19[stor20[address(arg1)]].field_2304
        if stor19[stor20[address(arg1)]].field_2304:
            mem[ceil32(return_data.size) + 128] = stor19[stor20[address(arg1)]][9].field_0
            idx = ceil32(return_data.size) + 128
            s = 0
            while ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 96 > idx:
                mem[idx + 32] = stor19[stor20[address(arg1)]][s + 9].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if not stor19[stor20[address(arg1)]].field_2304:
            if address(arg3):
                stor19[stor20[address(arg1)]].field_2304++
                stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg3)
        else:
            idx = 0
            s = -1
            while idx < stor19[stor20[address(arg1)]].field_2304:
                if idx >= stor19[stor20[address(arg1)]].field_2304:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg3):
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = idx
                continue 
            if address(arg3):
                if s < 0:
                    stor19[stor20[address(arg1)]].field_2304++
                    stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg3)
        if arg4 > 100:
            mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 164] = stor19[stor20[address(arg1)]][10][address(arg3)][5][address(arg2)].field_256
            mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 196] = stor19[stor20[address(arg1)]][10][address(arg3)][5][address(arg2)].field_0
            require ext_code.size(stor20[address(arg1)])
            call stor20[address(arg1)].0x4f60bad5 with:
                 gas gas_remaining wei
                args address(arg2), stor19[stor20[address(arg1)]][10][address(arg3)][5][address(arg2)].field_256, stor19[stor20[address(arg1)]][10][address(arg3)][5][address(arg2)].field_0
        else:
            if arg4 and stor19[stor20[address(arg1)]][10][address(arg3)][5][address(arg2)].field_0 > -1 / arg4:
                revert with 0, 17
            mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 164] = stor19[stor20[address(arg1)]][10][address(arg3)][5][address(arg2)].field_256
            mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 196] = arg4 * stor19[stor20[address(arg1)]][10][address(arg3)][5][address(arg2)].field_0 / 100
            require ext_code.size(stor20[address(arg1)])
            call stor20[address(arg1)].0x4f60bad5 with:
                 gas gas_remaining wei
                args address(arg2), stor19[stor20[address(arg1)]][10][address(arg3)][5][address(arg2)].field_256, arg4 * stor19[stor20[address(arg1)]][10][address(arg3)][5][address(arg2)].field_0 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 132] = stor20[address(arg1)]
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args stor20[address(arg1)]
        mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 128] = ext_call.return_data[0]
        require return_data.size >= 32
        stor19[stor20[address(arg1)]][10][address(arg3)].field_0 = ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        stor19[stor20[address(arg1)]][10][address(arg3)][5][address(arg2)].field_0 = 0
        if not stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
            if not stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                if address(arg2):
                    stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                    stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
            else:
                idx = 0
                s = -1
                while idx < stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                    if idx >= stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + 172 len 20] != address(arg2):
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = idx
                    continue 
                if address(arg2):
                    if s < 0:
                        stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                        stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
        else:
            mem[(2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + 160] = stor19[stor20[address(arg1)]][10][address(arg3)][4].field_0
            if (32 * stor19[stor20[address(arg1)]][10][address(arg3)].field_1024) + 32 > 64:
                mem[(2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + 192] = stor19[stor20[address(arg1)]][10][address(arg3)][4].field_256
                idx = (2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + 192
                s = 1
                while (2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + (32 * stor19[stor20[address(arg1)]][10][address(arg3)].field_1024) + 128 > idx:
                    mem[idx + 32] = stor19[stor20[address(arg1)]][10][address(arg3)][s + 4].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if not stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                if address(arg2):
                    stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                    stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
            else:
                idx = 0
                s = -1
                while idx < stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                    if idx >= stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + 172 len 20] != address(arg2):
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = idx
                    continue 
                if address(arg2):
                    if s < 0:
                        stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                        stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
}

function sub_cb4f1fc2(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    if stor19[address(arg1)].field_0:
        require address(arg1)
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if arg5 > 0:
                if not address(arg2):
                    if not address(arg4):
                        if 1 >= stor19[address(arg1)][10][address(arg3)].field_768:
                            require ext_code.size(address(arg1))
                            call address(arg1).sellToken(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args stor19[address(arg1)][10][address(arg3)].field_512, address(arg3), arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 4 == stor19[address(arg1)][10][address(arg3)].field_768:
                            require ext_code.size(address(arg1))
                            call address(arg1).withdrawWETH(address arg1) with:
                                 gas gas_remaining wei
                                args address(arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if stor19[address(arg1)].field_1536 > -1:
                            revert with 0, 17
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if stor16 > -1:
                            revert with 0, 17
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if 0 > -stor19[address(arg1)].field_1792 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor19[address(arg1)].field_1792 >= 0:
                            revert with 0, 17
                        if stor19[address(arg1)].field_1792 < 0 and 0 < -stor19[address(arg1)].field_1792 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                    else:
                        if uint8(stor22[stor1]):
                            if not uint8(stor22[address(arg1)]):
                                if not uint8(stor22[address(arg3)]):
                                    revert with 0, 'unsafe'
                        mem[ceil32(return_data.size) + 132] = address(arg3)
                        mem[ceil32(return_data.size) + 164] = address(arg4)
                        mem[ceil32(return_data.size) + 196] = arg5
                        require ext_code.size(address(arg1))
                        call address(arg1).swapTokens(address arg1, address arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args stor19[address(arg1)][10][address(arg3)].field_512, address(arg3), address(arg4), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor19[address(arg1)].field_2304:
                            mem[ceil32(return_data.size) + 128] = stor19[address(arg1)][9].field_0
                            if (32 * stor19[address(arg1)].field_2304) + 32 > 64:
                                mem[ceil32(return_data.size) + 160] = stor19[address(arg1)][9].field_256
                                idx = ceil32(return_data.size) + 160
                                s = 1
                                while ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 96 > idx:
                                    mem[idx + 32] = stor19[address(arg1)][s + 9].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        if not stor19[address(arg1)].field_2304:
                            if address(arg4):
                                stor19[address(arg1)].field_2304++
                                stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg4)
                        else:
                            idx = 0
                            s = -1
                            while idx < stor19[address(arg1)].field_2304:
                                if idx >= stor19[address(arg1)].field_2304:
                                    revert with 0, 50
                                if idx == -1:
                                    revert with 0, 17
                                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg4):
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = idx
                                continue 
                            if address(arg4):
                                if s < 0:
                                    stor19[address(arg1)].field_2304++
                                    stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg4)
                        staticcall address(arg3).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[address(arg1)][10][address(arg4)].field_0 = ext_call.return_data[0]
                        stor19[address(arg1)][10][address(arg4)].field_512 = stor19[address(arg1)][10][address(arg3)].field_512
                        if uint8(stor21[address(arg4)]):
                            stor19[address(arg1)][10][address(arg4)].field_768 = 4
                        else:
                            stor19[address(arg1)][10][address(arg4)].field_768 = 1
                    stor19[address(arg1)][10][address(arg3)].field_512 = stor19[address(arg1)][10][address(arg3)].field_512
                else:
                    if not address(arg4):
                        if 1 >= stor19[address(arg1)][10][address(arg3)].field_768:
                            require ext_code.size(address(arg1))
                            call address(arg1).sellToken(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), address(arg3), arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 4 == stor19[address(arg1)][10][address(arg3)].field_768:
                            require ext_code.size(address(arg1))
                            call address(arg1).withdrawWETH(address arg1) with:
                                 gas gas_remaining wei
                                args address(arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if stor19[address(arg1)].field_1536 > -1:
                            revert with 0, 17
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if stor16 > -1:
                            revert with 0, 17
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if 0 > -stor19[address(arg1)].field_1792 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor19[address(arg1)].field_1792 >= 0:
                            revert with 0, 17
                        if stor19[address(arg1)].field_1792 < 0 and 0 < -stor19[address(arg1)].field_1792 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                    else:
                        if uint8(stor22[stor1]):
                            if not uint8(stor22[address(arg1)]):
                                if not uint8(stor22[address(arg3)]):
                                    revert with 0, 'unsafe'
                        mem[ceil32(return_data.size) + 132] = address(arg3)
                        mem[ceil32(return_data.size) + 164] = address(arg4)
                        mem[ceil32(return_data.size) + 196] = arg5
                        require ext_code.size(address(arg1))
                        call address(arg1).swapTokens(address arg1, address arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args address(arg2), address(arg3), address(arg4), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor19[address(arg1)].field_2304:
                            mem[ceil32(return_data.size) + 128] = stor19[address(arg1)][9].field_0
                            if (32 * stor19[address(arg1)].field_2304) + 32 > 64:
                                mem[ceil32(return_data.size) + 160] = stor19[address(arg1)][9].field_256
                                idx = ceil32(return_data.size) + 160
                                s = 1
                                while ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 96 > idx:
                                    mem[idx + 32] = stor19[address(arg1)][s + 9].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        if not stor19[address(arg1)].field_2304:
                            if address(arg4):
                                stor19[address(arg1)].field_2304++
                                stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg4)
                        else:
                            idx = 0
                            s = -1
                            while idx < stor19[address(arg1)].field_2304:
                                if idx >= stor19[address(arg1)].field_2304:
                                    revert with 0, 50
                                if idx == -1:
                                    revert with 0, 17
                                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg4):
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = idx
                                continue 
                            if address(arg4):
                                if s < 0:
                                    stor19[address(arg1)].field_2304++
                                    stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg4)
                        staticcall address(arg3).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[address(arg1)][10][address(arg4)].field_0 = ext_call.return_data[0]
                        stor19[address(arg1)][10][address(arg4)].field_512 = address(arg2)
                        if uint8(stor21[address(arg4)]):
                            stor19[address(arg1)][10][address(arg4)].field_768 = 4
                        else:
                            stor19[address(arg1)][10][address(arg4)].field_768 = 1
                    stor19[address(arg1)][10][address(arg3)].field_512 = address(arg2)
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor19[address(arg1)][10][address(arg3)].field_0 = ext_call.return_data[0]
    else:
        require stor20[address(arg1)]
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args stor20[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if arg5 > 0:
                if not address(arg2):
                    if not address(arg4):
                        if 1 >= stor19[stor20[address(arg1)]][10][address(arg3)].field_768:
                            require ext_code.size(stor20[address(arg1)])
                            call stor20[address(arg1)].sellToken(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args stor19[stor20[address(arg1)]][10][address(arg3)].field_512, address(arg3), arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 4 == stor19[stor20[address(arg1)]][10][address(arg3)].field_768:
                            require ext_code.size(stor20[address(arg1)])
                            call stor20[address(arg1)].withdrawWETH(address arg1) with:
                                 gas gas_remaining wei
                                args address(arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if stor19[stor20[address(arg1)]].field_1536 > -1:
                            revert with 0, 17
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if stor16 > -1:
                            revert with 0, 17
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if 0 > -stor19[stor20[address(arg1)]].field_1792 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor19[stor20[address(arg1)]].field_1792 >= 0:
                            revert with 0, 17
                        if stor19[stor20[address(arg1)]].field_1792 < 0 and 0 < -stor19[stor20[address(arg1)]].field_1792 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                    else:
                        if uint8(stor22[stor1]):
                            if not uint8(stor22[stor20[address(arg1)]]):
                                if not uint8(stor22[address(arg3)]):
                                    revert with 0, 'unsafe'
                        mem[ceil32(return_data.size) + 132] = address(arg3)
                        mem[ceil32(return_data.size) + 164] = address(arg4)
                        mem[ceil32(return_data.size) + 196] = arg5
                        require ext_code.size(stor20[address(arg1)])
                        call stor20[address(arg1)].swapTokens(address arg1, address arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args stor19[stor20[address(arg1)]][10][address(arg3)].field_512, address(arg3), address(arg4), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor19[stor20[address(arg1)]].field_2304:
                            mem[ceil32(return_data.size) + 128] = stor19[stor20[address(arg1)]][9].field_0
                            if (32 * stor19[stor20[address(arg1)]].field_2304) + 32 > 64:
                                mem[ceil32(return_data.size) + 160] = stor19[stor20[address(arg1)]][9].field_256
                                idx = ceil32(return_data.size) + 160
                                s = 1
                                while ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 96 > idx:
                                    mem[idx + 32] = stor19[stor20[address(arg1)]][s + 9].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        if not stor19[stor20[address(arg1)]].field_2304:
                            if address(arg4):
                                stor19[stor20[address(arg1)]].field_2304++
                                stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg4)
                        else:
                            idx = 0
                            s = -1
                            while idx < stor19[stor20[address(arg1)]].field_2304:
                                if idx >= stor19[stor20[address(arg1)]].field_2304:
                                    revert with 0, 50
                                if idx == -1:
                                    revert with 0, 17
                                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg4):
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = idx
                                continue 
                            if address(arg4):
                                if s < 0:
                                    stor19[stor20[address(arg1)]].field_2304++
                                    stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg4)
                        staticcall address(arg3).0x70a08231 with:
                                gas gas_remaining wei
                               args stor20[address(arg1)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[stor20[address(arg1)]][10][address(arg4)].field_0 = ext_call.return_data[0]
                        stor19[stor20[address(arg1)]][10][address(arg4)].field_512 = stor19[stor20[address(arg1)]][10][address(arg3)].field_512
                        if uint8(stor21[address(arg4)]):
                            stor19[stor20[address(arg1)]][10][address(arg4)].field_768 = 4
                        else:
                            stor19[stor20[address(arg1)]][10][address(arg4)].field_768 = 1
                    stor19[stor20[address(arg1)]][10][address(arg3)].field_512 = stor19[stor20[address(arg1)]][10][address(arg3)].field_512
                else:
                    if not address(arg4):
                        if 1 >= stor19[stor20[address(arg1)]][10][address(arg3)].field_768:
                            require ext_code.size(stor20[address(arg1)])
                            call stor20[address(arg1)].sellToken(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), address(arg3), arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 4 == stor19[stor20[address(arg1)]][10][address(arg3)].field_768:
                            require ext_code.size(stor20[address(arg1)])
                            call stor20[address(arg1)].withdrawWETH(address arg1) with:
                                 gas gas_remaining wei
                                args address(arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if stor19[stor20[address(arg1)]].field_1536 > -1:
                            revert with 0, 17
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if stor16 > -1:
                            revert with 0, 17
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if 0 > -stor19[stor20[address(arg1)]].field_1792 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor19[stor20[address(arg1)]].field_1792 >= 0:
                            revert with 0, 17
                        if stor19[stor20[address(arg1)]].field_1792 < 0 and 0 < -stor19[stor20[address(arg1)]].field_1792 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                    else:
                        if uint8(stor22[stor1]):
                            if not uint8(stor22[stor20[address(arg1)]]):
                                if not uint8(stor22[address(arg3)]):
                                    revert with 0, 'unsafe'
                        mem[ceil32(return_data.size) + 132] = address(arg3)
                        mem[ceil32(return_data.size) + 164] = address(arg4)
                        mem[ceil32(return_data.size) + 196] = arg5
                        require ext_code.size(stor20[address(arg1)])
                        call stor20[address(arg1)].swapTokens(address arg1, address arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args address(arg2), address(arg3), address(arg4), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor19[stor20[address(arg1)]].field_2304:
                            mem[ceil32(return_data.size) + 128] = stor19[stor20[address(arg1)]][9].field_0
                            if (32 * stor19[stor20[address(arg1)]].field_2304) + 32 > 64:
                                mem[ceil32(return_data.size) + 160] = stor19[stor20[address(arg1)]][9].field_256
                                idx = ceil32(return_data.size) + 160
                                s = 1
                                while ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 96 > idx:
                                    mem[idx + 32] = stor19[stor20[address(arg1)]][s + 9].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        if not stor19[stor20[address(arg1)]].field_2304:
                            if address(arg4):
                                stor19[stor20[address(arg1)]].field_2304++
                                stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg4)
                        else:
                            idx = 0
                            s = -1
                            while idx < stor19[stor20[address(arg1)]].field_2304:
                                if idx >= stor19[stor20[address(arg1)]].field_2304:
                                    revert with 0, 50
                                if idx == -1:
                                    revert with 0, 17
                                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg4):
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = idx
                                continue 
                            if address(arg4):
                                if s < 0:
                                    stor19[stor20[address(arg1)]].field_2304++
                                    stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg4)
                        staticcall address(arg3).0x70a08231 with:
                                gas gas_remaining wei
                               args stor20[address(arg1)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[stor20[address(arg1)]][10][address(arg4)].field_0 = ext_call.return_data[0]
                        stor19[stor20[address(arg1)]][10][address(arg4)].field_512 = address(arg2)
                        if uint8(stor21[address(arg4)]):
                            stor19[stor20[address(arg1)]][10][address(arg4)].field_768 = 4
                        else:
                            stor19[stor20[address(arg1)]][10][address(arg4)].field_768 = 1
                    stor19[stor20[address(arg1)]][10][address(arg3)].field_512 = address(arg2)
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args stor20[address(arg1)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor19[stor20[address(arg1)]][10][address(arg3)].field_0 = ext_call.return_data[0]
}

function sub_330e9b30(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    if stor19[address(arg1)].field_0:
        require address(arg1)
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if arg5 > 0:
                if not address(arg2):
                    if not address(arg4):
                        if 1 >= stor19[address(arg1)][10][address(arg3)].field_768:
                            require ext_code.size(address(arg1))
                            call address(arg1).sellToken(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args stor19[address(arg1)][10][address(arg3)].field_512, address(arg3), arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 4 == stor19[address(arg1)][10][address(arg3)].field_768:
                            require ext_code.size(address(arg1))
                            call address(arg1).withdrawWETH(address arg1) with:
                                 gas gas_remaining wei
                                args address(arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if stor19[address(arg1)].field_1536 > -1:
                            revert with 0, 17
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if stor16 > -1:
                            revert with 0, 17
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if 0 > -stor19[address(arg1)].field_1792 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor19[address(arg1)].field_1792 >= 0:
                            revert with 0, 17
                        if stor19[address(arg1)].field_1792 < 0 and 0 < -stor19[address(arg1)].field_1792 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                    else:
                        if uint8(stor22[stor1]):
                            if not uint8(stor22[address(arg1)]):
                                if not uint8(stor22[address(arg3)]):
                                    revert with 0, 'unsafe'
                        mem[ceil32(return_data.size) + 132] = address(arg3)
                        mem[ceil32(return_data.size) + 164] = address(arg4)
                        mem[ceil32(return_data.size) + 196] = arg5
                        require ext_code.size(address(arg1))
                        call address(arg1).swapTokens(address arg1, address arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args stor19[address(arg1)][10][address(arg3)].field_512, address(arg3), address(arg4), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor19[address(arg1)].field_2304:
                            mem[ceil32(return_data.size) + 128] = stor19[address(arg1)][9].field_0
                            if (32 * stor19[address(arg1)].field_2304) + 32 > 64:
                                mem[ceil32(return_data.size) + 160] = stor19[address(arg1)][9].field_256
                                idx = ceil32(return_data.size) + 160
                                s = 1
                                while ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 96 > idx:
                                    mem[idx + 32] = stor19[address(arg1)][s + 9].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        if not stor19[address(arg1)].field_2304:
                            if address(arg4):
                                stor19[address(arg1)].field_2304++
                                stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg4)
                        else:
                            idx = 0
                            s = -1
                            while idx < stor19[address(arg1)].field_2304:
                                if idx >= stor19[address(arg1)].field_2304:
                                    revert with 0, 50
                                if idx == -1:
                                    revert with 0, 17
                                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg4):
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = idx
                                continue 
                            if address(arg4):
                                if s < 0:
                                    stor19[address(arg1)].field_2304++
                                    stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg4)
                        staticcall address(arg3).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[address(arg1)][10][address(arg4)].field_0 = ext_call.return_data[0]
                        stor19[address(arg1)][10][address(arg4)].field_512 = stor19[address(arg1)][10][address(arg3)].field_512
                        if uint8(stor21[address(arg4)]):
                            stor19[address(arg1)][10][address(arg4)].field_768 = 4
                        else:
                            stor19[address(arg1)][10][address(arg4)].field_768 = 1
                    stor19[address(arg1)][10][address(arg3)].field_512 = stor19[address(arg1)][10][address(arg3)].field_512
                else:
                    if not address(arg4):
                        if 1 >= stor19[address(arg1)][10][address(arg3)].field_768:
                            require ext_code.size(address(arg1))
                            call address(arg1).sellToken(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), address(arg3), arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 4 == stor19[address(arg1)][10][address(arg3)].field_768:
                            require ext_code.size(address(arg1))
                            call address(arg1).withdrawWETH(address arg1) with:
                                 gas gas_remaining wei
                                args address(arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if stor19[address(arg1)].field_1536 > -1:
                            revert with 0, 17
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if stor16 > -1:
                            revert with 0, 17
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if 0 > -stor19[address(arg1)].field_1792 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor19[address(arg1)].field_1792 >= 0:
                            revert with 0, 17
                        if stor19[address(arg1)].field_1792 < 0 and 0 < -stor19[address(arg1)].field_1792 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                    else:
                        if uint8(stor22[stor1]):
                            if not uint8(stor22[address(arg1)]):
                                if not uint8(stor22[address(arg3)]):
                                    revert with 0, 'unsafe'
                        mem[ceil32(return_data.size) + 132] = address(arg3)
                        mem[ceil32(return_data.size) + 164] = address(arg4)
                        mem[ceil32(return_data.size) + 196] = arg5
                        require ext_code.size(address(arg1))
                        call address(arg1).swapTokens(address arg1, address arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args address(arg2), address(arg3), address(arg4), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor19[address(arg1)].field_2304:
                            mem[ceil32(return_data.size) + 128] = stor19[address(arg1)][9].field_0
                            if (32 * stor19[address(arg1)].field_2304) + 32 > 64:
                                mem[ceil32(return_data.size) + 160] = stor19[address(arg1)][9].field_256
                                idx = ceil32(return_data.size) + 160
                                s = 1
                                while ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 96 > idx:
                                    mem[idx + 32] = stor19[address(arg1)][s + 9].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        if not stor19[address(arg1)].field_2304:
                            if address(arg4):
                                stor19[address(arg1)].field_2304++
                                stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg4)
                        else:
                            idx = 0
                            s = -1
                            while idx < stor19[address(arg1)].field_2304:
                                if idx >= stor19[address(arg1)].field_2304:
                                    revert with 0, 50
                                if idx == -1:
                                    revert with 0, 17
                                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg4):
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = idx
                                continue 
                            if address(arg4):
                                if s < 0:
                                    stor19[address(arg1)].field_2304++
                                    stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg4)
                        staticcall address(arg3).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[address(arg1)][10][address(arg4)].field_0 = ext_call.return_data[0]
                        stor19[address(arg1)][10][address(arg4)].field_512 = address(arg2)
                        if uint8(stor21[address(arg4)]):
                            stor19[address(arg1)][10][address(arg4)].field_768 = 4
                        else:
                            stor19[address(arg1)][10][address(arg4)].field_768 = 1
                    stor19[address(arg1)][10][address(arg3)].field_512 = address(arg2)
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor19[address(arg1)][10][address(arg3)].field_0 = ext_call.return_data[0]
    else:
        require stor20[address(arg1)]
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args stor20[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if arg5 > 0:
                if not address(arg2):
                    if not address(arg4):
                        if 1 >= stor19[stor20[address(arg1)]][10][address(arg3)].field_768:
                            require ext_code.size(stor20[address(arg1)])
                            call stor20[address(arg1)].sellToken(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args stor19[stor20[address(arg1)]][10][address(arg3)].field_512, address(arg3), arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 4 == stor19[stor20[address(arg1)]][10][address(arg3)].field_768:
                            require ext_code.size(stor20[address(arg1)])
                            call stor20[address(arg1)].withdrawWETH(address arg1) with:
                                 gas gas_remaining wei
                                args address(arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if stor19[stor20[address(arg1)]].field_1536 > -1:
                            revert with 0, 17
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if stor16 > -1:
                            revert with 0, 17
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if 0 > -stor19[stor20[address(arg1)]].field_1792 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor19[stor20[address(arg1)]].field_1792 >= 0:
                            revert with 0, 17
                        if stor19[stor20[address(arg1)]].field_1792 < 0 and 0 < -stor19[stor20[address(arg1)]].field_1792 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                    else:
                        if uint8(stor22[stor1]):
                            if not uint8(stor22[stor20[address(arg1)]]):
                                if not uint8(stor22[address(arg3)]):
                                    revert with 0, 'unsafe'
                        mem[ceil32(return_data.size) + 132] = address(arg3)
                        mem[ceil32(return_data.size) + 164] = address(arg4)
                        mem[ceil32(return_data.size) + 196] = arg5
                        require ext_code.size(stor20[address(arg1)])
                        call stor20[address(arg1)].swapTokens(address arg1, address arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args stor19[stor20[address(arg1)]][10][address(arg3)].field_512, address(arg3), address(arg4), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor19[stor20[address(arg1)]].field_2304:
                            mem[ceil32(return_data.size) + 128] = stor19[stor20[address(arg1)]][9].field_0
                            if (32 * stor19[stor20[address(arg1)]].field_2304) + 32 > 64:
                                mem[ceil32(return_data.size) + 160] = stor19[stor20[address(arg1)]][9].field_256
                                idx = ceil32(return_data.size) + 160
                                s = 1
                                while ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 96 > idx:
                                    mem[idx + 32] = stor19[stor20[address(arg1)]][s + 9].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        if not stor19[stor20[address(arg1)]].field_2304:
                            if address(arg4):
                                stor19[stor20[address(arg1)]].field_2304++
                                stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg4)
                        else:
                            idx = 0
                            s = -1
                            while idx < stor19[stor20[address(arg1)]].field_2304:
                                if idx >= stor19[stor20[address(arg1)]].field_2304:
                                    revert with 0, 50
                                if idx == -1:
                                    revert with 0, 17
                                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg4):
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = idx
                                continue 
                            if address(arg4):
                                if s < 0:
                                    stor19[stor20[address(arg1)]].field_2304++
                                    stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg4)
                        staticcall address(arg3).0x70a08231 with:
                                gas gas_remaining wei
                               args stor20[address(arg1)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[stor20[address(arg1)]][10][address(arg4)].field_0 = ext_call.return_data[0]
                        stor19[stor20[address(arg1)]][10][address(arg4)].field_512 = stor19[stor20[address(arg1)]][10][address(arg3)].field_512
                        if uint8(stor21[address(arg4)]):
                            stor19[stor20[address(arg1)]][10][address(arg4)].field_768 = 4
                        else:
                            stor19[stor20[address(arg1)]][10][address(arg4)].field_768 = 1
                    stor19[stor20[address(arg1)]][10][address(arg3)].field_512 = stor19[stor20[address(arg1)]][10][address(arg3)].field_512
                else:
                    if not address(arg4):
                        if 1 >= stor19[stor20[address(arg1)]][10][address(arg3)].field_768:
                            require ext_code.size(stor20[address(arg1)])
                            call stor20[address(arg1)].sellToken(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), address(arg3), arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 4 == stor19[stor20[address(arg1)]][10][address(arg3)].field_768:
                            require ext_code.size(stor20[address(arg1)])
                            call stor20[address(arg1)].withdrawWETH(address arg1) with:
                                 gas gas_remaining wei
                                args address(arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if stor19[stor20[address(arg1)]].field_1536 > -1:
                            revert with 0, 17
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if stor16 > -1:
                            revert with 0, 17
                        if eth.balance(stor2) < eth.balance(stor2):
                            revert with 0, 17
                        if 0 > -stor19[stor20[address(arg1)]].field_1792 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor19[stor20[address(arg1)]].field_1792 >= 0:
                            revert with 0, 17
                        if stor19[stor20[address(arg1)]].field_1792 < 0 and 0 < -stor19[stor20[address(arg1)]].field_1792 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                    else:
                        if uint8(stor22[stor1]):
                            if not uint8(stor22[stor20[address(arg1)]]):
                                if not uint8(stor22[address(arg3)]):
                                    revert with 0, 'unsafe'
                        mem[ceil32(return_data.size) + 132] = address(arg3)
                        mem[ceil32(return_data.size) + 164] = address(arg4)
                        mem[ceil32(return_data.size) + 196] = arg5
                        require ext_code.size(stor20[address(arg1)])
                        call stor20[address(arg1)].swapTokens(address arg1, address arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args address(arg2), address(arg3), address(arg4), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor19[stor20[address(arg1)]].field_2304:
                            mem[ceil32(return_data.size) + 128] = stor19[stor20[address(arg1)]][9].field_0
                            if (32 * stor19[stor20[address(arg1)]].field_2304) + 32 > 64:
                                mem[ceil32(return_data.size) + 160] = stor19[stor20[address(arg1)]][9].field_256
                                idx = ceil32(return_data.size) + 160
                                s = 1
                                while ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 96 > idx:
                                    mem[idx + 32] = stor19[stor20[address(arg1)]][s + 9].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        if not stor19[stor20[address(arg1)]].field_2304:
                            if address(arg4):
                                stor19[stor20[address(arg1)]].field_2304++
                                stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg4)
                        else:
                            idx = 0
                            s = -1
                            while idx < stor19[stor20[address(arg1)]].field_2304:
                                if idx >= stor19[stor20[address(arg1)]].field_2304:
                                    revert with 0, 50
                                if idx == -1:
                                    revert with 0, 17
                                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg4):
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = idx
                                continue 
                            if address(arg4):
                                if s < 0:
                                    stor19[stor20[address(arg1)]].field_2304++
                                    stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg4)
                        staticcall address(arg3).0x70a08231 with:
                                gas gas_remaining wei
                               args stor20[address(arg1)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[stor20[address(arg1)]][10][address(arg4)].field_0 = ext_call.return_data[0]
                        stor19[stor20[address(arg1)]][10][address(arg4)].field_512 = address(arg2)
                        if uint8(stor21[address(arg4)]):
                            stor19[stor20[address(arg1)]][10][address(arg4)].field_768 = 4
                        else:
                            stor19[stor20[address(arg1)]][10][address(arg4)].field_768 = 1
                    stor19[stor20[address(arg1)]][10][address(arg3)].field_512 = address(arg2)
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args stor20[address(arg1)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor19[stor20[address(arg1)]][10][address(arg3)].field_0 = ext_call.return_data[0]
}

function sub_feab4a78(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == bool(arg4)
    if not uint8(stor6[msg.sender]):
        revert with 0, 'not authed!'
    if stor19[address(arg1)].field_0:
        require address(arg1)
        if uint8(stor23):
            revert with 0, 'invalid farmer'
        if not stor19[address(arg1)].field_1536:
            revert with 0, 'invalid farmer'
        if not stor19[address(arg1)].field_0:
            revert with 0, 'invalid farmer'
        if msg.value > stor19[address(arg1)].field_1536:
            revert with 0, 'invalid farmer'
        if not arg4:
            if uint8(stor22[stor1]):
                if not uint8(stor22[address(arg1)]):
                    if not uint8(stor22[address(arg2)]):
                        revert with 0, 'unsafe'
            mem[132] = address(arg2)
            require ext_code.size(address(arg1))
            call address(arg1).buyToken(address arg1, address arg2) with:
               value msg.value wei
                 gas gas_remaining wei
                args address(arg3), address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(stor2) > !msg.value:
                revert with 0, 17
            if eth.balance(stor2) + msg.value < eth.balance(stor2):
                revert with 0, 17
            if stor19[address(arg1)].field_1536 < msg.value:
                revert with 0, 17
            stor19[address(arg1)].field_1536 -= msg.value
            if stor17 > !msg.value:
                revert with 0, 17
            stor17 += msg.value
            if stor19[address(arg1)].field_1792 < msg.value - 0x8000000000000000000000000000000000000000000000000000000000000000 and msg.value >= 0:
                revert with 0, 17
            if msg.value < 0 and stor19[address(arg1)].field_1792 > msg.value + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            stor19[address(arg1)].field_1792 -= msg.value
            if stor19[address(arg1)].field_2304:
                mem[128] = stor19[address(arg1)][9].field_0
                if (32 * stor19[address(arg1)].field_2304) + 32 > 64:
                    mem[160] = stor19[address(arg1)][9].field_256
                    idx = 160
                    s = 1
                    while (32 * stor19[address(arg1)].field_2304) + 96 > idx:
                        mem[idx + 32] = stor19[address(arg1)][s + 9].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
            if not stor19[address(arg1)].field_2304:
                if address(arg2):
                    stor19[address(arg1)].field_2304++
                    stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg2)
            else:
                idx = 0
                s = -1
                while idx < stor19[address(arg1)].field_2304:
                    if idx >= stor19[address(arg1)].field_2304:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    if mem[(32 * idx) + 140 len 20] != address(arg2):
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = idx
                    continue 
                if address(arg2):
                    if s < 0:
                        stor19[address(arg1)].field_2304++
                        stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg2)
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor19[address(arg1)][10][address(arg2)].field_0 = ext_call.return_data[0]
            stor19[address(arg1)][10][address(arg2)].field_512 = address(arg3)
            if arg4:
                stor19[address(arg1)][10][address(arg2)].field_768 = 4
            else:
                if uint8(stor21[address(arg2)]):
                    stor19[address(arg1)][10][address(arg2)].field_768 = 4
                else:
                    stor19[address(arg1)][10][address(arg2)].field_768 = 1
        else:
            if not address(arg3):
                if not uint8(stor21[address(arg2)]):
                    revert with 0, 'unsafe depositor'
                require ext_code.size(address(arg1))
                call address(arg1).0x5a9fcd3d with:
                   value msg.value wei
                     gas gas_remaining wei
                    args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(stor2) > !msg.value:
                    revert with 0, 17
                if eth.balance(stor2) + msg.value < eth.balance(stor2):
                    revert with 0, 17
                if stor19[address(arg1)].field_1536 < msg.value:
                    revert with 0, 17
                stor19[address(arg1)].field_1536 -= msg.value
                if stor17 > !msg.value:
                    revert with 0, 17
                stor17 += msg.value
                if stor19[address(arg1)].field_1792 < msg.value - 0x8000000000000000000000000000000000000000000000000000000000000000 and msg.value >= 0:
                    revert with 0, 17
                if msg.value < 0 and stor19[address(arg1)].field_1792 > msg.value + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                stor19[address(arg1)].field_1792 -= msg.value
                if stor19[address(arg1)].field_2304:
                    mem[128] = stor19[address(arg1)][9].field_0
                    if (32 * stor19[address(arg1)].field_2304) + 32 > 64:
                        mem[160] = stor19[address(arg1)][9].field_256
                        idx = 160
                        s = 1
                        while (32 * stor19[address(arg1)].field_2304) + 96 > idx:
                            mem[idx + 32] = stor19[address(arg1)][s + 9].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                if not stor19[address(arg1)].field_2304:
                    if address(arg2):
                        stor19[address(arg1)].field_2304++
                        stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg2)
                else:
                    idx = 0
                    s = -1
                    while idx < stor19[address(arg1)].field_2304:
                        if idx >= stor19[address(arg1)].field_2304:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        if mem[(32 * idx) + 140 len 20] != address(arg2):
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = idx
                        continue 
                    if address(arg2):
                        if s < 0:
                            stor19[address(arg1)].field_2304++
                            stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg2)
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor19[address(arg1)][10][address(arg2)].field_0 = ext_call.return_data[0]
                stor19[address(arg1)][10][address(arg2)].field_512 = address(arg3)
                if arg4:
                    stor19[address(arg1)][10][address(arg2)].field_768 = 4
                else:
                    if uint8(stor21[address(arg2)]):
                        stor19[address(arg1)][10][address(arg2)].field_768 = 4
                    else:
                        stor19[address(arg1)][10][address(arg2)].field_768 = 1
            else:
                staticcall address(arg3).WAVAX() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not uint8(stor21[ext_call.return_data[12 len 20]]):
                    revert with 0, 'unsafe depositor'
                require ext_code.size(address(arg1))
                call address(arg1).0x5a9fcd3d with:
                   value msg.value wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(stor2) > !msg.value:
                    revert with 0, 17
                if eth.balance(stor2) + msg.value < eth.balance(stor2):
                    revert with 0, 17
                if stor19[address(arg1)].field_1536 < msg.value:
                    revert with 0, 17
                stor19[address(arg1)].field_1536 -= msg.value
                if stor17 > !msg.value:
                    revert with 0, 17
                stor17 += msg.value
                if stor19[address(arg1)].field_1792 < msg.value - 0x8000000000000000000000000000000000000000000000000000000000000000 and msg.value >= 0:
                    revert with 0, 17
                if msg.value < 0 and stor19[address(arg1)].field_1792 > msg.value + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                stor19[address(arg1)].field_1792 -= msg.value
                if stor19[address(arg1)].field_2304:
                    mem[ceil32(return_data.size) + 128] = stor19[address(arg1)][9].field_0
                    if (32 * stor19[address(arg1)].field_2304) + 32 > 64:
                        mem[ceil32(return_data.size) + 160] = stor19[address(arg1)][9].field_256
                        idx = ceil32(return_data.size) + 160
                        s = 1
                        while ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 96 > idx:
                            mem[idx + 32] = stor19[address(arg1)][s + 9].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                if not stor19[address(arg1)].field_2304:
                    if address(ext_call.return_data[0]):
                        stor19[address(arg1)].field_2304++
                        stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(ext_call.return_data[0])
                else:
                    idx = 0
                    s = -1
                    while idx < stor19[address(arg1)].field_2304:
                        if idx >= stor19[address(arg1)].field_2304:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(ext_call.return_data[0]):
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = idx
                        continue 
                    if address(ext_call.return_data[0]):
                        if s < 0:
                            stor19[address(arg1)].field_2304++
                            stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(ext_call.return_data[0])
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor19[address(arg1)][10][address(ext_call.return_data[0])].field_0 = ext_call.return_data[0]
                stor19[address(arg1)][10][address(ext_call.return_data[0])].field_512 = address(arg3)
                if arg4:
                    stor19[address(arg1)][10][address(ext_call.return_data[0])].field_768 = 4
                else:
                    if uint8(stor21[address(ext_call.return_data[0])]):
                        stor19[address(arg1)][10][address(ext_call.return_data[0])].field_768 = 4
                    else:
                        stor19[address(arg1)][10][address(ext_call.return_data[0])].field_768 = 1
    else:
        require stor20[address(arg1)]
        if uint8(stor23):
            revert with 0, 'invalid farmer'
        if not stor19[stor20[address(arg1)]].field_1536:
            revert with 0, 'invalid farmer'
        if not stor19[stor20[address(arg1)]].field_0:
            revert with 0, 'invalid farmer'
        if msg.value > stor19[stor20[address(arg1)]].field_1536:
            revert with 0, 'invalid farmer'
        if not arg4:
            if uint8(stor22[stor1]):
                if not uint8(stor22[stor20[address(arg1)]]):
                    if not uint8(stor22[address(arg2)]):
                        revert with 0, 'unsafe'
            mem[132] = address(arg2)
            require ext_code.size(stor20[address(arg1)])
            call stor20[address(arg1)].buyToken(address arg1, address arg2) with:
               value msg.value wei
                 gas gas_remaining wei
                args address(arg3), address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(stor2) > !msg.value:
                revert with 0, 17
            if eth.balance(stor2) + msg.value < eth.balance(stor2):
                revert with 0, 17
            if stor19[stor20[address(arg1)]].field_1536 < msg.value:
                revert with 0, 17
            stor19[stor20[address(arg1)]].field_1536 -= msg.value
            if stor17 > !msg.value:
                revert with 0, 17
            stor17 += msg.value
            if stor19[stor20[address(arg1)]].field_1792 < msg.value - 0x8000000000000000000000000000000000000000000000000000000000000000 and msg.value >= 0:
                revert with 0, 17
            if msg.value < 0 and stor19[stor20[address(arg1)]].field_1792 > msg.value + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            stor19[stor20[address(arg1)]].field_1792 -= msg.value
            if stor19[stor20[address(arg1)]].field_2304:
                mem[128] = stor19[stor20[address(arg1)]][9].field_0
                if (32 * stor19[stor20[address(arg1)]].field_2304) + 32 > 64:
                    mem[160] = stor19[stor20[address(arg1)]][9].field_256
                    idx = 160
                    s = 1
                    while (32 * stor19[stor20[address(arg1)]].field_2304) + 96 > idx:
                        mem[idx + 32] = stor19[stor20[address(arg1)]][s + 9].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
            if not stor19[stor20[address(arg1)]].field_2304:
                if address(arg2):
                    stor19[stor20[address(arg1)]].field_2304++
                    stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg2)
            else:
                idx = 0
                s = -1
                while idx < stor19[stor20[address(arg1)]].field_2304:
                    if idx >= stor19[stor20[address(arg1)]].field_2304:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    if mem[(32 * idx) + 140 len 20] != address(arg2):
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = idx
                    continue 
                if address(arg2):
                    if s < 0:
                        stor19[stor20[address(arg1)]].field_2304++
                        stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg2)
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args stor20[address(arg1)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor19[stor20[address(arg1)]][10][address(arg2)].field_0 = ext_call.return_data[0]
            stor19[stor20[address(arg1)]][10][address(arg2)].field_512 = address(arg3)
            if arg4:
                stor19[stor20[address(arg1)]][10][address(arg2)].field_768 = 4
            else:
                if uint8(stor21[address(arg2)]):
                    stor19[stor20[address(arg1)]][10][address(arg2)].field_768 = 4
                else:
                    stor19[stor20[address(arg1)]][10][address(arg2)].field_768 = 1
        else:
            if not address(arg3):
                if not uint8(stor21[address(arg2)]):
                    revert with 0, 'unsafe depositor'
                require ext_code.size(stor20[address(arg1)])
                call stor20[address(arg1)].0x5a9fcd3d with:
                   value msg.value wei
                     gas gas_remaining wei
                    args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(stor2) > !msg.value:
                    revert with 0, 17
                if eth.balance(stor2) + msg.value < eth.balance(stor2):
                    revert with 0, 17
                if stor19[stor20[address(arg1)]].field_1536 < msg.value:
                    revert with 0, 17
                stor19[stor20[address(arg1)]].field_1536 -= msg.value
                if stor17 > !msg.value:
                    revert with 0, 17
                stor17 += msg.value
                if stor19[stor20[address(arg1)]].field_1792 < msg.value - 0x8000000000000000000000000000000000000000000000000000000000000000 and msg.value >= 0:
                    revert with 0, 17
                if msg.value < 0 and stor19[stor20[address(arg1)]].field_1792 > msg.value + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                stor19[stor20[address(arg1)]].field_1792 -= msg.value
                if stor19[stor20[address(arg1)]].field_2304:
                    mem[128] = stor19[stor20[address(arg1)]][9].field_0
                    if (32 * stor19[stor20[address(arg1)]].field_2304) + 32 > 64:
                        mem[160] = stor19[stor20[address(arg1)]][9].field_256
                        idx = 160
                        s = 1
                        while (32 * stor19[stor20[address(arg1)]].field_2304) + 96 > idx:
                            mem[idx + 32] = stor19[stor20[address(arg1)]][s + 9].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                if not stor19[stor20[address(arg1)]].field_2304:
                    if address(arg2):
                        stor19[stor20[address(arg1)]].field_2304++
                        stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg2)
                else:
                    idx = 0
                    s = -1
                    while idx < stor19[stor20[address(arg1)]].field_2304:
                        if idx >= stor19[stor20[address(arg1)]].field_2304:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        if mem[(32 * idx) + 140 len 20] != address(arg2):
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = idx
                        continue 
                    if address(arg2):
                        if s < 0:
                            stor19[stor20[address(arg1)]].field_2304++
                            stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg2)
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args stor20[address(arg1)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor19[stor20[address(arg1)]][10][address(arg2)].field_0 = ext_call.return_data[0]
                stor19[stor20[address(arg1)]][10][address(arg2)].field_512 = address(arg3)
                if arg4:
                    stor19[stor20[address(arg1)]][10][address(arg2)].field_768 = 4
                else:
                    if uint8(stor21[address(arg2)]):
                        stor19[stor20[address(arg1)]][10][address(arg2)].field_768 = 4
                    else:
                        stor19[stor20[address(arg1)]][10][address(arg2)].field_768 = 1
            else:
                staticcall address(arg3).WAVAX() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not uint8(stor21[ext_call.return_data[12 len 20]]):
                    revert with 0, 'unsafe depositor'
                require ext_code.size(stor20[address(arg1)])
                call stor20[address(arg1)].0x5a9fcd3d with:
                   value msg.value wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(stor2) > !msg.value:
                    revert with 0, 17
                if eth.balance(stor2) + msg.value < eth.balance(stor2):
                    revert with 0, 17
                if stor19[stor20[address(arg1)]].field_1536 < msg.value:
                    revert with 0, 17
                stor19[stor20[address(arg1)]].field_1536 -= msg.value
                if stor17 > !msg.value:
                    revert with 0, 17
                stor17 += msg.value
                if stor19[stor20[address(arg1)]].field_1792 < msg.value - 0x8000000000000000000000000000000000000000000000000000000000000000 and msg.value >= 0:
                    revert with 0, 17
                if msg.value < 0 and stor19[stor20[address(arg1)]].field_1792 > msg.value + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                stor19[stor20[address(arg1)]].field_1792 -= msg.value
                if stor19[stor20[address(arg1)]].field_2304:
                    mem[ceil32(return_data.size) + 128] = stor19[stor20[address(arg1)]][9].field_0
                    if (32 * stor19[stor20[address(arg1)]].field_2304) + 32 > 64:
                        mem[ceil32(return_data.size) + 160] = stor19[stor20[address(arg1)]][9].field_256
                        idx = ceil32(return_data.size) + 160
                        s = 1
                        while ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 96 > idx:
                            mem[idx + 32] = stor19[stor20[address(arg1)]][s + 9].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                if not stor19[stor20[address(arg1)]].field_2304:
                    if address(ext_call.return_data[0]):
                        stor19[stor20[address(arg1)]].field_2304++
                        stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(ext_call.return_data[0])
                else:
                    idx = 0
                    s = -1
                    while idx < stor19[stor20[address(arg1)]].field_2304:
                        if idx >= stor19[stor20[address(arg1)]].field_2304:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(ext_call.return_data[0]):
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = idx
                        continue 
                    if address(ext_call.return_data[0]):
                        if s < 0:
                            stor19[stor20[address(arg1)]].field_2304++
                            stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(ext_call.return_data[0])
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args stor20[address(arg1)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor19[stor20[address(arg1)]][10][address(ext_call.return_data[0])].field_0 = ext_call.return_data[0]
                stor19[stor20[address(arg1)]][10][address(ext_call.return_data[0])].field_512 = address(arg3)
                if arg4:
                    stor19[stor20[address(arg1)]][10][address(ext_call.return_data[0])].field_768 = 4
                else:
                    if uint8(stor21[address(ext_call.return_data[0])]):
                        stor19[stor20[address(arg1)]][10][address(ext_call.return_data[0])].field_768 = 4
                    else:
                        stor19[stor20[address(arg1)]][10][address(ext_call.return_data[0])].field_768 = 1
}

function sub_246a638d(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    if not uint8(stor6[msg.sender]):
        if stor2 != msg.sender:
            revert with 0, 'not authed!'
    if stor19[address(arg1)].field_0:
        require address(arg1)
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor19[address(arg1)][10][address(arg3)].field_0 = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = stor19[address(arg1)].field_2304
        if stor19[address(arg1)].field_2304:
            mem[ceil32(return_data.size) + 128] = stor19[address(arg1)][9].field_0
            idx = ceil32(return_data.size) + 128
            s = 0
            while ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 96 > idx:
                mem[idx + 32] = stor19[address(arg1)][s + 9].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if not stor19[address(arg1)].field_2304:
            if address(arg3):
                stor19[address(arg1)].field_2304++
                stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg3)
        else:
            idx = 0
            s = -1
            while idx < stor19[address(arg1)].field_2304:
                if idx >= stor19[address(arg1)].field_2304:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg3):
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = idx
                continue 
            if address(arg3):
                if s < 0:
                    stor19[address(arg1)].field_2304++
                    stor[('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_2304].field_0 = address(arg3)
        if ext_call.return_data[0] <= 0:
            if not stor19[address(arg1)][10][address(arg3)].field_1024:
                if not stor19[address(arg1)][10][address(arg3)].field_1024:
                    if address(arg2):
                        stor19[address(arg1)][10][address(arg3)].field_1024++
                        stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
                else:
                    idx = 0
                    s = -1
                    while idx < stor19[address(arg1)][10][address(arg3)].field_1024:
                        if idx >= stor19[address(arg1)][10][address(arg3)].field_1024:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        if mem[(32 * idx) + ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 172 len 20] != address(arg2):
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = idx
                        continue 
                    if address(arg2):
                        if s < 0:
                            stor19[address(arg1)][10][address(arg3)].field_1024++
                            stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
            else:
                mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 160] = stor19[address(arg1)][10][address(arg3)][4].field_0
                if (32 * stor19[address(arg1)][10][address(arg3)].field_1024) + 32 > 64:
                    mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 192] = stor19[address(arg1)][10][address(arg3)][4].field_256
                    idx = ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 192
                    s = 1
                    while ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + (32 * stor19[address(arg1)][10][address(arg3)].field_1024) + 128 > idx:
                        mem[idx + 32] = stor19[address(arg1)][10][address(arg3)][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if not stor19[address(arg1)][10][address(arg3)].field_1024:
                    if address(arg2):
                        stor19[address(arg1)][10][address(arg3)].field_1024++
                        stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
                else:
                    idx = 0
                    s = -1
                    while idx < stor19[address(arg1)][10][address(arg3)].field_1024:
                        if idx >= stor19[address(arg1)][10][address(arg3)].field_1024:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        if mem[(32 * idx) + ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 172 len 20] != address(arg2):
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = idx
                        continue 
                    if address(arg2):
                        if s < 0:
                            stor19[address(arg1)][10][address(arg3)].field_1024++
                            stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
        else:
            if not uint8(stor21[address(arg2)]):
                if not stor19[address(arg1)][10][address(arg3)].field_1024:
                    if not stor19[address(arg1)][10][address(arg3)].field_1024:
                        if address(arg2):
                            stor19[address(arg1)][10][address(arg3)].field_1024++
                            stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
                    else:
                        idx = 0
                        s = -1
                        while idx < stor19[address(arg1)][10][address(arg3)].field_1024:
                            if idx >= stor19[address(arg1)][10][address(arg3)].field_1024:
                                revert with 0, 50
                            if idx == -1:
                                revert with 0, 17
                            if mem[(32 * idx) + ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 172 len 20] != address(arg2):
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = idx
                            continue 
                        if address(arg2):
                            if s < 0:
                                stor19[address(arg1)][10][address(arg3)].field_1024++
                                stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
                else:
                    mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 160] = stor19[address(arg1)][10][address(arg3)][4].field_0
                    if (32 * stor19[address(arg1)][10][address(arg3)].field_1024) + 32 > 64:
                        mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 192] = stor19[address(arg1)][10][address(arg3)][4].field_256
                        idx = ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 192
                        s = 1
                        while ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + (32 * stor19[address(arg1)][10][address(arg3)].field_1024) + 128 > idx:
                            mem[idx + 32] = stor19[address(arg1)][10][address(arg3)][s + 4].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if not stor19[address(arg1)][10][address(arg3)].field_1024:
                        if address(arg2):
                            stor19[address(arg1)][10][address(arg3)].field_1024++
                            stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
                    else:
                        idx = 0
                        s = -1
                        while idx < stor19[address(arg1)][10][address(arg3)].field_1024:
                            if idx >= stor19[address(arg1)][10][address(arg3)].field_1024:
                                revert with 0, 50
                            if idx == -1:
                                revert with 0, 17
                            if mem[(32 * idx) + ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 172 len 20] != address(arg2):
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = idx
                            continue 
                        if address(arg2):
                            if s < 0:
                                stor19[address(arg1)][10][address(arg3)].field_1024++
                                stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
            else:
                mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 164] = address(arg2)
                mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 196] = arg4
                mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 228] = arg5
                require ext_code.size(address(arg1))
                call address(arg1).0x42105d6c with:
                     gas gas_remaining wei
                    args address(arg3), address(arg2), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 132] = address(arg1)
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[ceil32(return_data.size) + (32 * stor19[address(arg1)].field_2304) + 128] = ext_call.return_data[0]
                require return_data.size >= 32
                stor19[address(arg1)][10][address(arg3)].field_0 = ext_call.return_data[0]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                stor19[address(arg1)][10][address(arg3)][5][address(arg2)].field_0 = 0
                stor19[address(arg1)][10][address(arg3)][5][address(arg2)].field_256 = arg4
                if not stor19[address(arg1)][10][address(arg3)].field_1024:
                    if not stor19[address(arg1)][10][address(arg3)].field_1024:
                        if address(arg2):
                            stor19[address(arg1)][10][address(arg3)].field_1024++
                            stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
                    else:
                        idx = 0
                        s = -1
                        while idx < stor19[address(arg1)][10][address(arg3)].field_1024:
                            if idx >= stor19[address(arg1)][10][address(arg3)].field_1024:
                                revert with 0, 50
                            if idx == -1:
                                revert with 0, 17
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + 172 len 20] != address(arg2):
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = idx
                            continue 
                        if address(arg2):
                            if s < 0:
                                stor19[address(arg1)][10][address(arg3)].field_1024++
                                stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
                else:
                    mem[(2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + 160] = stor19[address(arg1)][10][address(arg3)][4].field_0
                    if (32 * stor19[address(arg1)][10][address(arg3)].field_1024) + 32 > 64:
                        mem[(2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + 192] = stor19[address(arg1)][10][address(arg3)][4].field_256
                        idx = (2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + 192
                        s = 1
                        while (2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + (32 * stor19[address(arg1)][10][address(arg3)].field_1024) + 128 > idx:
                            mem[idx + 32] = stor19[address(arg1)][10][address(arg3)][s + 4].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if not stor19[address(arg1)][10][address(arg3)].field_1024:
                        if address(arg2):
                            stor19[address(arg1)][10][address(arg3)].field_1024++
                            stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
                    else:
                        idx = 0
                        s = -1
                        while idx < stor19[address(arg1)][10][address(arg3)].field_1024:
                            if idx >= stor19[address(arg1)][10][address(arg3)].field_1024:
                                revert with 0, 50
                            if idx == -1:
                                revert with 0, 17
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * stor19[address(arg1)].field_2304) + 172 len 20] != address(arg2):
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = idx
                            continue 
                        if address(arg2):
                            if s < 0:
                                stor19[address(arg1)][10][address(arg3)].field_1024++
                                stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))))) + stor19[address(arg1)][10][address(arg3)].field_1024].field_0 = address(arg2)
    else:
        require stor20[address(arg1)]
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args stor20[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor19[stor20[address(arg1)]][10][address(arg3)].field_0 = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = stor19[stor20[address(arg1)]].field_2304
        if stor19[stor20[address(arg1)]].field_2304:
            mem[ceil32(return_data.size) + 128] = stor19[stor20[address(arg1)]][9].field_0
            idx = ceil32(return_data.size) + 128
            s = 0
            while ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 96 > idx:
                mem[idx + 32] = stor19[stor20[address(arg1)]][s + 9].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if not stor19[stor20[address(arg1)]].field_2304:
            if address(arg3):
                stor19[stor20[address(arg1)]].field_2304++
                stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg3)
        else:
            idx = 0
            s = -1
            while idx < stor19[stor20[address(arg1)]].field_2304:
                if idx >= stor19[stor20[address(arg1)]].field_2304:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg3):
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = idx
                continue 
            if address(arg3):
                if s < 0:
                    stor19[stor20[address(arg1)]].field_2304++
                    stor[('array', 9, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))) + stor19[stor20[address(arg1)]].field_2304].field_0 = address(arg3)
        if ext_call.return_data[0] <= 0:
            if not stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                if not stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                    if address(arg2):
                        stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                        stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
                else:
                    idx = 0
                    s = -1
                    while idx < stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                        if idx >= stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        if mem[(32 * idx) + ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 172 len 20] != address(arg2):
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = idx
                        continue 
                    if address(arg2):
                        if s < 0:
                            stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                            stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
            else:
                mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 160] = stor19[stor20[address(arg1)]][10][address(arg3)][4].field_0
                if (32 * stor19[stor20[address(arg1)]][10][address(arg3)].field_1024) + 32 > 64:
                    mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 192] = stor19[stor20[address(arg1)]][10][address(arg3)][4].field_256
                    idx = ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 192
                    s = 1
                    while ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + (32 * stor19[stor20[address(arg1)]][10][address(arg3)].field_1024) + 128 > idx:
                        mem[idx + 32] = stor19[stor20[address(arg1)]][10][address(arg3)][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if not stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                    if address(arg2):
                        stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                        stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
                else:
                    idx = 0
                    s = -1
                    while idx < stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                        if idx >= stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        if mem[(32 * idx) + ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 172 len 20] != address(arg2):
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = idx
                        continue 
                    if address(arg2):
                        if s < 0:
                            stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                            stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
        else:
            if not uint8(stor21[address(arg2)]):
                if not stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                    if not stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                        if address(arg2):
                            stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                            stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
                    else:
                        idx = 0
                        s = -1
                        while idx < stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                            if idx >= stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                                revert with 0, 50
                            if idx == -1:
                                revert with 0, 17
                            if mem[(32 * idx) + ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 172 len 20] != address(arg2):
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = idx
                            continue 
                        if address(arg2):
                            if s < 0:
                                stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                                stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
                else:
                    mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 160] = stor19[stor20[address(arg1)]][10][address(arg3)][4].field_0
                    if (32 * stor19[stor20[address(arg1)]][10][address(arg3)].field_1024) + 32 > 64:
                        mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 192] = stor19[stor20[address(arg1)]][10][address(arg3)][4].field_256
                        idx = ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 192
                        s = 1
                        while ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + (32 * stor19[stor20[address(arg1)]][10][address(arg3)].field_1024) + 128 > idx:
                            mem[idx + 32] = stor19[stor20[address(arg1)]][10][address(arg3)][s + 4].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if not stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                        if address(arg2):
                            stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                            stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
                    else:
                        idx = 0
                        s = -1
                        while idx < stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                            if idx >= stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                                revert with 0, 50
                            if idx == -1:
                                revert with 0, 17
                            if mem[(32 * idx) + ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 172 len 20] != address(arg2):
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = idx
                            continue 
                        if address(arg2):
                            if s < 0:
                                stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                                stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
            else:
                mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 164] = address(arg2)
                mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 196] = arg4
                mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 228] = arg5
                require ext_code.size(stor20[address(arg1)])
                call stor20[address(arg1)].0x42105d6c with:
                     gas gas_remaining wei
                    args address(arg3), address(arg2), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 132] = stor20[address(arg1)]
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args stor20[address(arg1)]
                mem[ceil32(return_data.size) + (32 * stor19[stor20[address(arg1)]].field_2304) + 128] = ext_call.return_data[0]
                require return_data.size >= 32
                stor19[stor20[address(arg1)]][10][address(arg3)].field_0 = ext_call.return_data[0]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                stor19[stor20[address(arg1)]][10][address(arg3)][5][address(arg2)].field_0 = 0
                stor19[stor20[address(arg1)]][10][address(arg3)][5][address(arg2)].field_256 = arg4
                if not stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                    if not stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                        if address(arg2):
                            stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                            stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
                    else:
                        idx = 0
                        s = -1
                        while idx < stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                            if idx >= stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                                revert with 0, 50
                            if idx == -1:
                                revert with 0, 17
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + 172 len 20] != address(arg2):
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = idx
                            continue 
                        if address(arg2):
                            if s < 0:
                                stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                                stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
                else:
                    mem[(2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + 160] = stor19[stor20[address(arg1)]][10][address(arg3)][4].field_0
                    if (32 * stor19[stor20[address(arg1)]][10][address(arg3)].field_1024) + 32 > 64:
                        mem[(2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + 192] = stor19[stor20[address(arg1)]][10][address(arg3)][4].field_256
                        idx = (2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + 192
                        s = 1
                        while (2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + (32 * stor19[stor20[address(arg1)]][10][address(arg3)].field_1024) + 128 > idx:
                            mem[idx + 32] = stor19[stor20[address(arg1)]][10][address(arg3)][s + 4].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if not stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                        if address(arg2):
                            stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                            stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
                    else:
                        idx = 0
                        s = -1
                        while idx < stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                            if idx >= stor19[stor20[address(arg1)]][10][address(arg3)].field_1024:
                                revert with 0, 50
                            if idx == -1:
                                revert with 0, 17
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * stor19[stor20[address(arg1)]].field_2304) + 172 len 20] != address(arg2):
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = idx
                            continue 
                        if address(arg2):
                            if s < 0:
                                stor19[stor20[address(arg1)]][10][address(arg3)].field_1024++
                                stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('array', 10, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20))), ('name', 'stor19', 19))))) + stor19[stor20[address(arg1)]][10][address(arg3)].field_1024].field_0 = address(arg2)
}



}
