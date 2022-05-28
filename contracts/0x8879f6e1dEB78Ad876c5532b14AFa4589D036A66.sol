contract main {




// =====================  Runtime code  =====================


const mintAddress = 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684

const DD = 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684


address owner;
uint256 stor1;
uint8 sub_51a544a3;
uint8 stor2; offset 168
uint128 stor2; offset 168
uint256 stor2;
uint256 minterBalance;
uint256 reflectionBalance;
uint256 totalDividend;
uint256 marketplaceVolume;
uint256 holderFee;
uint256 minterFee;
uint256 treasuryFee;
address treasuryAddress;
array of uint256 forSale;
mapping of uint8 stor12;
mapping of uint256 minterBalances;
mapping of uint256 lastDividendAt;
mapping of struct marketplace;

function Marketplace(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if marketplace[arg1].field_768 >= 2:
        revert with 'NH{q', 33
    return marketplace[arg1].field_0, marketplace[arg1].field_256, marketplace[arg1].field_512, marketplace[arg1].field_768
}

function minterBalances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minterBalances[arg1]
}

function forSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < forSale.length
    return forSale[arg1]
}

function reflectionBalance() {
    return reflectionBalance
}

function minterFee() {
    return minterFee
}

function totalDividend() {
    return totalDividend
}

function sub_51a544a3(?) {
    if sub_51a544a3 >= 3:
        revert with 'NH{q', 33
    return sub_51a544a3
}

function minterBalance() {
    return minterBalance
}

function owner() {
    return owner
}

function sub_a5b8f210(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor12[arg1])
}

function marketActive() {
    return bool(uint8(stor2.field_168))
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
    require arg1 == arg1
    return lastDividendAt[arg1]
}

function marketplaceVolume() {
    return marketplaceVolume
}

function _fallback() payable {
  stop
}

function agree() {
    stor12[address(msg.sender)] = 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
}

function stopMarket() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor2.field_168) = 0
}

function startMarket() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor2.field_168) = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMinterFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minterFee = arg1
}

function setHolderFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    holderFee = arg1
}

function setMarketFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function sub_a7550fb3(?) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 2:
        revert with 'NH{q', 33
    uint256(stor2.field_0) = arg1 or Mask(248, 8, uint256(stor2.field_0))
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require arg1 == arg1
    require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
    staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 >= ext_call.return_data[0]:
        return 0
    if totalDividend < lastDividendAt[arg1]:
        revert with 'NH{q', 17
    return (totalDividend - lastDividendAt[arg1])
}

function claimMinterBalance() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_51a544a3 > 2:
        revert with 'NH{q', 33
    if sub_51a544a3 == 2:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Must agree to terms'
    if minterBalance < minterBalances[address(msg.sender)]:
        revert with 'NH{q', 17
    minterBalance -= minterBalances[address(msg.sender)]
    minterBalances[address(msg.sender)] = 0
    if minterBalances[address(msg.sender)] <= 0:
        revert with 0, 'Zero claim due'
    if eth.balance(this.address) <= minterBalances[address(msg.sender)]:
        revert with 0, 'Contract underfunded'
    call msg.sender with:
       value minterBalances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor1 = 1
}

function setListing(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
    staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not token owner'
    marketplace[arg1].field_0 = msg.sender
    marketplace[arg1].field_256 = arg2
    marketplace[arg1].field_768 = 1
    idx = 0
    s = 0
    while idx < forSale.length:
        mem[0] = 11
        if idx == -1:
            revert with 'NH{q', 17
        if forSale[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        forSale.length++
        forSale[forSale.length] = arg1
    emit 0x6e667f1b: arg1, arg2
}

function cancelListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
    staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x6352211e with:
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
    idx = 0
    while idx < forSale.length:
        mem[0] = 11
        if forSale[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if forSale.length < 1:
            revert with 'NH{q', 17
        if forSale.length - 1 >= forSale.length:
            revert with 'NH{q', 50
        if idx >= forSale.length:
            revert with 'NH{q', 50
        forSale[idx] = forSale[forSale.length]
        if not forSale.length:
            revert with 'NH{q', 49
        forSale[forSale.length] = 0
        forSale.length--
        emit 0xb8116198: arg1
    emit 0xb8116198: arg1
}

function getReflectionBalances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
    staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = idx
        require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
        staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x2f745c59 with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _21 = mem[_20]
        require mem[_20] == mem[_20]
        require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
        staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_24] == mem[_24]
        if _21 >= mem[_24]:
            if s > -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = _21
        mem[32] = 14
        if totalDividend < lastDividendAt[_21]:
            revert with 'NH{q', 17
        if s > -totalDividend + lastDividendAt[_21] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[_21]
        continue 
    return s
}

