contract main {




// =====================  Runtime code  =====================


#
#  - sub_0b1f904d(?)
#  - sub_c29a7224(?)
#  - buy(uint256 arg1)
#
const getBalance = eth.balance(this.address)


address owner;
array of struct stor1;
array of struct stor2;
array of uint256 tokenByIndex;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of uint256 sub_865ed330;
mapping of address approved;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of struct stor11;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor13;
mapping of uint256 stor14;
mapping of uint256 stor15;
array of struct stor16;
mapping of uint8 stor17;
mapping of uint8 stor18;
array of struct stor19;
mapping of uint256 stor20;
address sub_a7756d14Address;
uint256 stor22;
uint256 stor23;
address sub_ed14834fAddress;
mapping of uint8 stor25;
mapping of uint256 stor26;
mapping of address stor27;
mapping of uint256 royalty;
mapping of address stor29;
array of struct stor30;
mapping of uint256 sub_fa444554;
uint256 stor32;
uint256 platformFee;
address sub_4a8246c0Address;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function getRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    return royalty[arg1]
}

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[address(arg1)])
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_4a8246c0(?) {
    return sub_4a8246c0Address
}

function exists(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(ownerOf[arg1])
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function getPlatformFee() {
    return platformFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function isForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor25[arg1])
}

function sub_865ed330(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return sub_865ed330[arg1][address(arg2)]
}

function owner() {
    return owner
}

function sub_a7756d14(?) {
    return sub_a7756d14Address
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor8[address(arg1)][address(arg2)])
}

function sub_ed14834f(?) {
    return sub_ed14834fAddress
}

function sub_fa444554(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_fa444554[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_2febf29a(?) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'isn't exist'
    return stor26[arg1], stor27[arg1]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_e1a4249f(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23 = arg1
    stor22 = arg2
}

function setPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4a8246c0Address = arg1
}

function setPlatformFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0, 'Royalty > 10%'
    platformFee = arg1
}

function sub_c815093e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if sub_4a8246c0Address != msg.sender:
        revert with 0, 'Isn`t Pool'
    sub_fa444554[address(arg1)][address(arg2)] = 0
}

function sub_aac58f27(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a7756d14Address = address(arg1)
    stor9[address(arg1)] = 1
    emit AdminSet(address(arg1), 1);
}

