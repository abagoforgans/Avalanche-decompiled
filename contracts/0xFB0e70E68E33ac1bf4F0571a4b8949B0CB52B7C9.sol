contract main {




// =====================  Runtime code  =====================


const TOKEN_LIMIT = 1000


address owner;
uint256 stor1;
mapping of uint8 stor2;
mapping of address ownerOf;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
address tundraTokenAddress;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint256 stor12;
address burnAddress;
uint256 stor14;
mapping of uint256 tundraBalance;
mapping of uint8 stor1017;
mapping of struct stor1018;
mapping of struct stor1019;
mapping of uint256 pendingWithdrawals;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[Mask(32, 224, arg1)])
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

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function tundraToken() {
    return tundraTokenAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return tokenOfOwnerByIndex[address(arg1)]
}

function burnAddress() {
    return burnAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function cancelledOffers(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3F9[arg1])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function pendingWithdrawals(address arg1) {
    require calldata.size - 4 >= 32
    return pendingWithdrawals[arg1]
}

function tundraBalance(address arg1) {
    require calldata.size - 4 >= 32
    return tundraBalance[arg1]
}

function _fallback() payable {
    revert
}

function mintsRemaining() {
    if stor12 > 1000:
        revert with 0, 'SafeMath: subtraction overflow'
    return (-stor12 + 1000)
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 >= 0
    require arg1 < 1000
    return (arg1 + 1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function characterBids(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3FB[arg1].field_0), stor3FB[arg1].field_256, stor3FB[arg1].field_512, stor3FB[arg1].field_768
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function charactersOfferedForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3FA[arg1].field_0), 
           stor3FA[arg1].field_256,
           stor3FA[arg1].field_512,
           stor3FA[arg1].field_768,
           stor3FA[arg1].field_1024
}

function withdraw() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    pendingWithdrawals[address(msg.sender)] = 0
    call msg.sender with:
       value pendingWithdrawals[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor3[arg2]][address(msg.sender)]:
            revert with 0, 'Cannot operate.'
    if not ownerOf[arg2]:
        revert with 0, 'Invalid token.'
    require arg1 != ownerOf[arg2]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function characterNoLongerForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= 1000:
        revert with 0, 'character number is wrong'
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Incorrect owner.'
    stor3FA[arg1].field_0 = 0
    stor3FA[arg1].field_256 = arg1
    stor3FA[arg1].field_512 = msg.sender
    stor3FA[arg1].field_768 = 0
    stor3FA[arg1].field_1024 = 0
    stor3FA[arg1].field_1280 = 0
    emit 0xdc5e8312: arg1
    stor1 = 1
}

function offercharacterForSaleToAddress(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= 1000:
        revert with 0, 'character number is wrong'
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Incorrect owner.'
    stor3FA[arg1].field_0 = 1
    stor3FA[arg1].field_256 = arg1
    stor3FA[arg1].field_512 = msg.sender
    stor3FA[arg1].field_768 = arg2
    stor3FA[arg1].field_1024 = arg3
    emit 0xce417ce9: arg2, arg1, arg3
    stor1 = 1
}

function offercharacterForSale(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= 1000:
        revert with 0, 'character number is wrong'
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Incorrect owner.'
    stor3FA[arg1].field_0 = 1
    stor3FA[arg1].field_256 = arg1
    stor3FA[arg1].field_512 = msg.sender
    stor3FA[arg1].field_768 = arg2
    stor3FA[arg1].field_1024 = 0
    stor3FA[arg1].field_1280 = 0
    emit 0xce417ce9: arg2, arg1, 0
    stor1 = 1
}

function withdrawBidForcharacter(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= 1000:
        revert with 0, 'character number is wrong'
    require ownerOf[arg1]
    if ownerOf[arg1] == msg.sender:
        revert with 0, 'wrong action'
    if stor3FB[arg1].field_512 != msg.sender:
        revert with 0, 'Only bidder can withdraw'
    emit 0x96bf05db: stor3FB[arg1].field_768, arg1, msg.sender
    stor3FB[arg1].field_0 = 0
    stor3FB[arg1].field_256 = arg1
    stor3FB[arg1].field_512 = 0
    stor3FB[arg1].field_768 = 0
    stor3FB[arg1].field_768 = 0
    call msg.sender with:
       value stor3FB[arg1].field_768 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function enterBidForcharacter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= 1000:
        revert with 0, 'character number is wrong'
    require ownerOf[arg1]
    if ownerOf[arg1] == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64796f752063616e206e6f7420626964206f6e20796f7572206368617261637465,
                    mem[197 len 31]
    if msg.value <= 0:
        revert with 0, 'bid can not be zero'
    if msg.value <= stor3FB[arg1].field_768:
        revert with 0, 32, 35, 0x72796f752063616e206e6f7420626964206c6f776572207468616e206c617374206269, mem[327 len 29]
    if stor3FB[arg1].field_768 > 0:
        pendingWithdrawals[stor3FB[arg1].field_512] += stor3FB[arg1].field_768
    stor3FB[arg1].field_0 = 1
    stor3FB[arg1].field_256 = arg1
    stor3FB[arg1].field_512 = msg.sender
    stor3FB[arg1].field_768 = msg.value
    emit 0xdf69ca1a: msg.value, arg1, msg.sender
    stor1 = 1
}

