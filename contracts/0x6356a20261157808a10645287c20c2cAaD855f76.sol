contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
uint256 stor2;
uint256 _itemsSold;
uint256 stor4;
address stor5;
uint256 listingPrice;
address stor7;
address stor8;
uint256 sub_cbadf7fb;
uint256 stor10;
uint256 floorPrice;
uint256 totalVolume;
mapping of struct stor13;
mapping of uint256 stor14;
mapping of struct sub_944df045;
array of struct stor17;
mapping of uint256 stor18;
uint256 stor19;

function getListingPrice() {
    return listingPrice
}

function totalVolume() {
    return totalVolume
}

function getNumberOfSales() {
    return _itemsSold
}

function _itemsSold() {
    return _itemsSold
}

function owner() {
    return owner
}

function floorPrice() {
    return floorPrice
}

function sub_944df045(?) {
    return sub_944df045[1].field_256
}

function sub_cbadf7fb(?) {
    return sub_cbadf7fb
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_d71f815e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
}

function sub_e241e3a4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cbadf7fb = arg1
}

function setNFTContractAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
}

function removeListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor13[stor14[arg1]].field_512 != msg.sender:
        revert with 0, 'You do not own this NFT'
    stor14[arg1] = 0
    stor13[stor14[arg1]].field_1288 = 0
    stor4++
}

function sub_35ad616b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You do not have permission to make this call'
    stor14[arg1] = 0
    stor13[stor14[arg1]].field_1288 = 0
    stor4++
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function updateListingPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor13[stor14[arg1]].field_512 != msg.sender:
        revert with 0, 'You do not own this NFT'
    if not stor14[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There is no active listing for this NFT'
    stor13[stor14[arg1]].field_1024 = arg2
}

function sub_613e0f59(?) {
    if block.timestamp < 24 * 3600:
        revert with 'NH{q', 17
    s = _itemsSold
    t = 0
    while sub_944df045[stor3].field_256 > block.timestamp - (24 * 3600):
        if t > -sub_944df045[s].field_512 - 1:
            revert with 'NH{q', 17
        if not s:
            revert with 'NH{q', 17
        mem[0] = s - 1
        mem[32] = 16
        s = s - 1
        t = t + sub_944df045[s].field_512
        continue 
    return t
}

function sub_393ade70(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 17
    mem[64] = (32 * stor17[arg1].field_0) + 128
    mem[96] = stor17[arg1].field_0
    s = 128
    idx = 0
    while idx < stor17[arg1].field_0:
        mem[0] = sha3(arg1, 17)
        _14 = mem[64]
        mem[64] = mem[64] + 128
        mem[_14] = stor17[arg1][idx].field_0
        mem[_14 + 32] = stor17[arg1][idx].field_256
        mem[_14 + 64] = stor17[arg1][idx].field_512
        mem[_14 + 96] = stor17[arg1][idx].field_768
        mem[s] = _14
        s = s + 32
        idx = idx + 1
        continue 
    _15 = mem[64]
    mem[mem[64]] = 32
    _16 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _16:
        _23 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_23 + 32]
        mem[t + 64] = mem[_23 + 64]
        mem[t + 96] = mem[_23 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _15 + (128 * _16) + -mem[64] + 64
}

function createMarketItem(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg2 <= 0:
        revert with 0, 'Price must be at least 1 wei'
    if msg.value < listingPrice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Price must be equal to the listing price'
    if stor14[arg1] != stor19:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'There is already an active marketplace listing for this NFT'
    require ext_code.size(stor7)
    staticcall stor7.0x4ce07898 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'You must first approve the marketplace contract to sell your NFT'
    require ext_code.size(stor7)
    staticcall stor7.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You do not own this NFT'
    stor2++
    stor13[stor2].field_0 = stor2
    stor13[stor2].field_256 = arg1
    stor13[stor2].field_512 = msg.sender
    stor13[stor2].field_768 = 0
    stor13[stor2].field_1024 = 0
    stor13[stor2].field_1024 = arg2
    stor13[stor2].field_1280 = 0
    stor13[stor2].field_1288 = 1
    stor13[stor2].field_1536 = block.timestamp
    stor14[arg1] = stor2
    emit 0x37a688d1: msg.sender, 0, arg2, 0, 1, stor2, arg1
    stor0 = 1
}