function buyListing(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
    staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.value < marketplace[arg1].field_256:
        revert with 0, 'Incorrect amount'
    if marketplace[arg1].field_768 > 1:
        revert with 'NH{q', 33
    if marketplace[arg1].field_768 != 1:
        revert with 0, 'Not for sale'
    if marketplace[arg1].field_0 != ext_call.return_data[12 len 20]:
        revert with 0, 'No longer owner'
    if marketplace[arg1].field_256 > 0:
        if msg.value and holderFee > -1 / msg.value:
            revert with 'NH{q', 17
        if msg.value and minterFee > -1 / msg.value:
            revert with 'NH{q', 17
        if msg.value and treasuryFee > -1 / msg.value:
            revert with 'NH{q', 17
        if msg.value < msg.value * holderFee / 100:
            revert with 'NH{q', 17
        if msg.value - (msg.value * holderFee / 100) < msg.value * minterFee / 100:
            revert with 'NH{q', 17
        if msg.value - (msg.value * holderFee / 100) - (msg.value * minterFee / 100) < msg.value * treasuryFee / 100:
            revert with 'NH{q', 17
        call treasuryAddress with:
           value msg.value * treasuryFee / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call ext_call.return_data[12 len 20] with:
           value msg.value - (msg.value * holderFee / 100) - (msg.value * minterFee / 100) - (msg.value * treasuryFee / 100) wei
             gas 2300 * is_zero(value) wei
        require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
        staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if reflectionBalance > -(msg.value * holderFee / 100) - 1:
            revert with 'NH{q', 17
        reflectionBalance += msg.value * holderFee / 100
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if totalDividend > -(msg.value * holderFee / 100 / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        totalDividend += msg.value * holderFee / 100 / ext_call.return_data[0]
        if minterBalance > -(msg.value * minterFee / 100) - 1:
            revert with 'NH{q', 17
        minterBalance += msg.value * minterFee / 100
        if marketplaceVolume > -msg.value - 1:
            revert with 'NH{q', 17
        marketplaceVolume += msg.value
    require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
    call 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x23b872dd with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    marketplace[arg1].field_0 = 0
    marketplace[arg1].field_256 = 0
    marketplace[arg1].field_768 = 0
    marketplace[arg1].field_512 = msg.value
    idx = 0
    while idx < forSale.length:
        mem[0] = 11
        if forSale[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if forSale.length < 1:
            revert with 'NH{q', 17
        if forSale.length - 1 >= forSale.length:
            revert with 'NH{q', 50
        if idx >= forSale.length:
            revert with 'NH{q', 50
        forSale[idx] = forSale[forSale.length]
        if not forSale.length:
            revert with 'NH{q', 49
        forSale[forSale.length] = 0
        forSale.length--
        emit 0x68774af4: arg1, msg.value
    emit 0x68774af4: arg1, msg.value
}

function claimReflectionBalance() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_51a544a3 > 2:
        revert with 'NH{q', 33
    if sub_51a544a3 == 2:
        mem[0] = msg.sender
        mem[32] = 12
        if not stor12[address(msg.sender)]:
            revert with 0, 'Must agree to terms'
        mem[100] = msg.sender
        require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
        staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = idx
            require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
            staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x2f745c59 with:
                    gas gas_remaining wei
                   args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _79 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _87 = mem[_79]
            require mem[_79] == mem[_79]
            require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
            staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _96 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_96] == mem[_96]
            if _87 >= mem[_96]:
                if s > -1:
                    revert with 'NH{q', 17
                mem[0] = _87
                mem[32] = 14
                lastDividendAt[_87] = totalDividend
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if totalDividend < lastDividendAt[_87]:
                revert with 'NH{q', 17
            if s > -totalDividend + lastDividendAt[_87] - 1:
                revert with 'NH{q', 17
            mem[0] = _87
            mem[32] = 14
            lastDividendAt[_87] = totalDividend
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + totalDividend - lastDividendAt[_87]
            continue 
    else:
        if sub_51a544a3 > 2:
            revert with 'NH{q', 33
        if sub_51a544a3 != 1:
            mem[100] = msg.sender
            require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
            staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = idx
                require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
                staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x2f745c59 with:
                        gas gas_remaining wei
                       args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _81 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _88 = mem[_81]
                require mem[_81] == mem[_81]
                require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
                staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _97 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_97] == mem[_97]
                if _88 >= mem[_97]:
                    if s > -1:
                        revert with 'NH{q', 17
                    mem[0] = _88
                    mem[32] = 14
                    lastDividendAt[_88] = totalDividend
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if totalDividend < lastDividendAt[_88]:
                    revert with 'NH{q', 17
                if s > -totalDividend + lastDividendAt[_88] - 1:
                    revert with 'NH{q', 17
                mem[0] = _88
                mem[32] = 14
                lastDividendAt[_88] = totalDividend
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + totalDividend - lastDividendAt[_88]
                continue 
        else:
            mem[0] = msg.sender
            mem[32] = 12
            if not stor12[address(msg.sender)]:
                revert with 0, 'Must agree to terms'
            mem[100] = msg.sender
            require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
            staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = idx
                require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
                staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x2f745c59 with:
                        gas gas_remaining wei
                       args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _83 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _89 = mem[_83]
                require mem[_83] == mem[_83]
                require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
                staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _98 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_98] == mem[_98]
                if _89 >= mem[_98]:
                    if s > -1:
                        revert with 'NH{q', 17
                    mem[0] = _89
                    mem[32] = 14
                    lastDividendAt[_89] = totalDividend
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if totalDividend < lastDividendAt[_89]:
                    revert with 'NH{q', 17
                if s > -totalDividend + lastDividendAt[_89] - 1:
                    revert with 'NH{q', 17
                mem[0] = _89
                mem[32] = 14
                lastDividendAt[_89] = totalDividend
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + totalDividend - lastDividendAt[_89]
                continue 
    if reflectionBalance < s:
        revert with 'NH{q', 17
    reflectionBalance -= s
    if s <= 0:
        revert with 0, 'Zero claim due'
    if eth.balance(this.address) <= s:
        revert with 0, 'Contract underfunded'
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor1 = 1
}

