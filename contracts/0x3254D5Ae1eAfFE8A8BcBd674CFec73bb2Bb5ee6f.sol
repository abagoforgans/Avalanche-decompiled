contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address mintAddress;
address DDAddress;
uint8 stor4; offset 160
uint256 minterBalance;
uint256 reflectionBalance;
uint256 totalDividend;
uint256 marketplaceVolume;
uint256 holderFee;
uint256 minterFee;
uint256 treasuryFee;
address treasuryAddress;
mapping of uint256 minterBalances;
mapping of uint256 lastDividendAt;
mapping of struct marketplace;

function Marketplace(uint256 arg1) {
    require calldata.size - 4 >= 32
    if marketplace[arg1].field_768 >= 3:
        revert with 0, 33
    return marketplace[arg1].field_0, marketplace[arg1].field_256, marketplace[arg1].field_512, marketplace[arg1].field_768
}

function minterBalances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minterBalances[arg1]
}

function reflectionBalance() {
    return reflectionBalance
}

function mintAddress() {
    return mintAddress
}

function minterFee() {
    return minterFee
}

function totalDividend() {
    return totalDividend
}

function minterBalance() {
    return minterBalance
}

function owner() {
    return owner
}

function marketActive() {
    return bool(stor4)
}

function holderFee() {
    return holderFee
}

function treasuryAddress() {
    return treasuryAddress
}

function treasuryFee() {
    return treasuryFee
}

function lastDividendAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    return lastDividendAt[arg1]
}

function marketplaceVolume() {
    return marketplaceVolume
}

function DD() {
    return DDAddress
}

function stopMarket() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = 0
}

function startMarket() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMinterFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minterFee = arg1
}

function setHolderFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    holderFee = arg1
}

function setMarketFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryFee = arg1
}

function setTreasuryAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(DDAddress)
    staticcall DDAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        return 0
    if totalDividend < lastDividendAt[arg1]:
        revert with 0, 17
    return (totalDividend - lastDividendAt[arg1])
}

function claimMinterBalance() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if minterBalance < minterBalances[msg.sender]:
        revert with 0, 17
    minterBalance -= minterBalances[msg.sender]
    minterBalances[msg.sender] = 0
    if not minterBalances[msg.sender]:
        revert with 0, 'Zero claim due'
    if eth.balance(this.address) <= minterBalances[msg.sender]:
        revert with 0, 'Contract underfunded'
    call msg.sender with:
       value minterBalances[msg.sender] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor1 = 1
}

function cancelListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(DDAddress)
    staticcall DDAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not token owner'
    marketplace[arg1].field_0 = 0
    marketplace[arg1].field_256 = 0
    marketplace[arg1].field_768 = 0
    emit 0xb8116198: arg1
}

function setListing(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(DDAddress)
    staticcall DDAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not token owner'
    marketplace[arg1].field_0 = msg.sender or Mask(96, 160, marketplace[arg1].field_0)
    marketplace[arg1].field_256 = arg2
    marketplace[arg1].field_768 = 1
    emit 0x6e667f1b: arg1, arg2
}

function getReflectionBalances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(DDAddress)
    staticcall DDAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = idx
        require ext_code.size(DDAddress)
        staticcall DDAddress.0x2f745c59 with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _21 = mem[_20]
        require ext_code.size(DDAddress)
        staticcall DDAddress.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _21 >= mem[_24]:
            if s > -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = _21
        mem[32] = 14
        if totalDividend < lastDividendAt[_21]:
            revert with 0, 17
        if s > !(totalDividend - lastDividendAt[_21]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[_21]
        continue 
    return s
}

function claimReflectionBalance() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = msg.sender
    require ext_code.size(DDAddress)
    staticcall DDAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(DDAddress)
        staticcall DDAddress.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _24 = mem[_22]
        require ext_code.size(DDAddress)
        staticcall DDAddress.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _24 >= mem[_31]:
            if s > -1:
                revert with 0, 17
            mem[0] = _24
            mem[32] = 14
            lastDividendAt[_24] = totalDividend
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if totalDividend < lastDividendAt[_24]:
            revert with 0, 17
        if s > !(totalDividend - lastDividendAt[_24]):
            revert with 0, 17
        mem[0] = _24
        mem[32] = 14
        lastDividendAt[_24] = totalDividend
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[_24]
        continue 
    if reflectionBalance < s:
        revert with 0, 17
    reflectionBalance -= s
    if not s:
        revert with 0, 'Zero claim due'
    if eth.balance(this.address) <= s:
        revert with 0, 'Contract underfunded'
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor1 = 1
}

