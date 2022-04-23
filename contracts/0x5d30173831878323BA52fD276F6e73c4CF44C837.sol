contract main {




// =====================  Runtime code  =====================


address adminAddress;
uint256 minimumAskPrice;
uint256 maximumAskPrice;
mapping of uint256 pendingRevenue;
mapping of struct stor8;

function pendingRevenue(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return pendingRevenue[arg1]
}

function minimumAskPrice() {
    return minimumAskPrice
}

function maximumAskPrice() {
    return maximumAskPrice
}

function adminAddress() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function claimPendingRevenue() {
    emit RevenueClaim(0, msg.sender);
}

function cancelAskOrder(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    emit AskCancel(arg1, msg.sender, arg2);
}

function calculatePriceAndFeesForCollection(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return arg2, arg2, arg2
}

function createAskOrder(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    emit AskNew(arg3, arg1, msg.sender, arg2);
}

function modifyAskOrder(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    emit AskUpdate(arg3, arg1, msg.sender, arg2);
}

function buyTokenUsingBNB(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    emit Trade(msg.sender, 0, 0, 1, arg1, arg2, 0xd337ad1e01861ed8e039fc4927803b1462421a12);
}

function buyTokenUsingWBNB(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    emit Trade(msg.sender, 0, 0, 1, arg1, arg2, 0xd337ad1e01861ed8e039fc4927803b1462421a12);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function canTokensBeListed(address arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 64] = call.data[calldata.size len 64]
    mem[128] = 1
    mem[192] = 32
    idx = 0
    s = 128
    t = 256
    while idx < 2:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=2, data=mem[256 len 64])
}

function viewAsksByCollection(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    mem[96] = 1
    mem[128] = call.data[calldata.size]
    mem[160] = 1
    mem[64] = 288
    mem[224] = 0
    mem[256] = 0
    mem[192] = 224
    mem[288] = 96
    mem[384] = 1
    mem[416] = call.data[calldata.size]
    mem[320] = 160
    mem[448] = 1
    idx = 0
    s = 192
    t = (32 * mem[96]) + 448
    while idx < 1:
        _18 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_18 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    mem[352] = arg3
    return memory
      from mem[64]
       len -mem[64] + 544
}

function viewAsksByCollectionAndSeller(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 1
    mem[128] = call.data[calldata.size]
    mem[160] = 1
    mem[64] = 288
    mem[224] = 0
    mem[256] = 0
    mem[192] = 224
    mem[288] = 96
    mem[384] = 1
    mem[416] = call.data[calldata.size]
    mem[320] = 160
    mem[448] = 1
    idx = 0
    s = 192
    t = (32 * mem[96]) + 448
    while idx < 1:
        _18 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_18 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    mem[352] = arg4
    return memory
      from mem[64]
       len -mem[64] + 544
}

function viewAsksByCollectionAndTokenIds(address arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = 1
    mem[128] = call.data[calldata.size]
    mem[160] = 1
    mem[64] = 288
    mem[224] = 0
    mem[256] = 0
    mem[192] = 224
    mem[288] = 64
    mem[352] = 1
    idx = 0
    s = 128
    t = 384
    while idx < 1:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[320] = 128
    mem[416] = 1
    idx = 0
    s = 192
    t = (32 * mem[96]) + 416
    while idx < 1:
        _18 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_18 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len -mem[64] + 512
}