function purchaseCharacter() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if totalSupply > 1000:
        revert with 0, 'Exceeds TOKEN_LIMIT'
    require ext_code.size(tundraTokenAddress)
    staticcall tundraTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= stor14:
        revert with 0, 'NEED MORE TUNDRA'
    require ext_code.size(tundraTokenAddress)
    call tundraTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, burnAddress, stor14
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.sender:
        revert with 0, 'Cannot mint to 0x0.'
    if totalSupply >= 1000:
        revert with 0, 'Token limit reached.'
    if ownerOf[stor11]:
        revert with 0, 'Cannot add, already owned.'
    ownerOf[stor11] = msg.sender
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = totalSupply
    if 1 > tokenOfOwnerByIndex[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    stor7[stor11] = tokenOfOwnerByIndex[address(msg.sender)] - 1
    totalSupply++
    emit Mint(totalSupply, msg.sender);
    emit Transfer(0, msg.sender, totalSupply);
    stor1 = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor5[stor3[arg3]][address(msg.sender)]:
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
    if 1 > tokenOfOwnerByIndex[stor3[arg3]]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[stor3[arg3]] - 1 != stor7[arg3]:
        require tokenOfOwnerByIndex[stor3[arg3]] - 1 < tokenOfOwnerByIndex[stor3[arg3]]
        require stor7[arg3] < tokenOfOwnerByIndex[stor3[arg3]]
        tokenOfOwnerByIndex[stor3[arg3]][stor7[arg3]] = tokenOfOwnerByIndex[stor3[arg3]][tokenOfOwnerByIndex[stor3[arg3]]]
        stor7[stor6[stor3[arg3]][stor6[stor3[arg3]]]] = stor7[arg3]
    require tokenOfOwnerByIndex[stor3[arg3]]
    tokenOfOwnerByIndex[stor3[arg3]][tokenOfOwnerByIndex[stor3[arg3]]] = 0
    tokenOfOwnerByIndex[stor3[arg3]]--
    if ownerOf[arg3]:
        revert with 0, 'Cannot add, already owned.'
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if 1 > tokenOfOwnerByIndex[address(arg2)]:
        revert with 0, 'SafeMath: subtraction overflow'
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)] - 1
    emit Transfer(ownerOf[arg3], arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor5[stor3[arg3]][address(msg.sender)]:
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
    if 1 > tokenOfOwnerByIndex[stor3[arg3]]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[stor3[arg3]] - 1 != stor7[arg3]:
        require tokenOfOwnerByIndex[stor3[arg3]] - 1 < tokenOfOwnerByIndex[stor3[arg3]]
        require stor7[arg3] < tokenOfOwnerByIndex[stor3[arg3]]
        tokenOfOwnerByIndex[stor3[arg3]][stor7[arg3]] = tokenOfOwnerByIndex[stor3[arg3]][tokenOfOwnerByIndex[stor3[arg3]]]
        stor7[stor6[stor3[arg3]][stor6[stor3[arg3]]]] = stor7[arg3]
    require tokenOfOwnerByIndex[stor3[arg3]]
    tokenOfOwnerByIndex[stor3[arg3]][tokenOfOwnerByIndex[stor3[arg3]]] = 0
    tokenOfOwnerByIndex[stor3[arg3]]--
    if ownerOf[arg3]:
        revert with 0, 'Cannot add, already owned.'
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if 1 > tokenOfOwnerByIndex[address(arg2)]:
        revert with 0, 'SafeMath: subtraction overflow'
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)] - 1
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
            if not stor5[stor3[arg3]][address(msg.sender)]:
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
    if 1 > tokenOfOwnerByIndex[stor3[arg3]]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[stor3[arg3]] - 1 != stor7[arg3]:
        require tokenOfOwnerByIndex[stor3[arg3]] - 1 < tokenOfOwnerByIndex[stor3[arg3]]
        require stor7[arg3] < tokenOfOwnerByIndex[stor3[arg3]]
        tokenOfOwnerByIndex[stor3[arg3]][stor7[arg3]] = tokenOfOwnerByIndex[stor3[arg3]][tokenOfOwnerByIndex[stor3[arg3]]]
        stor7[stor6[stor3[arg3]][stor6[stor3[arg3]]]] = stor7[arg3]
    require tokenOfOwnerByIndex[stor3[arg3]]
    tokenOfOwnerByIndex[stor3[arg3]][tokenOfOwnerByIndex[stor3[arg3]]] = 0
    tokenOfOwnerByIndex[stor3[arg3]]--
    if ownerOf[arg3]:
        revert with 0, 'Cannot add, already owned.'
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if 1 > tokenOfOwnerByIndex[address(arg2)]:
        revert with 0, 'SafeMath: subtraction overflow'
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)] - 1
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