function buyListing(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(DDAddress)
    staticcall DDAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.value < marketplace[arg1].field_256:
        revert with 0, 'Incorrect amount'
    if marketplace[arg1].field_768 > 2:
        revert with 0, 33
    if marketplace[arg1].field_768 != 1:
        revert with 0, 'Not for sale'
    if marketplace[arg1].field_0 != ext_call.return_data[12 len 20]:
        revert with 0, 'No longer owner'
    require ext_code.size(DDAddress)
    if marketplace[arg1].field_256:
        staticcall DDAddress.0x9e942ace with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.value and holderFee > -1 / msg.value:
            revert with 0, 17
        if msg.value and minterFee > -1 / msg.value:
            revert with 0, 17
        if msg.value and treasuryFee > -1 / msg.value:
            revert with 0, 17
        if msg.value < msg.value * holderFee / 100:
            revert with 0, 17
        if msg.value - (msg.value * holderFee / 100) < msg.value * minterFee / 100:
            revert with 0, 17
        if msg.value - (msg.value * holderFee / 100) - (msg.value * minterFee / 100) < treasuryFee:
            revert with 0, 17
        call treasuryAddress with:
           value msg.value * treasuryFee / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(ext_call.return_data[0]) with:
           value msg.value - (msg.value * holderFee / 100) - (msg.value * minterFee / 100) - treasuryFee wei
             gas 2300 * is_zero(value) wei
        require ext_code.size(DDAddress)
        staticcall DDAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if reflectionBalance > !(msg.value * holderFee / 100):
            revert with 0, 17
        reflectionBalance += msg.value * holderFee / 100
        if not ext_call.return_data[0]:
            revert with 0, 18
        if totalDividend > !(msg.value * holderFee / 100 / ext_call.return_data[0]):
            revert with 0, 17
        totalDividend += msg.value * holderFee / 100 / ext_call.return_data[0]
        if minterBalances[address(ext_call.return_data[0])] > !minterFee:
            revert with 0, 17
        minterBalances[address(ext_call.return_data[0])] += minterFee
        if minterBalance > !minterFee:
            revert with 0, 17
        minterBalance += minterFee
        if marketplaceVolume > !msg.value:
            revert with 0, 17
        marketplaceVolume += msg.value
    call DDAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    marketplace[arg1].field_0 = 0
    marketplace[arg1].field_256 = 0
    marketplace[arg1].field_768 = 2
    marketplace[arg1].field_512 = msg.value
    emit 0x68774af4: arg1, msg.value
}

