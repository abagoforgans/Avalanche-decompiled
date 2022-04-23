contract main {




// =====================  Runtime code  =====================


const mintAddress = 0x1358005777d3d7193a2426a76d434f9bba0a55

const DD = 0x1358005777d3d7193a2426a76d434f9bba0a55


address owner;
uint256 stor1;
uint8 sub_51a544a3;
uint8 marketActive; offset 168
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
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function Marketplace(uint256 arg1) {
    require calldata.size - 4 >= 32
    if marketplace[arg1].field_768 >= 2:
        revert with 0, 33
    return marketplace[arg1].field_0, marketplace[arg1].field_256, marketplace[arg1].field_512, marketplace[arg1].field_768
}

function minterBalances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minterBalances[arg1]
}

function forSale(uint256 arg1) {
    require calldata.size - 4 >= 32
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
        revert with 0, 33
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
    return bool(marketActive)
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

function agree() {
    stor12[msg.sender] = 1
}

function stopMarket() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketActive = 0
}

function startMarket() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketActive = 1
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

function sub_a7550fb3(?) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 2:
        revert with 0, 33
    stor2 = arg1 or Mask(248, 8, stor2)
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
    require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a55)
    staticcall 0x1358005777d3d7193a2426a76d434f9bba0a55.0x18160ddd with:
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
    if sub_51a544a3 > 2:
        revert with 0, 33
    if sub_51a544a3 == 2:
        if not stor12[msg.sender]:
            revert with 0, 'Must agree to terms'
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

function setListing(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x6352211e with:
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
    idx = 0
    s = 0
    while idx < forSale.length:
        mem[0] = 11
        if idx == -1:
            revert with 0, 17
        if forSale[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        forSale.length++
        stor175B[stor11.length] = arg1
    emit 0x6e667f1b: arg1, arg2
}

function cancelListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x6352211e with:
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
                revert with 0, 17
            idx = idx + 1
            continue 
        if forSale.length < 1:
            revert with 0, 17
        if forSale.length - 1 >= forSale.length:
            revert with 0, 50
        if idx >= forSale.length:
            revert with 0, 50
        forSale[idx] = forSale[forSale.length]
        if not forSale.length:
            revert with 0, 49
        forSale[forSale.length] = 0
        forSale.length--
        emit 0xb8116198: arg1
    emit 0xb8116198: arg1
}

function getReflectionBalances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x70a08231 with:
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
        require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
        staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x2f745c59 with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _29 = mem[_28]
        require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a55)
        staticcall 0x1358005777d3d7193a2426a76d434f9bba0a55.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _34 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _29 >= mem[_34]:
            if s > -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = _29
        mem[32] = 14
        if totalDividend < lastDividendAt[_29]:
            revert with 0, 17
        if s > !(totalDividend - lastDividendAt[_29]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[_29]
        continue 
    return s
}

