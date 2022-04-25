contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
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
array of struct stor14;
uint256 stor15;
uint256 stor16;
uint256 totalMint;
uint256 isActive;
array of uint256 luckyDogTokenId;
mapping of uint256 referalReward;

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

function getLuckyDogTokenIdLength() {
    return luckyDogTokenId.length
}

function getDomainSeperator() {
    return domainSeperator
}

function isActive() {
    return isActive
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

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function totalMint() {
    return totalMint
}

function referalReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referalReward[arg1]
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

function luckyDogTokenId(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < luckyDogTokenId.length
    return luckyDogTokenId[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setIsActive(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    isActive = arg1
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

function recoverGodhead() {
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function setBaseUri(string arg1) {
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
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
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
                if not stor5[stor2[arg2]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ERC721: approve caller is not owner nor approved for all'
                approved[arg2] = arg1
                if not ownerOf[arg2]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
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
                if not stor5[stor2[arg2]][address(msg.sender)]:
                    revert with 0, 'ERC721: approve caller is not owner nor approved for all'
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                if not stor5[stor2[arg2]][address(mem[ceil32(calldata.size) + calldata.size + 128])]:
                    revert with 0, 'ERC721: approve caller is not owner nor approved for all'
        approved[arg2] = arg1
        if not ownerOf[arg2]:
            revert with 0, 'ERC721: owner query for nonexistent token'
    ('bool', ('stor', ('map', ('param', 'arg2'), ('name', 'ownerOf', 2))))
    emit Approval(ownerOf[arg2], arg1, arg2);
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
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) > stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
    if ceil32(stor14.length.field_1) > stor14.length.field_1:
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
    return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
}

function mint(uint8 arg1, address arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if totalMint > -arg1 - 1:
        revert with 'NH{q', 17
    if totalMint + arg1 > stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoolFox: Sorry, all CoolFoxes were sold out.'
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoolFox: Up to 20 CoolFoxes can be minted in a tx.'
    if arg1 and 5 * 10^14 * 3600 > -1 / arg1:
        revert with 'NH{q', 17
    if 5 * 10^14 * 3600 * arg1 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoolFox: You need to pay the exact price.'
    if not msg.value:
        revert with 0, 'You cant pay 0 avax to mint!'
    idx = 0
    s = 0
    while uint8(idx) < arg1:
        if stor15 > -2:
            revert with 'NH{q', 17
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor15 + 1]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor15 + 1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor15 + 1
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor15 + 1
            stor7[stor15 + 1] = balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor15 + 1
            mem[32] = 2
            ownerOf[stor15 + 1] = msg.sender
            emit Transfer(0, msg.sender, stor15 + 1);
            require stor15 < stor16
            if stor15 == -1:
                revert with 'NH{q', 17
            stor15++
            if stor15 + 1 % 100:
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                s = s
                continue 
            mem[mem[64] + 32] = block.timestamp
            mem[mem[64] + 64] = block.difficulty
            mem[mem[64] + 96] = block.coinbase
            mem[mem[64] + 128] = msg.sender
            _95 = mem[64]
            mem[mem[64]] = 128
            mem[64] = mem[64] + 160
            _97 = sha3(mem[_95 + 32 len mem[_95]])
            if stor15 + 1 < sha3(mem[_95 + 32 len mem[_95]]) % 100:
                revert with 'NH{q', 17
            mem[0] = stor15 + -(sha3(mem[_95 + 32 len mem[_95]]) % 100) + 1
            mem[32] = 2
            if not ownerOf[mem[0]]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            call ownerOf[mem[0]] with:
               value 5 * 10^15 * 3600 wei
                 gas 0 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            luckyDogTokenId.length++
            mem[0] = 19
            luckyDogTokenId[luckyDogTokenId.length] = stor15 + -(_97 % 100) + 1
            emit 0x63d40bb6: stor15 + -(_97 % 100) + 1
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = stor15 + -(_97 % 100) + 1
            continue 
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
        mem[0] = stor15 + 1
        mem[32] = 2
        ownerOf[stor15 + 1] = msg.sender
        emit Transfer(0, msg.sender, stor15 + 1);
        require stor15 < stor16
        if stor15 == -1:
            revert with 'NH{q', 17
        stor15++
        if stor15 + 1 % 100:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = s
            continue 
        mem[mem[64] + 32] = block.timestamp
        mem[mem[64] + 64] = block.difficulty
        mem[mem[64] + 96] = block.coinbase
        mem[mem[64] + 128] = msg.sender
        _98 = mem[64]
        mem[mem[64]] = 128
        mem[64] = mem[64] + 160
        _100 = sha3(mem[_98 + 32 len mem[_98]])
        if stor15 + 1 < sha3(mem[_98 + 32 len mem[_98]]) % 100:
            revert with 'NH{q', 17
        mem[0] = stor15 + -(sha3(mem[_98 + 32 len mem[_98]]) % 100) + 1
        mem[32] = 2
        if not ownerOf[mem[0]]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        call ownerOf[mem[0]] with:
           value 5 * 10^15 * 3600 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        luckyDogTokenId.length++
        mem[0] = 19
        luckyDogTokenId[luckyDogTokenId.length] = stor15 + -(_100 % 100) + 1
        emit 0x63d40bb6: stor15 + -(_100 % 100) + 1
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        s = stor15 + -(_100 % 100) + 1
        continue 
    if arg1 > 102:
        revert with 'NH{q', 17
    call arg2 with:
       value uint64(5 * 10^13 * 3600 * arg1) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 > 102:
        revert with 'NH{q', 17
    if referalReward[address(arg2)] > -uint64(5 * 10^13 * 3600 * arg1) - 1:
        revert with 'NH{q', 17
    referalReward[address(arg2)] += uint64(5 * 10^13 * 3600 * arg1)
    if totalMint > -arg1 - 1:
        revert with 'NH{q', 17
    totalMint += arg1
    emit 0x5db1453a: totalMint
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
        if ownerOf[arg3] != msg.sender:
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if this.address != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != msg.sender:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
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
                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
            else:
                mem[128] = calldata.size
                mem[160 len calldata.size] = call.data[0 len calldata.size]
                require ext_code.size(arg2)
                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[calldata.size + 140 len 20], address(arg1), arg3, 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        mem[128] = calldata.size
        mem[160 len calldata.size] = call.data[0 len calldata.size]
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if mem[calldata.size + 140 len 20] != ownerOf[arg3]:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != mem[calldata.size + 140 len 20]:
                if not stor5[stor2[arg3]][address(mem[calldata.size + 128])]:
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
                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, 128, 0
            else:
                mem[ceil32(calldata.size) + 160] = calldata.size
                mem[ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                mem[(2 * ceil32(calldata.size)) + 228] = arg1
                mem[(2 * ceil32(calldata.size)) + 260] = arg3
                mem[(2 * ceil32(calldata.size)) + 292] = 128
                mem[(2 * ceil32(calldata.size)) + 324] = 0
                mem[(2 * ceil32(calldata.size)) + 356 len 0] = None
                require ext_code.size(arg2)
                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[ceil32(calldata.size) + calldata.size + 172 len 20], address(arg1), arg3, 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[192] = Mask(248, 8, stor14.length)
            else:
                if bool(stor14.length) != 1:
                    mem[64] = 6
                    _121 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_121) > _121:
                        mem[_121 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_121) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor14.length.field_1:
                    mem[idx + 192] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor14.length.field_1 + 192] = '0'
            mem[stor14.length.field_1 + 193] = '.json'
            mem[stor14.length.field_1 + 198] = 32
            mem[stor14.length.field_1 + 230] = mem[160]
            mem[stor14.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor14.length.field_1 + mem[160] + 262] = 0
            return Array(len=mem[160], data=mem[stor14.length.field_1 + 262 len ceil32(mem[160])])
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor14.length):
            mem[192] = Mask(248, 8, stor14.length)
        else:
            if bool(stor14.length) != 1:
                mem[64] = 6
                _123 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_123) > _123:
                    mem[_123 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_123) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor14.length.field_1:
                mem[idx + 192] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor14.length.field_1 + 192] = '0'
        mem[stor14.length.field_1 + 193] = '.json'
        mem[stor14.length.field_1 + 198] = 32
        mem[stor14.length.field_1 + 230] = mem[160]
        mem[stor14.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor14.length.field_1 + mem[160] + 262] = 0
        return Array(len=mem[160], data=mem[stor14.length.field_1 + 262 len ceil32(mem[160])])
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
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _356 = mem[64]
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                _388 = mem[96]
                mem[mem[64] + stor14.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_356 + stor14.length.field_1 + _388 + 32] = '.json'
                if ceil32(_388) <= _388:
                    _596 = mem[64]
                    mem[64] = _356 + stor14.length.field_1 + _388 + 37
                    mem[_356 + stor14.length.field_1 + _388 + 37] = 32
                    _632 = mem[_596]
                    mem[_356 + stor14.length.field_1 + _388 + 69] = mem[_596]
                    mem[_356 + stor14.length.field_1 + _388 + 101 len ceil32(_632)] = mem[_596 + 32 len ceil32(_632)]
                    if ceil32(_632) > _632:
                        mem[_356 + stor14.length.field_1 + _388 + _632 + 101] = 0
                    return 32, mem[_356 + stor14.length.field_1 + _388 + 69 len ceil32(_632) + 32]
                _609 = mem[64]
                mem[64] = _356 + stor14.length.field_1 + _388 + 37
                mem[_356 + stor14.length.field_1 + _388 + 37] = 32
                _640 = mem[_609]
                mem[_356 + stor14.length.field_1 + _388 + 69] = mem[_609]
                mem[_356 + stor14.length.field_1 + _388 + 101 len ceil32(_640)] = mem[_609 + 32 len ceil32(_640)]
                if ceil32(_640) > _640:
                    mem[_356 + stor14.length.field_1 + _388 + _640 + 101] = 0
                return 32, mem[_356 + stor14.length.field_1 + _388 + 69 len ceil32(_640) + 32]
            if bool(stor14.length) != 1:
                _392 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_392] = '.json'
                if ceil32(_392) <= _392:
                    _598 = mem[64]
                    mem[64] = _392 + 5
                    mem[_392 + 5] = 32
                    _633 = mem[_598]
                    mem[_392 + 37] = mem[_598]
                    mem[_392 + 69 len ceil32(_633)] = mem[_598 + 32 len ceil32(_633)]
                    if ceil32(_633) > _633:
                        mem[_392 + _633 + 69] = 0
                    return 32, mem[_392 + 37 len ceil32(_633) + 32]
                _611 = mem[64]
                mem[64] = _392 + 5
                mem[_392 + 5] = 32
                _641 = mem[_611]
                mem[_392 + 37] = mem[_611]
                mem[_392 + 69 len ceil32(_641)] = mem[_611 + 32 len ceil32(_641)]
                if ceil32(_641) > _641:
                    mem[_392 + _641 + 69] = 0
                return 32, mem[_392 + 37 len ceil32(_641) + 32]
            mem[0] = 14
            idx = 0
            s = 0
            while idx < stor14.length.field_1:
                mem[_356 + idx + 32] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _584 = mem[96]
            mem[_356 + stor14.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_356 + stor14.length.field_1 + _584 + 32] = '.json'
            if ceil32(_584) <= _584:
                _796 = mem[64]
                mem[64] = _356 + stor14.length.field_1 + _584 + 37
                mem[_356 + stor14.length.field_1 + _584 + 37] = 32
                _812 = mem[_796]
                mem[_356 + stor14.length.field_1 + _584 + 69] = mem[_796]
                mem[_356 + stor14.length.field_1 + _584 + 101 len ceil32(_812)] = mem[_796 + 32 len ceil32(_812)]
                if ceil32(_812) > _812:
                    mem[_356 + stor14.length.field_1 + _584 + _812 + 101] = 0
                return 32, mem[_356 + stor14.length.field_1 + _584 + 69 len ceil32(_812) + 32]
            _801 = mem[64]
            mem[64] = _356 + stor14.length.field_1 + _584 + 37
            mem[_356 + stor14.length.field_1 + _584 + 37] = 32
            _816 = mem[_801]
            mem[_356 + stor14.length.field_1 + _584 + 69] = mem[_801]
            mem[_356 + stor14.length.field_1 + _584 + 101 len ceil32(_816)] = mem[_801 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_356 + stor14.length.field_1 + _584 + _816 + 101] = 0
            return 32, mem[_356 + stor14.length.field_1 + _584 + 69 len ceil32(_816) + 32]
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor14.length):
            mem[mem[64] + 32] = Mask(248, 8, stor14.length)
            _393 = mem[96]
            mem[mem[64] + stor14.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_356 + stor14.length.field_1 + _393 + 32] = '.json'
            if ceil32(_393) <= _393:
                _599 = mem[64]
                mem[64] = _356 + stor14.length.field_1 + _393 + 37
                mem[_356 + stor14.length.field_1 + _393 + 37] = 32
                _634 = mem[_599]
                mem[_356 + stor14.length.field_1 + _393 + 69] = mem[_599]
                mem[_356 + stor14.length.field_1 + _393 + 101 len ceil32(_634)] = mem[_599 + 32 len ceil32(_634)]
                if ceil32(_634) > _634:
                    mem[_356 + stor14.length.field_1 + _393 + _634 + 101] = 0
                return 32, mem[_356 + stor14.length.field_1 + _393 + 69 len ceil32(_634) + 32]
            _613 = mem[64]
            mem[64] = _356 + stor14.length.field_1 + _393 + 37
            mem[_356 + stor14.length.field_1 + _393 + 37] = 32
            _642 = mem[_613]
            mem[_356 + stor14.length.field_1 + _393 + 69] = mem[_613]
            mem[_356 + stor14.length.field_1 + _393 + 101 len ceil32(_642)] = mem[_613 + 32 len ceil32(_642)]
            if ceil32(_642) > _642:
                mem[_356 + stor14.length.field_1 + _393 + _642 + 101] = 0
            return 32, mem[_356 + stor14.length.field_1 + _393 + 69 len ceil32(_642) + 32]
        if bool(stor14.length) != 1:
            _396 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_396] = '.json'
            if ceil32(_396) <= _396:
                _601 = mem[64]
                mem[64] = _396 + 5
                mem[_396 + 5] = 32
                _635 = mem[_601]
                mem[_396 + 37] = mem[_601]
                mem[_396 + 69 len ceil32(_635)] = mem[_601 + 32 len ceil32(_635)]
                if ceil32(_635) > _635:
                    mem[_396 + _635 + 69] = 0
                return 32, mem[_396 + 37 len ceil32(_635) + 32]
            _615 = mem[64]
            mem[64] = _396 + 5
            mem[_396 + 5] = 32
            _643 = mem[_615]
            mem[_396 + 37] = mem[_615]
            mem[_396 + 69 len ceil32(_643)] = mem[_615 + 32 len ceil32(_643)]
            if ceil32(_643) > _643:
                mem[_396 + _643 + 69] = 0
            return 32, mem[_396 + 37 len ceil32(_643) + 32]
        mem[0] = 14
        idx = 0
        s = 0
        while idx < stor14.length.field_1:
            mem[_356 + idx + 32] = stor14[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _585 = mem[96]
        mem[_356 + stor14.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_356 + stor14.length.field_1 + _585 + 32] = '.json'
        if ceil32(_585) <= _585:
            _797 = mem[64]
            mem[64] = _356 + stor14.length.field_1 + _585 + 37
            mem[_356 + stor14.length.field_1 + _585 + 37] = 32
            _813 = mem[_797]
            mem[_356 + stor14.length.field_1 + _585 + 69] = mem[_797]
            mem[_356 + stor14.length.field_1 + _585 + 101 len ceil32(_813)] = mem[_797 + 32 len ceil32(_813)]
            if ceil32(_813) > _813:
                mem[_356 + stor14.length.field_1 + _585 + _813 + 101] = 0
            return 32, mem[_356 + stor14.length.field_1 + _585 + 69 len ceil32(_813) + 32]
        _803 = mem[64]
        mem[64] = _356 + stor14.length.field_1 + _585 + 37
        mem[_356 + stor14.length.field_1 + _585 + 37] = 32
        _817 = mem[_803]
        mem[_356 + stor14.length.field_1 + _585 + 69] = mem[_803]
        mem[_356 + stor14.length.field_1 + _585 + 101 len ceil32(_817)] = mem[_803 + 32 len ceil32(_817)]
        if ceil32(_817) > _817:
            mem[_356 + stor14.length.field_1 + _585 + _817 + 101] = 0
        return 32, mem[_356 + stor14.length.field_1 + _585 + 69 len ceil32(_817) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _357 = mem[64]
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor14.length):
            mem[mem[64] + 32] = Mask(248, 8, stor14.length)
            _389 = mem[96]
            mem[mem[64] + stor14.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_357 + stor14.length.field_1 + _389 + 32] = '.json'
            if ceil32(_389) <= _389:
                _602 = mem[64]
                mem[64] = _357 + stor14.length.field_1 + _389 + 37
                mem[_357 + stor14.length.field_1 + _389 + 37] = 32
                _636 = mem[_602]
                mem[_357 + stor14.length.field_1 + _389 + 69] = mem[_602]
                mem[_357 + stor14.length.field_1 + _389 + 101 len ceil32(_636)] = mem[_602 + 32 len ceil32(_636)]
                if ceil32(_636) > _636:
                    mem[_357 + stor14.length.field_1 + _389 + _636 + 101] = 0
                return 32, mem[_357 + stor14.length.field_1 + _389 + 69 len ceil32(_636) + 32]
            _617 = mem[64]
            mem[64] = _357 + stor14.length.field_1 + _389 + 37
            mem[_357 + stor14.length.field_1 + _389 + 37] = 32
            _644 = mem[_617]
            mem[_357 + stor14.length.field_1 + _389 + 69] = mem[_617]
            mem[_357 + stor14.length.field_1 + _389 + 101 len ceil32(_644)] = mem[_617 + 32 len ceil32(_644)]
            if ceil32(_644) > _644:
                mem[_357 + stor14.length.field_1 + _389 + _644 + 101] = 0
            return 32, mem[_357 + stor14.length.field_1 + _389 + 69 len ceil32(_644) + 32]
        if bool(stor14.length) != 1:
            _394 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_394] = '.json'
            if ceil32(_394) <= _394:
                _604 = mem[64]
                mem[64] = _394 + 5
                mem[_394 + 5] = 32
                _637 = mem[_604]
                mem[_394 + 37] = mem[_604]
                mem[_394 + 69 len ceil32(_637)] = mem[_604 + 32 len ceil32(_637)]
                if ceil32(_637) > _637:
                    mem[_394 + _637 + 69] = 0
                return 32, mem[_394 + 37 len ceil32(_637) + 32]
            _619 = mem[64]
            mem[64] = _394 + 5
            mem[_394 + 5] = 32
            _645 = mem[_619]
            mem[_394 + 37] = mem[_619]
            mem[_394 + 69 len ceil32(_645)] = mem[_619 + 32 len ceil32(_645)]
            if ceil32(_645) > _645:
                mem[_394 + _645 + 69] = 0
            return 32, mem[_394 + 37 len ceil32(_645) + 32]
        mem[0] = 14
        idx = 0
        s = 0
        while idx < stor14.length.field_1:
            mem[_357 + idx + 32] = stor14[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _586 = mem[96]
        mem[_357 + stor14.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_357 + stor14.length.field_1 + _586 + 32] = '.json'
        if ceil32(_586) <= _586:
            _798 = mem[64]
            mem[64] = _357 + stor14.length.field_1 + _586 + 37
            mem[_357 + stor14.length.field_1 + _586 + 37] = 32
            _814 = mem[_798]
            mem[_357 + stor14.length.field_1 + _586 + 69] = mem[_798]
            mem[_357 + stor14.length.field_1 + _586 + 101 len ceil32(_814)] = mem[_798 + 32 len ceil32(_814)]
            if ceil32(_814) > _814:
                mem[_357 + stor14.length.field_1 + _586 + _814 + 101] = 0
            return 32, mem[_357 + stor14.length.field_1 + _586 + 69 len ceil32(_814) + 32]
        _805 = mem[64]
        mem[64] = _357 + stor14.length.field_1 + _586 + 37
        mem[_357 + stor14.length.field_1 + _586 + 37] = 32
        _818 = mem[_805]
        mem[_357 + stor14.length.field_1 + _586 + 69] = mem[_805]
        mem[_357 + stor14.length.field_1 + _586 + 101 len ceil32(_818)] = mem[_805 + 32 len ceil32(_818)]
        if ceil32(_818) > _818:
            mem[_357 + stor14.length.field_1 + _586 + _818 + 101] = 0
        return 32, mem[_357 + stor14.length.field_1 + _586 + 69 len ceil32(_818) + 32]
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor14.length):
        mem[mem[64] + 32] = Mask(248, 8, stor14.length)
        _395 = mem[96]
        mem[mem[64] + stor14.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_357 + stor14.length.field_1 + _395 + 32] = '.json'
        if ceil32(_395) <= _395:
            _605 = mem[64]
            mem[64] = _357 + stor14.length.field_1 + _395 + 37
            mem[_357 + stor14.length.field_1 + _395 + 37] = 32
            _638 = mem[_605]
            mem[_357 + stor14.length.field_1 + _395 + 69] = mem[_605]
            mem[_357 + stor14.length.field_1 + _395 + 101 len ceil32(_638)] = mem[_605 + 32 len ceil32(_638)]
            if ceil32(_638) > _638:
                mem[_357 + stor14.length.field_1 + _395 + _638 + 101] = 0
            return 32, mem[_357 + stor14.length.field_1 + _395 + 69 len ceil32(_638) + 32]
        _621 = mem[64]
        mem[64] = _357 + stor14.length.field_1 + _395 + 37
        mem[_357 + stor14.length.field_1 + _395 + 37] = 32
        _646 = mem[_621]
        mem[_357 + stor14.length.field_1 + _395 + 69] = mem[_621]
        mem[_357 + stor14.length.field_1 + _395 + 101 len ceil32(_646)] = mem[_621 + 32 len ceil32(_646)]
        if ceil32(_646) > _646:
            mem[_357 + stor14.length.field_1 + _395 + _646 + 101] = 0
        return 32, mem[_357 + stor14.length.field_1 + _395 + 69 len ceil32(_646) + 32]
    if bool(stor14.length) != 1:
        _397 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_397] = '.json'
        if ceil32(_397) <= _397:
            _607 = mem[64]
            mem[64] = _397 + 5
            mem[_397 + 5] = 32
            _639 = mem[_607]
            mem[_397 + 37] = mem[_607]
            mem[_397 + 69 len ceil32(_639)] = mem[_607 + 32 len ceil32(_639)]
            if ceil32(_639) > _639:
                mem[_397 + _639 + 69] = 0
            return 32, mem[_397 + 37 len ceil32(_639) + 32]
        _623 = mem[64]
        mem[64] = _397 + 5
        mem[_397 + 5] = 32
        _647 = mem[_623]
        mem[_397 + 37] = mem[_623]
        mem[_397 + 69 len ceil32(_647)] = mem[_623 + 32 len ceil32(_647)]
        if ceil32(_647) > _647:
            mem[_397 + _647 + 69] = 0
        return 32, mem[_397 + 37 len ceil32(_647) + 32]
    mem[0] = 14
    idx = 0
    s = 0
    while idx < stor14.length.field_1:
        mem[_357 + idx + 32] = stor14[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _587 = mem[96]
    mem[_357 + stor14.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_357 + stor14.length.field_1 + _587 + 32] = '.json'
    if ceil32(_587) <= _587:
        _799 = mem[64]
        mem[64] = _357 + stor14.length.field_1 + _587 + 37
        mem[_357 + stor14.length.field_1 + _587 + 37] = 32
        _815 = mem[_799]
        mem[_357 + stor14.length.field_1 + _587 + 69] = mem[_799]
        mem[_357 + stor14.length.field_1 + _587 + 101 len ceil32(_815)] = mem[_799 + 32 len ceil32(_815)]
        if ceil32(_815) > _815:
            mem[_357 + stor14.length.field_1 + _587 + _815 + 101] = 0
        return 32, mem[_357 + stor14.length.field_1 + _587 + 69 len ceil32(_815) + 32]
    _807 = mem[64]
    mem[64] = _357 + stor14.length.field_1 + _587 + 37
    mem[_357 + stor14.length.field_1 + _587 + 37] = 32
    _819 = mem[_807]
    mem[_357 + stor14.length.field_1 + _587 + 69] = mem[_807]
    mem[_357 + stor14.length.field_1 + _587 + 101 len ceil32(_819)] = mem[_807 + 32 len ceil32(_819)]
    if ceil32(_819) > _819:
        mem[_357 + stor14.length.field_1 + _587 + _819 + 101] = 0
    return 32, mem[_357 + stor14.length.field_1 + _587 + 69 len ceil32(_819) + 32]
}



}