function getForSale() {
    require ext_code.size(DDAddress)
    staticcall DDAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[0] = idx
        mem[32] = 15
        if marketplace[idx].field_768 > 2:
            revert with 0, 33
        if marketplace[idx].field_768 != 1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[mem[64] + 4] = idx
        require ext_code.size(DDAddress)
        staticcall DDAddress.0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _32 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _37 = mem[_32]
        require mem[_32] == mem[_32 + 12 len 20]
        mem[0] = idx
        mem[32] = 15
        if address(_37) != marketplace[idx].field_0:
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
    _27 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[0] = idx
            mem[32] = 15
            if marketplace[idx].field_768 > 2:
                revert with 0, 33
            if marketplace[idx].field_768 != 1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[mem[64] + 4] = idx
            require ext_code.size(DDAddress)
            staticcall DDAddress.0x6352211e with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _73 = mem[_69]
            require mem[_69] == mem[_69 + 12 len 20]
            mem[0] = idx
            mem[32] = 15
            if address(_73) != marketplace[idx].field_0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _84 = mem[64]
            mem[64] = mem[64] + 64
            mem[_84] = idx
            mem[0] = idx
            mem[32] = 15
            mem[_84 + 32] = marketplace[idx].field_256
            if s >= mem[_27]:
                revert with 0, 50
            mem[(32 * s) + _27 + 32] = _84
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        _65 = mem[_27]
        mem[mem[64] + 32] = mem[_27]
        idx = 0
        s = _27 + 32
        t = mem[64] + 64
        while idx < _65:
            u = 0
            v = t
            w = mem[w]
            while u < 2:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 3
            w = mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[w] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 96
            t = t + 64
            continue 
    else:
        mem[64] = _27 + (32 * s) + 96
        mem[_27 + (32 * s) + 32 len 64] = call.data[calldata.size len 64]
        mem[var17001] = _27 + (32 * s) + 32
        t = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_27 + (32 * s) + 32 len 64] = call.data[calldata.size len 64]
            mem[t + 32] = _27 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[0] = idx
            mem[32] = 15
            if marketplace[idx].field_768 > 2:
                revert with 0, 33
            if marketplace[idx].field_768 != 1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[mem[64] + 4] = idx
            require ext_code.size(DDAddress)
            staticcall DDAddress.0x6352211e with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _116 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _119 = mem[_116]
            require mem[_116] == mem[_116 + 12 len 20]
            mem[0] = idx
            mem[32] = 15
            if address(_119) != marketplace[idx].field_0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _121 = mem[64]
            mem[64] = mem[64] + 64
            mem[_121] = idx
            mem[0] = idx
            mem[32] = 15
            mem[_121 + 32] = marketplace[idx].field_256
            if s >= mem[_27]:
                revert with 0, 50
            mem[(32 * s) + _27 + 32] = _121
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        _112 = mem[_27]
        mem[mem[64] + 32] = mem[_27]
        idx = 0
        s = _27 + 32
        t = mem[64] + 64
        while idx < _112:
            u = 0
            v = t
            w = mem[w]
            while u < 2:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 3
            w = mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[w] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 96
            t = t + 64
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xc8fc4f57(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xc8fc4f57(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if stor1 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor1 = 2
                    if minterBalance < minterBalances[msg.sender]:
                        revert with 0, 17
                    minterBalance -= minterBalances[msg.sender]
                    minterBalances[msg.sender] = 0
                    if not minterBalances[msg.sender]:
                        revert with 0, 'Zero claim due'
                    if eth.balance(this.address) <= minterBalances[msg.sender]:
                        revert with 0, 'Contract underfunded'
                    call msg.sender with:
                       value minterBalances[msg.sender] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    stor1 = 1
                else:
                    if unknown_0xcc32d176(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return treasuryFee
                    if unknown_0xd2068857(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return lastDividendAt[arg1]
                    if unknown_0xd7ad7e92(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return marketplaceVolume
                    if unknown_0xdabedc8c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor4 = 0
                    else:
                        if unknown_0xe84cd6c9(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            holderFee = arg1
                        else:
                            if unknown_0xeccc32f2(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return DDAddress
                            if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require arg1 == address(arg1)
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if not address(arg1):
                                    revert with 0, 'Ownable: new owner is the zero address'
                                emit OwnershipTransferred(owner, address(arg1));
                                owner = address(arg1)
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                emit OwnershipTransferred(owner, 0);
                owner = 0
            if unknown_0x7b4afd65(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor4 = 1
            if uint32(call.func_hash) >> 224 != unknown_0x804c2cf8(?????):
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if uint32(call.func_hash) >> 224 != unknown_0xa708d404(?????):
                    if unknown_0xaaa31151(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(stor4)
                    if unknown_0xb6f2e802(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return holderFee
                    if uint32(call.func_hash) >> 224 != unknown_0xc5f956af(?????):
                    require not msg.value
                    return treasuryAddress
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                mem[132] = address(arg1)
                require ext_code.size(DDAddress)
                staticcall DDAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 128
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = idx
                    require ext_code.size(DDAddress)
                    staticcall DDAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(arg1), idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _198 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _204 = mem[_198]
                    require ext_code.size(DDAddress)
                    staticcall DDAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _221 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if _204 >= mem[_221]:
                        if s > -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = _204
                    mem[32] = 14
                    if totalDividend < lastDividendAt[_204]:
                        revert with 0, 17
                    if s > !(totalDividend - lastDividendAt[_204]):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + totalDividend - lastDividendAt[_204]
                    continue 
                return s
            require not msg.value
            require ext_code.size(DDAddress)
            staticcall DDAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 128
            require return_data.size >= 32
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[0] = idx
                mem[32] = 15
                if marketplace[idx].field_768 > 2:
                    revert with 0, 33
                if marketplace[idx].field_768 != 1:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                mem[mem[64] + 4] = idx
                require ext_code.size(DDAddress)
                staticcall DDAddress.0x6352211e with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _203 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _214 = mem[_203]
                require mem[_203] == mem[_203 + 12 len 20]
                mem[0] = idx
                mem[32] = 15
                if address(_214) != marketplace[idx].field_0:
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
            _192 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + (32 * s) + 32
            if not s:
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[0] = idx
                    mem[32] = 15
                    if marketplace[idx].field_768 > 2:
                        revert with 0, 33
                    if marketplace[idx].field_768 != 1:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[mem[64] + 4] = idx
                    require ext_code.size(DDAddress)
                    staticcall DDAddress.0x6352211e with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _257 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _261 = mem[_257]
                    require mem[_257] == mem[_257 + 12 len 20]
                    mem[0] = idx
                    mem[32] = 15
                    if address(_261) != marketplace[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    _272 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_272] = idx
                    mem[0] = idx
                    mem[32] = 15
                    mem[_272 + 32] = marketplace[idx].field_256
                    if s >= mem[_192]:
                        revert with 0, 50
                    mem[(32 * s) + _192 + 32] = _272
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                mem[mem[64]] = 32
                _253 = mem[_192]
                mem[mem[64] + 32] = mem[_192]
                idx = 0
                s = _192 + 32
                t = mem[64] + 64
                while idx < _253:
                    u = 0
                    v = t
                    w = mem[w]
                    while u < 2:
                        mem[v] = mem[w]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    u = 3
                    w = mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[w] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 96
                    t = t + 64
                    continue 
            else:
                mem[64] = _192 + (32 * s) + 96
                mem[_192 + (32 * s) + 32 len 64] = call.data[calldata.size len 64]
                mem[var23001] = _192 + (32 * s) + 32
                t = var23001
                idx = var23002
                while idx - 1:
                    mem[64] = mem[64] + 64
                    mem[_192 + (32 * s) + 32 len 64] = call.data[calldata.size len 64]
                    mem[t + 32] = _192 + (32 * s) + 32
                    t = t + 32
                    idx = idx - 1
                    continue 
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[0] = idx
                    mem[32] = 15
                    if marketplace[idx].field_768 > 2:
                        revert with 0, 33
                    if marketplace[idx].field_768 != 1:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[mem[64] + 4] = idx
                    require ext_code.size(DDAddress)
                    staticcall DDAddress.0x6352211e with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _307 = mem[_304]
                    require mem[_304] == mem[_304 + 12 len 20]
                    mem[0] = idx
                    mem[32] = 15
                    if address(_307) != marketplace[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    _309 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_309] = idx
                    mem[0] = idx
                    mem[32] = 15
                    mem[_309 + 32] = marketplace[idx].field_256
                    if s >= mem[_192]:
                        revert with 0, 50
                    mem[(32 * s) + _192 + 32] = _309
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                mem[mem[64]] = 32
                _300 = mem[_192]
                mem[mem[64] + 32] = mem[_192]
                idx = 0
                s = _192 + 32
                t = mem[64] + 64
                while idx < _300:
                    u = 0
                    v = t
                    w = mem[w]
                    while u < 2:
                        mem[v] = mem[w]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    u = 3
                    w = mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[w] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 96
                    t = t + 64
                    continue 
            return memory
              from mem[64]
               len t - mem[64]
        if unknown_0x425d4980(?????) > uint32(call.func_hash) >> 224:
            if getReflectionBalance(uint256 rg1) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require ext_code.size(DDAddress)
                staticcall DDAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 >= ext_call.return_data[0]:
                    return 0
                if totalDividend < lastDividendAt[arg1]:
                    revert with 0, 17
                return (totalDividend - lastDividendAt[arg1])
            if Marketplace(uint256 rg1) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if marketplace[arg1].field_768 >= 3:
                    revert with 0, 33
                return marketplace[arg1].field_0, marketplace[arg1].field_256, marketplace[arg1].field_512, marketplace[arg1].field_768
            if minterBalances(address rg1) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return minterBalances[arg1]
            if unknown_0x26b825d2(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                treasuryFee = arg1
            else:
                if unknown_0x292c42c5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require ext_code.size(DDAddress)
                    staticcall DDAddress.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != msg.sender:
                        revert with 0, 'Not token owner'
                    marketplace[arg1].field_0 = msg.sender or Mask(96, 160, marketplace[arg1].field_0)
                    marketplace[arg1].field_256 = arg2
                    marketplace[arg1].field_768 = 1
                    emit 0x6e667f1b: arg1, arg2
                else:
                    if unknown_0x2e1a7d4d(?????) == uint32(call.func_hash) >> 224:
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call msg.sender with:
                           value arg1 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x305a67a8(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x4131ff99(?????):
                            require not msg.value
                            return reflectionBalance
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require ext_code.size(DDAddress)
                        staticcall DDAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != msg.sender:
                            revert with 0, 'Not token owner'
                        marketplace[arg1].field_0 = 0
                        marketplace[arg1].field_256 = 0
                        marketplace[arg1].field_768 = 0
                        emit 0xb8116198: arg1
        else:
            if unknown_0x425d4980(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return mintAddress
            if uint32(call.func_hash) >> 224 != unknown_0x4884f459(?????):
                if unknown_0x48a9d0ce(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return minterFee
                if unknown_0x4b6acafb(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalDividend
                if unknown_0x5e94c98e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    minterFee = arg1
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x64f06f5e(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x6605bfda(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x6c781818(?????):
                            require not msg.value
                            return minterBalance
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        treasuryAddress = address(arg1)
                    else:
                        require not msg.value
                        if stor1 == 2:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor1 = 2
                        mem[132] = msg.sender
                        require ext_code.size(DDAddress)
                        staticcall DDAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < ext_call.return_data[0]:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = idx
                            require ext_code.size(DDAddress)
                            staticcall DDAddress.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _194 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _200 = mem[_194]
                            require ext_code.size(DDAddress)
                            staticcall DDAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _218 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if _200 >= mem[_218]:
                                if s > -1:
                                    revert with 0, 17
                                mem[0] = _200
                                mem[32] = 14
                                lastDividendAt[_200] = totalDividend
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if totalDividend < lastDividendAt[_200]:
                                revert with 0, 17
                            if s > !(totalDividend - lastDividendAt[_200]):
                                revert with 0, 17
                            mem[0] = _200
                            mem[32] = 14
                            lastDividendAt[_200] = totalDividend
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + totalDividend - lastDividendAt[_200]
                            continue 
                        if reflectionBalance < s:
                            revert with 0, 17
                        reflectionBalance -= s
                        if not s:
                            revert with 0, 'Zero claim due'
                        if eth.balance(this.address) <= s:
                            revert with 0, 'Contract underfunded'
                        call msg.sender with:
                           value s wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        stor1 = 1
            else:
                require calldata.size - 4 >= 32
                require ext_code.size(DDAddress)
                staticcall DDAddress.0x6352211e with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if msg.value < marketplace[arg1].field_256:
                    revert with 0, 'Incorrect amount'
                if marketplace[arg1].field_768 > 2:
                    revert with 0, 33
                if marketplace[arg1].field_768 != 1:
                    revert with 0, 'Not for sale'
                if marketplace[arg1].field_0 != ext_call.return_data[12 len 20]:
                    revert with 0, 'No longer owner'
                require ext_code.size(DDAddress)
                if marketplace[arg1].field_256:
                    staticcall DDAddress.0x9e942ace with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if msg.value and holderFee > -1 / msg.value:
                        revert with 0, 17
                    if msg.value and minterFee > -1 / msg.value:
                        revert with 0, 17
                    if msg.value and treasuryFee > -1 / msg.value:
                        revert with 0, 17
                    if msg.value < msg.value * holderFee / 100:
                        revert with 0, 17
                    if msg.value - (msg.value * holderFee / 100) < msg.value * minterFee / 100:
                        revert with 0, 17
                    if msg.value - (msg.value * holderFee / 100) - (msg.value * minterFee / 100) < treasuryFee:
                        revert with 0, 17
                    call treasuryAddress with:
                       value msg.value * treasuryFee / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call address(ext_call.return_data[0]) with:
                       value msg.value - (msg.value * holderFee / 100) - (msg.value * minterFee / 100) - treasuryFee wei
                         gas 2300 * is_zero(value) wei
                    require ext_code.size(DDAddress)
                    staticcall DDAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if reflectionBalance > !(msg.value * holderFee / 100):
                        revert with 0, 17
                    reflectionBalance += msg.value * holderFee / 100
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if totalDividend > !(msg.value * holderFee / 100 / ext_call.return_data[0]):
                        revert with 0, 17
                    totalDividend += msg.value * holderFee / 100 / ext_call.return_data[0]
                    if minterBalances[address(ext_call.return_data[0])] > !minterFee:
                        revert with 0, 17
                    minterBalances[address(ext_call.return_data[0])] += minterFee
                    if minterBalance > !minterFee:
                        revert with 0, 17
                    minterBalance += minterFee
                    if marketplaceVolume > !msg.value:
                        revert with 0, 17
                    marketplaceVolume += msg.value
                call DDAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                marketplace[arg1].field_0 = 0
                marketplace[arg1].field_256 = 0
                marketplace[arg1].field_768 = 2
                marketplace[arg1].field_512 = msg.value
                emit 0x68774af4: arg1, msg.value
}



}