function sub_4ff347ee(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2
    mem[64] = (32 * arg2) + 128
    if not arg2:
        if arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        s = 0
        idx = arg1
        while idx < arg1 + arg2:
            if s >= forSale.length:
                if idx == -1:
                    revert with 'NH{q', 17
                s = s
                idx = idx + 1
                continue 
            if idx >= forSale.length:
                revert with 'NH{q', 50
            mem[0] = 11
            mem[mem[64] + 4] = forSale[idx]
            require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
            staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x6352211e with:
                    gas gas_remaining wei
                   args forSale[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _62 = mem[_59]
            require mem[_59] == mem[_59 + 12 len 20]
            mem[0] = forSale[idx]
            mem[32] = 15
            if marketplace[stor11[idx]].field_0 != address(_62):
                if idx == -1:
                    revert with 'NH{q', 17
                s = s
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = forSale[idx]
            require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
            staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args forSale[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _76 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_76] == mem[_76 + 12 len 20]
            if mem[_76 + 12 len 20] == this.address:
                _84 = mem[64]
                mem[64] = mem[64] + 64
                mem[_84] = forSale[idx]
                mem[0] = forSale[idx]
                mem[32] = 15
                mem[_84 + 32] = marketplace[stor11[idx]].field_256
                if s >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * s) + 128] = _84
            else:
                mem[mem[64] + 4] = address(_62)
                mem[mem[64] + 36] = this.address
                require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
                staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0xe985e9c5 with:
                        gas gas_remaining wei
                       args address(_62), this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _93 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_93] == bool(mem[_93])
                if not mem[_93]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s
                    idx = idx + 1
                    continue 
                _97 = mem[64]
                mem[64] = mem[64] + 64
                mem[_97] = forSale[idx]
                mem[0] = forSale[idx]
                mem[32] = 15
                mem[_97 + 32] = marketplace[stor11[idx]].field_256
                if s >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * s) + 128] = _97
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _57 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _57:
            u = 0
            v = mem[s]
            w = t
            while u < 2:
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
    else:
        mem[64] = (32 * arg2) + 192
        mem[(32 * arg2) + 128 len 64] = call.data[calldata.size len 64]
        mem[var26001] = (32 * arg2) + 128
        s = var26001
        idx = var26002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg2) + 128 len 64] = call.data[calldata.size len 64]
            mem[s + 32] = (32 * arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        s = 0
        idx = arg1
        while idx < arg1 + arg2:
            if s >= forSale.length:
                if idx == -1:
                    revert with 'NH{q', 17
                s = s
                idx = idx + 1
                continue 
            if idx >= forSale.length:
                revert with 'NH{q', 50
            mem[0] = 11
            mem[mem[64] + 4] = forSale[idx]
            require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
            staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0x6352211e with:
                    gas gas_remaining wei
                   args forSale[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _142 = mem[_139]
            require mem[_139] == mem[_139 + 12 len 20]
            mem[0] = forSale[idx]
            mem[32] = 15
            if marketplace[stor11[idx]].field_0 != address(_142):
                if idx == -1:
                    revert with 'NH{q', 17
                s = s
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = forSale[idx]
            require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
            staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args forSale[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _147 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_147] == mem[_147 + 12 len 20]
            if mem[_147 + 12 len 20] == this.address:
                _150 = mem[64]
                mem[64] = mem[64] + 64
                mem[_150] = forSale[idx]
                mem[0] = forSale[idx]
                mem[32] = 15
                mem[_150 + 32] = marketplace[stor11[idx]].field_256
                if s >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * s) + 128] = _150
            else:
                mem[mem[64] + 4] = address(_142)
                mem[mem[64] + 36] = this.address
                require ext_code.size(0xd9a8a2ee4b8e578cce6510017a13f86cb5522684)
                staticcall 0xd9a8a2ee4b8e578cce6510017a13f86cb5522684.0xe985e9c5 with:
                        gas gas_remaining wei
                       args address(_142), this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _154 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_154] == bool(mem[_154])
                if not mem[_154]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s
                    idx = idx + 1
                    continue 
                _156 = mem[64]
                mem[64] = mem[64] + 64
                mem[_156] = forSale[idx]
                mem[0] = forSale[idx]
                mem[32] = 15
                mem[_156 + 32] = marketplace[stor11[idx]].field_256
                if s >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * s) + 128] = _156
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _136 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _136:
            u = 0
            v = mem[s]
            w = t
            while u < 2:
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
