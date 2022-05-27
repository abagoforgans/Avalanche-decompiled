contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 listingPrice;
mapping of struct stor5;

function getListingPrice() {
    return listingPrice
}

function _fallback() payable {
    revert
}

function createMarketItem(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg3 < 0:
        revert with 0, 'Price must be at least 1 wei'
    if listingPrice != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Price must be equal to listing price'
    stor1++
    stor5[stor1].field_0 = stor1
    stor5[stor1].field_256 = arg1
    stor5[stor1].field_512 = arg2
    stor5[stor1].field_768 = msg.sender
    stor5[stor1].field_1024 = 0
    stor5[stor1].field_1280 = 0
    stor5[stor1].field_1280 = arg3
    stor5[stor1].field_1536 = 0
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit MarketItemCreated(msg.sender, 0, arg3, 0, stor1, arg1, arg2);
    stor0 = 1
}

function createMarketSale(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor5[arg2].field_1280 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Please submit the asking price in order to complete the purchase'
    if stor5[arg2].field_1280 and 1 > -1 / stor5[arg2].field_1280:
        revert with 'NH{q', 17
    if stor5[arg2].field_1280 < stor5[arg2].field_1280 / 100:
        revert with 'NH{q', 17
    call stor5[arg2].field_768 with:
       value stor5[arg2].field_1280 - (stor5[arg2].field_1280 / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, stor5[arg2].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor5[arg2].field_1024 = msg.sender
    stor5[arg2].field_1536 = 1
    stor2++
    call stor3 with:
       value stor5[arg2].field_1280 / 100 wei
         gas 2300 * is_zero(value) wei
    stor0 = 1
}

function fetchMarketItems() {
    if stor1 < stor2:
        revert with 'NH{q', 17
    if stor1 - stor2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor1 - stor2
    mem[64] = (32 * stor1 - stor2) + 128
    if not stor1 - stor2:
        idx = 0
        s = 0
        while idx < stor1:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 5
            if stor5[idx + 1].field_1024:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 5
            _44 = mem[64]
            mem[64] = mem[64] + 224
            mem[_44] = stor5[idx + 1].field_0
            mem[_44 + 32] = stor5[idx + 1].field_256
            mem[_44 + 64] = stor5[idx + 1].field_512
            mem[_44 + 96] = stor5[idx + 1].field_768
            mem[_44 + 128] = stor5[idx + 1].field_1024
            mem[_44 + 160] = stor5[idx + 1].field_1280
            mem[_44 + 192] = bool(stor5[idx + 1].field_1536)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _44
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _34 = mem[64]
        mem[mem[64]] = 32
        _35 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _35:
            _65 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_65 + 44 len 20]
            mem[t + 64] = mem[_65 + 64]
            mem[t + 96] = mem[_65 + 108 len 20]
            mem[t + 128] = mem[_65 + 140 len 20]
            mem[t + 160] = mem[_65 + 160]
            mem[t + 192] = bool(mem[_65 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _34 + (224 * _35) + -mem[64] + 64
    mem[64] = (32 * stor1 - stor2) + 352
    mem[(32 * stor1 - stor2) + 128] = 0
    mem[(32 * stor1 - stor2) + 160] = 0
    mem[(32 * stor1 - stor2) + 192] = 0
    mem[(32 * stor1 - stor2) + 224] = 0
    mem[(32 * stor1 - stor2) + 256] = 0
    mem[(32 * stor1 - stor2) + 288] = 0
    mem[(32 * stor1 - stor2) + 320] = 0
    mem[var22001] = (32 * stor1 - stor2) + 128
    s = var22001
    idx = var22002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * stor1 - stor2) + 128] = 0
        mem[(32 * stor1 - stor2) + 160] = 0
        mem[(32 * stor1 - stor2) + 192] = 0
        mem[(32 * stor1 - stor2) + 224] = 0
        mem[(32 * stor1 - stor2) + 256] = 0
        mem[(32 * stor1 - stor2) + 288] = 0
        mem[(32 * stor1 - stor2) + 320] = 0
        mem[s + 32] = (32 * stor1 - stor2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor1:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 5
        if stor5[idx + 1].field_1024:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 5
        _96 = mem[64]
        mem[64] = mem[64] + 224
        mem[_96] = stor5[idx + 1].field_0
        mem[_96 + 32] = stor5[idx + 1].field_256
        mem[_96 + 64] = stor5[idx + 1].field_512
        mem[_96 + 96] = stor5[idx + 1].field_768
        mem[_96 + 128] = stor5[idx + 1].field_1024
        mem[_96 + 160] = stor5[idx + 1].field_1280
        mem[_96 + 192] = bool(stor5[idx + 1].field_1536)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _96
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _89 = mem[64]
    mem[mem[64]] = 32
    _90 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _90:
        _104 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_104 + 44 len 20]
        mem[t + 64] = mem[_104 + 64]
        mem[t + 96] = mem[_104 + 108 len 20]
        mem[t + 128] = mem[_104 + 140 len 20]
        mem[t + 160] = mem[_104 + 160]
        mem[t + 192] = bool(mem[_104 + 192])
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _89 + (224 * _90) + -mem[64] + 64
}