function createMarketSale(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if msg.value < stor13[stor14[arg1]].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Please submit the asking price in order to complete the purchase'
    if bool(stor13[stor14[arg1]].field_1288) != 1:
        revert with 0, 'This listing is no longer active'
    if stor13[stor14[arg1]].field_1280:
        revert with 0, 'This item has already been sold'
    if stor13[stor14[arg1]].field_512 == msg.sender:
        revert with 0, 'You already own this token!'
    if msg.value and sub_cbadf7fb > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value and stor10 > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value < msg.value * sub_cbadf7fb / 100:
        revert with 'NH{q', 17
    if msg.value - (msg.value * sub_cbadf7fb / 100) < msg.value * stor10 / 100:
        revert with 'NH{q', 17
    require ext_code.size(stor7)
    staticcall stor7.getOriginalMinter(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call ext_call.return_data[12 len 20] with:
       value msg.value * sub_cbadf7fb / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor10 <= 0:
        call stor13[stor14[arg1]].field_512 with:
           value msg.value - (msg.value * sub_cbadf7fb / 100) - (msg.value * stor10 / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call stor8 with:
           value msg.value * stor10 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor13[stor14[arg1]].field_512 with:
           value msg.value - (msg.value * sub_cbadf7fb / 100) - (msg.value * stor10 / 100) wei
             gas 2300 * is_zero(value) wei
    require ext_code.size(stor7)
    call stor7.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor7)
    call stor7.0x23b872dd with:
         gas gas_remaining wei
        args stor13[stor14[arg1]].field_512, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor13[stor14[arg1]].field_768 = msg.sender
    stor13[stor14[arg1]].field_1280 = 1
    stor13[stor14[arg1]].field_1288 = 0
    _itemsSold++
    if listingPrice > 0:
        call stor5 with:
           value listingPrice wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor14[arg1] = 0
    if totalVolume > -msg.value - 1:
        revert with 'NH{q', 17
    totalVolume += msg.value
    sub_944df045[stor3].field_0 = arg1
    sub_944df045[stor3].field_256 = block.timestamp
    sub_944df045[stor3].field_512 = msg.value
    sub_944df045[stor3].field_768 = stor14[arg1]
    stor17[arg1].field_0++
    stor17[arg1][stor17[arg1].field_0].field_0 = arg1
    stor17[arg1][stor17[arg1].field_0].field_256 = block.timestamp
    stor17[arg1][stor17[arg1].field_0].field_512 = msg.value
    stor17[arg1][stor17[arg1].field_0].field_768 = stor14[arg1]
    if stor18[arg1] == -1:
        revert with 'NH{q', 17
    stor18[arg1]++
    stor0 = 1
}

function fetchMyNFTs() {
    idx = 0
    s = 0
    while idx < stor2:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 13
        if stor13[idx + 1].field_768 != msg.sender:
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
        while idx < stor2:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 13
            if stor13[idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 13
            _65 = mem[64]
            mem[64] = mem[64] + 256
            mem[_65] = stor13[idx + 1].field_0
            mem[_65 + 32] = stor13[idx + 1].field_256
            mem[_65 + 64] = stor13[idx + 1].field_512
            mem[_65 + 96] = stor13[idx + 1].field_768
            mem[_65 + 128] = stor13[idx + 1].field_1024
            mem[_65 + 160] = bool(stor13[idx + 1].field_1280)
            mem[_65 + 192] = bool(stor13[idx + 1].field_1288)
            mem[_65 + 224] = stor13[idx + 1].field_1536
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _65
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _55 = mem[64]
        mem[mem[64]] = 32
        _56 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _56:
            _88 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_88 + 32]
            mem[t + 64] = mem[_88 + 76 len 20]
            mem[t + 96] = mem[_88 + 108 len 20]
            mem[t + 128] = mem[_88 + 128]
            mem[t + 160] = bool(mem[_88 + 160])
            mem[t + 192] = bool(mem[_88 + 192])
            mem[t + 224] = mem[_88 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _55 + (256 * _56) + -mem[64] + 64
    mem[64] = (32 * s) + 384
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[var14001] = (32 * s) + 128
    t = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[(32 * s) + 352] = 0
        mem[t + 32] = (32 * s) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor2:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 13
        if stor13[idx + 1].field_768 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 13
        _121 = mem[64]
        mem[64] = mem[64] + 256
        mem[_121] = stor13[idx + 1].field_0
        mem[_121 + 32] = stor13[idx + 1].field_256
        mem[_121 + 64] = stor13[idx + 1].field_512
        mem[_121 + 96] = stor13[idx + 1].field_768
        mem[_121 + 128] = stor13[idx + 1].field_1024
        mem[_121 + 160] = bool(stor13[idx + 1].field_1280)
        mem[_121 + 192] = bool(stor13[idx + 1].field_1288)
        mem[_121 + 224] = stor13[idx + 1].field_1536
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _121
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _114 = mem[64]
    mem[mem[64]] = 32
    _115 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _115:
        _130 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_130 + 32]
        mem[t + 64] = mem[_130 + 76 len 20]
        mem[t + 96] = mem[_130 + 108 len 20]
        mem[t + 128] = mem[_130 + 128]
        mem[t + 160] = bool(mem[_130 + 160])
        mem[t + 192] = bool(mem[_130 + 192])
        mem[t + 224] = mem[_130 + 224]
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _114 + (256 * _115) + -mem[64] + 64
}

function fetchItemsCreated() {
    idx = 0
    s = 0
    while idx < stor2:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 13
        if stor13[idx + 1].field_512 != msg.sender:
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
        while idx < stor2:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 13
            if stor13[idx + 1].field_512 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 13
            _65 = mem[64]
            mem[64] = mem[64] + 256
            mem[_65] = stor13[idx + 1].field_0
            mem[_65 + 32] = stor13[idx + 1].field_256
            mem[_65 + 64] = stor13[idx + 1].field_512
            mem[_65 + 96] = stor13[idx + 1].field_768
            mem[_65 + 128] = stor13[idx + 1].field_1024
            mem[_65 + 160] = bool(stor13[idx + 1].field_1280)
            mem[_65 + 192] = bool(stor13[idx + 1].field_1288)
            mem[_65 + 224] = stor13[idx + 1].field_1536
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _65
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _55 = mem[64]
        mem[mem[64]] = 32
        _56 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _56:
            _88 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_88 + 32]
            mem[t + 64] = mem[_88 + 76 len 20]
            mem[t + 96] = mem[_88 + 108 len 20]
            mem[t + 128] = mem[_88 + 128]
            mem[t + 160] = bool(mem[_88 + 160])
            mem[t + 192] = bool(mem[_88 + 192])
            mem[t + 224] = mem[_88 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _55 + (256 * _56) + -mem[64] + 64
    mem[64] = (32 * s) + 384
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[var14001] = (32 * s) + 128
    t = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[(32 * s) + 352] = 0
        mem[t + 32] = (32 * s) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor2:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 13
        if stor13[idx + 1].field_512 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 13
        _121 = mem[64]
        mem[64] = mem[64] + 256
        mem[_121] = stor13[idx + 1].field_0
        mem[_121 + 32] = stor13[idx + 1].field_256
        mem[_121 + 64] = stor13[idx + 1].field_512
        mem[_121 + 96] = stor13[idx + 1].field_768
        mem[_121 + 128] = stor13[idx + 1].field_1024
        mem[_121 + 160] = bool(stor13[idx + 1].field_1280)
        mem[_121 + 192] = bool(stor13[idx + 1].field_1288)
        mem[_121 + 224] = stor13[idx + 1].field_1536
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _121
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _114 = mem[64]
    mem[mem[64]] = 32
    _115 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _115:
        _130 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_130 + 32]
        mem[t + 64] = mem[_130 + 76 len 20]
        mem[t + 96] = mem[_130 + 108 len 20]
        mem[t + 128] = mem[_130 + 128]
        mem[t + 160] = bool(mem[_130 + 160])
        mem[t + 192] = bool(mem[_130 + 192])
        mem[t + 224] = mem[_130 + 224]
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _114 + (256 * _115) + -mem[64] + 64
}