function acceptBidForcharacter(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= 1000:
        revert with 0, 'character number is wrong'
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Incorrect owner.'
    if stor3FB[arg1].field_768 <= 0:
        revert with 0, 'there is not any bid'
    if stor3FB[arg1].field_768 < arg2:
        revert with 0, 'bid is lower than min price'
    stor3FA[arg1].field_0 = 0
    stor3FA[arg1].field_256 = arg1
    stor3FA[arg1].field_512 = msg.sender
    stor3FA[arg1].field_768 = 0
    stor3FA[arg1].field_1024 = 0
    stor3FA[arg1].field_1280 = 0
    emit 0xdc5e8312: arg1
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token.'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Incorrect owner.'
    require stor3FB[arg1].field_512
    if approved[arg1]:
        approved[arg1] = 0
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0, 'Incorrect owner.'
    ownerOf[arg1] = 0
    if 1 > tokenOfOwnerByIndex[stor3[arg1]]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[stor3[arg1]] - 1 != stor7[arg1]:
        require tokenOfOwnerByIndex[stor3[arg1]] - 1 < tokenOfOwnerByIndex[stor3[arg1]]
        require stor7[arg1] < tokenOfOwnerByIndex[stor3[arg1]]
        tokenOfOwnerByIndex[stor3[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor3[arg1]][tokenOfOwnerByIndex[stor3[arg1]]]
        stor7[stor6[stor3[arg1]][stor6[stor3[arg1]]]] = stor7[arg1]
    require tokenOfOwnerByIndex[stor3[arg1]]
    tokenOfOwnerByIndex[stor3[arg1]][tokenOfOwnerByIndex[stor3[arg1]]] = 0
    tokenOfOwnerByIndex[stor3[arg1]]--
    if ownerOf[arg1]:
        revert with 0, 'Cannot add, already owned.'
    ownerOf[arg1] = stor3FB[arg1].field_512
    tokenOfOwnerByIndex[stor3FB[arg1].field_512]++
    tokenOfOwnerByIndex[stor3FB[arg1].field_512][tokenOfOwnerByIndex[stor3FB[arg1].field_512]] = arg1
    if 1 > tokenOfOwnerByIndex[stor3FB[arg1].field_512]:
        revert with 0, 'SafeMath: subtraction overflow'
    stor7[arg1] = tokenOfOwnerByIndex[stor3FB[arg1].field_512] - 1
    emit Transfer(ownerOf[arg1], stor3FB[arg1].field_512, arg1);
    if ext_code.size(stor3FB[arg1].field_512) > 0:
        require ext_code.size(stor3FB[arg1].field_512)
        call stor3FB[arg1].field_512.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, msg.sender, arg1, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
    stor3FB[arg1].field_0 = 0
    stor3FB[arg1].field_256 = arg1
    stor3FB[arg1].field_512 = 0
    stor3FB[arg1].field_768 = 0
    stor3FB[arg1].field_768 = 0
    pendingWithdrawals[address(msg.sender)] += stor3FB[arg1].field_768
    emit 0x276b0447: stor3FB[arg1].field_768, arg1, msg.sender, stor3FB[arg1].field_512
    stor1 = 1
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 3
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token.'
    if not arg1:
        mem[192 len 46] = 0x73687474703a2f2f6170692e66726f737466696e616e63652e6661726d2f6e66742f74756e6472612f7370656172
        mem[238 len 0] = None
        mem[239] = 32
        mem[271] = mem[160]
        mem[303 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if not mem[160] % 32:
            return 32, mem[271 len mem[160] + 32]
        mem[floor32(mem[160]) + 303] = mem[floor32(mem[160]) + -(mem[160] % 32) + 335 len mem[160] % 32]
        return Array(len=mem[160], data=mem[303 len floor32(mem[160]) + 32])
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
        mem[mem[64] + 32 len 46] = 0x73687474703a2f2f6170692e66726f737466696e616e63652e6661726d2f6e66742f74756e6472612f7370656172
        _64 = mem[96]
        mem[mem[64] + 78 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 110 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        _92 = mem[64]
        mem[64] = _64 + _63 + 78
        mem[_64 + _63 + 78] = 32
        mem[_64 + _63 + 110] = mem[_92]
        _100 = mem[_92]
        mem[_64 + _63 + 142 len ceil32(mem[_92])] = mem[_92 + 32 len ceil32(mem[_92])]
        if not _100 % 32:
            return 32, mem[_64 + _63 + 110 len _100 + 32]
        mem[floor32(_100) + _64 + _63 + 142] = mem[floor32(_100) + _64 + _63 + -(_100 % 32) + 174 len _100 % 32]
        return 32, mem[_64 + _63 + 110 len floor32(_100) + 64]
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
    mem[mem[64] + 32 len 46] = 0x73687474703a2f2f6170692e66726f737466696e616e63652e6661726d2f6e66742f74756e6472612f7370656172
    _66 = mem[96]
    mem[mem[64] + 78 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 110 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _96 = mem[64]
    mem[64] = _66 + _65 + 78
    mem[_66 + _65 + 78] = 32
    mem[_66 + _65 + 110] = mem[_96]
    _103 = mem[_96]
    mem[_66 + _65 + 142 len ceil32(mem[_96])] = mem[_96 + 32 len ceil32(mem[_96])]
    if not _103 % 32:
        return 32, mem[_66 + _65 + 110 len _103 + 32]
    mem[floor32(_103) + _66 + _65 + 142] = mem[floor32(_103) + _66 + _65 + -(_103 % 32) + 174 len _103 % 32]
    return 32, mem[_66 + _65 + 110 len floor32(_103) + 64]
}

function buycharacter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= 1000:
        revert with 0, 'character number is wrong'
    if not stor3FA[arg1].field_0:
        revert with 0, 'character not actually for sale'
    if stor3FA[arg1].field_1024:
        if stor3FA[arg1].field_1024 != msg.sender:
            revert with 0, 
                        32,
                        46,
                        0x72636861726163746572206e6f7420737570706f73656420746f20626520736f6c6420746f207468697320757365,
                        mem[370 len 18]
    if msg.value < stor3FA[arg1].field_768:
        revert with 0, 'Didn't send enough amount'
    require ownerOf[arg1]
    if ownerOf[arg1] != stor3FA[arg1].field_512:
        revert with 0, 32, 35, 0x2f53656c6c6572206e6f206c6f6e676572206f776e6572206f66206368617261637465, mem[359 len 29]
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token.'
    if ownerOf[arg1] != stor3FA[arg1].field_512:
        revert with 0, 'Incorrect owner.'
    require msg.sender
    if approved[arg1]:
        approved[arg1] = 0
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0, 'Incorrect owner.'
    ownerOf[arg1] = 0
    if 1 > tokenOfOwnerByIndex[stor3[arg1]]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[stor3[arg1]] - 1 != stor7[arg1]:
        require tokenOfOwnerByIndex[stor3[arg1]] - 1 < tokenOfOwnerByIndex[stor3[arg1]]
        require stor7[arg1] < tokenOfOwnerByIndex[stor3[arg1]]
        tokenOfOwnerByIndex[stor3[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor3[arg1]][tokenOfOwnerByIndex[stor3[arg1]]]
        stor7[stor6[stor3[arg1]][stor6[stor3[arg1]]]] = stor7[arg1]
    require tokenOfOwnerByIndex[stor3[arg1]]
    tokenOfOwnerByIndex[stor3[arg1]][tokenOfOwnerByIndex[stor3[arg1]]] = 0
    tokenOfOwnerByIndex[stor3[arg1]]--
    if ownerOf[arg1]:
        revert with 0, 'Cannot add, already owned.'
    ownerOf[arg1] = msg.sender
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
    if 1 > tokenOfOwnerByIndex[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    stor7[arg1] = tokenOfOwnerByIndex[address(msg.sender)] - 1
    emit Transfer(ownerOf[arg1], msg.sender, arg1);
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, stor3FA[arg1].field_512, arg1, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
    stor3FA[arg1].field_0 = 0
    stor3FA[arg1].field_256 = arg1
    stor3FA[arg1].field_512 = msg.sender
    stor3FA[arg1].field_768 = 0
    stor3FA[arg1].field_1024 = 0
    stor3FA[arg1].field_1280 = 0
    emit 0xdc5e8312: arg1
    pendingWithdrawals[stor3FA[arg1].field_512] += msg.value
    emit 0x276b0447: msg.value, arg1, stor3FA[arg1].field_512, msg.sender
    if stor3FB[arg1].field_512 == msg.sender:
        pendingWithdrawals[address(msg.sender)] += stor3FB[arg1].field_768
        stor3FB[arg1].field_0 = 0
        stor3FB[arg1].field_256 = arg1
        stor3FB[arg1].field_512 = 0
        stor3FB[arg1].field_768 = 0
        stor3FB[arg1].field_768 = 0
    stor1 = 1
}



}