function viewCollections(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > test266151307():
        revert with 0, 65
    mem[96] = arg2
    if not arg2:
        if arg2 > test266151307():
            revert with 0, 65
        mem[(32 * arg2) + 128] = arg2
        mem[64] = (64 * arg2) + 160
        if not arg2:
            idx = 0
            while idx < arg2:
                if arg1 > !idx:
                    revert with 0, 17
                if arg1 + idx >= stor4.length:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('name', 'stor4', 4) + arg1 + idx]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = stor[('name', 'stor4', 4) + arg1 + idx]
                mem[32] = 8
                _120 = mem[64]
                mem[64] = mem[64] + 160
                if stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_0 > 2:
                    revert with 0, 33
                mem[_120] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_0
                mem[_120 + 32] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_8
                mem[_120 + 64] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_256
                mem[_120 + 96] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                mem[_120 + 128] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_768
                if idx >= mem[(32 * arg2) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg2) + 160] = _120
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg1 > !arg2:
                revert with 0, 17
            _80 = mem[64]
            mem[mem[64]] = 96
            _82 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _82:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _82) + 128
            _152 = mem[(32 * arg2) + 128]
            mem[_80 + (32 * _82) + 128] = mem[(32 * arg2) + 128]
            idx = 0
            s = _80 + (32 * _82) + 160
            t = (32 * arg2) + 160
            while idx < _152:
                _206 = mem[t]
                if mem[mem[t]] >= 3:
                    revert with 0, 33
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_206 + 44 len 20]
                mem[s + 64] = mem[_206 + 76 len 20]
                mem[s + 96] = mem[_206 + 96]
                mem[s + 128] = mem[_206 + 128]
                idx = idx + 1
                s = s + 160
                t = t + 32
                continue 
            mem[_80 + 64] = arg1 + arg2
            return memory
              from mem[64]
               len _80 + (32 * _82) + (160 * _152) + -mem[64] + 160
        mem[64] = (64 * arg2) + 320
        mem[(64 * arg2) + 160] = 0
        mem[(64 * arg2) + 192] = 0
        mem[(64 * arg2) + 224] = 0
        mem[(64 * arg2) + 256] = 0
        mem[(64 * arg2) + 288] = 0
        mem[(32 * arg2) + 160] = (64 * arg2) + 160
        s = (32 * arg2) + 160
        idx = arg2
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[(64 * arg2) + 160] = 0
            mem[(64 * arg2) + 192] = 0
            mem[(64 * arg2) + 224] = 0
            mem[(64 * arg2) + 256] = 0
            mem[(64 * arg2) + 288] = 0
            mem[s + 32] = (64 * arg2) + 160
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg2:
            if arg1 > !idx:
                revert with 0, 17
            if arg1 + idx >= stor4.length:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('name', 'stor4', 4) + arg1 + idx]
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = stor[('name', 'stor4', 4) + arg1 + idx]
            mem[32] = 8
            _200 = mem[64]
            mem[64] = mem[64] + 160
            if stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_0 > 2:
                revert with 0, 33
            mem[_200] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_0
            mem[_200 + 32] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_8
            mem[_200 + 64] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_256
            mem[_200 + 96] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
            mem[_200 + 128] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_768
            if idx >= mem[(32 * arg2) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg2) + 160] = _200
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg1 > !arg2:
            revert with 0, 17
        _170 = mem[64]
        mem[mem[64]] = 96
        _172 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _172:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _172) + 128
        _208 = mem[(32 * arg2) + 128]
        mem[_170 + (32 * _172) + 128] = mem[(32 * arg2) + 128]
        idx = 0
        s = _170 + (32 * _172) + 160
        t = (32 * arg2) + 160
        while idx < _208:
            _238 = mem[t]
            if mem[mem[t]] >= 3:
                revert with 0, 33
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_238 + 44 len 20]
            mem[s + 64] = mem[_238 + 76 len 20]
            mem[s + 96] = mem[_238 + 96]
            mem[s + 128] = mem[_238 + 128]
            idx = idx + 1
            s = s + 160
            t = t + 32
            continue 
        mem[_170 + 64] = arg1 + arg2
        return memory
          from mem[64]
           len _170 + (32 * _172) + (160 * _208) + -mem[64] + 160
    mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    if arg2 > test266151307():
        revert with 0, 65
    mem[(32 * arg2) + 128] = arg2
    mem[64] = (64 * arg2) + 160
    if not arg2:
        idx = 0
        while idx < arg2:
            if arg1 > !idx:
                revert with 0, 17
            if arg1 + idx >= stor4.length:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('name', 'stor4', 4) + arg1 + idx]
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = stor[('name', 'stor4', 4) + arg1 + idx]
            mem[32] = 8
            _123 = mem[64]
            mem[64] = mem[64] + 160
            if stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_0 > 2:
                revert with 0, 33
            mem[_123] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_0
            mem[_123 + 32] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_8
            mem[_123 + 64] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_256
            mem[_123 + 96] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
            mem[_123 + 128] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_768
            if idx >= mem[(32 * arg2) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg2) + 160] = _123
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg1 > !arg2:
            revert with 0, 17
        _81 = mem[64]
        mem[mem[64]] = 96
        _83 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _83:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_81 + 32] = (32 * _83) + 128
        _154 = mem[(32 * arg2) + 128]
        mem[_81 + (32 * _83) + 128] = mem[(32 * arg2) + 128]
        idx = 0
        s = _81 + (32 * _83) + 160
        t = (32 * arg2) + 160
        while idx < _154:
            _210 = mem[t]
            if mem[mem[t]] >= 3:
                revert with 0, 33
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_210 + 44 len 20]
            mem[s + 64] = mem[_210 + 76 len 20]
            mem[s + 96] = mem[_210 + 96]
            mem[s + 128] = mem[_210 + 128]
            idx = idx + 1
            s = s + 160
            t = t + 32
            continue 
        mem[_81 + 64] = arg1 + arg2
        return memory
          from mem[64]
           len _81 + (32 * _83) + (160 * _154) + -mem[64] + 160
    mem[64] = (64 * arg2) + 320
    mem[(64 * arg2) + 160] = 0
    mem[(64 * arg2) + 192] = 0
    mem[(64 * arg2) + 224] = 0
    mem[(64 * arg2) + 256] = 0
    mem[(64 * arg2) + 288] = 0
    mem[(32 * arg2) + 160] = (64 * arg2) + 160
    s = (32 * arg2) + 160
    idx = arg2
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(64 * arg2) + 160] = 0
        mem[(64 * arg2) + 192] = 0
        mem[(64 * arg2) + 224] = 0
        mem[(64 * arg2) + 256] = 0
        mem[(64 * arg2) + 288] = 0
        mem[s + 32] = (64 * arg2) + 160
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg2:
        if arg1 > !idx:
            revert with 0, 17
        if arg1 + idx >= stor4.length:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor[('name', 'stor4', 4) + arg1 + idx]
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = stor[('name', 'stor4', 4) + arg1 + idx]
        mem[32] = 8
        _203 = mem[64]
        mem[64] = mem[64] + 160
        if stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_0 > 2:
            revert with 0, 33
        mem[_203] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_0
        mem[_203 + 32] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_8
        mem[_203 + 64] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_256
        mem[_203 + 96] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
        mem[_203 + 128] = stor8[stor[('name', 'stor4', 4) + arg1 + idx]].field_768
        if idx >= mem[(32 * arg2) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * arg2) + 160] = _203
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg1 > !arg2:
        revert with 0, 17
    _171 = mem[64]
    mem[mem[64]] = 96
    _173 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _173:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * _173) + 128
    _212 = mem[(32 * arg2) + 128]
    mem[_171 + (32 * _173) + 128] = mem[(32 * arg2) + 128]
    idx = 0
    s = _171 + (32 * _173) + 160
    t = (32 * arg2) + 160
    while idx < _212:
        _240 = mem[t]
        if mem[mem[t]] >= 3:
            revert with 0, 33
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_240 + 44 len 20]
        mem[s + 64] = mem[_240 + 76 len 20]
        mem[s + 96] = mem[_240 + 96]
        mem[s + 128] = mem[_240 + 128]
        idx = idx + 1
        s = s + 160
        t = t + 32
        continue 
    mem[_171 + 64] = arg1 + arg2
    return memory
      from mem[64]
       len _171 + (32 * _173) + (160 * _212) + -mem[64] + 160
}



}
