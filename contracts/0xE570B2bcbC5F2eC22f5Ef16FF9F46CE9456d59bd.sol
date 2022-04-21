contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#
const getChainId = chainid

const ERC712_VERSION = '1', 0


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
uint256 domainSeperator;
address owner;
address stor14;
uint256 currentTokenId;
array of struct stor16;
uint256 MAX_SUPPLY;
uint256 basePrice;
uint8 paused;

function currentTokenId() {
    return currentTokenId
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function getDomainSeperator() {
    return domainSeperator
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[address(arg1)].field_0
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function MAX_SUPPLY() {
    return MAX_SUPPLY
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() {
    return bool(paused)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function basePrice() {
    return basePrice
}

function _fallback() payable {
    revert
}

function unpause() {
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    paused = 0
}

function renounceOwnership() {
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    basePrice = arg1
}

function setProxyRegistry(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    stor14 = arg1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor14)
    staticcall stor14.proxies(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != arg2:
        return bool(stor5[address(arg1)][address(arg2)])
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
        if not arg1:
            revert with 0, 'Ownable: new owner is the zero address'
    ('bool', ('param', 'arg1'))
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[ceil32(ceil32(arg1.length)) + 97] = calldata.size
        mem[ceil32(ceil32(arg1.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[ceil32(ceil32(arg1.length)) + calldata.size + 109 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function mintTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    if currentTokenId > -2:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor15 + 1]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor15 + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = currentTokenId + 1
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = currentTokenId + 1
        stor7[stor15 + 1] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[stor15 + 1] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[stor15 + 1]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor15 + 1]
        stor9[stor15 + 1] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor15 + 1] = arg1
    emit Transfer(0, arg1, currentTokenId + 1);
    if currentTokenId == -1:
        revert with 'NH{q', 17
    currentTokenId++
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if this.address != msg.sender:
        if arg1 == msg.sender:
            revert with 0, 'ERC721: approve to caller'
        if this.address != msg.sender:
            stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
            emit ApprovalForAll(arg2, msg.sender, arg1);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            stor5[mem[calldata.size + 108 len 20]][address(arg1)] = uint8(arg2)
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            emit ApprovalForAll(arg2, mem[ceil32(calldata.size) + calldata.size + 140 len 20], arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if arg1 == mem[calldata.size + 108 len 20]:
            revert with 0, 'ERC721: approve to caller'
        if this.address != msg.sender:
            stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
            emit ApprovalForAll(arg2, msg.sender, arg1);
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            stor5[mem[ceil32(calldata.size) + calldata.size + 140 len 20]][address(arg1)] = uint8(arg2)
            mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
            mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
            emit ApprovalForAll(arg2, mem[(2 * ceil32(calldata.size)) + calldata.size + 172 len 20], arg1);
}

function executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not arg1:
        revert with 0, 'NativeMetaTransaction: INVALID_SIGNER'
    signer = erecover(sha3(0, domainSeperator, sha3(sha3(0xfe4d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)].field_0, address(arg1), sha3(arg2[all]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'Signer and signature do not match'
    if nonce[address(arg1)].field_0 > -2:
        revert with 'NH{q', 17
    nonce[address(arg1)].field_0++
    mem[ceil32(ceil32(arg2.length)) + 675] = 96
    mem[ceil32(ceil32(arg2.length)) + 707] = arg2.length
    mem[ceil32(ceil32(arg2.length)) + 739 len ceil32(arg2.length)] = arg2[all], nonce[address(arg1)].field_-(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 739] = 0
    emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=arg2[all]));
    mem[ceil32(ceil32(arg2.length)) + arg2.length + 663 len floor32(arg2.length + 51)] = Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], nonce[address(arg1)].field_-(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, Mask((8 * -ceil32(arg2.length) + arg2.length + 32) - 96, 0, arg1) << 96, mem[ceil32(ceil32(arg2.length)) + arg2.length + 675 len floor32(arg2.length + 51) + -arg2.length - 32]
    if floor32(arg2.length + 51) > arg2.length + 20:
        mem[ceil32(ceil32(arg2.length)) + (2 * arg2.length) + 683] = 0
    call this.address.mem[ceil32(ceil32(arg2.length)) + arg2.length + 663 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + arg2.length + 667 len arg2.length + 16]
    if not ext_call.success:
        revert with 0, 'Function call not successful'
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function mint() payable {
    if paused:
        revert with 0, 'Mint isn't running'
    if currentTokenId > -2:
        revert with 'NH{q', 17
    if basePrice != msg.value:
        revert with 0, 'Incorrect ETH Amount'
    if currentTokenId + 1 > MAX_SUPPLY:
        revert with 0, 'Sold out'
    if currentTokenId == -1:
        revert with 'NH{q', 17
    currentTokenId++
    if this.address != msg.sender:
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor15 + 1]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor15 + 1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = currentTokenId + 1
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = currentTokenId + 1
            stor7[stor15 + 1] = balanceOf[address(msg.sender)]
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor15 + 1] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor15 + 1]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor15 + 1]
            stor9[stor15 + 1] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        ownerOf[stor15 + 1] = msg.sender
        emit Transfer(0, msg.sender, currentTokenId + 1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor15 + 1]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor15 + 1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = currentTokenId + 1
        if mem[calldata.size + 108 len 20]:
            tokenOfOwnerByIndex[address(mem[calldata.size + 96])][stor3[address(mem[calldata.size + 96])]] = currentTokenId + 1
            stor7[stor15 + 1] = balanceOf[address(mem[calldata.size + 96])]
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor15 + 1] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor15 + 1]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor15 + 1]
            stor9[stor15 + 1] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if balanceOf[address(mem[calldata.size + 96])] > -2:
            revert with 'NH{q', 17
        balanceOf[address(mem[calldata.size + 96])]++
        ownerOf[stor15 + 1] = mem[calldata.size + 108 len 20]
        emit Transfer(0, mem[calldata.size + 108 len 20], currentTokenId + 1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function baseTokenURI() {
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)])
                mem[128] = 256 * stor16.length.field_8
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)])
                mem[128] = 256 * stor16.length.field_8
        mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) > stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if this.address != msg.sender:
        if msg.sender == ownerOf[arg2]:
            approved[arg2] = arg1
            if not ownerOf[arg2]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        else:
            if this.address != msg.sender:
                require ext_code.size(stor14)
                staticcall stor14.proxies(address rg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    if not stor5[stor2[arg2]][address(msg.sender)]:
                        revert with 0, 'ERC721: approve caller is not owner nor approved for all'
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                require ext_code.size(stor14)
                staticcall stor14.proxies(address rg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != mem[calldata.size + 108 len 20]:
                    if not stor5[stor2[arg2]][address(mem[calldata.size + 96])]:
                        revert with 0, 'ERC721: approve caller is not owner nor approved for all'
            approved[arg2] = arg1
            if not ownerOf[arg2]:
                revert with 0, 'ERC721: owner query for nonexistent token'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != ownerOf[arg2]:
            if this.address != msg.sender:
                require ext_code.size(stor14)
                staticcall stor14.proxies(address rg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    if not stor5[stor2[arg2]][address(msg.sender)]:
                        revert with 0, 'ERC721: approve caller is not owner nor approved for all'
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                require ext_code.size(stor14)
                staticcall stor14.proxies(address rg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != mem[ceil32(calldata.size) + calldata.size + 140 len 20]:
                    if not stor5[stor2[arg2]][address(mem[ceil32(calldata.size) + calldata.size + 128])]:
                        revert with 0, 'ERC721: approve caller is not owner nor approved for all'
        approved[arg2] = arg1
        if not ownerOf[arg2]:
            revert with 0, 'ERC721: owner query for nonexistent token'
    ('bool', ('stor', ('map', ('param', 'arg2'), ('name', 'ownerOf', 2))))
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if this.address != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[arg3]:
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg3] != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
            if not arg1:
                stor9[arg3] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = arg3
            else:
                if arg1 != arg2:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                    if balanceOf[address(arg1)] < 1:
                        revert with 'NH{q', 17
                    if stor7[arg3] != balanceOf[address(arg1)] - 1:
                        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                        stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                    stor7[arg3] = 0
                    tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
            if arg2:
                if arg2 != arg1:
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                    stor7[arg3] = balanceOf[address(arg2)]
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[arg3] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[arg3]
                stor9[arg3] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            approved[arg3] = 0
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        else:
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
            if approved[arg3] == msg.sender:
                if not ownerOf[arg3]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                if ownerOf[arg3] != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
                if not arg1:
                    stor9[arg3] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = arg3
                else:
                    if arg1 != arg2:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                        if balanceOf[address(arg1)] < 1:
                            revert with 'NH{q', 17
                        if stor7[arg3] != balanceOf[address(arg1)] - 1:
                            tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                            stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                        stor7[arg3] = 0
                        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
                if arg2:
                    if arg2 != arg1:
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                        stor7[arg3] = balanceOf[address(arg2)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[arg3] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[arg3]
                    stor9[arg3] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                approved[arg3] = 0
                if not ownerOf[arg3]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            else:
                require ext_code.size(stor14)
                staticcall stor14.proxies(address rg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg3]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    if not stor5[stor2[arg3]][address(msg.sender)]:
                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[arg3] != arg1:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not arg2:
                    revert with 0, 'ERC721: transfer to the zero address'
                if not arg1:
                    stor9[arg3] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = arg3
                else:
                    if arg1 != arg2:
                        if not arg1:
                            revert with 0, 'ERC721: balance query for the zero address'
                        if balanceOf[address(arg1)] < 1:
                            revert with 'NH{q', 17
                        if stor7[arg3] != balanceOf[address(arg1)] - 1:
                            tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                            stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                        stor7[arg3] = 0
                        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
                if arg2:
                    if arg2 != arg1:
                        if not arg2:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                        stor7[arg3] = balanceOf[address(arg2)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[arg3] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[arg3]
                    stor9[arg3] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                approved[arg3] = 0
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if mem[calldata.size + 108 len 20] != ownerOf[arg3]:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != mem[calldata.size + 108 len 20]:
                require ext_code.size(stor14)
                staticcall stor14.proxies(address rg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg3]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != mem[calldata.size + 108 len 20]:
                    if not stor5[stor2[arg3]][address(mem[calldata.size + 96])]:
                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not arg2:
            revert with 0, 'ERC721: transfer to the zero address'
        if not arg1:
            stor9[arg3] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = arg3
        else:
            if arg1 != arg2:
                if not arg1:
                    revert with 0, 'ERC721: balance query for the zero address'
                if balanceOf[address(arg1)] < 1:
                    revert with 'NH{q', 17
                if stor7[arg3] != balanceOf[address(arg1)] - 1:
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                    stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                stor7[arg3] = 0
                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
        if arg2:
            if arg2 != arg1:
                if not arg2:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                stor7[arg3] = balanceOf[address(arg2)]
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[arg3] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[arg3]
            stor9[arg3] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        approved[arg3] = 0
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
    ('bool', ('stor', ('map', ('param', 'arg3'), ('name', 'ownerOf', 2))))
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if this.address != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[arg3]:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg3] != arg1:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not arg2:
                revert with 0, 'ERC721: transfer to the zero address'
            if not arg1:
                stor9[arg3] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = arg3
            else:
                if arg1 != arg2:
                    if not arg1:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if balanceOf[address(arg1)] < 1:
                        revert with 'NH{q', 17
                    if stor7[arg3] != balanceOf[address(arg1)] - 1:
                        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                        stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                    stor7[arg3] = 0
                    tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
            if arg2:
                if arg2 != arg1:
                    if not arg2:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                    stor7[arg3] = balanceOf[address(arg2)]
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[arg3] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[arg3]
                stor9[arg3] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            approved[arg3] = 0
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[arg3], 0, arg3);
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]--
            if balanceOf[address(arg2)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if ext_code.size(arg2) > 0:
                if this.address != msg.sender:
                    require ext_code.size(arg2)
                    call arg2.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                else:
                    mem[ceil32(ceil32(arg4.length)) + 97] = calldata.size
                    mem[ceil32(ceil32(arg4.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
                    require ext_code.size(arg2)
                    call arg2.0x150b7a02 with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg4.length)) + calldata.size + 109 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                if not ext_call.success:
                    if not return_data.size:
                        if not arg4.length:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with arg4[all]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] == msg.sender:
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[arg3] != arg1:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not arg2:
                    revert with 0, 'ERC721: transfer to the zero address'
                if not arg1:
                    stor9[arg3] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = arg3
                else:
                    if arg1 != arg2:
                        if not arg1:
                            revert with 0, 'ERC721: balance query for the zero address'
                        if balanceOf[address(arg1)] < 1:
                            revert with 'NH{q', 17
                        if stor7[arg3] != balanceOf[address(arg1)] - 1:
                            tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                            stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                        stor7[arg3] = 0
                        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
                if arg2:
                    if arg2 != arg1:
                        if not arg2:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                        stor7[arg3] = balanceOf[address(arg2)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[arg3] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[arg3]
                    stor9[arg3] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                approved[arg3] = 0
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[arg3], 0, arg3);
                if balanceOf[address(arg1)] < 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)]--
                if balanceOf[address(arg2)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    if this.address != msg.sender:
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    else:
                        mem[ceil32(ceil32(arg4.length)) + 97] = calldata.size
                        mem[ceil32(ceil32(arg4.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args mem[ceil32(ceil32(arg4.length)) + calldata.size + 109 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    if not ext_call.success:
                        if not return_data.size:
                            if not arg4.length:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with arg4[all]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[ceil32(ceil32(arg4.length)) + 101] = ownerOf[arg3]
                require ext_code.size(stor14)
                staticcall stor14.proxies(address rg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg3]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    if not stor5[stor2[arg3]][address(msg.sender)]:
                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[arg3] != arg1:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not arg2:
                    revert with 0, 'ERC721: transfer to the zero address'
                if not arg1:
                    stor9[arg3] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = arg3
                else:
                    if arg1 != arg2:
                        if not arg1:
                            revert with 0, 'ERC721: balance query for the zero address'
                        if balanceOf[address(arg1)] < 1:
                            revert with 'NH{q', 17
                        if stor7[arg3] != balanceOf[address(arg1)] - 1:
                            tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                            stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                        stor7[arg3] = 0
                        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
                if arg2:
                    if arg2 != arg1:
                        if not arg2:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                        stor7[arg3] = balanceOf[address(arg2)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[arg3] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[arg3]
                    stor9[arg3] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                approved[arg3] = 0
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[arg3], 0, arg3);
                if balanceOf[address(arg1)] < 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)]--
                if balanceOf[address(arg2)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    if this.address != msg.sender:
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    else:
                        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 97] = calldata.size
                        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 129 len calldata.size] = call.data[0 len calldata.size]
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + calldata.size + 109 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    if not ext_call.success:
                        if not return_data.size:
                            if not arg4.length:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with arg4[all]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        mem[ceil32(ceil32(arg4.length)) + 97] = calldata.size
        mem[ceil32(ceil32(arg4.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if mem[ceil32(ceil32(arg4.length)) + calldata.size + 109 len 20] == ownerOf[arg3]:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg3] != arg1:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not arg2:
                revert with 0, 'ERC721: transfer to the zero address'
            if not arg1:
                stor9[arg3] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = arg3
            else:
                if arg1 != arg2:
                    if not arg1:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if balanceOf[address(arg1)] < 1:
                        revert with 'NH{q', 17
                    if stor7[arg3] != balanceOf[address(arg1)] - 1:
                        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                        stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                    stor7[arg3] = 0
                    tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
            if arg2:
                if arg2 != arg1:
                    if not arg2:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                    stor7[arg3] = balanceOf[address(arg2)]
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[arg3] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[arg3]
                stor9[arg3] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            approved[arg3] = 0
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[arg3], 0, arg3);
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]--
            if balanceOf[address(arg2)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if ext_code.size(arg2) > 0:
                if this.address != msg.sender:
                    require ext_code.size(arg2)
                    call arg2.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                else:
                    mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + 129] = calldata.size
                    mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + 161 len calldata.size] = call.data[0 len calldata.size]
                    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 197] = arg1
                    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 229] = arg3
                    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 261] = 128
                    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 293] = arg4.length
                    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 325 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                    if ceil32(arg4.length) > arg4.length:
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + arg4.length + 325] = 0
                    require ext_code.size(arg2)
                    call arg2.0x150b7a02 with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + calldata.size + 141 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                if not ext_call.success:
                    if not return_data.size:
                        if not arg4.length:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with arg4[all]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] == mem[ceil32(ceil32(arg4.length)) + calldata.size + 109 len 20]:
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[arg3] != arg1:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not arg2:
                    revert with 0, 'ERC721: transfer to the zero address'
                if not arg1:
                    stor9[arg3] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = arg3
                else:
                    if arg1 != arg2:
                        if not arg1:
                            revert with 0, 'ERC721: balance query for the zero address'
                        if balanceOf[address(arg1)] < 1:
                            revert with 'NH{q', 17
                        if stor7[arg3] != balanceOf[address(arg1)] - 1:
                            tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                            stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                        stor7[arg3] = 0
                        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
                if arg2:
                    if arg2 != arg1:
                        if not arg2:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                        stor7[arg3] = balanceOf[address(arg2)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[arg3] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[arg3]
                    stor9[arg3] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                approved[arg3] = 0
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[arg3], 0, arg3);
                if balanceOf[address(arg1)] < 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)]--
                if balanceOf[address(arg2)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    if this.address != msg.sender:
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    else:
                        mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + 129] = calldata.size
                        mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + 161 len calldata.size] = call.data[0 len calldata.size]
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 197] = arg1
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 229] = arg3
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 261] = 128
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 293] = arg4.length
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 325 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                        if ceil32(arg4.length) > arg4.length:
                            mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + arg4.length + 325] = 0
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + calldata.size + 141 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    if not ext_call.success:
                        if not return_data.size:
                            if not arg4.length:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with arg4[all]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + 133] = ownerOf[arg3]
                require ext_code.size(stor14)
                staticcall stor14.proxies(address rg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg3]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != mem[ceil32(ceil32(arg4.length)) + calldata.size + 109 len 20]:
                    if not stor5[stor2[arg3]][address(mem[ceil32(ceil32(arg4.length)) + calldata.size + 97])]:
                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[arg3] != arg1:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not arg2:
                    revert with 0, 'ERC721: transfer to the zero address'
                if not arg1:
                    stor9[arg3] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = arg3
                else:
                    if arg1 != arg2:
                        if not arg1:
                            revert with 0, 'ERC721: balance query for the zero address'
                        if balanceOf[address(arg1)] < 1:
                            revert with 'NH{q', 17
                        if stor7[arg3] != balanceOf[address(arg1)] - 1:
                            tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                            stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                        stor7[arg3] = 0
                        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
                if arg2:
                    if arg2 != arg1:
                        if not arg2:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                        stor7[arg3] = balanceOf[address(arg2)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[arg3] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[arg3]
                    stor9[arg3] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                approved[arg3] = 0
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[arg3], 0, arg3);
                if balanceOf[address(arg1)] < 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)]--
                if balanceOf[address(arg2)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    if this.address != msg.sender:
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    else:
                        mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + ceil32(return_data.size) + 129] = calldata.size
                        mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + ceil32(return_data.size) + 161 len calldata.size] = call.data[0 len calldata.size]
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 197] = arg1
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 229] = arg3
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 261] = 128
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 293] = arg4.length
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 325 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                        if ceil32(arg4.length) > arg4.length:
                            mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + arg4.length + 325] = 0
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + ceil32(return_data.size) + calldata.size + 141 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    if not ext_call.success:
                        if not return_data.size:
                            if not arg4.length:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with arg4[all]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor16.length.field_1
        if bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor16.length.field_1:
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor16.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                            _3522 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3522)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3522)]
                            if ceil32(_3522) > _3522:
                                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3522 + 256] = 0
                            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3522) + 32], 
                        _3554 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3554)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3554)]
                        if ceil32(_3554) > _3554:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3554 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3554) + 32], 
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3523 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3523)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3523)]
                        if ceil32(_3523) > _3523:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3523 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3523) + 32], 
                    _3555 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3555)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3555)]
                    if ceil32(_3555) > _3555:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3555 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3555) + 32], 
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3524 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3524)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3524)]
                        if ceil32(_3524) > _3524:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3524 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3524) + 32], 
                    _3556 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3556)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3556)]
                    if ceil32(_3556) > _3556:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3556 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3556) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3525 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3525)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3525)]
                    if ceil32(_3525) > _3525:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3525 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3525) + 32], 
                _3557 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3557)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3557)]
                if ceil32(_3557) > _3557:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3557 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3557) + 32], 
            if 31 >= stor16.length.field_1:
                mem[128] = 256 * stor16.length.field_8
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor16.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                            _3526 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3526)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3526)]
                            if ceil32(_3526) > _3526:
                                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3526 + 256] = 0
                            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3526) + 32], 
                        _3558 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3558)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3558)]
                        if ceil32(_3558) > _3558:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3558 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3558) + 32], 
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3527 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3527)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3527)]
                        if ceil32(_3527) > _3527:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3527 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3527) + 32], 
                    _3559 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3559)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3559)]
                    if ceil32(_3559) > _3559:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3559 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3559) + 32], 
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3528 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3528)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3528)]
                        if ceil32(_3528) > _3528:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3528 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3528) + 32], 
                    _3560 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3560)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3560)]
                    if ceil32(_3560) > _3560:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3560 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3560) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3529 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3529)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3529)]
                    if ceil32(_3529) > _3529:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3529 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3529) + 32], 
                _3561 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3561)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3561)]
                if ceil32(_3561) > _3561:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3561 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3561) + 32], 
            mem[0] = 16
            mem[128] = uint256(stor16.field_0)
            idx = 128
            s = 0
            while stor16.length.field_1 + 96 > idx:
                mem[idx + 32] = stor16[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                        _4258 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4258)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4258)]
                        if ceil32(_4258) > _4258:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4258 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4258) + 32], 
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    _4274 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4274)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4274)]
                    if ceil32(_4274) > _4274:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4274 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4274) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    _4259 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4259)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4259)]
                    if ceil32(_4259) > _4259:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4259 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4259) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4275 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4275)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4275)]
                if ceil32(_4275) > _4275:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4275 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4275) + 32], 
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    _4260 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4260)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4260)]
                    if ceil32(_4260) > _4260:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4260 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4260) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4276 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4276)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4276)]
                if ceil32(_4276) > _4276:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4276 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4276) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4261 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4261)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4261)]
                if ceil32(_4261) > _4261:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4261 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4261) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4277 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4277)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4277)]
            if ceil32(_4277) > _4277:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4277 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4277) + 32], 
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor16.length.field_1:
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3530 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3530)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3530)]
                        if ceil32(_3530) > _3530:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3530 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3530) + 32], 
                    _3562 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3562)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3562)]
                    if ceil32(_3562) > _3562:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3562 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3562) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3531 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3531)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3531)]
                    if ceil32(_3531) > _3531:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3531 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3531) + 32], 
                _3563 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3563)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3563)]
                if ceil32(_3563) > _3563:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3563 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3563) + 32], 
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3532 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3532)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3532)]
                    if ceil32(_3532) > _3532:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3532 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3532) + 32], 
                _3564 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3564)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3564)]
                if ceil32(_3564) > _3564:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3564 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3564) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3533 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3533)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3533)]
                if ceil32(_3533) > _3533:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3533 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3533) + 32], 
            _3565 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3565)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3565)]
            if ceil32(_3565) > _3565:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3565 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3565) + 32], 
        if 31 >= stor16.length.field_1:
            mem[128] = 256 * stor16.length.field_8
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3534 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3534)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3534)]
                        if ceil32(_3534) > _3534:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3534 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3534) + 32], 
                    _3566 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3566)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3566)]
                    if ceil32(_3566) > _3566:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3566 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3566) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3535 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3535)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3535)]
                    if ceil32(_3535) > _3535:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3535 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3535) + 32], 
                _3567 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3567)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3567)]
                if ceil32(_3567) > _3567:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3567 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3567) + 32], 
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3536 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3536)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3536)]
                    if ceil32(_3536) > _3536:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3536 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3536) + 32], 
                _3568 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3568)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3568)]
                if ceil32(_3568) > _3568:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3568 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3568) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3537 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3537)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3537)]
                if ceil32(_3537) > _3537:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3537 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3537) + 32], 
            _3569 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3569)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3569)]
            if ceil32(_3569) > _3569:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3569 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3569) + 32], 
        mem[0] = 16
        mem[128] = uint256(stor16.field_0)
        idx = 128
        s = 0
        while stor16.length.field_1 + 96 > idx:
            mem[idx + 32] = stor16[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not arg1:
            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor16.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    _4262 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4262)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4262)]
                    if ceil32(_4262) > _4262:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4262 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4262) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4278 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4278)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4278)]
                if ceil32(_4278) > _4278:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4278 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4278) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4263 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4263)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4263)]
                if ceil32(_4263) > _4263:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4263 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4263) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4279 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4279)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4279)]
            if ceil32(_4279) > _4279:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4279 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4279) + 32], 
        mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) <= stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4264 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4264)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4264)]
                if ceil32(_4264) > _4264:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4264 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4264) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4280 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4280)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4280)]
            if ceil32(_4280) > _4280:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4280 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4280) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4265 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4265)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4265)]
            if ceil32(_4265) > _4265:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4265 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4265) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        _4281 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4281)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4281)]
        if ceil32(_4281) > _4281:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4281 + 256] = 0
        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4281) + 32], 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor16.length.field_1
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor16.length.field_1:
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3538 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3538)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3538)]
                        if ceil32(_3538) > _3538:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3538 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3538) + 32], 
                    _3570 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3570)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3570)]
                    if ceil32(_3570) > _3570:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3570 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3570) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3539 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3539)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3539)]
                    if ceil32(_3539) > _3539:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3539 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3539) + 32], 
                _3571 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3571)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3571)]
                if ceil32(_3571) > _3571:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3571 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3571) + 32], 
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3540 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3540)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3540)]
                    if ceil32(_3540) > _3540:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3540 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3540) + 32], 
                _3572 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3572)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3572)]
                if ceil32(_3572) > _3572:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3572 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3572) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3541 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3541)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3541)]
                if ceil32(_3541) > _3541:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3541 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3541) + 32], 
            _3573 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3573)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3573)]
            if ceil32(_3573) > _3573:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3573 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3573) + 32], 
        if 31 >= stor16.length.field_1:
            mem[128] = 256 * stor16.length.field_8
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3542 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3542)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3542)]
                        if ceil32(_3542) > _3542:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3542 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3542) + 32], 
                    _3574 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3574)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3574)]
                    if ceil32(_3574) > _3574:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3574 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3574) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3543 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3543)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3543)]
                    if ceil32(_3543) > _3543:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3543 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3543) + 32], 
                _3575 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3575)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3575)]
                if ceil32(_3575) > _3575:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3575 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3575) + 32], 
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3544 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3544)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3544)]
                    if ceil32(_3544) > _3544:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3544 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3544) + 32], 
                _3576 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3576)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3576)]
                if ceil32(_3576) > _3576:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3576 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3576) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3545 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3545)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3545)]
                if ceil32(_3545) > _3545:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3545 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3545) + 32], 
            _3577 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3577)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3577)]
            if ceil32(_3577) > _3577:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3577 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3577) + 32], 
        mem[0] = 16
        mem[128] = uint256(stor16.field_0)
        idx = 128
        s = 0
        while stor16.length.field_1 + 96 > idx:
            mem[idx + 32] = stor16[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not arg1:
            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor16.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _4266 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4266)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4266)]
                    if ceil32(_4266) > _4266:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4266 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4266) + 32], 
                _4282 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4282)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4282)]
                if ceil32(_4282) > _4282:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4282 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4282) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _4267 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4267)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4267)]
                if ceil32(_4267) > _4267:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4267 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4267) + 32], 
            _4283 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4283)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4283)]
            if ceil32(_4283) > _4283:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4283 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4283) + 32], 
        mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) <= stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _4268 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4268)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4268)]
                if ceil32(_4268) > _4268:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4268 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4268) + 32], 
            _4284 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4284)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4284)]
            if ceil32(_4284) > _4284:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4284 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4284) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            _4269 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4269)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4269)]
            if ceil32(_4269) > _4269:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4269 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4269) + 32], 
        _4285 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4285)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4285)]
        if ceil32(_4285) > _4285:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4285 + 256] = 0
        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4285) + 32], 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor16.length.field_1:
        if not arg1:
            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor16.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3546 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3546)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3546)]
                    if ceil32(_3546) > _3546:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3546 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3546) + 32], 
                _3578 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3578)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3578)]
                if ceil32(_3578) > _3578:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3578 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3578) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3547 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3547)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3547)]
                if ceil32(_3547) > _3547:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3547 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3547) + 32], 
            _3579 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3579)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3579)]
            if ceil32(_3579) > _3579:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3579 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3579) + 32], 
        mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) <= stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3548 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3548)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3548)]
                if ceil32(_3548) > _3548:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3548 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3548) + 32], 
            _3580 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3580)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3580)]
            if ceil32(_3580) > _3580:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3580 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3580) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            _3549 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3549)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3549)]
            if ceil32(_3549) > _3549:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3549 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3549) + 32], 
        _3581 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3581)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3581)]
        if ceil32(_3581) > _3581:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3581 + 256] = 0
        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3581) + 32], 
    if 31 >= stor16.length.field_1:
        mem[128] = 256 * stor16.length.field_8
        if not arg1:
            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor16.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3550 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3550)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3550)]
                    if ceil32(_3550) > _3550:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3550 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3550) + 32], 
                _3582 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3582)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3582)]
                if ceil32(_3582) > _3582:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3582 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3582) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3551 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3551)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3551)]
                if ceil32(_3551) > _3551:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3551 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3551) + 32], 
            _3583 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3583)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3583)]
            if ceil32(_3583) > _3583:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3583 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3583) + 32], 
        mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) <= stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3552 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3552)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3552)]
                if ceil32(_3552) > _3552:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3552 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3552) + 32], 
            _3584 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3584)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3584)]
            if ceil32(_3584) > _3584:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3584 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3584) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            _3553 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3553)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3553)]
            if ceil32(_3553) > _3553:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3553 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3553) + 32], 
        _3585 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3585)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3585)]
        if ceil32(_3585) > _3585:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3585 + 256] = 0
        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3585) + 32], 
    mem[0] = 16
    mem[128] = uint256(stor16.field_0)
    idx = 128
    s = 0
    while stor16.length.field_1 + 96 > idx:
        mem[idx + 32] = stor16[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not arg1:
        mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
        return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(stor16.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) <= stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4270 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4270)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4270)]
                if ceil32(_4270) > _4270:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4270 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4270) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4286 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4286)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4286)]
            if ceil32(_4286) > _4286:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4286 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4286) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4271 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4271)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4271)]
            if ceil32(_4271) > _4271:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4271 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4271) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        _4287 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4287)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4287)]
        if ceil32(_4287) > _4287:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4287 + 256] = 0
        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4287) + 32], 
    mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) <= stor16.length.field_1:
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4272 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4272)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4272)]
            if ceil32(_4272) > _4272:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4272 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4272) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        _4288 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4288)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4288)]
        if ceil32(_4288) > _4288:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4288 + 256] = 0
        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4288) + 32], 
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        _4273 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4273)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4273)]
        if ceil32(_4273) > _4273:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4273 + 256] = 0
        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4273) + 32], 
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
    _4289 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4289)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4289)]
    if ceil32(_4289) > _4289:
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4289 + 256] = 0
    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4289) + 32], 
}



}