function buyListing(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.value < marketplace[arg1].field_256:
        revert with 0, 'Incorrect amount'
    if marketplace[arg1].field_768 > 1:
        revert with 0, 33
    if marketplace[arg1].field_768 != 1:
        revert with 0, 'Not for sale'
    if marketplace[arg1].field_0 != ext_call.return_data[12 len 20]:
        revert with 0, 'No longer owner'
    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
    if marketplace[arg1].field_256:
        staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.minterOf(uint256 rg1) with:
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
        if msg.value - (msg.value * holderFee / 100) - (msg.value * minterFee / 100) < msg.value * treasuryFee / 100:
            revert with 0, 17
        call treasuryAddress with:
           value msg.value * treasuryFee / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(ext_call.return_data[0]) with:
           value msg.value - (msg.value * holderFee / 100) - (msg.value * minterFee / 100) - (msg.value * treasuryFee / 100) wei
             gas 2300 * is_zero(value) wei
        require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a55)
        staticcall 0x1358005777d3d7193a2426a76d434f9bba0a55.0x18160ddd with:
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
        if minterBalances[address(ext_call.return_data[0])] > !(msg.value * minterFee / 100):
            revert with 0, 17
        minterBalances[address(ext_call.return_data[0])] += msg.value * minterFee / 100
        if minterBalance > !(msg.value * minterFee / 100):
            revert with 0, 17
        minterBalance += msg.value * minterFee / 100
        if marketplaceVolume > !msg.value:
            revert with 0, 17
        marketplaceVolume += msg.value
    call ????????????????????????????????????????.0x23b872dd with:
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
                revert with 0, 17
            idx = idx + 1
            continue 
        if forSale.length < 1:
            revert with 0, 17
        if forSale.length - 1 >= forSale.length:
            revert with 0, 50
        if idx >= forSale.length:
            revert with 0, 50
        forSale[idx] = forSale[forSale.length]
        if not forSale.length:
            revert with 0, 49
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
        revert with 0, 33
    if sub_51a544a3 == 2:
        mem[32] = 12
        if not stor12[msg.sender]:
            revert with 0, 'Must agree to terms'
        mem[0] = msg.sender
        mem[100] = msg.sender
        require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
        staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x70a08231 with:
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
            require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
            staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x2f745c59 with:
                    gas gas_remaining wei
                   args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _94 = mem[_90]
            require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a55)
            staticcall 0x1358005777d3d7193a2426a76d434f9bba0a55.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _123 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _94 >= mem[_123]:
                if s > -1:
                    revert with 0, 17
                mem[0] = _94
                mem[32] = 14
                lastDividendAt[_94] = totalDividend
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if totalDividend < lastDividendAt[_94]:
                revert with 0, 17
            if s > !(totalDividend - lastDividendAt[_94]):
                revert with 0, 17
            mem[0] = _94
            mem[32] = 14
            lastDividendAt[_94] = totalDividend
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + totalDividend - lastDividendAt[_94]
            continue 
    else:
        if sub_51a544a3 > 2:
            revert with 0, 33
        if sub_51a544a3 != 1:
            mem[100] = msg.sender
            require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
            staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x70a08231 with:
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
                require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x2f745c59 with:
                        gas gas_remaining wei
                       args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _91 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _96 = mem[_91]
                require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a55)
                staticcall 0x1358005777d3d7193a2426a76d434f9bba0a55.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _124 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _96 >= mem[_124]:
                    if s > -1:
                        revert with 0, 17
                    mem[0] = _96
                    mem[32] = 14
                    lastDividendAt[_96] = totalDividend
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if totalDividend < lastDividendAt[_96]:
                    revert with 0, 17
                if s > !(totalDividend - lastDividendAt[_96]):
                    revert with 0, 17
                mem[0] = _96
                mem[32] = 14
                lastDividendAt[_96] = totalDividend
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + totalDividend - lastDividendAt[_96]
                continue 
        else:
            mem[32] = 12
            if not stor12[msg.sender]:
                revert with 0, 'Must agree to terms'
            mem[0] = msg.sender
            mem[100] = msg.sender
            require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
            staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x70a08231 with:
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
                require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x2f745c59 with:
                        gas gas_remaining wei
                       args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _92 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _98 = mem[_92]
                require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a55)
                staticcall 0x1358005777d3d7193a2426a76d434f9bba0a55.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _125 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _98 >= mem[_125]:
                    if s > -1:
                        revert with 0, 17
                    mem[0] = _98
                    mem[32] = 14
                    lastDividendAt[_98] = totalDividend
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if totalDividend < lastDividendAt[_98]:
                    revert with 0, 17
                if s > !(totalDividend - lastDividendAt[_98]):
                    revert with 0, 17
                mem[0] = _98
                mem[32] = 14
                lastDividendAt[_98] = totalDividend
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + totalDividend - lastDividendAt[_98]
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