function sub_d374fa89(?) {
    if stor2 < _itemsSold:
        revert with 'NH{q', 17
    if stor2 - _itemsSold < stor4:
        revert with 'NH{q', 17
    if stor2 - _itemsSold - stor4 > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor2 - _itemsSold - stor4
    mem[64] = (32 * stor2 - _itemsSold - stor4) + 128
    if not stor2 - _itemsSold - stor4:
        idx = 0
        s = 0
        while idx < stor2:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 13
            if stor13[idx + 1].field_768:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 13
            if bool(stor13[idx + 1].field_1288) != 1:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 13
            _56 = mem[64]
            mem[64] = mem[64] + 256
            mem[_56] = stor13[idx + 1].field_0
            mem[_56 + 32] = stor13[idx + 1].field_256
            mem[_56 + 64] = stor13[idx + 1].field_512
            mem[_56 + 96] = stor13[idx + 1].field_768
            mem[_56 + 128] = stor13[idx + 1].field_1024
            mem[_56 + 160] = bool(stor13[idx + 1].field_1280)
            mem[_56 + 192] = bool(stor13[idx + 1].field_1288)
            mem[_56 + 224] = stor13[idx + 1].field_1536
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _56
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _38 = mem[64]
        mem[mem[64]] = 32
        _39 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _39:
            _73 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_73 + 32]
            mem[t + 64] = mem[_73 + 76 len 20]
            mem[t + 96] = mem[_73 + 108 len 20]
            mem[t + 128] = mem[_73 + 128]
            mem[t + 160] = bool(mem[_73 + 160])
            mem[t + 192] = bool(mem[_73 + 192])
            mem[t + 224] = mem[_73 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _38 + (256 * _39) + -mem[64] + 64
    mem[64] = (32 * stor2 - _itemsSold - stor4) + 384
    mem[(32 * stor2 - _itemsSold - stor4) + 128] = 0
    mem[(32 * stor2 - _itemsSold - stor4) + 160] = 0
    mem[(32 * stor2 - _itemsSold - stor4) + 192] = 0
    mem[(32 * stor2 - _itemsSold - stor4) + 224] = 0
    mem[(32 * stor2 - _itemsSold - stor4) + 256] = 0
    mem[(32 * stor2 - _itemsSold - stor4) + 288] = 0
    mem[(32 * stor2 - _itemsSold - stor4) + 320] = 0
    mem[(32 * stor2 - _itemsSold - stor4) + 352] = 0
    mem[var31001] = (32 * stor2 - _itemsSold - stor4) + 128
    s = var31001
    idx = var31002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * stor2 - _itemsSold - stor4) + 128] = 0
        mem[(32 * stor2 - _itemsSold - stor4) + 160] = 0
        mem[(32 * stor2 - _itemsSold - stor4) + 192] = 0
        mem[(32 * stor2 - _itemsSold - stor4) + 224] = 0
        mem[(32 * stor2 - _itemsSold - stor4) + 256] = 0
        mem[(32 * stor2 - _itemsSold - stor4) + 288] = 0
        mem[(32 * stor2 - _itemsSold - stor4) + 320] = 0
        mem[(32 * stor2 - _itemsSold - stor4) + 352] = 0
        mem[s + 32] = (32 * stor2 - _itemsSold - stor4) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor2:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 13
        if stor13[idx + 1].field_768:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 13
        if bool(stor13[idx + 1].field_1288) != 1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 13
        _110 = mem[64]
        mem[64] = mem[64] + 256
        mem[_110] = stor13[idx + 1].field_0
        mem[_110 + 32] = stor13[idx + 1].field_256
        mem[_110 + 64] = stor13[idx + 1].field_512
        mem[_110 + 96] = stor13[idx + 1].field_768
        mem[_110 + 128] = stor13[idx + 1].field_1024
        mem[_110 + 160] = bool(stor13[idx + 1].field_1280)
        mem[_110 + 192] = bool(stor13[idx + 1].field_1288)
        mem[_110 + 224] = stor13[idx + 1].field_1536
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _110
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _100 = mem[64]
    mem[mem[64]] = 32
    _101 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _101:
        _117 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_117 + 32]
        mem[t + 64] = mem[_117 + 76 len 20]
        mem[t + 96] = mem[_117 + 108 len 20]
        mem[t + 128] = mem[_117 + 128]
        mem[t + 160] = bool(mem[_117 + 160])
        mem[t + 192] = bool(mem[_117 + 192])
        mem[t + 224] = mem[_117 + 224]
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _100 + (256 * _101) + -mem[64] + 64
}



}