function fetchMyNFTs() {
    idx = 0
    s = 0
    while idx < stor1:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 5
        if stor5[idx + 1].field_1024 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor1:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 5
            if stor5[idx + 1].field_1024 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 5
            _62 = mem[64]
            mem[64] = mem[64] + 224
            mem[_62] = stor5[idx + 1].field_0
            mem[_62 + 32] = stor5[idx + 1].field_256
            mem[_62 + 64] = stor5[idx + 1].field_512
            mem[_62 + 96] = stor5[idx + 1].field_768
            mem[_62 + 128] = stor5[idx + 1].field_1024
            mem[_62 + 160] = stor5[idx + 1].field_1280
            mem[_62 + 192] = bool(stor5[idx + 1].field_1536)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _62
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = 32
        _53 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _53:
            _83 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_83 + 44 len 20]
            mem[t + 64] = mem[_83 + 64]
            mem[t + 96] = mem[_83 + 108 len 20]
            mem[t + 128] = mem[_83 + 140 len 20]
            mem[t + 160] = mem[_83 + 160]
            mem[t + 192] = bool(mem[_83 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _52 + (224 * _53) + -mem[64] + 64
    mem[64] = (32 * s) + 352
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[var14001] = (32 * s) + 128
    t = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[t + 32] = (32 * s) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor1:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 5
        if stor5[idx + 1].field_1024 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 5
        _114 = mem[64]
        mem[64] = mem[64] + 224
        mem[_114] = stor5[idx + 1].field_0
        mem[_114 + 32] = stor5[idx + 1].field_256
        mem[_114 + 64] = stor5[idx + 1].field_512
        mem[_114 + 96] = stor5[idx + 1].field_768
        mem[_114 + 128] = stor5[idx + 1].field_1024
        mem[_114 + 160] = stor5[idx + 1].field_1280
        mem[_114 + 192] = bool(stor5[idx + 1].field_1536)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _114
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _107 = mem[64]
    mem[mem[64]] = 32
    _108 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _108:
        _122 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_122 + 44 len 20]
        mem[t + 64] = mem[_122 + 64]
        mem[t + 96] = mem[_122 + 108 len 20]
        mem[t + 128] = mem[_122 + 140 len 20]
        mem[t + 160] = mem[_122 + 160]
        mem[t + 192] = bool(mem[_122 + 192])
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _107 + (224 * _108) + -mem[64] + 64
}

function fetchItemsCreated() {
    idx = 0
    s = 0
    while idx < stor1:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 5
        if stor5[idx + 1].field_768 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor1:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 5
            if stor5[idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 5
            _62 = mem[64]
            mem[64] = mem[64] + 224
            mem[_62] = stor5[idx + 1].field_0
            mem[_62 + 32] = stor5[idx + 1].field_256
            mem[_62 + 64] = stor5[idx + 1].field_512
            mem[_62 + 96] = stor5[idx + 1].field_768
            mem[_62 + 128] = stor5[idx + 1].field_1024
            mem[_62 + 160] = stor5[idx + 1].field_1280
            mem[_62 + 192] = bool(stor5[idx + 1].field_1536)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _62
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = 32
        _53 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _53:
            _83 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_83 + 44 len 20]
            mem[t + 64] = mem[_83 + 64]
            mem[t + 96] = mem[_83 + 108 len 20]
            mem[t + 128] = mem[_83 + 140 len 20]
            mem[t + 160] = mem[_83 + 160]
            mem[t + 192] = bool(mem[_83 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _52 + (224 * _53) + -mem[64] + 64
    mem[64] = (32 * s) + 352
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[var14001] = (32 * s) + 128
    t = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[t + 32] = (32 * s) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor1:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 5
        if stor5[idx + 1].field_768 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 5
        _114 = mem[64]
        mem[64] = mem[64] + 224
        mem[_114] = stor5[idx + 1].field_0
        mem[_114 + 32] = stor5[idx + 1].field_256
        mem[_114 + 64] = stor5[idx + 1].field_512
        mem[_114 + 96] = stor5[idx + 1].field_768
        mem[_114 + 128] = stor5[idx + 1].field_1024
        mem[_114 + 160] = stor5[idx + 1].field_1280
        mem[_114 + 192] = bool(stor5[idx + 1].field_1536)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _114
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _107 = mem[64]
    mem[mem[64]] = 32
    _108 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _108:
        _122 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_122 + 44 len 20]
        mem[t + 64] = mem[_122 + 64]
        mem[t + 96] = mem[_122 + 108 len 20]
        mem[t + 128] = mem[_122 + 140 len 20]
        mem[t + 160] = mem[_122 + 160]
        mem[t + 192] = bool(mem[_122 + 192])
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _107 + (224 * _108) + -mem[64] + 64
}



}
