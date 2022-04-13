contract main {




// =====================  Runtime code  =====================


const TOKEN_LIMIT = 10000


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint8 stor3;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor5;
array of uint256 name;
array of uint256 symbol;
array of uint256 imageHash;
uint256 totalSupply;
uint256 stor10;
address stor11;
address stor12;
uint8 publicSale; offset 160
uint128 stor13; offset 160
address stor13;
uint256 stor14;
uint256 saleStartTime;
uint256 stor16;
array of uint256 stor17;
array of uint256 stor10016;
uint8 marketPaused;
uint8 contractSealed; offset 8
uint256 stor2721; offset 8
mapping of uint256 ethBalance;
mapping of uint8 stor10019;
uint8 stor2724;
mapping of struct stor10021;
mapping of struct stor10022;
mapping of uint256 pendingWithdrawals;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token.'
    return approved[arg1]
}

function totalSupply() {
    return totalSupply
}

function saleStartTime() {
    return saleStartTime
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function publicSale() {
    return bool(publicSale)
}

function marketPaused() {
    return bool(marketPaused)
}

function imageHash() {
    return imageHash[0 len imageHash.length]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return tokenOfOwnerByIndex[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function cancelledOffers(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2723[arg1])
}

function contractSealed() {
    return bool(contractSealed)
}

function ethBalance(address arg1) {
    require calldata.size - 4 >= 32
    return ethBalance[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor3[address(arg1)][address(arg2)])
}

function pendingWithdrawals(address arg1) {
    require calldata.size - 4 >= 32
    return pendingWithdrawals[arg1]
}

function _fallback() payable {
    revert
}

function mintsRemaining() {
    require stor10 <= 10000
    return (-stor10 + 10000)
}

function sealContract() {
    if stor11 != msg.sender:
        revert with 0, 'Only deployer.'
    stor2721 = 1
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 >= 0
    require arg1 < 10000
    return (arg1 + 1)
}

function punkBids(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2726[arg1].field_0), stor2726[arg1].field_256, stor2726[arg1].field_512, stor2726[arg1].field_768
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    stor3[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function startSale() {
    if stor11 != msg.sender:
        revert with 0, 'Only deployer.'
    require not publicSale
    saleStartTime = block.timestamp
    Mask(96, 0, stor13.field_160) = 1
    emit SaleBegins()
}

function pauseMarket(bool arg1) {
    require calldata.size - 4 >= 32
    if stor11 != msg.sender:
        revert with 0, 'Only deployer.'
    if contractSealed:
        revert with 0, 'Contract sealed.'
    marketPaused = uint8(arg1)
}

function punksOfferedForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2725[arg1].field_0), 
           stor2725[arg1].field_256,
           stor2725[arg1].field_512,
           stor2725[arg1].field_768,
           stor2725[arg1].field_1024
}

function withdraw() {
    require not stor2724
    stor2724 = 1
    pendingWithdrawals[address(msg.sender)] = 0
    call msg.sender with:
       value pendingWithdrawals[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2724 = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if ownerOf[arg2] != msg.sender:
        if not stor3[stor1[arg2]][address(msg.sender)]:
            revert with 0, 'Cannot operate.'
    if not ownerOf[arg2]:
        revert with 0, 'Invalid token.'
    require arg1 != ownerOf[arg2]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function punkNoLongerForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor2724
    stor2724 = 1
    if arg1 >= 10000:
        revert with 0, 'punk number is wrong'
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Incorrect owner.'
    stor2725[arg1].field_0 = 0
    stor2725[arg1].field_256 = arg1
    stor2725[arg1].field_512 = msg.sender
    stor2725[arg1].field_768 = 0
    stor2725[arg1].field_1024 = 0
    stor2725[arg1].field_1280 = 0
    emit PunkNoLongerForSale(arg1);
    stor2724 = 0
}

function offerPunkForSaleToAddress(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require not stor2724
    stor2724 = 1
    if arg1 >= 10000:
        revert with 0, 'punk number is wrong'
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Incorrect owner.'
    if marketPaused:
        revert with 0, 'Market Paused'
    stor2725[arg1].field_0 = 1
    stor2725[arg1].field_256 = arg1
    stor2725[arg1].field_512 = msg.sender
    stor2725[arg1].field_768 = arg2
    stor2725[arg1].field_1024 = arg3
    emit PunkOffered(arg2, arg1, arg3);
    stor2724 = 0
}

function offerPunkForSale(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor2724
    stor2724 = 1
    if arg1 >= 10000:
        revert with 0, 'punk number is wrong'
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Incorrect owner.'
    if marketPaused:
        revert with 0, 'Market Paused'
    stor2725[arg1].field_0 = 1
    stor2725[arg1].field_256 = arg1
    stor2725[arg1].field_512 = msg.sender
    stor2725[arg1].field_768 = arg2
    stor2725[arg1].field_1024 = 0
    stor2725[arg1].field_1280 = 0
    emit PunkOffered(arg2, arg1, 0);
    stor2724 = 0
}

function withdrawBidForPunk(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor2724
    stor2724 = 1
    if arg1 >= 10000:
        revert with 0, 'punk number is wrong'
    require ownerOf[arg1]
    if ownerOf[arg1] == msg.sender:
        revert with 0, 'wrong action'
    if stor2726[arg1].field_512 != msg.sender:
        revert with 0, 'Only bidder can withdraw'
    emit PunkBidWithdrawn(stor2726[arg1].field_768, arg1, msg.sender);
    stor2726[arg1].field_0 = 0
    stor2726[arg1].field_256 = arg1
    stor2726[arg1].field_512 = 0
    stor2726[arg1].field_768 = 0
    stor2726[arg1].field_768 = 0
    call msg.sender with:
       value stor2726[arg1].field_768 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2724 = 0
}

function enterBidForPunk(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not stor2724
    stor2724 = 1
    if marketPaused:
        revert with 0, 'Market Paused'
    if arg1 >= 10000:
        revert with 0, 'punk number is wrong'
    require ownerOf[arg1]
    if ownerOf[arg1] == msg.sender:
        revert with 0, 'you can not bid on your punk'
    if msg.value <= 0:
        revert with 0, 'bid can not be zero'
    if msg.value <= stor2726[arg1].field_768:
        revert with 0, 32, 35, 0x65796f752063616e206e6f7420626964206c6f776572207468616e206c617374206269, mem[327 len 29]
    if stor2726[arg1].field_768 > 0:
        pendingWithdrawals[stor2726[arg1].field_512] += stor2726[arg1].field_768
    stor2726[arg1].field_0 = 1
    stor2726[arg1].field_256 = arg1
    stor2726[arg1].field_512 = msg.sender
    stor2726[arg1].field_768 = msg.value
    emit PunkBidEntered(msg.value, arg1, msg.sender);
    stor2724 = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor3[stor1[arg3]][address(msg.sender)]:
                revert with 0, 'Cannot transfer.'
    if not ownerOf[arg3]:
        revert with 0, 'Invalid token.'
    if ownerOf[arg3] != arg1:
        revert with 0, 'Wrong from address.'
    if not arg2:
        revert with 0, 'Cannot send to 0x0.'
    if approved[arg3]:
        approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, 'Incorrect owner.'
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[stor1[arg3]]
    if tokenOfOwnerByIndex[stor1[arg3]] - 1 != stor5[arg3]:
        require tokenOfOwnerByIndex[stor1[arg3]] - 1 < tokenOfOwnerByIndex[stor1[arg3]]
        require stor5[arg3] < tokenOfOwnerByIndex[stor1[arg3]]
        tokenOfOwnerByIndex[stor1[arg3]][stor5[arg3]] = tokenOfOwnerByIndex[stor1[arg3]][tokenOfOwnerByIndex[stor1[arg3]]]
        stor5[stor4[stor1[arg3]][stor4[stor1[arg3]]]] = stor5[arg3]
    require tokenOfOwnerByIndex[stor1[arg3]]
    tokenOfOwnerByIndex[stor1[arg3]][tokenOfOwnerByIndex[stor1[arg3]]] = 0
    tokenOfOwnerByIndex[stor1[arg3]]--
    if ownerOf[arg3]:
        revert with 0, 'Cannot add, already owned.'
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    require 1 <= tokenOfOwnerByIndex[address(arg2)]
    stor5[arg3] = tokenOfOwnerByIndex[address(arg2)] - 1
    emit Transfer(ownerOf[arg3], arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor3[stor1[arg3]][address(msg.sender)]:
                revert with 0, 'Cannot transfer.'
    if not ownerOf[arg3]:
        revert with 0, 'Invalid token.'
    if ownerOf[arg3] != arg1:
        revert with 0, 'Incorrect owner.'
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, 'Incorrect owner.'
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[stor1[arg3]]
    if tokenOfOwnerByIndex[stor1[arg3]] - 1 != stor5[arg3]:
        require tokenOfOwnerByIndex[stor1[arg3]] - 1 < tokenOfOwnerByIndex[stor1[arg3]]
        require stor5[arg3] < tokenOfOwnerByIndex[stor1[arg3]]
        tokenOfOwnerByIndex[stor1[arg3]][stor5[arg3]] = tokenOfOwnerByIndex[stor1[arg3]][tokenOfOwnerByIndex[stor1[arg3]]]
        stor5[stor4[stor1[arg3]][stor4[stor1[arg3]]]] = stor5[arg3]
    require tokenOfOwnerByIndex[stor1[arg3]]
    tokenOfOwnerByIndex[stor1[arg3]][tokenOfOwnerByIndex[stor1[arg3]]] = 0
    tokenOfOwnerByIndex[stor1[arg3]]--
    if ownerOf[arg3]:
        revert with 0, 'Cannot add, already owned.'
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    require 1 <= tokenOfOwnerByIndex[address(arg2)]
    stor5[arg3] = tokenOfOwnerByIndex[address(arg2)] - 1
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor3[stor1[arg3]][address(msg.sender)]:
                revert with 0, 'Cannot transfer.'
    if not ownerOf[arg3]:
        revert with 0, 'Invalid token.'
    if ownerOf[arg3] != arg1:
        revert with 0, 'Incorrect owner.'
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, 'Incorrect owner.'
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[stor1[arg3]]
    if tokenOfOwnerByIndex[stor1[arg3]] - 1 != stor5[arg3]:
        require tokenOfOwnerByIndex[stor1[arg3]] - 1 < tokenOfOwnerByIndex[stor1[arg3]]
        require stor5[arg3] < tokenOfOwnerByIndex[stor1[arg3]]
        tokenOfOwnerByIndex[stor1[arg3]][stor5[arg3]] = tokenOfOwnerByIndex[stor1[arg3]][tokenOfOwnerByIndex[stor1[arg3]]]
        stor5[stor4[stor1[arg3]][stor4[stor1[arg3]]]] = stor5[arg3]
    require tokenOfOwnerByIndex[stor1[arg3]]
    tokenOfOwnerByIndex[stor1[arg3]][tokenOfOwnerByIndex[stor1[arg3]]] = 0
    tokenOfOwnerByIndex[stor1[arg3]]--
    if ownerOf[arg3]:
        revert with 0, 'Cannot add, already owned.'
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    require 1 <= tokenOfOwnerByIndex[address(arg2)]
    stor5[arg3] = tokenOfOwnerByIndex[address(arg2)] - 1
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function acceptBidForPunk(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor2724
    stor2724 = 1
    if arg1 >= 10000:
        revert with 0, 'punk number is wrong'
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Incorrect owner.'
    if marketPaused:
        revert with 0, 'Market Paused'
    if stor2726[arg1].field_768 <= 0:
        revert with 0, 'there is not any bid'
    if stor2726[arg1].field_768 < arg2:
        revert with 0, 'bid is lower than min price'
    stor2725[arg1].field_0 = 0
    stor2725[arg1].field_256 = arg1
    stor2725[arg1].field_512 = msg.sender
    stor2725[arg1].field_768 = 0
    stor2725[arg1].field_1024 = 0
    stor2725[arg1].field_1280 = 0
    emit PunkNoLongerForSale(arg1);
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token.'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Incorrect owner.'
    require stor2726[arg1].field_512
    if approved[arg1]:
        approved[arg1] = 0
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0, 'Incorrect owner.'
    ownerOf[arg1] = 0
    require 1 <= tokenOfOwnerByIndex[stor1[arg1]]
    if tokenOfOwnerByIndex[stor1[arg1]] - 1 != stor5[arg1]:
        require tokenOfOwnerByIndex[stor1[arg1]] - 1 < tokenOfOwnerByIndex[stor1[arg1]]
        require stor5[arg1] < tokenOfOwnerByIndex[stor1[arg1]]
        tokenOfOwnerByIndex[stor1[arg1]][stor5[arg1]] = tokenOfOwnerByIndex[stor1[arg1]][tokenOfOwnerByIndex[stor1[arg1]]]
        stor5[stor4[stor1[arg1]][stor4[stor1[arg1]]]] = stor5[arg1]
    require tokenOfOwnerByIndex[stor1[arg1]]
    tokenOfOwnerByIndex[stor1[arg1]][tokenOfOwnerByIndex[stor1[arg1]]] = 0
    tokenOfOwnerByIndex[stor1[arg1]]--
    if ownerOf[arg1]:
        revert with 0, 'Cannot add, already owned.'
    ownerOf[arg1] = stor2726[arg1].field_512
    tokenOfOwnerByIndex[stor2726[arg1].field_512]++
    tokenOfOwnerByIndex[stor2726[arg1].field_512][tokenOfOwnerByIndex[stor2726[arg1].field_512]] = arg1
    require 1 <= tokenOfOwnerByIndex[stor2726[arg1].field_512]
    stor5[arg1] = tokenOfOwnerByIndex[stor2726[arg1].field_512] - 1
    emit Transfer(ownerOf[arg1], stor2726[arg1].field_512, arg1);
    if ext_code.size(stor2726[arg1].field_512) > 0:
        require ext_code.size(stor2726[arg1].field_512)
        call stor2726[arg1].field_512.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, msg.sender, arg1, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
    stor2726[arg1].field_0 = 0
    stor2726[arg1].field_256 = arg1
    stor2726[arg1].field_512 = 0
    stor2726[arg1].field_768 = 0
    stor2726[arg1].field_768 = 0
    pendingWithdrawals[address(msg.sender)] += stor2726[arg1].field_768
    emit PunkBought(stor2726[arg1].field_768, arg1, msg.sender, stor2726[arg1].field_512);
    stor2724 = 0
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 1
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token.'
    if not arg1:
        mem[192] = 'https://polypunks.app/punks/'
        mem[220 len 0] = None
        mem[220 len 31] = uint32('https://polypunks.app/punks/'), mem[224 len 27]
        mem[221] = 32
        mem[253] = mem[160]
        mem[285 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if not mem[160] % 32:
            return 32, mem[253 len mem[160] + 32]
        mem[floor32(mem[160]) + 285] = mem[floor32(mem[160]) + -(mem[160] % 32) + 317 len mem[160] % 32]
        return Array(len=mem[160], data=mem[285 len floor32(mem[160]) + 32])
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[96]
            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _63 = mem[64]
        mem[mem[64] + 32] = 'https://polypunks.app/punks/'
        _64 = mem[96]
        mem[mem[64] + 60 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 92 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        _92 = mem[64]
        mem[64] = _64 + _63 + 60
        mem[_64 + _63 + 60] = 32
        mem[_64 + _63 + 92] = mem[_92]
        _100 = mem[_92]
        mem[_64 + _63 + 124 len ceil32(mem[_92])] = mem[_92 + 32 len ceil32(mem[_92])]
        if not _100 % 32:
            return 32, mem[_64 + _63 + 92 len _100 + 32]
        mem[floor32(_100) + _64 + _63 + 124] = mem[floor32(_100) + _64 + _63 + -(_100 % 32) + 156 len _100 % 32]
        return 32, mem[_64 + _63 + 92 len floor32(_100) + 64]
    mem[128 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[96]
        mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _65 = mem[64]
    mem[mem[64] + 32] = 'https://polypunks.app/punks/'
    _66 = mem[96]
    mem[mem[64] + 60 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 92 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _96 = mem[64]
    mem[64] = _66 + _65 + 60
    mem[_66 + _65 + 60] = 32
    mem[_66 + _65 + 92] = mem[_96]
    _103 = mem[_96]
    mem[_66 + _65 + 124 len ceil32(mem[_96])] = mem[_96 + 32 len ceil32(mem[_96])]
    if not _103 % 32:
        return 32, mem[_66 + _65 + 92 len _103 + 32]
    mem[floor32(_103) + _66 + _65 + 124] = mem[floor32(_103) + _66 + _65 + -(_103 % 32) + 156 len _103 % 32]
    return 32, mem[_66 + _65 + 92 len floor32(_103) + 64]
}

function buyPunk(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not stor2724
    stor2724 = 1
    if marketPaused:
        revert with 0, 'Market Paused'
    if arg1 >= 10000:
        revert with 0, 'punk number is wrong'
    if not stor2725[arg1].field_0:
        revert with 0, 'punk not actually for sale'
    if stor2725[arg1].field_1024:
        if stor2725[arg1].field_1024 != msg.sender:
            revert with 0, 32, 41, 0xfe70756e6b206e6f7420737570706f73656420746f20626520736f6c6420746f207468697320757365, mem[365 len 23]
    if msg.value < stor2725[arg1].field_768:
        revert with 0, 'Didn't send enough amount'
    require ownerOf[arg1]
    if ownerOf[arg1] != stor2725[arg1].field_512:
        revert with 0, 'Seller no longer owner of punk'
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token.'
    if ownerOf[arg1] != stor2725[arg1].field_512:
        revert with 0, 'Incorrect owner.'
    require msg.sender
    if approved[arg1]:
        approved[arg1] = 0
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0, 'Incorrect owner.'
    ownerOf[arg1] = 0
    require 1 <= tokenOfOwnerByIndex[stor1[arg1]]
    if tokenOfOwnerByIndex[stor1[arg1]] - 1 != stor5[arg1]:
        require tokenOfOwnerByIndex[stor1[arg1]] - 1 < tokenOfOwnerByIndex[stor1[arg1]]
        require stor5[arg1] < tokenOfOwnerByIndex[stor1[arg1]]
        tokenOfOwnerByIndex[stor1[arg1]][stor5[arg1]] = tokenOfOwnerByIndex[stor1[arg1]][tokenOfOwnerByIndex[stor1[arg1]]]
        stor5[stor4[stor1[arg1]][stor4[stor1[arg1]]]] = stor5[arg1]
    require tokenOfOwnerByIndex[stor1[arg1]]
    tokenOfOwnerByIndex[stor1[arg1]][tokenOfOwnerByIndex[stor1[arg1]]] = 0
    tokenOfOwnerByIndex[stor1[arg1]]--
    if ownerOf[arg1]:
        revert with 0, 'Cannot add, already owned.'
    ownerOf[arg1] = msg.sender
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
    require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
    stor5[arg1] = tokenOfOwnerByIndex[address(msg.sender)] - 1
    emit Transfer(ownerOf[arg1], msg.sender, arg1);
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, stor2725[arg1].field_512, arg1, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
    stor2725[arg1].field_0 = 0
    stor2725[arg1].field_256 = arg1
    stor2725[arg1].field_512 = msg.sender
    stor2725[arg1].field_768 = 0
    stor2725[arg1].field_1024 = 0
    stor2725[arg1].field_1280 = 0
    emit PunkNoLongerForSale(arg1);
    pendingWithdrawals[stor2725[arg1].field_512] += msg.value
    emit PunkBought(msg.value, arg1, stor2725[arg1].field_512, msg.sender);
    if stor2726[arg1].field_512 == msg.sender:
        pendingWithdrawals[address(msg.sender)] += stor2726[arg1].field_768
        stor2726[arg1].field_0 = 0
        stor2726[arg1].field_256 = arg1
        stor2726[arg1].field_512 = 0
        stor2726[arg1].field_768 = 0
        stor2726[arg1].field_768 = 0
    stor2724 = 0
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require not stor2724
    stor2724 = 1
    if not publicSale:
        revert with 0, 'Sale not started.'
    require not marketPaused
    if arg1 <= 0:
        revert with 0, 'numberOfNfts cannot be 0'
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x72596f752063616e206e6f7420627579206d6f7265207468616e203230204e465473206174206f6e63,
                    mem[205 len 23]
    require totalSupply + arg1 >= totalSupply
    if totalSupply + arg1 > 10000:
        revert with 0, 'Exceeds TOKEN_LIMIT'
    if not stor14:
        if msg.value != 0:
            revert with 0, 'eth value sent is not correct'
        call stor12 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(stor13.field_0) with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < arg1:
            stor10++
            if not msg.sender:
                revert with 0, 'Cannot mint to 0x0.'
            if totalSupply >= 10000:
                revert with 0, 'Token limit reached.'
            mem[mem[64] + 32] = stor16
            mem[mem[64] + 64] = address(msg.sender)
            mem[mem[64] + 84] = block.difficulty
            mem[mem[64] + 116] = block.timestamp
            _146 = mem[64]
            mem[mem[64]] = 116
            mem[64] = mem[64] + 148
            _148 = sha3(mem[_146 + 32 len mem[_146]])
            require -totalSupply + 10000
            require sha3(mem[_146 + 32 len mem[_146]]) % -totalSupply + 10000 < 10000
            if not stor17[sha3(mem[_146 + 32 len mem[_146]]) % -stor9 + 10000]:
                require -totalSupply + 9999 < 10000
                if not stor2720[stor9]:
                    require sha3(mem[_146 + 32 len mem[_146]]) % -totalSupply + 10000 < 10000
                    stor17[sha3(mem[_146 + 32 len mem[_146]]) % -stor9 + 10000] = -totalSupply + 9999
                else:
                    require -totalSupply + 9999 < 10000
                    require sha3(mem[_146 + 32 len mem[_146]]) % -totalSupply + 10000 < 10000
                    stor17[sha3(mem[_146 + 32 len mem[_146]]) % -stor9 + 10000] = stor2720[stor9]
                stor16++
                require (sha3(mem[_146 + 32 len mem[_146]]) % -totalSupply + 10000) + 1 >= sha3(mem[_146 + 32 len mem[_146]]) % -totalSupply + 10000
                totalSupply++
                mem[0] = (sha3(mem[_146 + 32 len mem[_146]]) % -totalSupply + 10000) + 1
                if ownerOf[mem[0]]:
                    revert with 0, 'Cannot add, already owned.'
                ownerOf[(_148 % -stor9 + 10000) + 1] = msg.sender
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = (_148 % -totalSupply + 10000) + 1
                require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
                mem[0] = (_148 % -totalSupply + 10000) + 1
                mem[32] = 5
                stor5[(_148 % -stor9 + 10000) + 1] = tokenOfOwnerByIndex[address(msg.sender)] - 1
                emit Mint((_148 % -totalSupply + 10000) + 1, msg.sender);
                emit Transfer(0, msg.sender, (_148 % -totalSupply + 10000) + 1);
            else:
                require sha3(mem[_146 + 32 len mem[_146]]) % -totalSupply + 10000 < 10000
                require -totalSupply + 9999 < 10000
                if not stor2720[stor9]:
                    require sha3(mem[_146 + 32 len mem[_146]]) % -totalSupply + 10000 < 10000
                    stor17[sha3(mem[_146 + 32 len mem[_146]]) % -stor9 + 10000] = -totalSupply + 9999
                else:
                    require -totalSupply + 9999 < 10000
                    require sha3(mem[_146 + 32 len mem[_146]]) % -totalSupply + 10000 < 10000
                    stor17[sha3(mem[_146 + 32 len mem[_146]]) % -stor9 + 10000] = stor2720[stor9]
                stor16++
                require stor17[sha3(mem[_146 + 32 len mem[_146]]) % -stor9 + 10000] + 1 >= stor17[sha3(mem[_146 + 32 len mem[_146]]) % -stor9 + 10000]
                totalSupply++
                mem[0] = stor17[sha3(mem[_146 + 32 len mem[_146]]) % -stor9 + 10000] + 1
                if ownerOf[mem[0]]:
                    revert with 0, 'Cannot add, already owned.'
                ownerOf[stor17[_148 % -stor9 + 10000] + 1] = msg.sender
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor17[_148 % -stor9 + 10000] + 1
                require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
                mem[0] = stor17[_148 % -stor9 + 10000] + 1
                mem[32] = 5
                stor5[stor17[_148 % -stor9 + 10000] + 1] = tokenOfOwnerByIndex[address(msg.sender)] - 1
                emit Mint(stor17[_148 % -stor9 + 10000] + 1, msg.sender);
                emit Transfer(0, msg.sender, stor17[_148 % -stor9 + 10000] + 1);
            idx = idx + 1
            continue 
    else:
        require stor14
        require stor14 * arg1 / stor14 == arg1
        if stor14 * arg1 != msg.value:
            revert with 0, 'eth value sent is not correct'
        call stor12 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(stor13.field_0) with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < arg1:
            stor10++
            if not msg.sender:
                revert with 0, 'Cannot mint to 0x0.'
            if totalSupply >= 10000:
                revert with 0, 'Token limit reached.'
            mem[mem[64] + 32] = stor16
            mem[mem[64] + 64] = address(msg.sender)
            mem[mem[64] + 84] = block.difficulty
            mem[mem[64] + 116] = block.timestamp
            _142 = mem[64]
            mem[mem[64]] = 116
            mem[64] = mem[64] + 148
            _144 = sha3(mem[_142 + 32 len mem[_142]])
            require -totalSupply + 10000
            require sha3(mem[_142 + 32 len mem[_142]]) % -totalSupply + 10000 < 10000
            if not stor17[sha3(mem[_142 + 32 len mem[_142]]) % -stor9 + 10000]:
                require -totalSupply + 9999 < 10000
                if not stor2720[stor9]:
                    require sha3(mem[_142 + 32 len mem[_142]]) % -totalSupply + 10000 < 10000
                    stor17[sha3(mem[_142 + 32 len mem[_142]]) % -stor9 + 10000] = -totalSupply + 9999
                else:
                    require -totalSupply + 9999 < 10000
                    require sha3(mem[_142 + 32 len mem[_142]]) % -totalSupply + 10000 < 10000
                    stor17[sha3(mem[_142 + 32 len mem[_142]]) % -stor9 + 10000] = stor2720[stor9]
                stor16++
                require (sha3(mem[_142 + 32 len mem[_142]]) % -totalSupply + 10000) + 1 >= sha3(mem[_142 + 32 len mem[_142]]) % -totalSupply + 10000
                totalSupply++
                mem[0] = (sha3(mem[_142 + 32 len mem[_142]]) % -totalSupply + 10000) + 1
                if ownerOf[mem[0]]:
                    revert with 0, 'Cannot add, already owned.'
                ownerOf[(_144 % -stor9 + 10000) + 1] = msg.sender
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = (_144 % -totalSupply + 10000) + 1
                require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
                mem[0] = (_144 % -totalSupply + 10000) + 1
                mem[32] = 5
                stor5[(_144 % -stor9 + 10000) + 1] = tokenOfOwnerByIndex[address(msg.sender)] - 1
                emit Mint((_144 % -totalSupply + 10000) + 1, msg.sender);
                emit Transfer(0, msg.sender, (_144 % -totalSupply + 10000) + 1);
            else:
                require sha3(mem[_142 + 32 len mem[_142]]) % -totalSupply + 10000 < 10000
                require -totalSupply + 9999 < 10000
                if not stor2720[stor9]:
                    require sha3(mem[_142 + 32 len mem[_142]]) % -totalSupply + 10000 < 10000
                    stor17[sha3(mem[_142 + 32 len mem[_142]]) % -stor9 + 10000] = -totalSupply + 9999
                else:
                    require -totalSupply + 9999 < 10000
                    require sha3(mem[_142 + 32 len mem[_142]]) % -totalSupply + 10000 < 10000
                    stor17[sha3(mem[_142 + 32 len mem[_142]]) % -stor9 + 10000] = stor2720[stor9]
                stor16++
                require stor17[sha3(mem[_142 + 32 len mem[_142]]) % -stor9 + 10000] + 1 >= stor17[sha3(mem[_142 + 32 len mem[_142]]) % -stor9 + 10000]
                totalSupply++
                mem[0] = stor17[sha3(mem[_142 + 32 len mem[_142]]) % -stor9 + 10000] + 1
                if ownerOf[mem[0]]:
                    revert with 0, 'Cannot add, already owned.'
                ownerOf[stor17[_144 % -stor9 + 10000] + 1] = msg.sender
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor17[_144 % -stor9 + 10000] + 1
                require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
                mem[0] = stor17[_144 % -stor9 + 10000] + 1
                mem[32] = 5
                stor5[stor17[_144 % -stor9 + 10000] + 1] = tokenOfOwnerByIndex[address(msg.sender)] - 1
                emit Mint(stor17[_144 % -stor9 + 10000] + 1, msg.sender);
                emit Transfer(0, msg.sender, stor17[_144 % -stor9 + 10000] + 1);
            idx = idx + 1
            continue 
    stor2724 = 0
}



}