function setAdmin(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = uint8(arg2)
    emit AdminSet(address(arg1), arg2);
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPlatformFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor9[msg.sender]:
        if owner != msg.sender:
            if sub_a7756d14Address != msg.sender:
                revert with 0, 'Only admin or owner or launchpad'
    sub_ed14834fAddress = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor8[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(stor27[arg2])
    staticcall stor27[arg2].0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function pause(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'isn't exist'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'isn`t owner of token!'
    stor25[arg1] = 0
    emit Paused(arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function resume(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'isn't exist'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'isn`t owner of token!'
    stor25[arg1] = 1
    emit 0xc18d5935: arg1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not eth.balance(this.address):
        revert with 0, 'Balance is null'
    if eth.balance(this.address) < arg2:
        revert with 0, 'Balance < amount'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPriceAndSell(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not ownerOf[arg1]:
        revert with 0, 'isn't exist'
    if stor17[arg1]:
        revert with 0, 'is root'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'isn`t owner of token'
    stor26[arg1] = arg2
    stor25[arg1] = 1
    emit 0xc18d5935: arg1
    emit 0xda3b4bb7: arg1, arg2, stor27[arg1], msg.sender
}

function sub_0364be33(?) {
    require calldata.size - 4 >= 32
    if stor16[arg1].field_0:
        mem[128] = stor16[arg1].field_0
        idx = 128
        s = 0
        while (32 * stor16[arg1].field_0) + 96 > idx:
            mem[idx + 32] = stor16[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor16[arg1].field_0, data=mem[128 len 32 * stor16[arg1].field_0])
    mem[(32 * stor16[arg1].field_0) + 128] = 32
    mem[(32 * stor16[arg1].field_0) + 160] = stor16[arg1].field_0
    mem[(32 * stor16[arg1].field_0) + 192 len 32 * stor16[arg1].field_0] = mem[128 len 32 * stor16[arg1].field_0]
    return memory
      from (32 * stor16[arg1].field_0) + 128
       len (96 * stor16[arg1].field_0) + 64
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor8[stor4[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_d1bbffc9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor30[address(arg1)].field_0:
        mem[128] = stor30[address(arg1)].field_0
        if (32 * stor30[address(arg1)].field_0) + 32 > 64:
            mem[160] = stor30[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * stor30[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = stor30[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor30[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor30[address(arg1)].field_0) + 160] = stor30[address(arg1)].field_0
    mem[(32 * stor30[address(arg1)].field_0) + 192 len 32 * stor30[address(arg1)].field_0] = mem[128 len 32 * stor30[address(arg1)].field_0]
    return memory
      from (32 * stor30[address(arg1)].field_0) + 128
       len (96 * stor30[address(arg1)].field_0) + 64
}

function withdraw(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token address isn`t a contract address'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'balance < 0'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e9ba0fe5(?) {
    require calldata.size - 4 >= 32
    mem[64] = (32 * stor19[arg1].field_0) + 128
    mem[96] = stor19[arg1].field_0
    if not stor19[arg1].field_0:
        mem[(32 * stor19[arg1].field_0) + 128] = 32
        mem[(32 * stor19[arg1].field_0) + 160] = stor19[arg1].field_0
        idx = 0
        s = (32 * stor19[arg1].field_0) + 192
        t = 128
        while idx < stor19[arg1].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor19[arg1].field_0) + 128
           len (96 * stor19[arg1].field_0) + 64
    mem[128] = stor19[arg1].field_0
    idx = 128
    s = 0
    while (32 * stor19[arg1].field_0) + 96 > idx:
        mem[idx + 32] = stor19[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor19[arg1].field_0) + 128] = 32
    mem[(32 * stor19[arg1].field_0) + 160] = stor19[arg1].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor19[arg1].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor19[arg1].field_0) + -mem[64] + 192
}

function sub_7af68a36(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not ownerOf[arg2]:
        revert with 0, 'isn't exist'
    if not stor9[msg.sender]:
        if owner != msg.sender:
            if sub_a7756d14Address != msg.sender:
                revert with 0, 'Only admin or owner or launchpad'
    if not stor17[arg2]:
        revert with 0, 'isn`t root'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if address(arg1):
        if not address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[address(arg1)] < 1:
            revert with 0, 17
        if balanceOf[address(arg1)] - 1 != stor13[arg2]:
            tokenOfOwnerByIndex[address(arg1)][stor13[arg2]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
            stor13[stor12[address(arg1)][stor5[address(arg1)] - 1]] = stor13[arg2]
        stor13[arg2] = 0
        tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor14[arg2] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor14[arg2]] = tokenByIndex[tokenByIndex.length]
    stor14[stor3[stor3.length]] = stor14[arg2]
    stor14[arg2] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if not balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn balance exceeds balance'
    balanceOf[address(arg1)]--
    ownerOf[arg2] = 0
    emit Transfer(address(arg1), 0, arg2);
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'isn't exist'
    if stor17[arg1]:
        revert with 0, 'is root'
    if stor18[arg1]:
        revert with 0, 'is fragments'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'isn`t owner of token'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if msg.sender:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[address(msg.sender)] < 1:
            revert with 0, 17
        if balanceOf[address(msg.sender)] - 1 != stor13[arg1]:
            tokenOfOwnerByIndex[address(msg.sender)][stor13[arg1]] = tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)] - 1]
            stor13[stor12[address(msg.sender)][stor5[address(msg.sender)] - 1]] = stor13[arg1]
        stor13[arg1] = 0
        tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor14[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor14[arg1]] = tokenByIndex[tokenByIndex.length]
    stor14[stor3[stor3.length]] = stor14[arg1]
    stor14[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if not balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn balance exceeds balance'
    balanceOf[address(msg.sender)]--
    ownerOf[arg1] = 0
    emit Transfer(msg.sender, 0, arg1);
}

function getTokenInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor11[arg1].field_0:
        if stor11[arg1].field_0 == uint255(stor11[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor11[arg1].field_0:
            if stor11[arg1].field_0 == uint255(stor11[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor11[arg1].field_0):
                if 31 >= uint255(stor11[arg1].field_0) * 0.5:
                    mem[768] = 256 * stor11[arg1].field_8
                else:
                    mem[768] = stor11[arg1].field_0
                    idx = 768
                    s = 0
                    while (uint255(stor11[arg1].field_0) * 0.5) + 736 > idx:
                        mem[idx + 32] = stor11[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
                revert with 0, 34
            if stor11[arg1].field_1:
                if 31 >= stor11[arg1].field_1:
                    mem[768] = 256 * stor11[arg1].field_8
                else:
                    mem[768] = stor11[arg1].field_0
                    idx = 768
                    s = 0
                    while stor11[arg1].field_1 + 736 > idx:
                        mem[idx + 32] = stor11[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, arg1, 
               stor15[arg1],
               stor26[arg1],
               stor27[arg1],
               ownerOf[arg1],
               stor29[arg1],
               320,
               bool(stor25[arg1]),
               bool(stor17[arg1]),
               bool(stor18[arg1]),
               2 * Mask(256, -1, stor11[arg1].field_0),
               mem[768 len ceil32(uint255(stor11[arg1].field_0) * 0.5)]
    if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
        revert with 0, 34
    if stor11[arg1].field_0:
        if stor11[arg1].field_0 == uint255(stor11[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor11[arg1].field_0):
            if 31 >= uint255(stor11[arg1].field_0) * 0.5:
                mem[768] = 256 * stor11[arg1].field_8
            else:
                mem[768] = stor11[arg1].field_0
                idx = 768
                s = 0
                while (uint255(stor11[arg1].field_0) * 0.5) + 736 > idx:
                    mem[idx + 32] = stor11[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
            revert with 0, 34
        if stor11[arg1].field_1:
            if 31 >= stor11[arg1].field_1:
                mem[768] = 256 * stor11[arg1].field_8
            else:
                mem[768] = stor11[arg1].field_0
                idx = 768
                s = 0
                while stor11[arg1].field_1 + 736 > idx:
                    mem[idx + 32] = stor11[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, arg1, 
           stor15[arg1],
           stor26[arg1],
           stor27[arg1],
           ownerOf[arg1],
           stor29[arg1],
           320,
           bool(stor25[arg1]),
           bool(stor17[arg1]),
           bool(stor18[arg1]),
           stor11[arg1].field_0,
           mem[768 len ceil32(stor11[arg1].field_1)]
}

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
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

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    if stor11[arg1].field_0:
        if stor11[arg1].field_0 == uint255(stor11[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor11[arg1].field_0:
            if stor11[arg1].field_0 == uint255(stor11[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor11[arg1].field_0):
                if 31 < uint255(stor11[arg1].field_0) * 0.5:
                    mem[128] = stor11[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor11[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11[arg1].field_0), data=mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor11[arg1].field_8
        else:
            if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
                revert with 0, 34
            if stor11[arg1].field_1:
                if 31 < stor11[arg1].field_1:
                    mem[128] = stor11[arg1].field_0
                    idx = 128
                    s = 0
                    while stor11[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11[arg1].field_0), data=mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor11[arg1].field_8
        mem[ceil32(uint255(stor11[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor11[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor11[arg1].field_0) * 0.5) > uint255(stor11[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor11[arg1].field_0) * 0.5) + (uint255(stor11[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11[arg1].field_0), data=mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor11[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor11[arg1].field_0) * 0.5)]), 
    if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
        revert with 0, 34
    if stor11[arg1].field_0:
        if stor11[arg1].field_0 == uint255(stor11[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor11[arg1].field_0):
            if 31 < uint255(stor11[arg1].field_0) * 0.5:
                mem[128] = stor11[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor11[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11[arg1].field_0, data=mem[128 len ceil32(stor11[arg1].field_1)])
            mem[128] = 256 * stor11[arg1].field_8
    else:
        if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
            revert with 0, 34
        if stor11[arg1].field_1:
            if 31 < stor11[arg1].field_1:
                mem[128] = stor11[arg1].field_0
                idx = 128
                s = 0
                while stor11[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11[arg1].field_0, data=mem[128 len ceil32(stor11[arg1].field_1)])
            mem[128] = 256 * stor11[arg1].field_8
    mem[ceil32(stor11[arg1].field_1) + 192 len ceil32(stor11[arg1].field_1)] = mem[128 len ceil32(stor11[arg1].field_1)]
    if ceil32(stor11[arg1].field_1) > stor11[arg1].field_1:
        mem[ceil32(stor11[arg1].field_1) + stor11[arg1].field_1 + 192] = 0
    return Array(len=stor11[arg1].field_0, data=mem[128 len ceil32(stor11[arg1].field_1)], mem[(2 * ceil32(stor11[arg1].field_1)) + 192 len 2 * ceil32(stor11[arg1].field_1)]), 
}

function sub_8c98d48e(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg5 == bool(arg5)
    if address(arg2):
        if not ext_code.size(address(arg2)):
            revert with 0, 'Token isn`t a contract address'
    if arg4 > stor22:
        revert with 0, 'Royalty wrong'
    if arg4 < stor23:
        revert with 0, 'Royalty wrong'
    if ext_code.size(msg.sender):
        revert with 0, 'Sender == contr address'
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor32]:
        revert with 0, 'ERC721: token already minted'
    stor14[stor32] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor32
    if address(arg1):
        if address(arg1):
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)]] = stor32
            stor13[stor32] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor14[stor32] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor14[stor32]] = tokenByIndex[tokenByIndex.length]
        stor14[stor3[stor3.length]] = stor14[stor32]
        stor14[stor32] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor32] = address(arg1)
    require ownerOf[stor32]
    if stor11[stor32].field_0:
        if stor11[stor32].field_0 == uint255(stor11[stor32].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            stor11[stor32][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor11[stor32].field_0 = 0
            idx = 0
            while (uint255(stor11[stor32].field_0) * 0.5) + 31 / 32 > idx:
                stor11[stor32][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor11[stor32].field_0 == stor11[stor32].field_1 < 32:
            revert with 0, 34
        if arg3.length:
            stor11[stor32][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor11[stor32].field_0 = 0
            idx = 0
            while stor11[stor32].field_1 + 31 / 32 > idx:
                stor11[stor32][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor15[stor32] = 0
    stor16[0].field_0++
    stor16[0][stor16[0].field_0].field_0 = stor32
    emit Transfer(0, address(arg1), stor32);
    if ext_code.size(address(arg1)):
        require ext_code.size(address(arg1))
        call address(arg1).0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, 0, stor32, 128, 0
        if not ext_call.success:
            if not return_data.size:
                if not arg3.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg3[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    stor27[stor32] = address(arg2)
    royalty[stor32] = arg4
    stor29[stor32] = address(arg1)
    stor30[address(arg1)].field_0++
    stor30[address(arg1)][stor30[address(arg1)].field_0].field_0 = stor32
    if stor9[msg.sender]:
        stor17[stor32] = uint8(bool(arg5))
    else:
        stor17[stor32] = 0
    if stor32 == -1:
        revert with 0, 17
    stor32++
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor8[stor4[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor14[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor13[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor13[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor13[stor12[address(arg1)][stor5[address(arg1)] - 1]] = stor13[arg3]
            stor13[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor13[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor14[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor14[arg3]] = tokenByIndex[tokenByIndex.length]
        stor14[stor3[stor3.length]] = stor14[arg3]
        stor14[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    if stor18[arg3]:
        if not sub_865ed330[stor15[arg3]][address(arg2)]:
            if 1 > !stor19[stor15[arg3]].field_0:
                revert with 0, 17
            stor20[stor15[arg3]][address(arg2)] = stor19[stor15[arg3]].field_0 + 1
            stor19[stor15[arg3]].field_0++
            stor19[stor15[arg3]][stor19[stor15[arg3]].field_0].field_0 = arg2
        if sub_865ed330[stor15[arg3]][address(arg1)] < 1:
            revert with 0, 17
        sub_865ed330[stor15[arg3]][address(arg1)]--
        if not sub_865ed330[stor15[arg3]][address(arg1)]:
            if stor20[stor15[arg3]][address(arg1)] < 1:
                revert with 0, 17
            if stor19[stor15[arg3]].field_0 < 1:
                revert with 0, 17
            if stor20[stor15[arg3]][address(arg1)] - 1 != stor19[stor15[arg3]].field_0 - 1:
                if stor19[stor15[arg3]].field_0 - 1 >= stor19[stor15[arg3]].field_0:
                    revert with 0, 50
                if stor20[stor15[arg3]][address(arg1)] - 1 >= stor19[stor15[arg3]].field_0:
                    revert with 0, 50
                stor19[stor15[arg3]][stor20[stor15[arg3]][address(arg1)]].field_0 = stor19[stor15[arg3]][stor19[stor15[arg3]].field_0].field_0
                if 1 > !(stor20[stor15[arg3]][address(arg1)] - 1):
                    revert with 0, 17
                stor20[stor15[arg3]][stor19[stor15[arg3]][stor19[stor15[arg3]].field_0].field_0] = stor20[stor15[arg3]][address(arg1)]
            stor20[stor15[arg3]][address(arg1)] = 0
            if not stor19[stor15[arg3]].field_0:
                revert with 0, 49
            stor19[stor15[arg3]][stor19[stor15[arg3]].field_0].field_0 = 0
            stor19[stor15[arg3]].field_0--
        if sub_865ed330[stor15[arg3]][address(arg2)] > -2:
            revert with 0, 17
        sub_865ed330[stor15[arg3]][address(arg2)]++
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor8[stor4[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor14[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor13[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor13[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor13[stor12[address(arg1)][stor5[address(arg1)] - 1]] = stor13[arg3]
            stor13[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor13[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor14[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor14[arg3]] = tokenByIndex[tokenByIndex.length]
        stor14[stor3[stor3.length]] = stor14[arg3]
        stor14[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    if stor18[arg3]:
        if not sub_865ed330[stor15[arg3]][address(arg2)]:
            if 1 > !stor19[stor15[arg3]].field_0:
                revert with 0, 17
            stor20[stor15[arg3]][address(arg2)] = stor19[stor15[arg3]].field_0 + 1
            stor19[stor15[arg3]].field_0++
            stor19[stor15[arg3]][stor19[stor15[arg3]].field_0].field_0 = arg2
        if sub_865ed330[stor15[arg3]][address(arg1)] < 1:
            revert with 0, 17
        sub_865ed330[stor15[arg3]][address(arg1)]--
        if not sub_865ed330[stor15[arg3]][address(arg1)]:
            if stor20[stor15[arg3]][address(arg1)] < 1:
                revert with 0, 17
            if stor19[stor15[arg3]].field_0 < 1:
                revert with 0, 17
            if stor20[stor15[arg3]][address(arg1)] - 1 != stor19[stor15[arg3]].field_0 - 1:
                if stor19[stor15[arg3]].field_0 - 1 >= stor19[stor15[arg3]].field_0:
                    revert with 0, 50
                if stor20[stor15[arg3]][address(arg1)] - 1 >= stor19[stor15[arg3]].field_0:
                    revert with 0, 50
                stor19[stor15[arg3]][stor20[stor15[arg3]][address(arg1)]].field_0 = stor19[stor15[arg3]][stor19[stor15[arg3]].field_0].field_0
                if 1 > !(stor20[stor15[arg3]][address(arg1)] - 1):
                    revert with 0, 17
                stor20[stor15[arg3]][stor19[stor15[arg3]][stor19[stor15[arg3]].field_0].field_0] = stor20[stor15[arg3]][address(arg1)]
            stor20[stor15[arg3]][address(arg1)] = 0
            if not stor19[stor15[arg3]].field_0:
                revert with 0, 49
            stor19[stor15[arg3]][stor19[stor15[arg3]].field_0].field_0 = 0
            stor19[stor15[arg3]].field_0--
        if sub_865ed330[stor15[arg3]][address(arg2)] > -2:
            revert with 0, 17
        sub_865ed330[stor15[arg3]][address(arg2)]++
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor8[stor4[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor14[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor13[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor13[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor13[stor12[address(arg1)][stor5[address(arg1)] - 1]] = stor13[arg3]
            stor13[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor13[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor14[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor14[arg3]] = tokenByIndex[tokenByIndex.length]
        stor14[stor3[stor3.length]] = stor14[arg3]
        stor14[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    if stor18[arg3]:
        if not sub_865ed330[stor15[arg3]][address(arg2)]:
            if 1 > !stor19[stor15[arg3]].field_0:
                revert with 0, 17
            stor20[stor15[arg3]][address(arg2)] = stor19[stor15[arg3]].field_0 + 1
            stor19[stor15[arg3]].field_0++
            stor19[stor15[arg3]][stor19[stor15[arg3]].field_0].field_0 = arg2
        if sub_865ed330[stor15[arg3]][address(arg1)] < 1:
            revert with 0, 17
        sub_865ed330[stor15[arg3]][address(arg1)]--
        if not sub_865ed330[stor15[arg3]][address(arg1)]:
            if stor20[stor15[arg3]][address(arg1)] < 1:
                revert with 0, 17
            if stor19[stor15[arg3]].field_0 < 1:
                revert with 0, 17
            if stor20[stor15[arg3]][address(arg1)] - 1 != stor19[stor15[arg3]].field_0 - 1:
                if stor19[stor15[arg3]].field_0 - 1 >= stor19[stor15[arg3]].field_0:
                    revert with 0, 50
                if stor20[stor15[arg3]][address(arg1)] - 1 >= stor19[stor15[arg3]].field_0:
                    revert with 0, 50
                stor19[stor15[arg3]][stor20[stor15[arg3]][address(arg1)]].field_0 = stor19[stor15[arg3]][stor19[stor15[arg3]].field_0].field_0
                if 1 > !(stor20[stor15[arg3]][address(arg1)] - 1):
                    revert with 0, 17
                stor20[stor15[arg3]][stor19[stor15[arg3]][stor19[stor15[arg3]].field_0].field_0] = stor20[stor15[arg3]][address(arg1)]
            stor20[stor15[arg3]][address(arg1)] = 0
            if not stor19[stor15[arg3]].field_0:
                revert with 0, 49
            stor19[stor15[arg3]][stor19[stor15[arg3]].field_0].field_0 = 0
            stor19[stor15[arg3]].field_0--
        if sub_865ed330[stor15[arg3]][address(arg2)] > -2:
            revert with 0, 17
        sub_865ed330[stor15[arg3]][address(arg2)]++
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
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

function buyAndBurn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'isn't exist'
    if stor17[arg1]:
        revert with 0, 'is root'
    if stor18[arg1]:
        revert with 0, 'is fragments'
    if not stor9[msg.sender]:
        if owner != msg.sender:
            if sub_a7756d14Address != msg.sender:
                revert with 0, 'Only admin or owner or launchpad'
    if not stor25[arg1]:
        revert with 0, 'Token not for sale'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] == msg.sender:
        revert with 0, 'already owner of token'
    if ext_code.size(msg.sender):
        revert with 0, 'Sender == contr address'
    if stor26[arg1] and royalty[arg1] > -1 / stor26[arg1]:
        revert with 0, 17
    if stor26[arg1] and platformFee > -1 / stor26[arg1]:
        revert with 0, 17
    if not stor27[arg1]:
        if stor26[arg1] != msg.value:
            revert with 0, 'Value != price!'
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if stor26[arg1] * royalty[arg1] / 10000 > !(stor26[arg1] * platformFee / 10000):
            revert with 0, 17
        if stor26[arg1] < (stor26[arg1] * royalty[arg1] / 10000) + (stor26[arg1] * platformFee / 10000):
            revert with 0, 17
        call ownerOf[arg1] with:
           value stor26[arg1] - (stor26[arg1] * royalty[arg1] / 10000) - (stor26[arg1] * platformFee / 10000) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor29[arg1] with:
           value stor26[arg1] * royalty[arg1] / 10000 wei
             gas 2300 * is_zero(value) wei
        call sub_ed14834fAddress with:
           value stor26[arg1] * platformFee / 10000 wei
             gas 2300 * is_zero(value) wei
        stor25[arg1] = 0
        emit Paused(arg1);
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg1] != ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
        if not ownerOf[arg1]:
            stor14[arg1] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = arg1
        else:
            if ownerOf[arg1] != msg.sender:
                if not ownerOf[arg1]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                if balanceOf[stor4[arg1]] < 1:
                    revert with 0, 17
                if balanceOf[stor4[arg1]] - 1 != stor13[arg1]:
                    tokenOfOwnerByIndex[stor4[arg1]][stor13[arg1]] = tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1]
                    stor13[stor12[stor4[arg1]][stor5[stor4[arg1]] - 1]] = stor13[arg1]
                stor13[arg1] = 0
                tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
        if msg.sender:
            if ownerOf[arg1] != msg.sender:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = arg1
                stor13[arg1] = balanceOf[address(msg.sender)]
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor14[arg1] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor14[arg1]] = tokenByIndex[tokenByIndex.length]
            stor14[stor3[stor3.length]] = stor14[arg1]
            stor14[arg1] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        approved[arg1] = 0
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[arg1], 0, arg1);
        if balanceOf[stor4[arg1]] < 1:
            revert with 0, 17
        balanceOf[stor4[arg1]]--
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        ownerOf[arg1] = msg.sender
        if stor18[arg1]:
            if not sub_865ed330[stor15[arg1]][address(msg.sender)]:
                if 1 > !stor19[stor15[arg1]].field_0:
                    revert with 0, 17
                stor20[stor15[arg1]][address(msg.sender)] = stor19[stor15[arg1]].field_0 + 1
                stor19[stor15[arg1]].field_0++
                stor19[stor15[arg1]][stor19[stor15[arg1]].field_0].field_0 = msg.sender
            if sub_865ed330[stor15[arg1]][stor4[arg1]] < 1:
                revert with 0, 17
            sub_865ed330[stor15[arg1]][stor4[arg1]]--
            if not sub_865ed330[stor15[arg1]][stor4[arg1]]:
                if stor20[stor15[arg1]][stor4[arg1]] < 1:
                    revert with 0, 17
                if stor19[stor15[arg1]].field_0 < 1:
                    revert with 0, 17
                if stor20[stor15[arg1]][stor4[arg1]] - 1 != stor19[stor15[arg1]].field_0 - 1:
                    if stor19[stor15[arg1]].field_0 - 1 >= stor19[stor15[arg1]].field_0:
                        revert with 0, 50
                    if stor20[stor15[arg1]][stor4[arg1]] - 1 >= stor19[stor15[arg1]].field_0:
                        revert with 0, 50
                    stor19[stor15[arg1]][stor20[stor15[arg1]][stor4[arg1]]].field_0 = stor19[stor15[arg1]][stor19[stor15[arg1]].field_0].field_0
                    if 1 > !(stor20[stor15[arg1]][stor4[arg1]] - 1):
                        revert with 0, 17
                    stor20[stor15[arg1]][stor19[stor15[arg1]][stor19[stor15[arg1]].field_0].field_0] = stor20[stor15[arg1]][stor4[arg1]]
                stor20[stor15[arg1]][stor4[arg1]] = 0
                if not stor19[stor15[arg1]].field_0:
                    revert with 0, 49
                stor19[stor15[arg1]][stor19[stor15[arg1]].field_0].field_0 = 0
                stor19[stor15[arg1]].field_0--
            if sub_865ed330[stor15[arg1]][address(msg.sender)] > -2:
                revert with 0, 17
            sub_865ed330[stor15[arg1]][address(msg.sender)]++
        emit Transfer(ownerOf[arg1], msg.sender, arg1);
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
        if msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            if balanceOf[address(msg.sender)] - 1 != stor13[arg1]:
                tokenOfOwnerByIndex[address(msg.sender)][stor13[arg1]] = tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)] - 1]
                stor13[stor12[address(msg.sender)][stor5[address(msg.sender)] - 1]] = stor13[arg1]
            stor13[arg1] = 0
            tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)] - 1] = 0
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor14[arg1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor14[arg1]] = tokenByIndex[tokenByIndex.length]
        stor14[stor3[stor3.length]] = stor14[arg1]
        stor14[arg1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
        if not balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn balance exceeds balance'
        balanceOf[address(msg.sender)]--
        ownerOf[arg1] = 0
        emit Transfer(msg.sender, 0, arg1);
}

function sub_974b61e5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 5
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = balanceOf[address(arg1)]
    mem[64] = (32 * balanceOf[address(arg1)]) + 128
    if not balanceOf[address(arg1)]:
        idx = 0
        while idx < balanceOf[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 12)
            if tokenOfOwnerByIndex[address(arg1)][idx]:
                mem[0] = idx
                _179 = mem[64]
                mem[64] = mem[64] + 320
                mem[_179] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[32] = 15
                mem[_179 + 32] = stor15[stor12[address(arg1)][idx]]
                mem[_179 + 64] = stor26[stor12[address(arg1)][idx]]
                mem[_179 + 96] = stor27[stor12[address(arg1)][idx]]
                mem[_179 + 128] = address(arg1)
                mem[_179 + 160] = stor29[stor12[address(arg1)][idx]]
                mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[32] = 11
                if stor11[stor12[address(arg1)][idx]].field_0:
                    if stor11[stor12[address(arg1)][idx]].field_0 == uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _193 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5) + 32
                    mem[_193] = uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5
                    if stor11[stor12[address(arg1)][idx]].field_0:
                        if stor11[stor12[address(arg1)][idx]].field_0 == uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor11[stor12[address(arg1)][idx]].field_0):
                            if 31 >= uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5:
                                mem[_193 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_8
                            else:
                                mem[_193 + 32] = stor11[stor12[address(arg1)][idx]].field_0
                                s = _193 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 11))
                                while _193 + (uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if stor11[stor12[address(arg1)][idx]].field_0 == stor11[stor12[address(arg1)][idx]].field_1 < 32:
                            revert with 0, 34
                        if stor11[stor12[address(arg1)][idx]].field_1:
                            if 31 >= stor11[stor12[address(arg1)][idx]].field_1:
                                mem[_193 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_8
                            else:
                                mem[_193 + 32] = stor11[stor12[address(arg1)][idx]].field_0
                                s = _193 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 11))
                                while _193 + stor11[stor12[address(arg1)][idx]].field_1 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_179 + 192] = _193
                else:
                    if stor11[stor12[address(arg1)][idx]].field_0 == stor11[stor12[address(arg1)][idx]].field_1 < 32:
                        revert with 0, 34
                    _197 = mem[64]
                    mem[64] = mem[64] + ceil32(stor11[stor12[address(arg1)][idx]].field_1) + 32
                    mem[_197] = stor11[stor12[address(arg1)][idx]].field_1
                    if stor11[stor12[address(arg1)][idx]].field_0:
                        if stor11[stor12[address(arg1)][idx]].field_0 == uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor11[stor12[address(arg1)][idx]].field_0):
                            if 31 >= uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5:
                                mem[_197 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_8
                            else:
                                mem[_197 + 32] = stor11[stor12[address(arg1)][idx]].field_0
                                s = _197 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 11))
                                while _197 + (uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if stor11[stor12[address(arg1)][idx]].field_0 == stor11[stor12[address(arg1)][idx]].field_1 < 32:
                            revert with 0, 34
                        if stor11[stor12[address(arg1)][idx]].field_1:
                            if 31 >= stor11[stor12[address(arg1)][idx]].field_1:
                                mem[_197 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_8
                            else:
                                mem[_197 + 32] = stor11[stor12[address(arg1)][idx]].field_0
                                s = _197 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 11))
                                while _197 + stor11[stor12[address(arg1)][idx]].field_1 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_179 + 192] = _197
                mem[_179 + 224] = bool(stor25[stor12[address(arg1)][idx]])
                mem[_179 + 256] = bool(stor17[stor12[address(arg1)][idx]])
                mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[32] = 18
                mem[_179 + 288] = bool(stor18[stor12[address(arg1)][idx]])
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _179
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _176 = mem[64]
        mem[mem[64]] = 32
        _185 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _185:
            mem[t] = u + -_176 - 64
            _342 = mem[s]
            mem[u] = mem[mem[s]]
            mem[u + 32] = mem[_342 + 32]
            mem[u + 64] = mem[_342 + 64]
            mem[u + 96] = mem[_342 + 108 len 20]
            mem[u + 128] = mem[_342 + 140 len 20]
            mem[u + 160] = mem[_342 + 172 len 20]
            _367 = mem[_342 + 192]
            mem[u + 192] = 320
            _370 = mem[_367]
            mem[u + 320] = mem[_367]
            v = 0
            while v < _370:
                mem[v + u + 352] = mem[_367 + v + 32]
                v = v + 32
                continue 
            if ceil32(_370) > _370:
                mem[u + _370 + 352] = 0
            mem[u + 224] = bool(mem[_342 + 224])
            mem[u + 256] = bool(mem[_342 + 256])
            mem[u + 288] = bool(mem[_342 + 288])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_370) + u + 352
            continue 
    else:
        mem[64] = (32 * balanceOf[address(arg1)]) + 448
        mem[(32 * balanceOf[address(arg1)]) + 128] = 0
        mem[(32 * balanceOf[address(arg1)]) + 160] = 0
        mem[(32 * balanceOf[address(arg1)]) + 192] = 0
        mem[(32 * balanceOf[address(arg1)]) + 224] = 0
        mem[(32 * balanceOf[address(arg1)]) + 256] = 0
        mem[(32 * balanceOf[address(arg1)]) + 288] = 0
        mem[(32 * balanceOf[address(arg1)]) + 320] = 96
        mem[(32 * balanceOf[address(arg1)]) + 352] = 0
        mem[(32 * balanceOf[address(arg1)]) + 384] = 0
        mem[(32 * balanceOf[address(arg1)]) + 416] = 0
        mem[var15001] = (32 * balanceOf[address(arg1)]) + 128
        s = var15001
        idx = var15002
        while idx - 1:
            mem[64] = mem[64] + 320
            mem[(32 * balanceOf[address(arg1)]) + 128] = 0
            mem[(32 * balanceOf[address(arg1)]) + 160] = 0
            mem[(32 * balanceOf[address(arg1)]) + 192] = 0
            mem[(32 * balanceOf[address(arg1)]) + 224] = 0
            mem[(32 * balanceOf[address(arg1)]) + 256] = 0
            mem[(32 * balanceOf[address(arg1)]) + 288] = 0
            mem[(32 * balanceOf[address(arg1)]) + 320] = 96
            mem[(32 * balanceOf[address(arg1)]) + 352] = 0
            mem[(32 * balanceOf[address(arg1)]) + 384] = 0
            mem[(32 * balanceOf[address(arg1)]) + 416] = 0
            mem[s + 32] = (32 * balanceOf[address(arg1)]) + 128
            s = s + 32
            idx = idx - 1
            continue 
        _459 = mem[96]
        idx = 0
        while idx < _459:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 12)
            if tokenOfOwnerByIndex[address(arg1)][idx]:
                mem[0] = idx
                _466 = mem[64]
                mem[64] = mem[64] + 320
                mem[_466] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[32] = 15
                mem[_466 + 32] = stor15[stor12[address(arg1)][idx]]
                mem[_466 + 64] = stor26[stor12[address(arg1)][idx]]
                mem[_466 + 96] = stor27[stor12[address(arg1)][idx]]
                mem[_466 + 128] = address(arg1)
                mem[_466 + 160] = stor29[stor12[address(arg1)][idx]]
                mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[32] = 11
                if stor11[stor12[address(arg1)][idx]].field_0:
                    if stor11[stor12[address(arg1)][idx]].field_0 == uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _485 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5) + 32
                    mem[_485] = uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5
                    if stor11[stor12[address(arg1)][idx]].field_0:
                        if stor11[stor12[address(arg1)][idx]].field_0 == uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor11[stor12[address(arg1)][idx]].field_0):
                            if 31 >= uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5:
                                mem[_485 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_8
                            else:
                                mem[_485 + 32] = stor11[stor12[address(arg1)][idx]].field_0
                                s = _485 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 11))
                                while _485 + (uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if stor11[stor12[address(arg1)][idx]].field_0 == stor11[stor12[address(arg1)][idx]].field_1 < 32:
                            revert with 0, 34
                        if stor11[stor12[address(arg1)][idx]].field_1:
                            if 31 >= stor11[stor12[address(arg1)][idx]].field_1:
                                mem[_485 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_8
                            else:
                                mem[_485 + 32] = stor11[stor12[address(arg1)][idx]].field_0
                                s = _485 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 11))
                                while _485 + stor11[stor12[address(arg1)][idx]].field_1 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_466 + 192] = _485
                else:
                    if stor11[stor12[address(arg1)][idx]].field_0 == stor11[stor12[address(arg1)][idx]].field_1 < 32:
                        revert with 0, 34
                    _487 = mem[64]
                    mem[64] = mem[64] + ceil32(stor11[stor12[address(arg1)][idx]].field_1) + 32
                    mem[_487] = stor11[stor12[address(arg1)][idx]].field_1
                    if stor11[stor12[address(arg1)][idx]].field_0:
                        if stor11[stor12[address(arg1)][idx]].field_0 == uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor11[stor12[address(arg1)][idx]].field_0):
                            if 31 >= uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5:
                                mem[_487 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_8
                            else:
                                mem[_487 + 32] = stor11[stor12[address(arg1)][idx]].field_0
                                s = _487 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 11))
                                while _487 + (uint255(stor11[stor12[address(arg1)][idx]].field_0) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if stor11[stor12[address(arg1)][idx]].field_0 == stor11[stor12[address(arg1)][idx]].field_1 < 32:
                            revert with 0, 34
                        if stor11[stor12[address(arg1)][idx]].field_1:
                            if 31 >= stor11[stor12[address(arg1)][idx]].field_1:
                                mem[_487 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_8
                            else:
                                mem[_487 + 32] = stor11[stor12[address(arg1)][idx]].field_0
                                s = _487 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 11))
                                while _487 + stor11[stor12[address(arg1)][idx]].field_1 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_466 + 192] = _487
                mem[_466 + 224] = bool(stor25[stor12[address(arg1)][idx]])
                mem[_466 + 256] = bool(stor17[stor12[address(arg1)][idx]])
                mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[32] = 18
                mem[_466 + 288] = bool(stor18[stor12[address(arg1)][idx]])
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _466
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _463 = mem[64]
        mem[mem[64]] = 32
        _473 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _473:
            mem[t] = u + -_463 - 64
            _550 = mem[s]
            mem[u] = mem[mem[s]]
            mem[u + 32] = mem[_550 + 32]
            mem[u + 64] = mem[_550 + 64]
            mem[u + 96] = mem[_550 + 108 len 20]
            mem[u + 128] = mem[_550 + 140 len 20]
            mem[u + 160] = mem[_550 + 172 len 20]
            _574 = mem[_550 + 192]
            mem[u + 192] = 320
            _575 = mem[_574]
            mem[u + 320] = mem[_574]
            v = 0
            while v < _575:
                mem[v + u + 352] = mem[_574 + v + 32]
                v = v + 32
                continue 
            if ceil32(_575) > _575:
                mem[u + _575 + 352] = 0
            mem[u + 224] = bool(mem[_550 + 224])
            mem[u + 256] = bool(mem[_550 + 256])
            mem[u + 288] = bool(mem[_550 + 288])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_575) + u + 352
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_3a4b9f37(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 30
    if stor30[address(arg1)].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor30[address(arg1)].field_0
    mem[64] = (32 * stor30[address(arg1)].field_0) + 128
    if not stor30[address(arg1)].field_0:
        idx = 0
        while idx < stor30[address(arg1)].field_0:
            if idx >= stor30[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 30)
            _173 = mem[64]
            mem[64] = mem[64] + 320
            mem[_173] = stor30[address(arg1)][idx].field_0
            mem[32] = 15
            mem[_173 + 32] = stor15[stor30[address(arg1)][idx].field_0]
            mem[_173 + 64] = stor26[stor30[address(arg1)][idx].field_0]
            mem[_173 + 96] = stor27[stor30[address(arg1)][idx].field_0]
            mem[_173 + 128] = ownerOf[stor30[address(arg1)][idx].field_0]
            mem[_173 + 160] = address(arg1)
            mem[0] = stor30[address(arg1)][idx].field_0
            mem[32] = 11
            if stor11[stor30[address(arg1)][idx].field_0].field_0:
                if stor11[stor30[address(arg1)][idx].field_0].field_0 == uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5 < 32:
                    revert with 0, 34
                _187 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5) + 32
                mem[_187] = uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5
                if stor11[stor30[address(arg1)][idx].field_0].field_0:
                    if stor11[stor30[address(arg1)][idx].field_0].field_0 == uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor11[stor30[address(arg1)][idx].field_0].field_0):
                        if 31 >= uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5:
                            mem[_187 + 32] = 256 * stor11[stor30[address(arg1)][idx].field_0].field_8
                        else:
                            mem[_187 + 32] = stor11[stor30[address(arg1)][idx].field_0].field_0
                            s = _187 + 32
                            t = sha3(sha3(stor30[address(arg1)][idx].field_0, 11))
                            while _187 + (uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor11[stor30[address(arg1)][idx].field_0].field_0 == stor11[stor30[address(arg1)][idx].field_0].field_1 < 32:
                        revert with 0, 34
                    if stor11[stor30[address(arg1)][idx].field_0].field_1:
                        if 31 >= stor11[stor30[address(arg1)][idx].field_0].field_1:
                            mem[_187 + 32] = 256 * stor11[stor30[address(arg1)][idx].field_0].field_8
                        else:
                            mem[_187 + 32] = stor11[stor30[address(arg1)][idx].field_0].field_0
                            s = _187 + 32
                            t = sha3(sha3(stor30[address(arg1)][idx].field_0, 11))
                            while _187 + stor11[stor30[address(arg1)][idx].field_0].field_1 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_173 + 192] = _187
            else:
                if stor11[stor30[address(arg1)][idx].field_0].field_0 == stor11[stor30[address(arg1)][idx].field_0].field_1 < 32:
                    revert with 0, 34
                _190 = mem[64]
                mem[64] = mem[64] + ceil32(stor11[stor30[address(arg1)][idx].field_0].field_1) + 32
                mem[_190] = stor11[stor30[address(arg1)][idx].field_0].field_1
                if stor11[stor30[address(arg1)][idx].field_0].field_0:
                    if stor11[stor30[address(arg1)][idx].field_0].field_0 == uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor11[stor30[address(arg1)][idx].field_0].field_0):
                        if 31 >= uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5:
                            mem[_190 + 32] = 256 * stor11[stor30[address(arg1)][idx].field_0].field_8
                        else:
                            mem[_190 + 32] = stor11[stor30[address(arg1)][idx].field_0].field_0
                            s = _190 + 32
                            t = sha3(sha3(stor30[address(arg1)][idx].field_0, 11))
                            while _190 + (uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor11[stor30[address(arg1)][idx].field_0].field_0 == stor11[stor30[address(arg1)][idx].field_0].field_1 < 32:
                        revert with 0, 34
                    if stor11[stor30[address(arg1)][idx].field_0].field_1:
                        if 31 >= stor11[stor30[address(arg1)][idx].field_0].field_1:
                            mem[_190 + 32] = 256 * stor11[stor30[address(arg1)][idx].field_0].field_8
                        else:
                            mem[_190 + 32] = stor11[stor30[address(arg1)][idx].field_0].field_0
                            s = _190 + 32
                            t = sha3(sha3(stor30[address(arg1)][idx].field_0, 11))
                            while _190 + stor11[stor30[address(arg1)][idx].field_0].field_1 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_173 + 192] = _190
            mem[_173 + 224] = bool(stor25[stor30[address(arg1)][idx].field_0])
            mem[_173 + 256] = bool(stor17[stor30[address(arg1)][idx].field_0])
            mem[0] = stor30[address(arg1)][idx].field_0
            mem[32] = 18
            mem[_173 + 288] = bool(stor18[stor30[address(arg1)][idx].field_0])
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _173
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _171 = mem[64]
        mem[mem[64]] = 32
        _179 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _179:
            mem[t] = u + -_171 - 64
            _334 = mem[s]
            mem[u] = mem[mem[s]]
            mem[u + 32] = mem[_334 + 32]
            mem[u + 64] = mem[_334 + 64]
            mem[u + 96] = mem[_334 + 108 len 20]
            mem[u + 128] = mem[_334 + 140 len 20]
            mem[u + 160] = mem[_334 + 172 len 20]
            _359 = mem[_334 + 192]
            mem[u + 192] = 320
            _361 = mem[_359]
            mem[u + 320] = mem[_359]
            v = 0
            while v < _361:
                mem[v + u + 352] = mem[_359 + v + 32]
                v = v + 32
                continue 
            if ceil32(_361) > _361:
                mem[u + _361 + 352] = 0
            mem[u + 224] = bool(mem[_334 + 224])
            mem[u + 256] = bool(mem[_334 + 256])
            mem[u + 288] = bool(mem[_334 + 288])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_361) + u + 352
            continue 
    else:
        mem[64] = (32 * stor30[address(arg1)].field_0) + 448
        mem[(32 * stor30[address(arg1)].field_0) + 128] = 0
        mem[(32 * stor30[address(arg1)].field_0) + 160] = 0
        mem[(32 * stor30[address(arg1)].field_0) + 192] = 0
        mem[(32 * stor30[address(arg1)].field_0) + 224] = 0
        mem[(32 * stor30[address(arg1)].field_0) + 256] = 0
        mem[(32 * stor30[address(arg1)].field_0) + 288] = 0
        mem[(32 * stor30[address(arg1)].field_0) + 320] = 96
        mem[(32 * stor30[address(arg1)].field_0) + 352] = 0
        mem[(32 * stor30[address(arg1)].field_0) + 384] = 0
        mem[(32 * stor30[address(arg1)].field_0) + 416] = 0
        mem[var15001] = (32 * stor30[address(arg1)].field_0) + 128
        s = var15001
        idx = var15002
        while idx - 1:
            mem[64] = mem[64] + 320
            mem[(32 * stor30[address(arg1)].field_0) + 128] = 0
            mem[(32 * stor30[address(arg1)].field_0) + 160] = 0
            mem[(32 * stor30[address(arg1)].field_0) + 192] = 0
            mem[(32 * stor30[address(arg1)].field_0) + 224] = 0
            mem[(32 * stor30[address(arg1)].field_0) + 256] = 0
            mem[(32 * stor30[address(arg1)].field_0) + 288] = 0
            mem[(32 * stor30[address(arg1)].field_0) + 320] = 96
            mem[(32 * stor30[address(arg1)].field_0) + 352] = 0
            mem[(32 * stor30[address(arg1)].field_0) + 384] = 0
            mem[(32 * stor30[address(arg1)].field_0) + 416] = 0
            mem[s + 32] = (32 * stor30[address(arg1)].field_0) + 128
            s = s + 32
            idx = idx - 1
            continue 
        _449 = mem[96]
        idx = 0
        while idx < _449:
            if idx >= stor30[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 30)
            _454 = mem[64]
            mem[64] = mem[64] + 320
            mem[_454] = stor30[address(arg1)][idx].field_0
            mem[32] = 15
            mem[_454 + 32] = stor15[stor30[address(arg1)][idx].field_0]
            mem[_454 + 64] = stor26[stor30[address(arg1)][idx].field_0]
            mem[_454 + 96] = stor27[stor30[address(arg1)][idx].field_0]
            mem[_454 + 128] = ownerOf[stor30[address(arg1)][idx].field_0]
            mem[_454 + 160] = address(arg1)
            mem[0] = stor30[address(arg1)][idx].field_0
            mem[32] = 11
            if stor11[stor30[address(arg1)][idx].field_0].field_0:
                if stor11[stor30[address(arg1)][idx].field_0].field_0 == uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5 < 32:
                    revert with 0, 34
                _473 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5) + 32
                mem[_473] = uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5
                if stor11[stor30[address(arg1)][idx].field_0].field_0:
                    if stor11[stor30[address(arg1)][idx].field_0].field_0 == uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor11[stor30[address(arg1)][idx].field_0].field_0):
                        if 31 >= uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5:
                            mem[_473 + 32] = 256 * stor11[stor30[address(arg1)][idx].field_0].field_8
                        else:
                            mem[_473 + 32] = stor11[stor30[address(arg1)][idx].field_0].field_0
                            s = _473 + 32
                            t = sha3(sha3(stor30[address(arg1)][idx].field_0, 11))
                            while _473 + (uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor11[stor30[address(arg1)][idx].field_0].field_0 == stor11[stor30[address(arg1)][idx].field_0].field_1 < 32:
                        revert with 0, 34
                    if stor11[stor30[address(arg1)][idx].field_0].field_1:
                        if 31 >= stor11[stor30[address(arg1)][idx].field_0].field_1:
                            mem[_473 + 32] = 256 * stor11[stor30[address(arg1)][idx].field_0].field_8
                        else:
                            mem[_473 + 32] = stor11[stor30[address(arg1)][idx].field_0].field_0
                            s = _473 + 32
                            t = sha3(sha3(stor30[address(arg1)][idx].field_0, 11))
                            while _473 + stor11[stor30[address(arg1)][idx].field_0].field_1 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_454 + 192] = _473
            else:
                if stor11[stor30[address(arg1)][idx].field_0].field_0 == stor11[stor30[address(arg1)][idx].field_0].field_1 < 32:
                    revert with 0, 34
                _475 = mem[64]
                mem[64] = mem[64] + ceil32(stor11[stor30[address(arg1)][idx].field_0].field_1) + 32
                mem[_475] = stor11[stor30[address(arg1)][idx].field_0].field_1
                if stor11[stor30[address(arg1)][idx].field_0].field_0:
                    if stor11[stor30[address(arg1)][idx].field_0].field_0 == uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor11[stor30[address(arg1)][idx].field_0].field_0):
                        if 31 >= uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5:
                            mem[_475 + 32] = 256 * stor11[stor30[address(arg1)][idx].field_0].field_8
                        else:
                            mem[_475 + 32] = stor11[stor30[address(arg1)][idx].field_0].field_0
                            s = _475 + 32
                            t = sha3(sha3(stor30[address(arg1)][idx].field_0, 11))
                            while _475 + (uint255(stor11[stor30[address(arg1)][idx].field_0].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor11[stor30[address(arg1)][idx].field_0].field_0 == stor11[stor30[address(arg1)][idx].field_0].field_1 < 32:
                        revert with 0, 34
                    if stor11[stor30[address(arg1)][idx].field_0].field_1:
                        if 31 >= stor11[stor30[address(arg1)][idx].field_0].field_1:
                            mem[_475 + 32] = 256 * stor11[stor30[address(arg1)][idx].field_0].field_8
                        else:
                            mem[_475 + 32] = stor11[stor30[address(arg1)][idx].field_0].field_0
                            s = _475 + 32
                            t = sha3(sha3(stor30[address(arg1)][idx].field_0, 11))
                            while _475 + stor11[stor30[address(arg1)][idx].field_0].field_1 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_454 + 192] = _475
            mem[_454 + 224] = bool(stor25[stor30[address(arg1)][idx].field_0])
            mem[_454 + 256] = bool(stor17[stor30[address(arg1)][idx].field_0])
            mem[0] = stor30[address(arg1)][idx].field_0
            mem[32] = 18
            mem[_454 + 288] = bool(stor18[stor30[address(arg1)][idx].field_0])
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _454
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _452 = mem[64]
        mem[mem[64]] = 32
        _461 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _461:
            mem[t] = u + -_452 - 64
            _538 = mem[s]
            mem[u] = mem[mem[s]]
            mem[u + 32] = mem[_538 + 32]
            mem[u + 64] = mem[_538 + 64]
            mem[u + 96] = mem[_538 + 108 len 20]
            mem[u + 128] = mem[_538 + 140 len 20]
            mem[u + 160] = mem[_538 + 172 len 20]
            _562 = mem[_538 + 192]
            mem[u + 192] = 320
            _563 = mem[_562]
            mem[u + 320] = mem[_562]
            v = 0
            while v < _563:
                mem[v + u + 352] = mem[_562 + v + 32]
                v = v + 32
                continue 
            if ceil32(_563) > _563:
                mem[u + _563 + 352] = 0
            mem[u + 224] = bool(mem[_538 + 224])
            mem[u + 256] = bool(mem[_538 + 256])
            mem[u + 288] = bool(mem[_538 + 288])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_563) + u + 352
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_c65c807f(?) {
    require calldata.size - 4 >= 64
    if arg1 >= arg2:
        revert with 0, 'From > to'
    if arg2 > tokenByIndex.length:
        if 1 > !tokenByIndex.length:
            revert with 0, 17
        if tokenByIndex.length + 1 > test266151307():
            revert with 0, 65
        mem[96] = tokenByIndex.length + 1
        mem[64] = (32 * tokenByIndex.length + 1) + 128
        if not tokenByIndex.length + 1:
            idx = arg1
            s = 0
            while idx <= tokenByIndex.length:
                _327 = mem[64]
                mem[64] = mem[64] + 320
                mem[_327] = idx
                mem[32] = 15
                mem[_327 + 32] = stor15[idx]
                mem[_327 + 64] = stor26[idx]
                mem[_327 + 96] = stor27[idx]
                mem[_327 + 128] = ownerOf[idx]
                mem[_327 + 160] = stor29[idx]
                mem[0] = idx
                mem[32] = 11
                if stor11[idx].field_0:
                    if stor11[idx].field_0 == uint255(stor11[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _348 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor11[idx].field_0) * 0.5) + 32
                    mem[_348] = uint255(stor11[idx].field_0) * 0.5
                    if stor11[idx].field_0:
                        if stor11[idx].field_0 == uint255(stor11[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor11[idx].field_0):
                            if 31 >= uint255(stor11[idx].field_0) * 0.5:
                                mem[_348 + 32] = 256 * stor11[idx].field_8
                            else:
                                mem[_348 + 32] = stor11[idx].field_0
                                t = _348 + 32
                                u = sha3(sha3(idx, 11))
                                while _348 + (uint255(stor11[idx].field_0) * 0.5) > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    else:
                        if stor11[idx].field_0 == stor11[idx].field_1 < 32:
                            revert with 0, 34
                        if stor11[idx].field_1:
                            if 31 >= stor11[idx].field_1:
                                mem[_348 + 32] = 256 * stor11[idx].field_8
                            else:
                                mem[_348 + 32] = stor11[idx].field_0
                                t = _348 + 32
                                u = sha3(sha3(idx, 11))
                                while _348 + stor11[idx].field_1 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    mem[_327 + 192] = _348
                else:
                    if stor11[idx].field_0 == stor11[idx].field_1 < 32:
                        revert with 0, 34
                    _356 = mem[64]
                    mem[64] = mem[64] + ceil32(stor11[idx].field_1) + 32
                    mem[_356] = stor11[idx].field_1
                    if stor11[idx].field_0:
                        if stor11[idx].field_0 == uint255(stor11[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor11[idx].field_0):
                            if 31 >= uint255(stor11[idx].field_0) * 0.5:
                                mem[_356 + 32] = 256 * stor11[idx].field_8
                            else:
                                mem[_356 + 32] = stor11[idx].field_0
                                t = _356 + 32
                                u = sha3(sha3(idx, 11))
                                while _356 + (uint255(stor11[idx].field_0) * 0.5) > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    else:
                        if stor11[idx].field_0 == stor11[idx].field_1 < 32:
                            revert with 0, 34
                        if stor11[idx].field_1:
                            if 31 >= stor11[idx].field_1:
                                mem[_356 + 32] = 256 * stor11[idx].field_8
                            else:
                                mem[_356 + 32] = stor11[idx].field_0
                                t = _356 + 32
                                u = sha3(sha3(idx, 11))
                                while _356 + stor11[idx].field_1 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    mem[_327 + 192] = _356
                mem[_327 + 224] = bool(stor25[idx])
                mem[_327 + 256] = bool(stor17[idx])
                mem[0] = idx
                mem[32] = 18
                mem[_327 + 288] = bool(stor18[idx])
                if s == -1:
                    revert with 0, 17
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _327
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _343 = mem[64]
            mem[mem[64]] = 32
            _345 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _345:
                mem[t] = u + -_343 - 64
                _651 = mem[s]
                mem[u] = mem[mem[s]]
                mem[u + 32] = mem[_651 + 32]
                mem[u + 64] = mem[_651 + 64]
                mem[u + 96] = mem[_651 + 108 len 20]
                mem[u + 128] = mem[_651 + 140 len 20]
                mem[u + 160] = mem[_651 + 172 len 20]
                _691 = mem[_651 + 192]
                mem[u + 192] = 320
                _707 = mem[_691]
                mem[u + 320] = mem[_691]
                v = 0
                while v < _707:
                    mem[v + u + 352] = mem[_691 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_707) > _707:
                    mem[u + _707 + 352] = 0
                mem[u + 224] = bool(mem[_651 + 224])
                mem[u + 256] = bool(mem[_651 + 256])
                mem[u + 288] = bool(mem[_651 + 288])
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_707) + u + 352
                continue 
        else:
            mem[64] = (32 * tokenByIndex.length + 1) + 448
            mem[(32 * tokenByIndex.length + 1) + 128] = 0
            mem[(32 * tokenByIndex.length + 1) + 160] = 0
            mem[(32 * tokenByIndex.length + 1) + 192] = 0
            mem[(32 * tokenByIndex.length + 1) + 224] = 0
            mem[(32 * tokenByIndex.length + 1) + 256] = 0
            mem[(32 * tokenByIndex.length + 1) + 288] = 0
            mem[(32 * tokenByIndex.length + 1) + 320] = 96
            mem[(32 * tokenByIndex.length + 1) + 352] = 0
            mem[(32 * tokenByIndex.length + 1) + 384] = 0
            mem[(32 * tokenByIndex.length + 1) + 416] = 0
            mem[var18001] = (32 * tokenByIndex.length + 1) + 128
            s = var18001
            idx = var18002
            while idx - 1:
                mem[64] = mem[64] + 320
                mem[(32 * tokenByIndex.length + 1) + 128] = 0
                mem[(32 * tokenByIndex.length + 1) + 160] = 0
                mem[(32 * tokenByIndex.length + 1) + 192] = 0
                mem[(32 * tokenByIndex.length + 1) + 224] = 0
                mem[(32 * tokenByIndex.length + 1) + 256] = 0
                mem[(32 * tokenByIndex.length + 1) + 288] = 0
                mem[(32 * tokenByIndex.length + 1) + 320] = 96
                mem[(32 * tokenByIndex.length + 1) + 352] = 0
                mem[(32 * tokenByIndex.length + 1) + 384] = 0
                mem[(32 * tokenByIndex.length + 1) + 416] = 0
                mem[s + 32] = (32 * tokenByIndex.length + 1) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = arg1
            s = 0
            while idx <= tokenByIndex.length:
                _878 = mem[64]
                mem[64] = mem[64] + 320
                mem[_878] = idx
                mem[32] = 15
                mem[_878 + 32] = stor15[idx]
                mem[_878 + 64] = stor26[idx]
                mem[_878 + 96] = stor27[idx]
                mem[_878 + 128] = ownerOf[idx]
                mem[_878 + 160] = stor29[idx]
                mem[0] = idx
                mem[32] = 11
                if stor11[idx].field_0:
                    if stor11[idx].field_0 == uint255(stor11[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _908 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor11[idx].field_0) * 0.5) + 32
                    mem[_908] = uint255(stor11[idx].field_0) * 0.5
                    if stor11[idx].field_0:
                        if stor11[idx].field_0 == uint255(stor11[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor11[idx].field_0):
                            if 31 >= uint255(stor11[idx].field_0) * 0.5:
                                mem[_908 + 32] = 256 * stor11[idx].field_8
                            else:
                                mem[_908 + 32] = stor11[idx].field_0
                                t = _908 + 32
                                u = sha3(sha3(idx, 11))
                                while _908 + (uint255(stor11[idx].field_0) * 0.5) > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    else:
                        if stor11[idx].field_0 == stor11[idx].field_1 < 32:
                            revert with 0, 34
                        if stor11[idx].field_1:
                            if 31 >= stor11[idx].field_1:
                                mem[_908 + 32] = 256 * stor11[idx].field_8
                            else:
                                mem[_908 + 32] = stor11[idx].field_0
                                t = _908 + 32
                                u = sha3(sha3(idx, 11))
                                while _908 + stor11[idx].field_1 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    mem[_878 + 192] = _908
                else:
                    if stor11[idx].field_0 == stor11[idx].field_1 < 32:
                        revert with 0, 34
                    _918 = mem[64]
                    mem[64] = mem[64] + ceil32(stor11[idx].field_1) + 32
                    mem[_918] = stor11[idx].field_1
                    if stor11[idx].field_0:
                        if stor11[idx].field_0 == uint255(stor11[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor11[idx].field_0):
                            if 31 >= uint255(stor11[idx].field_0) * 0.5:
                                mem[_918 + 32] = 256 * stor11[idx].field_8
                            else:
                                mem[_918 + 32] = stor11[idx].field_0
                                t = _918 + 32
                                u = sha3(sha3(idx, 11))
                                while _918 + (uint255(stor11[idx].field_0) * 0.5) > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    else:
                        if stor11[idx].field_0 == stor11[idx].field_1 < 32:
                            revert with 0, 34
                        if stor11[idx].field_1:
                            if 31 >= stor11[idx].field_1:
                                mem[_918 + 32] = 256 * stor11[idx].field_8
                            else:
                                mem[_918 + 32] = stor11[idx].field_0
                                t = _918 + 32
                                u = sha3(sha3(idx, 11))
                                while _918 + stor11[idx].field_1 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    mem[_878 + 192] = _918
                mem[_878 + 224] = bool(stor25[idx])
                mem[_878 + 256] = bool(stor17[idx])
                mem[0] = idx
                mem[32] = 18
                mem[_878 + 288] = bool(stor18[idx])
                if s == -1:
                    revert with 0, 17
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _878
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _893 = mem[64]
            mem[mem[64]] = 32
            _896 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _896:
                mem[t] = u + -_893 - 64
                _1051 = mem[s]
                mem[u] = mem[mem[s]]
                mem[u + 32] = mem[_1051 + 32]
                mem[u + 64] = mem[_1051 + 64]
                mem[u + 96] = mem[_1051 + 108 len 20]
                mem[u + 128] = mem[_1051 + 140 len 20]
                mem[u + 160] = mem[_1051 + 172 len 20]
                _1091 = mem[_1051 + 192]
                mem[u + 192] = 320
                _1093 = mem[_1091]
                mem[u + 320] = mem[_1091]
                v = 0
                while v < _1093:
                    mem[v + u + 352] = mem[_1091 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1093) > _1093:
                    mem[u + _1093 + 352] = 0
                mem[u + 224] = bool(mem[_1051 + 224])
                mem[u + 256] = bool(mem[_1051 + 256])
                mem[u + 288] = bool(mem[_1051 + 288])
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1093) + u + 352
                continue 
    else:
        if 1 > !arg2:
            revert with 0, 17
        if arg2 + 1 > test266151307():
            revert with 0, 65
        mem[96] = arg2 + 1
        mem[64] = (32 * arg2 + 1) + 128
        if not arg2 + 1:
            idx = arg1
            s = 0
            while idx <= arg2:
                _335 = mem[64]
                mem[64] = mem[64] + 320
                mem[_335] = idx
                mem[32] = 15
                mem[_335 + 32] = stor15[idx]
                mem[_335 + 64] = stor26[idx]
                mem[_335 + 96] = stor27[idx]
                mem[_335 + 128] = ownerOf[idx]
                mem[_335 + 160] = stor29[idx]
                mem[0] = idx
                mem[32] = 11
                if stor11[idx].field_0:
                    if stor11[idx].field_0 == uint255(stor11[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _350 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor11[idx].field_0) * 0.5) + 32
                    mem[_350] = uint255(stor11[idx].field_0) * 0.5
                    if stor11[idx].field_0:
                        if stor11[idx].field_0 == uint255(stor11[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor11[idx].field_0):
                            if 31 >= uint255(stor11[idx].field_0) * 0.5:
                                mem[_350 + 32] = 256 * stor11[idx].field_8
                            else:
                                mem[_350 + 32] = stor11[idx].field_0
                                t = _350 + 32
                                u = sha3(sha3(idx, 11))
                                while _350 + (uint255(stor11[idx].field_0) * 0.5) > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    else:
                        if stor11[idx].field_0 == stor11[idx].field_1 < 32:
                            revert with 0, 34
                        if stor11[idx].field_1:
                            if 31 >= stor11[idx].field_1:
                                mem[_350 + 32] = 256 * stor11[idx].field_8
                            else:
                                mem[_350 + 32] = stor11[idx].field_0
                                t = _350 + 32
                                u = sha3(sha3(idx, 11))
                                while _350 + stor11[idx].field_1 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    mem[_335 + 192] = _350
                else:
                    if stor11[idx].field_0 == stor11[idx].field_1 < 32:
                        revert with 0, 34
                    _369 = mem[64]
                    mem[64] = mem[64] + ceil32(stor11[idx].field_1) + 32
                    mem[_369] = stor11[idx].field_1
                    if stor11[idx].field_0:
                        if stor11[idx].field_0 == uint255(stor11[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor11[idx].field_0):
                            if 31 >= uint255(stor11[idx].field_0) * 0.5:
                                mem[_369 + 32] = 256 * stor11[idx].field_8
                            else:
                                mem[_369 + 32] = stor11[idx].field_0
                                t = _369 + 32
                                u = sha3(sha3(idx, 11))
                                while _369 + (uint255(stor11[idx].field_0) * 0.5) > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    else:
                        if stor11[idx].field_0 == stor11[idx].field_1 < 32:
                            revert with 0, 34
                        if stor11[idx].field_1:
                            if 31 >= stor11[idx].field_1:
                                mem[_369 + 32] = 256 * stor11[idx].field_8
                            else:
                                mem[_369 + 32] = stor11[idx].field_0
                                t = _369 + 32
                                u = sha3(sha3(idx, 11))
                                while _369 + stor11[idx].field_1 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    mem[_335 + 192] = _369
                mem[_335 + 224] = bool(stor25[idx])
                mem[_335 + 256] = bool(stor17[idx])
                mem[0] = idx
                mem[32] = 18
                mem[_335 + 288] = bool(stor18[idx])
                if s == -1:
                    revert with 0, 17
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _335
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _344 = mem[64]
            mem[mem[64]] = 32
            _346 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _346:
                mem[t] = u + -_344 - 64
                _652 = mem[s]
                mem[u] = mem[mem[s]]
                mem[u + 32] = mem[_652 + 32]
                mem[u + 64] = mem[_652 + 64]
                mem[u + 96] = mem[_652 + 108 len 20]
                mem[u + 128] = mem[_652 + 140 len 20]
                mem[u + 160] = mem[_652 + 172 len 20]
                _699 = mem[_652 + 192]
                mem[u + 192] = 320
                _713 = mem[_699]
                mem[u + 320] = mem[_699]
                v = 0
                while v < _713:
                    mem[v + u + 352] = mem[_699 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_713) > _713:
                    mem[u + _713 + 352] = 0
                mem[u + 224] = bool(mem[_652 + 224])
                mem[u + 256] = bool(mem[_652 + 256])
                mem[u + 288] = bool(mem[_652 + 288])
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_713) + u + 352
                continue 
        else:
            mem[64] = (32 * arg2 + 1) + 448
            mem[(32 * arg2 + 1) + 128] = 0
            mem[(32 * arg2 + 1) + 160] = 0
            mem[(32 * arg2 + 1) + 192] = 0
            mem[(32 * arg2 + 1) + 224] = 0
            mem[(32 * arg2 + 1) + 256] = 0
            mem[(32 * arg2 + 1) + 288] = 0
            mem[(32 * arg2 + 1) + 320] = 96
            mem[(32 * arg2 + 1) + 352] = 0
            mem[(32 * arg2 + 1) + 384] = 0
            mem[(32 * arg2 + 1) + 416] = 0
            mem[var18001] = (32 * arg2 + 1) + 128
            s = var18001
            idx = var18002
            while idx - 1:
                mem[64] = mem[64] + 320
                mem[(32 * arg2 + 1) + 128] = 0
                mem[(32 * arg2 + 1) + 160] = 0
                mem[(32 * arg2 + 1) + 192] = 0
                mem[(32 * arg2 + 1) + 224] = 0
                mem[(32 * arg2 + 1) + 256] = 0
                mem[(32 * arg2 + 1) + 288] = 0
                mem[(32 * arg2 + 1) + 320] = 96
                mem[(32 * arg2 + 1) + 352] = 0
                mem[(32 * arg2 + 1) + 384] = 0
                mem[(32 * arg2 + 1) + 416] = 0
                mem[s + 32] = (32 * arg2 + 1) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = arg1
            s = 0
            while idx <= arg2:
                _886 = mem[64]
                mem[64] = mem[64] + 320
                mem[_886] = idx
                mem[32] = 15
                mem[_886 + 32] = stor15[idx]
                mem[_886 + 64] = stor26[idx]
                mem[_886 + 96] = stor27[idx]
                mem[_886 + 128] = ownerOf[idx]
                mem[_886 + 160] = stor29[idx]
                mem[0] = idx
                mem[32] = 11
                if stor11[idx].field_0:
                    if stor11[idx].field_0 == uint255(stor11[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _912 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor11[idx].field_0) * 0.5) + 32
                    mem[_912] = uint255(stor11[idx].field_0) * 0.5
                    if stor11[idx].field_0:
                        if stor11[idx].field_0 == uint255(stor11[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor11[idx].field_0):
                            if 31 >= uint255(stor11[idx].field_0) * 0.5:
                                mem[_912 + 32] = 256 * stor11[idx].field_8
                            else:
                                mem[_912 + 32] = stor11[idx].field_0
                                t = _912 + 32
                                u = sha3(sha3(idx, 11))
                                while _912 + (uint255(stor11[idx].field_0) * 0.5) > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    else:
                        if stor11[idx].field_0 == stor11[idx].field_1 < 32:
                            revert with 0, 34
                        if stor11[idx].field_1:
                            if 31 >= stor11[idx].field_1:
                                mem[_912 + 32] = 256 * stor11[idx].field_8
                            else:
                                mem[_912 + 32] = stor11[idx].field_0
                                t = _912 + 32
                                u = sha3(sha3(idx, 11))
                                while _912 + stor11[idx].field_1 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    mem[_886 + 192] = _912
                else:
                    if stor11[idx].field_0 == stor11[idx].field_1 < 32:
                        revert with 0, 34
                    _924 = mem[64]
                    mem[64] = mem[64] + ceil32(stor11[idx].field_1) + 32
                    mem[_924] = stor11[idx].field_1
                    if stor11[idx].field_0:
                        if stor11[idx].field_0 == uint255(stor11[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor11[idx].field_0):
                            if 31 >= uint255(stor11[idx].field_0) * 0.5:
                                mem[_924 + 32] = 256 * stor11[idx].field_8
                            else:
                                mem[_924 + 32] = stor11[idx].field_0
                                t = _924 + 32
                                u = sha3(sha3(idx, 11))
                                while _924 + (uint255(stor11[idx].field_0) * 0.5) > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    else:
                        if stor11[idx].field_0 == stor11[idx].field_1 < 32:
                            revert with 0, 34
                        if stor11[idx].field_1:
                            if 31 >= stor11[idx].field_1:
                                mem[_924 + 32] = 256 * stor11[idx].field_8
                            else:
                                mem[_924 + 32] = stor11[idx].field_0
                                t = _924 + 32
                                u = sha3(sha3(idx, 11))
                                while _924 + stor11[idx].field_1 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    mem[_886 + 192] = _924
                mem[_886 + 224] = bool(stor25[idx])
                mem[_886 + 256] = bool(stor17[idx])
                mem[0] = idx
                mem[32] = 18
                mem[_886 + 288] = bool(stor18[idx])
                if s == -1:
                    revert with 0, 17
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _886
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _894 = mem[64]
            mem[mem[64]] = 32
            _898 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _898:
                mem[t] = u + -_894 - 64
                _1052 = mem[s]
                mem[u] = mem[mem[s]]
                mem[u + 32] = mem[_1052 + 32]
                mem[u + 64] = mem[_1052 + 64]
                mem[u + 96] = mem[_1052 + 108 len 20]
                mem[u + 128] = mem[_1052 + 140 len 20]
                mem[u + 160] = mem[_1052 + 172 len 20]
                _1092 = mem[_1052 + 192]
                mem[u + 192] = 320
                _1098 = mem[_1092]
                mem[u + 320] = mem[_1092]
                v = 0
                while v < _1098:
                    mem[v + u + 352] = mem[_1092 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1098) > _1098:
                    mem[u + _1098 + 352] = 0
                mem[u + 224] = bool(mem[_1052 + 224])
                mem[u + 256] = bool(mem[_1052 + 256])
                mem[u + 288] = bool(mem[_1052 + 288])
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1098) + u + 352
                continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