function sub_4ff347ee(?) {
    require calldata.size - 4 >= 64
    if arg2 > test266151307():
        revert with 0, 65
    mem[96] = arg2
    mem[64] = (32 * arg2) + 128
    if not arg2:
        if arg1 > !arg2:
            revert with 0, 17
        s = 0
        idx = arg1
        while idx < arg1 + arg2:
            if s >= forSale.length:
                if idx == -1:
                    revert with 0, 17
                s = s
                idx = idx + 1
                continue 
            if idx >= forSale.length:
                if idx == -1:
                    revert with 0, 17
                s = s
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = forSale[idx]
            mem[0] = 11
            require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
            staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x6352211e with:
                    gas gas_remaining wei
                   args forSale[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _76 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _77 = mem[_76]
            require mem[_76] == mem[_76 + 12 len 20]
            mem[0] = forSale[idx]
            mem[32] = 15
            if marketplace[stor11[idx]].field_0 != address(_77):
                if idx == -1:
                    revert with 0, 17
                s = s
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = forSale[idx]
            mem[0] = forSale[idx]
            require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
            staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.getApproved(uint256 rg1) with:
                    gas gas_remaining wei
                   args forSale[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _94 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_94] == mem[_94 + 12 len 20]
            if mem[_94 + 12 len 20] == this.address:
                _106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_106] = forSale[idx]
                mem[0] = forSale[idx]
                mem[32] = 15
                mem[_106 + 32] = marketplace[stor11[idx]].field_256
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _106
            else:
                mem[mem[64] + 4] = address(_77)
                mem[mem[64] + 36] = this.address
                mem[0] = forSale[idx]
                require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0xe985e9c5 with:
                        gas gas_remaining wei
                       args address(_77), this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _110 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_110] == bool(mem[_110])
                if not mem[_110]:
                    if idx == -1:
                        revert with 0, 17
                    s = s
                    idx = idx + 1
                    continue 
                _113 = mem[64]
                mem[64] = mem[64] + 64
                mem[_113] = forSale[idx]
                mem[0] = forSale[idx]
                mem[32] = 15
                mem[_113 + 32] = marketplace[stor11[idx]].field_256
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _113
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            s = s + 1
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _67 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _67:
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
        mem[64] = (32 * arg2) + 192
        mem[(32 * arg2) + 128 len 64] = call.data[calldata.size len 64]
        mem[var12001] = (32 * arg2) + 128
        s = var12001
        idx = var12002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg2) + 128 len 64] = call.data[calldata.size len 64]
            mem[s + 32] = (32 * arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if arg1 > !arg2:
            revert with 0, 17
        s = 0
        idx = arg1
        while idx < arg1 + arg2:
            if s >= forSale.length:
                if idx == -1:
                    revert with 0, 17
                s = s
                idx = idx + 1
                continue 
            if idx >= forSale.length:
                if idx == -1:
                    revert with 0, 17
                s = s
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = forSale[idx]
            mem[0] = 11
            require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
            staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x6352211e with:
                    gas gas_remaining wei
                   args forSale[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _174 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _175 = mem[_174]
            require mem[_174] == mem[_174 + 12 len 20]
            mem[0] = forSale[idx]
            mem[32] = 15
            if marketplace[stor11[idx]].field_0 != address(_175):
                if idx == -1:
                    revert with 0, 17
                s = s
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = forSale[idx]
            mem[0] = forSale[idx]
            require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
            staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.getApproved(uint256 rg1) with:
                    gas gas_remaining wei
                   args forSale[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _181 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_181] == mem[_181 + 12 len 20]
            if mem[_181 + 12 len 20] == this.address:
                _187 = mem[64]
                mem[64] = mem[64] + 64
                mem[_187] = forSale[idx]
                mem[0] = forSale[idx]
                mem[32] = 15
                mem[_187 + 32] = marketplace[stor11[idx]].field_256
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _187
            else:
                mem[mem[64] + 4] = address(_175)
                mem[mem[64] + 36] = this.address
                mem[0] = forSale[idx]
                require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0xe985e9c5 with:
                        gas gas_remaining wei
                       args address(_175), this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _190 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_190] == bool(mem[_190])
                if not mem[_190]:
                    if idx == -1:
                        revert with 0, 17
                    s = s
                    idx = idx + 1
                    continue 
                _192 = mem[64]
                mem[64] = mem[64] + 64
                mem[_192] = forSale[idx]
                mem[0] = forSale[idx]
                mem[32] = 15
                mem[_192 + 32] = marketplace[stor11[idx]].field_256
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _192
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            s = s + 1
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _165 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _165:
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
        if unknown_0x6c781818(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xb6f2e802(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x8fae60a5(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x6c781818(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return minterBalance
                    if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        emit OwnershipTransferred(owner, 0);
                        owner = 0
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x7b4afd65(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x8da5cb5b(?????):
                            require not msg.value
                            return owner
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        marketActive = 1
                if unknown_0x8fae60a5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    stor12[msg.sender] = 1
                if unknown_0xa5b8f210(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor12[arg1])
                if uint32(call.func_hash) >> 224 != unknown_0xa708d404(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xa7550fb3(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xaaa31151(?????):
                        require not msg.value
                        return bool(marketActive)
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 < 3
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg1 > 2:
                        revert with 0, 33
                    stor2 = arg1 or Mask(248, 8, stor2)
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                mem[132] = address(arg1)
                require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x70a08231 with:
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
                    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(arg1), idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _388 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _401 = mem[_388]
                    require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a55)
                    staticcall 0x1358005777d3d7193a2426a76d434f9bba0a55.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _446 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if _401 >= mem[_446]:
                        if s > -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = _401
                    mem[32] = 14
                    if totalDividend < lastDividendAt[_401]:
                        revert with 0, 17
                    if s > !(totalDividend - lastDividendAt[_401]):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + totalDividend - lastDividendAt[_401]
                    continue 
                return s
            if unknown_0xd7ad7e92(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xd7ad7e92(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return marketplaceVolume
                if unknown_0xdabedc8c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    marketActive = 0
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
                            return 0x1358005777d3d7193a2426a76d434f9bba0a55
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
            else:
                if unknown_0xb6f2e802(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return holderFee
                if unknown_0xc5f956af(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return treasuryAddress
                if uint32(call.func_hash) >> 224 != unknown_0xc8fc4f57(?????):
                    if unknown_0xcc32d176(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return treasuryFee
                    if uint32(call.func_hash) >> 224 != unknown_0xd2068857(?????):
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return lastDividendAt[arg1]
                require not msg.value
                if stor1 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor1 = 2
                if sub_51a544a3 > 2:
                    revert with 0, 33
                if sub_51a544a3 == 2:
                    if not stor12[msg.sender]:
                        revert with 0, 'Must agree to terms'
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
            if unknown_0x425d4980(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x2831f2f4(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != getReflectionBalance(uint256 rg1):
                        if Marketplace(uint256 rg1) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if marketplace[arg1].field_768 >= 2:
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
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a55)
                    staticcall 0x1358005777d3d7193a2426a76d434f9bba0a55.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 >= ext_call.return_data[0]:
                        return 0
                    if totalDividend < lastDividendAt[arg1]:
                        revert with 0, 17
                    return (totalDividend - lastDividendAt[arg1])
                if unknown_0x2831f2f4(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 < forSale.length
                    return forSale[arg1]
                if uint32(call.func_hash) >> 224 != unknown_0x292c42c5(?????):
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
                        require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                        staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x6352211e with:
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
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if forSale.length < 1:
                                revert with 0, 17
                            if forSale.length - 1 >= forSale.length:
                                revert with 0, 50
                            if idx >= forSale.length:
                                revert with 0, 50
                            forSale[idx] = forSale[forSale.length]
                            if not forSale.length:
                                revert with 0, 49
                            forSale[forSale.length] = 0
                            forSale.length--
                            emit 0xb8116198: arg1
                        emit 0xb8116198: arg1
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x6352211e with:
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
                    idx = 0
                    s = 0
                    while idx < forSale.length:
                        mem[0] = 11
                        if idx == -1:
                            revert with 0, 17
                        if forSale[idx] != arg1:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 1
                        continue 
                    if not s:
                        forSale.length++
                        stor175B[stor11.length] = arg1
                    emit 0x6e667f1b: arg1, arg2
            else:
                if unknown_0x4ff347ee(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x4ff347ee(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        if arg2 > test266151307():
                            revert with 0, 65
                        mem[128] = arg2
                        mem[64] = (32 * arg2) + 160
                        if not arg2:
                            if arg1 > !arg2:
                                revert with 0, 17
                            s = 0
                            idx = arg1
                            while idx < arg1 + arg2:
                                if s >= forSale.length:
                                    if idx == -1:
                                        revert with 0, 17
                                    s = s
                                    idx = idx + 1
                                    continue 
                                if idx >= forSale.length:
                                    if idx == -1:
                                        revert with 0, 17
                                    s = s
                                    idx = idx + 1
                                    continue 
                                mem[mem[64] + 4] = forSale[idx]
                                mem[0] = 11
                                require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                                staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x6352211e with:
                                        gas gas_remaining wei
                                       args forSale[idx]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _416 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _442 = mem[_416]
                                require mem[_416] == mem[_416 + 12 len 20]
                                mem[0] = forSale[idx]
                                mem[32] = 15
                                if marketplace[stor11[idx]].field_0 != address(_442):
                                    if idx == -1:
                                        revert with 0, 17
                                    s = s
                                    idx = idx + 1
                                    continue 
                                mem[mem[64] + 4] = forSale[idx]
                                mem[0] = forSale[idx]
                                require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                                staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.getApproved(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args forSale[idx]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _477 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_477] == mem[_477 + 12 len 20]
                                if mem[_477 + 12 len 20] == this.address:
                                    _495 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_495] = forSale[idx]
                                    mem[0] = forSale[idx]
                                    mem[32] = 15
                                    mem[_495 + 32] = marketplace[stor11[idx]].field_256
                                    if s >= mem[128]:
                                        revert with 0, 50
                                    mem[(32 * s) + 160] = _495
                                else:
                                    mem[mem[64] + 4] = address(_442)
                                    mem[mem[64] + 36] = this.address
                                    mem[0] = forSale[idx]
                                    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                                    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0xe985e9c5 with:
                                            gas gas_remaining wei
                                           args address(_442), this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _499 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_499] == bool(mem[_499])
                                    if not mem[_499]:
                                        if idx == -1:
                                            revert with 0, 17
                                        s = s
                                        idx = idx + 1
                                        continue 
                                    _502 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_502] = forSale[idx]
                                    mem[0] = forSale[idx]
                                    mem[32] = 15
                                    mem[_502 + 32] = marketplace[stor11[idx]].field_256
                                    if s >= mem[128]:
                                        revert with 0, 50
                                    mem[(32 * s) + 160] = _502
                                if s == -1:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 32
                            _383 = mem[128]
                            mem[mem[64] + 32] = mem[128]
                            idx = 0
                            s = 160
                            t = mem[64] + 64
                            while idx < _383:
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
                            mem[64] = (32 * arg2) + 224
                            mem[(32 * arg2) + 160 len 64] = call.data[calldata.size len 64]
                            mem[var17001] = (32 * arg2) + 160
                            s = var17001
                            idx = var17002
                            while idx - 1:
                                mem[64] = mem[64] + 64
                                mem[(32 * arg2) + 160 len 64] = call.data[calldata.size len 64]
                                mem[s + 32] = (32 * arg2) + 160
                                s = s + 32
                                idx = idx - 1
                                continue 
                            if arg1 > !arg2:
                                revert with 0, 17
                            s = 0
                            idx = arg1
                            while idx < arg1 + arg2:
                                if s >= forSale.length:
                                    if idx == -1:
                                        revert with 0, 17
                                    s = s
                                    idx = idx + 1
                                    continue 
                                if idx >= forSale.length:
                                    if idx == -1:
                                        revert with 0, 17
                                    s = s
                                    idx = idx + 1
                                    continue 
                                mem[mem[64] + 4] = forSale[idx]
                                mem[0] = 11
                                require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                                staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x6352211e with:
                                        gas gas_remaining wei
                                       args forSale[idx]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _563 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _564 = mem[_563]
                                require mem[_563] == mem[_563 + 12 len 20]
                                mem[0] = forSale[idx]
                                mem[32] = 15
                                if marketplace[stor11[idx]].field_0 != address(_564):
                                    if idx == -1:
                                        revert with 0, 17
                                    s = s
                                    idx = idx + 1
                                    continue 
                                mem[mem[64] + 4] = forSale[idx]
                                mem[0] = forSale[idx]
                                require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                                staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.getApproved(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args forSale[idx]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _570 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_570] == mem[_570 + 12 len 20]
                                if mem[_570 + 12 len 20] == this.address:
                                    _576 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_576] = forSale[idx]
                                    mem[0] = forSale[idx]
                                    mem[32] = 15
                                    mem[_576 + 32] = marketplace[stor11[idx]].field_256
                                    if s >= mem[128]:
                                        revert with 0, 50
                                    mem[(32 * s) + 160] = _576
                                else:
                                    mem[mem[64] + 4] = address(_564)
                                    mem[mem[64] + 36] = this.address
                                    mem[0] = forSale[idx]
                                    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                                    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0xe985e9c5 with:
                                            gas gas_remaining wei
                                           args address(_564), this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _579 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_579] == bool(mem[_579])
                                    if not mem[_579]:
                                        if idx == -1:
                                            revert with 0, 17
                                        s = s
                                        idx = idx + 1
                                        continue 
                                    _581 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_581] = forSale[idx]
                                    mem[0] = forSale[idx]
                                    mem[32] = 15
                                    mem[_581 + 32] = marketplace[stor11[idx]].field_256
                                    if s >= mem[128]:
                                        revert with 0, 50
                                    mem[(32 * s) + 160] = _581
                                if s == -1:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 32
                            _554 = mem[128]
                            mem[mem[64] + 32] = mem[128]
                            idx = 0
                            s = 160
                            t = mem[64] + 64
                            while idx < _554:
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
                    if unknown_0x51a544a3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if sub_51a544a3 >= 3:
                            revert with 0, 33
                        return sub_51a544a3
                    if unknown_0x5e94c98e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        minterFee = arg1
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x64f06f5e(?????):
                            if unknown_0x6605bfda(?????) == uint32(call.func_hash) >> 224:
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
                            if sub_51a544a3 > 2:
                                revert with 0, 33
                            if sub_51a544a3 == 2:
                                mem[32] = 12
                                if not stor12[msg.sender]:
                                    revert with 0, 'Must agree to terms'
                                mem[0] = msg.sender
                                mem[132] = msg.sender
                                require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                                staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x70a08231 with:
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
                                    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                                    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x2f745c59 with:
                                            gas gas_remaining wei
                                           args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _384 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _396 = mem[_384]
                                    require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a55)
                                    staticcall 0x1358005777d3d7193a2426a76d434f9bba0a55.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _443 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if _396 >= mem[_443]:
                                        if s > -1:
                                            revert with 0, 17
                                        mem[0] = _396
                                        mem[32] = 14
                                        lastDividendAt[_396] = totalDividend
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    if totalDividend < lastDividendAt[_396]:
                                        revert with 0, 17
                                    if s > !(totalDividend - lastDividendAt[_396]):
                                        revert with 0, 17
                                    mem[0] = _396
                                    mem[32] = 14
                                    lastDividendAt[_396] = totalDividend
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + totalDividend - lastDividendAt[_396]
                                    continue 
                            else:
                                if sub_51a544a3 > 2:
                                    revert with 0, 33
                                if sub_51a544a3 != 1:
                                    mem[132] = msg.sender
                                    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                                    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x70a08231 with:
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
                                        require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                                        staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x2f745c59 with:
                                                gas gas_remaining wei
                                               args msg.sender, idx
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _385 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _398 = mem[_385]
                                        require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a55)
                                        staticcall 0x1358005777d3d7193a2426a76d434f9bba0a55.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _444 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if _398 >= mem[_444]:
                                            if s > -1:
                                                revert with 0, 17
                                            mem[0] = _398
                                            mem[32] = 14
                                            lastDividendAt[_398] = totalDividend
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        if totalDividend < lastDividendAt[_398]:
                                            revert with 0, 17
                                        if s > !(totalDividend - lastDividendAt[_398]):
                                            revert with 0, 17
                                        mem[0] = _398
                                        mem[32] = 14
                                        lastDividendAt[_398] = totalDividend
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + totalDividend - lastDividendAt[_398]
                                        continue 
                                else:
                                    mem[32] = 12
                                    if not stor12[msg.sender]:
                                        revert with 0, 'Must agree to terms'
                                    mem[0] = msg.sender
                                    mem[132] = msg.sender
                                    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                                    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x70a08231 with:
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
                                        require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                                        staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x2f745c59 with:
                                                gas gas_remaining wei
                                               args msg.sender, idx
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _386 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _400 = mem[_386]
                                        require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a55)
                                        staticcall 0x1358005777d3d7193a2426a76d434f9bba0a55.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _445 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if _400 >= mem[_445]:
                                            if s > -1:
                                                revert with 0, 17
                                            mem[0] = _400
                                            mem[32] = 14
                                            lastDividendAt[_400] = totalDividend
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        if totalDividend < lastDividendAt[_400]:
                                            revert with 0, 17
                                        if s > !(totalDividend - lastDividendAt[_400]):
                                            revert with 0, 17
                                        mem[0] = _400
                                        mem[32] = 14
                                        lastDividendAt[_400] = totalDividend
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + totalDividend - lastDividendAt[_400]
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
                    if unknown_0x425d4980(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 0x1358005777d3d7193a2426a76d434f9bba0a55
                    if uint32(call.func_hash) >> 224 != unknown_0x4884f459(?????):
                        if unknown_0x48a9d0ce(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return minterFee
                        if uint32(call.func_hash) >> 224 != unknown_0x4b6acafb(?????):
                        require not msg.value
                        return totalDividend
                    require calldata.size - 4 >= 32
                    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if msg.value < marketplace[arg1].field_256:
                        revert with 0, 'Incorrect amount'
                    if marketplace[arg1].field_768 > 1:
                        revert with 0, 33
                    if marketplace[arg1].field_768 != 1:
                        revert with 0, 'Not for sale'
                    if marketplace[arg1].field_0 != ext_call.return_data[12 len 20]:
                        revert with 0, 'No longer owner'
                    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
                    if marketplace[arg1].field_256:
                        staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.minterOf(uint256 rg1) with:
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
                        if msg.value - (msg.value * holderFee / 100) - (msg.value * minterFee / 100) < msg.value * treasuryFee / 100:
                            revert with 0, 17
                        call treasuryAddress with:
                           value msg.value * treasuryFee / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(ext_call.return_data[0]) with:
                           value msg.value - (msg.value * holderFee / 100) - (msg.value * minterFee / 100) - (msg.value * treasuryFee / 100) wei
                             gas 2300 * is_zero(value) wei
                        require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a55)
                        staticcall 0x1358005777d3d7193a2426a76d434f9bba0a55.0x18160ddd with:
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
                        if minterBalances[address(ext_call.return_data[0])] > !(msg.value * minterFee / 100):
                            revert with 0, 17
                        minterBalances[address(ext_call.return_data[0])] += msg.value * minterFee / 100
                        if minterBalance > !(msg.value * minterFee / 100):
                            revert with 0, 17
                        minterBalance += msg.value * minterFee / 100
                        if marketplaceVolume > !msg.value:
                            revert with 0, 17
                        marketplaceVolume += msg.value
                    call ????????????????????????????????????????.0x23b872dd with:
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
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if forSale.length < 1:
                            revert with 0, 17
                        if forSale.length - 1 >= forSale.length:
                            revert with 0, 50
                        if idx >= forSale.length:
                            revert with 0, 50
                        forSale[idx] = forSale[forSale.length]
                        if not forSale.length:
                            revert with 0, 49
                        forSale[forSale.length] = 0
                        forSale.length--
                        emit 0x68774af4: arg1, msg.value
                    emit 0x68774af4: arg1, msg.value
}



}
