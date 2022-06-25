contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const MAX_ELEMENTS = 10000

const MAX_MINTABLE = 20


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
uint256 sub_e574609e;
uint256 tokenPrimaryPrice;
uint256 mintedTotalCost;
array of struct stor10;
uint256 sub_268f8f77;
uint256 startMintTime;
array of struct userCollections;
uint256 stor15;
mapping of uint256 stor16;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function getTokenPrimaryPrice() {
    return tokenPrimaryPrice
}

function totalSupply() {
    return sub_e574609e
}

function sub_268f8f77(?) {
    return sub_268f8f77
}

function tokenPrimaryPrice() {
    return tokenPrimaryPrice
}

function userCollections(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < userCollections[arg1].field_0
    return userCollections[arg1][arg2].field_0
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

function startMintTime() {
    return startMintTime
}

function owner() {
    return owner
}

function mintedTotalCost() {
    return mintedTotalCost
}

function sub_e574609e(?) {
    return sub_e574609e
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_4f597414(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startMintTime = arg1
}

function setReflection(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_268f8f77 = arg1
}

function setTokenPrimaryPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenPrimaryPrice = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function withdrawFunds() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if owner != msg.sender:
        revert with 0, 'not owner'
    call msg.sender with:
       value mintedTotalCost wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mintedTotalCost = 0
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

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function withdrawStuckMoney(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < mintedTotalCost:
        revert with 'NH{q', 17
    if eth.balance(this.address) - mintedTotalCost < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'No stuck money or the withdrawAmount you want is too much'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function getUserCollections(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userCollections[address(arg1)].field_0:
        mem[128] = userCollections[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * userCollections[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = userCollections[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=userCollections[address(arg1)].field_0, data=mem[128 len 32 * userCollections[address(arg1)].field_0])
    mem[(32 * userCollections[address(arg1)].field_0) + 128] = 32
    mem[(32 * userCollections[address(arg1)].field_0) + 160] = userCollections[address(arg1)].field_0
    mem[(32 * userCollections[address(arg1)].field_0) + 192 len 32 * userCollections[address(arg1)].field_0] = mem[128 len 32 * userCollections[address(arg1)].field_0]
    return memory
      from (32 * userCollections[address(arg1)].field_0) + 128
       len (96 * userCollections[address(arg1)].field_0) + 64
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor10[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10.length = 0
            idx = 0
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor10[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10.length = 0
            idx = 0
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function viewUserReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != owner:
        if userCollections[address(arg1)].field_0:
            mem[128] = userCollections[address(arg1)].field_0
            idx = 128
            s = 0
            while (32 * userCollections[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = userCollections[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        idx = 0
        s = 0
        s = 0
        while idx < userCollections[address(arg1)].field_0:
            if idx >= userCollections[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 16
            if stor15 < stor16[mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            if stor15 - stor16[mem[(32 * idx) + 128]] <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor15 - stor16[mem[(32 * idx) + 128]]
                s = s
                continue 
            if s > -stor15 + stor16[mem[(32 * idx) + 128]] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor15 - stor16[mem[(32 * idx) + 128]]
            s = s + stor15 - stor16[mem[(32 * idx) + 128]]
            continue 
    else:
        if 0 > -mintedTotalCost - 1:
            revert with 'NH{q', 17
        if userCollections[address(arg1)].field_0:
            mem[128] = userCollections[address(arg1)].field_0
            idx = 128
            s = 0
            while (32 * userCollections[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = userCollections[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        idx = 0
        s = 0
        s = mintedTotalCost
        while idx < userCollections[address(arg1)].field_0:
            if idx >= userCollections[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 16
            if stor15 < stor16[mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            if stor15 - stor16[mem[(32 * idx) + 128]] <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor15 - stor16[mem[(32 * idx) + 128]]
                s = s
                continue 
            if s > -stor15 + stor16[mem[(32 * idx) + 128]] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor15 - stor16[mem[(32 * idx) + 128]]
            s = s + stor15 - stor16[mem[(32 * idx) + 128]]
            continue 
    return s
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    idx = 0
    while idx < userCollections[address(arg1)].field_0:
        if idx >= userCollections[address(arg1)].field_0:
            revert with 'NH{q', 50
        if userCollections[address(arg1)][idx].field_0 == arg3:
            if userCollections[address(arg1)].field_0 < 1:
                revert with 'NH{q', 17
            if userCollections[address(arg1)].field_0 - 1 >= userCollections[address(arg1)].field_0:
                revert with 'NH{q', 50
            if idx >= userCollections[address(arg1)].field_0:
                revert with 'NH{q', 50
            userCollections[address(arg1)][idx].field_0 = userCollections[address(arg1)][userCollections[address(arg1)].field_0].field_0
            if not userCollections[address(arg1)].field_0:
                revert with 'NH{q', 49
            userCollections[address(arg1)][userCollections[address(arg1)].field_0].field_0 = 0
            userCollections[address(arg1)].field_0--
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 14
        idx = idx + 1
        continue 
    userCollections[address(arg2)].field_0++
    userCollections[address(arg2)][userCollections[address(arg2)].field_0].field_0 = arg3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
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
    idx = 0
    while idx < userCollections[address(arg1)].field_0:
        if idx >= userCollections[address(arg1)].field_0:
            revert with 'NH{q', 50
        if userCollections[address(arg1)][idx].field_0 == arg3:
            if userCollections[address(arg1)].field_0 < 1:
                revert with 'NH{q', 17
            if userCollections[address(arg1)].field_0 - 1 >= userCollections[address(arg1)].field_0:
                revert with 'NH{q', 50
            if idx >= userCollections[address(arg1)].field_0:
                revert with 'NH{q', 50
            userCollections[address(arg1)][idx].field_0 = userCollections[address(arg1)][userCollections[address(arg1)].field_0].field_0
            if not userCollections[address(arg1)].field_0:
                revert with 'NH{q', 49
            userCollections[address(arg1)][userCollections[address(arg1)].field_0].field_0 = 0
            userCollections[address(arg1)].field_0--
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 14
        idx = idx + 1
        continue 
    userCollections[address(arg2)].field_0++
    userCollections[address(arg2)][userCollections[address(arg2)].field_0].field_0 = arg3
    if ext_code.size(arg2) > 0:
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
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

function baseURI() {
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor10.length):
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                mem[128] = 256 * stor10.length.field_8
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                mem[128] = 256 * stor10.length.field_8
        mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
        if ceil32(stor10.length.field_1) > stor10.length.field_1:
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
    if ceil32(stor10.length.field_1) > stor10.length.field_1:
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
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
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
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
    idx = 0
    while idx < userCollections[address(arg1)].field_0:
        if idx >= userCollections[address(arg1)].field_0:
            revert with 'NH{q', 50
        if userCollections[address(arg1)][idx].field_0 == arg3:
            if userCollections[address(arg1)].field_0 < 1:
                revert with 'NH{q', 17
            if userCollections[address(arg1)].field_0 - 1 >= userCollections[address(arg1)].field_0:
                revert with 'NH{q', 50
            if idx >= userCollections[address(arg1)].field_0:
                revert with 'NH{q', 50
            userCollections[address(arg1)][idx].field_0 = userCollections[address(arg1)][userCollections[address(arg1)].field_0].field_0
            if not userCollections[address(arg1)].field_0:
                revert with 'NH{q', 49
            userCollections[address(arg1)][userCollections[address(arg1)].field_0].field_0 = 0
            userCollections[address(arg1)].field_0--
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 14
        idx = idx + 1
        continue 
    userCollections[address(arg2)].field_0++
    userCollections[address(arg2)][userCollections[address(arg2)].field_0].field_0 = arg3
    if ext_code.size(arg2) > 0:
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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

function mintFree(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require msg.sender
    if arg1 > -sub_e574609e - 1:
        revert with 'NH{q', 17
    if arg1 + sub_e574609e > 10000:
        revert with 0, 'Max limit'
    if sub_e574609e > 10000:
        revert with 0, 'Sold'
    if arg1 > 20:
        revert with 0, 'Exceeds number'
    idx = 0
    while idx < arg1:
        if sub_e574609e == -1:
            revert with 'NH{q', 17
        sub_e574609e++
        mem[0] = sub_e574609e
        mem[32] = 2
        if not sub_e574609e:
            _29 = mem[64]
            mem[64] = mem[64] + 64
            mem[_29] = 1
            mem[_29 + 32] = '0'
            if ownerOf[stor7]:
                _30 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 1
                idx = 0
                while idx < 1:
                    mem[_30 + idx + 68] = mem[_29 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_30 + 69] = 0
                revert with memory
                  from mem[64]
                   len _30 + -mem[64] + 100
        else:
            t = 0
            s = sub_e574609e
            while s:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 'NH{q', 65
            _48 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                u = t
                s = sub_e574609e
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[_48]:
                        revert with 'NH{q', 50
                    mem[u + _48 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                if ownerOf[stor7]:
                    _87 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _92 = mem[_48]
                    mem[mem[64] + 36] = mem[_48]
                    idx = 0
                    while idx < _92:
                        mem[_87 + idx + 68] = mem[_48 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_92) > _92:
                        mem[_87 + _92 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _87 + ceil32(_92) + -mem[64] + 68
            else:
                mem[_48 + 32 len t] = call.data[calldata.size len t]
                u = t
                s = sub_e574609e
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[_48]:
                        revert with 'NH{q', 50
                    mem[u + _48 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                if ownerOf[stor7]:
                    _88 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _94 = mem[_48]
                    mem[mem[64] + 36] = mem[_48]
                    idx = 0
                    while idx < _94:
                        mem[_88 + idx + 68] = mem[_48 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_94) > _94:
                        mem[_88 + _94 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _88 + ceil32(_94) + -mem[64] + 68
        ('iszero', ('stor', ('map', ('stor', ('name', 'stor7', 7)), ('name', 'ownerOf', 2))))
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor7]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        ownerOf[stor7] = msg.sender
        emit Transfer(0, msg.sender, sub_e574609e);
        userCollections[address(msg.sender)].field_0++
        userCollections[address(msg.sender)][userCollections[address(msg.sender)].field_0].field_0 = sub_e574609e
        mem[0] = sub_e574609e
        mem[32] = 16
        stor16[stor7] = stor15
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender
    if tokenPrimaryPrice and arg1 > -1 / tokenPrimaryPrice:
        revert with 'NH{q', 17
    if msg.value < tokenPrimaryPrice * arg1:
        revert with 0, 'Low Funds'
    if arg1 > -sub_e574609e - 1:
        revert with 'NH{q', 17
    if arg1 + sub_e574609e > 10000:
        revert with 0, 'Max limit'
    if sub_e574609e > 10000:
        revert with 0, 'Sold'
    if arg1 > 20:
        revert with 0, 'Exceeds number'
    if startMintTime > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mint will start on 2022-02-22 14:22 UTC'
    if 10^6 < sub_268f8f77:
        revert with 'NH{q', 17
    if msg.value and -sub_268f8f77 + 10^6 > -1 / msg.value:
        revert with 'NH{q', 17
    if tokenPrimaryPrice and sub_268f8f77 > -1 / tokenPrimaryPrice:
        revert with 'NH{q', 17
    if mintedTotalCost > -((10^6 * msg.value) - (sub_268f8f77 * msg.value) / 10^6) - 1:
        revert with 'NH{q', 17
    mintedTotalCost += (10^6 * msg.value) - (sub_268f8f77 * msg.value) / 10^6
    idx = 0
    while idx < arg1:
        if sub_e574609e == -1:
            revert with 'NH{q', 17
        sub_e574609e++
        mem[0] = sub_e574609e
        mem[32] = 2
        if not sub_e574609e:
            _31 = mem[64]
            mem[64] = mem[64] + 64
            mem[_31] = 1
            mem[_31 + 32] = '0'
            if ownerOf[stor7]:
                _32 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 1
                idx = 0
                while idx < 1:
                    mem[_32 + idx + 68] = mem[_31 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_32 + 69] = 0
                revert with memory
                  from mem[64]
                   len _32 + -mem[64] + 100
        else:
            t = 0
            s = sub_e574609e
            while s:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 'NH{q', 65
            _50 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                u = t
                s = sub_e574609e
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[_50]:
                        revert with 'NH{q', 50
                    mem[u + _50 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                if ownerOf[stor7]:
                    _89 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _94 = mem[_50]
                    mem[mem[64] + 36] = mem[_50]
                    idx = 0
                    while idx < _94:
                        mem[_89 + idx + 68] = mem[_50 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_94) > _94:
                        mem[_89 + _94 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _89 + ceil32(_94) + -mem[64] + 68
            else:
                mem[_50 + 32 len t] = call.data[calldata.size len t]
                u = t
                s = sub_e574609e
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[_50]:
                        revert with 'NH{q', 50
                    mem[u + _50 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                if ownerOf[stor7]:
                    _90 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _96 = mem[_50]
                    mem[mem[64] + 36] = mem[_50]
                    idx = 0
                    while idx < _96:
                        mem[_90 + idx + 68] = mem[_50 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_96) > _96:
                        mem[_90 + _96 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _90 + ceil32(_96) + -mem[64] + 68
        ('iszero', ('stor', ('map', ('stor', ('name', 'stor7', 7)), ('name', 'ownerOf', 2))))
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor7]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        ownerOf[stor7] = msg.sender
        emit Transfer(0, msg.sender, sub_e574609e);
        userCollections[address(msg.sender)].field_0++
        userCollections[address(msg.sender)][userCollections[address(msg.sender)].field_0].field_0 = sub_e574609e
        mem[0] = sub_e574609e
        mem[32] = 16
        stor16[stor7] = stor15
        if not sub_e574609e:
            revert with 'NH{q', 18
        if stor15 > -(tokenPrimaryPrice * sub_268f8f77 / 10^6 / sub_e574609e) - 1:
            revert with 'NH{q', 17
        stor15 += tokenPrimaryPrice * sub_268f8f77 / 10^6 / sub_e574609e
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function claimUserReward() {
    if owner != msg.sender:
        if userCollections[address(msg.sender)].field_0:
            mem[128] = userCollections[address(msg.sender)].field_0
            idx = 128
            s = 0
            while (32 * userCollections[address(msg.sender)].field_0) + 96 > idx:
                mem[idx + 32] = userCollections[address(msg.sender)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        idx = 0
        s = 0
        s = 0
        while idx < userCollections[address(msg.sender)].field_0:
            if idx >= userCollections[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 16
            if stor15 < stor16[mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            if stor15 - stor16[mem[(32 * idx) + 128]] <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor15 - stor16[mem[(32 * idx) + 128]]
                s = s
                continue 
            if s > -stor15 + stor16[mem[(32 * idx) + 128]] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor15 - stor16[mem[(32 * idx) + 128]]
            s = s + stor15 - stor16[mem[(32 * idx) + 128]]
            continue 
    else:
        if 0 > -mintedTotalCost - 1:
            revert with 'NH{q', 17
        if userCollections[address(msg.sender)].field_0:
            mem[128] = userCollections[address(msg.sender)].field_0
            idx = 128
            s = 0
            while (32 * userCollections[address(msg.sender)].field_0) + 96 > idx:
                mem[idx + 32] = userCollections[address(msg.sender)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        idx = 0
        s = 0
        s = mintedTotalCost
        while idx < userCollections[address(msg.sender)].field_0:
            if idx >= userCollections[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 16
            if stor15 < stor16[mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            if stor15 - stor16[mem[(32 * idx) + 128]] <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor15 - stor16[mem[(32 * idx) + 128]]
                s = s
                continue 
            if s > -stor15 + stor16[mem[(32 * idx) + 128]] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor15 - stor16[mem[(32 * idx) + 128]]
            s = s + stor15 - stor16[mem[(32 * idx) + 128]]
            continue 
    if s > 0:
        if owner != msg.sender:
            mem[(32 * userCollections[address(msg.sender)].field_0) + 128] = userCollections[address(msg.sender)].field_0
            if userCollections[address(msg.sender)].field_0:
                mem[(32 * userCollections[address(msg.sender)].field_0) + 160] = userCollections[address(msg.sender)].field_0
                idx = (32 * userCollections[address(msg.sender)].field_0) + 160
                s = 0
                while (64 * userCollections[address(msg.sender)].field_0) + 128 > idx:
                    mem[idx + 32] = userCollections[address(msg.sender)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            idx = 0
            s = 0
            s = 0
            while idx < userCollections[address(msg.sender)].field_0:
                if idx >= userCollections[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + (32 * userCollections[address(msg.sender)].field_0) + 160]
                mem[32] = 16
                if stor15 < stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]]:
                    revert with 'NH{q', 17
                if stor15 - stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]] <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor15 - stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]]
                    s = s
                    continue 
                if s > -stor15 + stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor15 - stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]]
                s = s + stor15 - stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]]
                continue 
        else:
            if 0 > -mintedTotalCost - 1:
                revert with 'NH{q', 17
            mem[(32 * userCollections[address(msg.sender)].field_0) + 128] = userCollections[address(msg.sender)].field_0
            if userCollections[address(msg.sender)].field_0:
                mem[(32 * userCollections[address(msg.sender)].field_0) + 160] = userCollections[address(msg.sender)].field_0
                idx = (32 * userCollections[address(msg.sender)].field_0) + 160
                s = 0
                while (64 * userCollections[address(msg.sender)].field_0) + 128 > idx:
                    mem[idx + 32] = userCollections[address(msg.sender)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            idx = 0
            s = 0
            s = mintedTotalCost
            while idx < userCollections[address(msg.sender)].field_0:
                if idx >= userCollections[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + (32 * userCollections[address(msg.sender)].field_0) + 160]
                mem[32] = 16
                if stor15 < stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]]:
                    revert with 'NH{q', 17
                if stor15 - stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]] <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor15 - stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]]
                    s = s
                    continue 
                if s > -stor15 + stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor15 - stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]]
                s = s + stor15 - stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]]
                continue 
    else:
        if owner != msg.sender:
            revert with 0, 'Reward is 0.'
        if 0 > -mintedTotalCost - 1:
            revert with 'NH{q', 17
        mem[(32 * userCollections[address(msg.sender)].field_0) + 128] = userCollections[address(msg.sender)].field_0
        if userCollections[address(msg.sender)].field_0:
            mem[(32 * userCollections[address(msg.sender)].field_0) + 160] = userCollections[address(msg.sender)].field_0
            idx = (32 * userCollections[address(msg.sender)].field_0) + 160
            s = 0
            while (64 * userCollections[address(msg.sender)].field_0) + 128 > idx:
                mem[idx + 32] = userCollections[address(msg.sender)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        idx = 0
        s = 0
        s = mintedTotalCost
        while idx < userCollections[address(msg.sender)].field_0:
            if idx >= userCollections[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + (32 * userCollections[address(msg.sender)].field_0) + 160]
            mem[32] = 16
            if stor15 < stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]]:
                revert with 'NH{q', 17
            if stor15 - stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]] <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor15 - stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]]
                s = s
                continue 
            if s > -stor15 + stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor15 - stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]]
            s = s + stor15 - stor16[mem[(32 * idx) + (32 * stor14[address(msg.sender)].field_0) + 160]]
            continue 
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if userCollections[address(msg.sender)].field_0:
        mem[(64 * userCollections[address(msg.sender)].field_0) + 192] = userCollections[address(msg.sender)].field_0
        idx = (64 * userCollections[address(msg.sender)].field_0) + 192
        s = 0
        while (98 * userCollections[address(msg.sender)].field_0) + 160 > idx:
            mem[idx + 32] = userCollections[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    s = 0
    while idx < userCollections[address(msg.sender)].field_0:
        if idx >= userCollections[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + (64 * userCollections[address(msg.sender)].field_0) + 192]
        mem[32] = 16
        if stor15 < stor16[mem[(32 * idx) + (64 * stor14[address(msg.sender)].field_0) + 192]]:
            revert with 'NH{q', 17
        if stor15 - stor16[mem[(32 * idx) + (64 * stor14[address(msg.sender)].field_0) + 192]] > 0:
            if idx >= userCollections[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + (64 * userCollections[address(msg.sender)].field_0) + 192]
            mem[32] = 16
            if stor16[mem[(32 * idx) + (64 * stor14[address(msg.sender)].field_0) + 192]] > -stor15 + stor16[mem[(32 * idx) + (64 * stor14[address(msg.sender)].field_0) + 192]] - 1:
                revert with 'NH{q', 17
            stor16[mem[(32 * idx) + (64 * stor14[address(msg.sender)].field_0) + 192]] = stor15
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = stor15 - stor16[mem[(32 * idx) + (64 * stor14[address(msg.sender)].field_0) + 192]]
        continue 
}



}
