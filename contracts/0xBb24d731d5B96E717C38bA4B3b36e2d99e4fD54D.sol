contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
uint256 stor7;
uint256 stor8;
mapping of uint256 stor9;
uint256 totalLimit;
uint256 MINT_LIMIT;
uint256 mintPrice;
array of struct stor13;
uint256 startTime;

function MINT_LIMIT() {
    return MINT_LIMIT
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function mintPrice() {
    return mintPrice
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function totalLimit() {
    return totalLimit
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

function getSetting() {
    return Array(len=4, data=mintPrice, totalLimit, MINT_LIMIT, startTime)
}

function getBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return eth.balance(this.address)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_6d10cd9c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    totalLimit = arg1
    emit 0x6805d836: mintPrice, MINT_LIMIT, totalLimit, startTime
    return totalLimit
}

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startTime = arg1
    emit 0x6805d836: mintPrice, MINT_LIMIT, totalLimit, startTime
    return startTime
}

function setMintPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintPrice = arg1
    emit 0x6805d836: mintPrice, MINT_LIMIT, totalLimit, startTime
    return mintPrice
}

function setMintLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MINT_LIMIT = arg1
    emit 0x6805d836: mintPrice, MINT_LIMIT, totalLimit, startTime
    return MINT_LIMIT
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

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor7 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require eth.balance(this.address)
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor7 = 1
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
    if ext_code.size(arg2) > 0:
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
    if ext_code.size(arg2) > 0:
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

function mintAdmin(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor7 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= totalLimit
    idx = 0
    while idx < arg1:
        if stor8 == -1:
            revert with 'NH{q', 17
        stor8++
        _50 = mem[64]
        mem[64] = mem[64] + 32
        mem[_50] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor8]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        mem[0] = stor8
        mem[32] = 2
        ownerOf[stor8] = msg.sender
        emit Transfer(0, msg.sender, stor8);
        if ext_code.size(msg.sender) > 0:
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = stor8
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 164] = mem[_50 + s + 32]
                s = s + 32
                continue 
            call msg.sender.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, 0, stor8, 128, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if not return_data.size:
                    if not mem[96]:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with memory
                      from 128
                       len mem[96]
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            _97 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_97] == Mask(32, 224, mem[_97])
            if Mask(32, 224, mem[_97]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if totalLimit < arg1:
        revert with 'NH{q', 17
    totalLimit -= arg1
    emit Mint(stor8, mintPrice, arg1, totalLimit, msg.sender);
    stor7 = 1
    return stor8
}

function mintPublic(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor7 = 2
    require msg.sender
    if startTime > block.timestamp:
        revert with 0, 'Mint is not started yet'
    if arg1 <= 0:
        revert with 0, 'Count is over limitation'
    if arg1 > MINT_LIMIT:
        revert with 0, 'Count is over limitation'
    if mintPrice and arg1 > -1 / mintPrice:
        revert with 'NH{q', 17
    if mintPrice * arg1 != msg.value:
        revert with 0, 'Not enough balance'
    mem[0] = msg.sender
    mem[32] = 9
    if stor9[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if stor9[address(msg.sender)] + arg1 > MINT_LIMIT:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance per wallet is over limitation'
    if arg1 > totalLimit:
        revert with 0, 'Total supply is over limitation'
    idx = 0
    while idx < arg1:
        if stor8 == -1:
            revert with 'NH{q', 17
        stor8++
        _63 = mem[64]
        mem[64] = mem[64] + 32
        mem[_63] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor8]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        mem[0] = stor8
        mem[32] = 2
        ownerOf[stor8] = msg.sender
        emit Transfer(0, msg.sender, stor8);
        if ext_code.size(msg.sender) > 0:
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = stor8
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 164] = mem[_63 + s + 32]
                s = s + 32
                continue 
            call msg.sender.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, 0, stor8, 128, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if not return_data.size:
                    if not mem[96]:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with memory
                      from 128
                       len mem[96]
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            _110 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_110] == Mask(32, 224, mem[_110])
            if Mask(32, 224, mem[_110]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if stor9[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    stor9[address(msg.sender)] += arg1
    if totalLimit < arg1:
        revert with 'NH{q', 17
    totalLimit -= arg1
    emit Mint(stor8, mintPrice, arg1, totalLimit, msg.sender);
    stor7 = 1
    return stor8
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

function getTokenList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    mem[96] = balanceOf[address(arg1)]
    mem[64] = (32 * balanceOf[address(arg1)]) + 128
    if not balanceOf[address(arg1)]:
        if balanceOf[address(arg1)]:
            if stor8 > -2:
                revert with 'NH{q', 17
            if var67002 < stor8 + 1:
                if not var73001:
                    if var73003 != balanceOf[address(arg1)]:
                        if var73002 == -1:
                            revert with 'NH{q', 17
                        if stor8 > -2:
                            revert with 'NH{q', 17
                        if var73002 < stor8:
                            mem[0] = var73002 + 1
                            mem[32] = 2
                            var73001 = not not ownerOf[var73002 + 1]
                            var73002 = var73002 + 1
                            var73003 = var73003
                            continue 
                else:
                    if not ownerOf[var73002]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if ownerOf[var73002] != arg1:
                        if var73003 != balanceOf[address(arg1)]:
                            if var73002 == -1:
                                revert with 'NH{q', 17
                            if stor8 > -2:
                                revert with 'NH{q', 17
                            if var73002 < stor8:
                                mem[0] = var73002 + 1
                                mem[32] = 2
                                var73001 = not not ownerOf[var73002 + 1]
                                var73002 = var73002 + 1
                                var73003 = var73003
                                continue 
                    else:
                        if var73003 == -1:
                            revert with 'NH{q', 17
                        if var73003 >= balanceOf[address(arg1)]:
                            revert with 'NH{q', 50
                        mem[(32 * var73003) + 128] = var73002
                        if var73003 + 1 != balanceOf[address(arg1)]:
                            if var73002 == -1:
                                revert with 'NH{q', 17
                            if stor8 > -2:
                                revert with 'NH{q', 17
                            if var73002 < stor8:
                                mem[0] = var73002 + 1
                                mem[32] = 2
                                var73001 = not not ownerOf[var73002 + 1]
                                var73002 = var73002 + 1
                                var73003 = var73003 + 1
                                continue 
        mem[(32 * balanceOf[address(arg1)]) + 128] = 32
        mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
        mem[(32 * balanceOf[address(arg1)]) + 192 len 32 * balanceOf[address(arg1)]] = mem[128 len 32 * balanceOf[address(arg1)]]
    else:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
        if balanceOf[address(arg1)]:
            if stor8 > -2:
                revert with 'NH{q', 17
            if var68002 < stor8 + 1:
                if not var74001:
                    if var74003 != balanceOf[address(arg1)]:
                        if var74002 == -1:
                            revert with 'NH{q', 17
                        if stor8 > -2:
                            revert with 'NH{q', 17
                        if var74002 < stor8:
                            mem[0] = var74002 + 1
                            mem[32] = 2
                            var74001 = not not ownerOf[var74002 + 1]
                            var74002 = var74002 + 1
                            var74003 = var74003
                            continue 
                else:
                    if not ownerOf[var74002]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if ownerOf[var74002] != arg1:
                        if var74003 != balanceOf[address(arg1)]:
                            if var74002 == -1:
                                revert with 'NH{q', 17
                            if stor8 > -2:
                                revert with 'NH{q', 17
                            if var74002 < stor8:
                                mem[0] = var74002 + 1
                                mem[32] = 2
                                var74001 = not not ownerOf[var74002 + 1]
                                var74002 = var74002 + 1
                                var74003 = var74003
                                continue 
                    else:
                        if var74003 == -1:
                            revert with 'NH{q', 17
                        if var74003 >= balanceOf[address(arg1)]:
                            revert with 'NH{q', 50
                        mem[(32 * var74003) + 128] = var74002
                        if var74003 + 1 != balanceOf[address(arg1)]:
                            if var74002 == -1:
                                revert with 'NH{q', 17
                            if stor8 > -2:
                                revert with 'NH{q', 17
                            if var74002 < stor8:
                                mem[0] = var74002 + 1
                                mem[32] = 2
                                var74001 = not not ownerOf[var74002 + 1]
                                var74002 = var74002 + 1
                                var74003 = var74003 + 1
                                continue 
        mem[(32 * balanceOf[address(arg1)]) + 128] = 32
        mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
        mem[(32 * balanceOf[address(arg1)]) + 192 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    return memory
      from (32 * balanceOf[address(arg1)]) + 128
       len (96 * balanceOf[address(arg1)]) + 64
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
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor13.field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor13.length.field_1 + 97 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor13.length.field_1)]), 
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor13.length.field_8
        else:
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor13.field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor13.length.field_1 + 97 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor13.length.field_1)]), 
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor13.length.field_8
        mem[ceil32(ceil32(arg1.length)) + ceil32(stor13.length.field_1) + 193 len ceil32(stor13.length.field_1)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) > stor13.length.field_1:
            mem[ceil32(ceil32(arg1.length)) + ceil32(stor13.length.field_1) + stor13.length.field_1 + 193] = 0
        return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor13.length.field_1)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor13.length.field_1)) + 193 len 2 * ceil32(stor13.length.field_1)]), 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor13.field_0)
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + stor13.length.field_1 + 97 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor13.length.field_1)])
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor13.length.field_8
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor13.field_0)
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + stor13.length.field_1 + 97 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor13.length.field_1)])
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor13.length.field_8
    mem[ceil32(ceil32(arg1.length)) + ceil32(stor13.length.field_1) + 193 len ceil32(stor13.length.field_1)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) > stor13.length.field_1:
        mem[ceil32(ceil32(arg1.length)) + ceil32(stor13.length.field_1) + stor13.length.field_1 + 193] = 0
    return Array(len=stor13.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor13.length.field_1)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor13.length.field_1)) + 193 len 2 * ceil32(stor13.length.field_1)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0, 'Token does not exist'
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor13.length):
                mem[192] = Mask(248, 8, stor13.length)
            else:
                if bool(stor13.length) != 1:
                    mem[64] = 6
                    _124 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_124) > _124:
                        mem[_124 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_124) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + 192] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor13.length.field_1 + 192] = '0'
            mem[stor13.length.field_1 + 193] = '.json'
            mem[stor13.length.field_1 + 198] = 32
            mem[stor13.length.field_1 + 230] = mem[160]
            mem[stor13.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor13.length.field_1 + mem[160] + 262] = 0
            return Array(len=mem[160], data=mem[stor13.length.field_1 + 262 len ceil32(mem[160])])
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor13.length):
            mem[192] = Mask(248, 8, stor13.length)
        else:
            if bool(stor13.length) != 1:
                mem[64] = 6
                _126 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_126) > _126:
                    mem[_126 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_126) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor13.length.field_1:
                mem[idx + 192] = stor13[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor13.length.field_1 + 192] = '0'
        mem[stor13.length.field_1 + 193] = '.json'
        mem[stor13.length.field_1 + 198] = 32
        mem[stor13.length.field_1 + 230] = mem[160]
        mem[stor13.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor13.length.field_1 + mem[160] + 262] = 0
        return Array(len=mem[160], data=mem[stor13.length.field_1 + 262 len ceil32(mem[160])])
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
        _359 = mem[64]
        if bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor13.length):
                mem[mem[64] + 32] = Mask(248, 8, stor13.length)
                _391 = mem[96]
                mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + stor13.length.field_1 + mem[96] + 32] = '.json'
                if ceil32(mem[96]) <= mem[96]:
                    _599 = mem[64]
                    mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                    mem[_359 + stor13.length.field_1 + mem[96] + 37] = 32
                    _635 = mem[_599]
                    mem[_359 + stor13.length.field_1 + _391 + 69] = mem[_599]
                    mem[_359 + stor13.length.field_1 + _391 + 101 len ceil32(_635)] = mem[_599 + 32 len ceil32(_635)]
                    if ceil32(_635) > _635:
                        mem[_359 + stor13.length.field_1 + _391 + _635 + 101] = 0
                    return 32, mem[_359 + stor13.length.field_1 + _391 + 69 len ceil32(_635) + 32]
                _612 = mem[64]
                mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                mem[_359 + stor13.length.field_1 + mem[96] + 37] = 32
                _643 = mem[_612]
                mem[_359 + stor13.length.field_1 + _391 + 69] = mem[_612]
                mem[_359 + stor13.length.field_1 + _391 + 101 len ceil32(_643)] = mem[_612 + 32 len ceil32(_643)]
                if ceil32(_643) > _643:
                    mem[_359 + stor13.length.field_1 + _391 + _643 + 101] = 0
                return 32, mem[_359 + stor13.length.field_1 + _391 + 69 len ceil32(_643) + 32]
            if bool(stor13.length) != 1:
                _395 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_395] = '.json'
                if ceil32(_395) <= _395:
                    _601 = mem[64]
                    mem[64] = _395 + 5
                    mem[_395 + 5] = 32
                    _636 = mem[_601]
                    mem[_395 + 37] = mem[_601]
                    mem[_395 + 69 len ceil32(_636)] = mem[_601 + 32 len ceil32(_636)]
                    if ceil32(_636) > _636:
                        mem[_395 + _636 + 69] = 0
                    return 32, mem[_395 + 37 len ceil32(_636) + 32]
                _614 = mem[64]
                mem[64] = _395 + 5
                mem[_395 + 5] = 32
                _644 = mem[_614]
                mem[_395 + 37] = mem[_614]
                mem[_395 + 69 len ceil32(_644)] = mem[_614 + 32 len ceil32(_644)]
                if ceil32(_644) > _644:
                    mem[_395 + _644 + 69] = 0
                return 32, mem[_395 + 37 len ceil32(_644) + 32]
            mem[0] = 13
            idx = 0
            s = 0
            while idx < stor13.length.field_1:
                mem[_359 + idx + 32] = stor13[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _587 = mem[96]
            mem[_359 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_359 + stor13.length.field_1 + _587 + 32] = '.json'
            if ceil32(_587) <= _587:
                _799 = mem[64]
                mem[64] = _359 + stor13.length.field_1 + _587 + 37
                mem[_359 + stor13.length.field_1 + _587 + 37] = 32
                _815 = mem[_799]
                mem[_359 + stor13.length.field_1 + _587 + 69] = mem[_799]
                mem[_359 + stor13.length.field_1 + _587 + 101 len ceil32(_815)] = mem[_799 + 32 len ceil32(_815)]
                if ceil32(_815) > _815:
                    mem[_359 + stor13.length.field_1 + _587 + _815 + 101] = 0
                return 32, mem[_359 + stor13.length.field_1 + _587 + 69 len ceil32(_815) + 32]
            _804 = mem[64]
            mem[64] = _359 + stor13.length.field_1 + _587 + 37
            mem[_359 + stor13.length.field_1 + _587 + 37] = 32
            _819 = mem[_804]
            mem[_359 + stor13.length.field_1 + _587 + 69] = mem[_804]
            mem[_359 + stor13.length.field_1 + _587 + 101 len ceil32(_819)] = mem[_804 + 32 len ceil32(_819)]
            if ceil32(_819) > _819:
                mem[_359 + stor13.length.field_1 + _587 + _819 + 101] = 0
            return 32, mem[_359 + stor13.length.field_1 + _587 + 69 len ceil32(_819) + 32]
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            _396 = mem[96]
            mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor13.length.field_1 + mem[96] + 32] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _602 = mem[64]
                mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                mem[_359 + stor13.length.field_1 + mem[96] + 37] = 32
                _637 = mem[_602]
                mem[_359 + stor13.length.field_1 + _396 + 69] = mem[_602]
                mem[_359 + stor13.length.field_1 + _396 + 101 len ceil32(_637)] = mem[_602 + 32 len ceil32(_637)]
                if ceil32(_637) > _637:
                    mem[_359 + stor13.length.field_1 + _396 + _637 + 101] = 0
                return 32, mem[_359 + stor13.length.field_1 + _396 + 69 len ceil32(_637) + 32]
            _616 = mem[64]
            mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
            mem[_359 + stor13.length.field_1 + mem[96] + 37] = 32
            _645 = mem[_616]
            mem[_359 + stor13.length.field_1 + _396 + 69] = mem[_616]
            mem[_359 + stor13.length.field_1 + _396 + 101 len ceil32(_645)] = mem[_616 + 32 len ceil32(_645)]
            if ceil32(_645) > _645:
                mem[_359 + stor13.length.field_1 + _396 + _645 + 101] = 0
            return 32, mem[_359 + stor13.length.field_1 + _396 + 69 len ceil32(_645) + 32]
        if bool(stor13.length) != 1:
            _399 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_399] = '.json'
            if ceil32(_399) <= _399:
                _604 = mem[64]
                mem[64] = _399 + 5
                mem[_399 + 5] = 32
                _638 = mem[_604]
                mem[_399 + 37] = mem[_604]
                mem[_399 + 69 len ceil32(_638)] = mem[_604 + 32 len ceil32(_638)]
                if ceil32(_638) > _638:
                    mem[_399 + _638 + 69] = 0
                return 32, mem[_399 + 37 len ceil32(_638) + 32]
            _618 = mem[64]
            mem[64] = _399 + 5
            mem[_399 + 5] = 32
            _646 = mem[_618]
            mem[_399 + 37] = mem[_618]
            mem[_399 + 69 len ceil32(_646)] = mem[_618 + 32 len ceil32(_646)]
            if ceil32(_646) > _646:
                mem[_399 + _646 + 69] = 0
            return 32, mem[_399 + 37 len ceil32(_646) + 32]
        mem[0] = 13
        idx = 0
        s = 0
        while idx < stor13.length.field_1:
            mem[_359 + idx + 32] = stor13[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _588 = mem[96]
        mem[_359 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_359 + stor13.length.field_1 + _588 + 32] = '.json'
        if ceil32(_588) <= _588:
            _800 = mem[64]
            mem[64] = _359 + stor13.length.field_1 + _588 + 37
            mem[_359 + stor13.length.field_1 + _588 + 37] = 32
            _816 = mem[_800]
            mem[_359 + stor13.length.field_1 + _588 + 69] = mem[_800]
            mem[_359 + stor13.length.field_1 + _588 + 101 len ceil32(_816)] = mem[_800 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_359 + stor13.length.field_1 + _588 + _816 + 101] = 0
            return 32, mem[_359 + stor13.length.field_1 + _588 + 69 len ceil32(_816) + 32]
        _806 = mem[64]
        mem[64] = _359 + stor13.length.field_1 + _588 + 37
        mem[_359 + stor13.length.field_1 + _588 + 37] = 32
        _820 = mem[_806]
        mem[_359 + stor13.length.field_1 + _588 + 69] = mem[_806]
        mem[_359 + stor13.length.field_1 + _588 + 101 len ceil32(_820)] = mem[_806 + 32 len ceil32(_820)]
        if ceil32(_820) > _820:
            mem[_359 + stor13.length.field_1 + _588 + _820 + 101] = 0
        return 32, mem[_359 + stor13.length.field_1 + _588 + 69 len ceil32(_820) + 32]
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
    _360 = mem[64]
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            _392 = mem[96]
            mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor13.length.field_1 + mem[96] + 32] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _605 = mem[64]
                mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                mem[_360 + stor13.length.field_1 + mem[96] + 37] = 32
                _639 = mem[_605]
                mem[_360 + stor13.length.field_1 + _392 + 69] = mem[_605]
                mem[_360 + stor13.length.field_1 + _392 + 101 len ceil32(_639)] = mem[_605 + 32 len ceil32(_639)]
                if ceil32(_639) > _639:
                    mem[_360 + stor13.length.field_1 + _392 + _639 + 101] = 0
                return 32, mem[_360 + stor13.length.field_1 + _392 + 69 len ceil32(_639) + 32]
            _620 = mem[64]
            mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
            mem[_360 + stor13.length.field_1 + mem[96] + 37] = 32
            _647 = mem[_620]
            mem[_360 + stor13.length.field_1 + _392 + 69] = mem[_620]
            mem[_360 + stor13.length.field_1 + _392 + 101 len ceil32(_647)] = mem[_620 + 32 len ceil32(_647)]
            if ceil32(_647) > _647:
                mem[_360 + stor13.length.field_1 + _392 + _647 + 101] = 0
            return 32, mem[_360 + stor13.length.field_1 + _392 + 69 len ceil32(_647) + 32]
        if bool(stor13.length) != 1:
            _397 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_397] = '.json'
            if ceil32(_397) <= _397:
                _607 = mem[64]
                mem[64] = _397 + 5
                mem[_397 + 5] = 32
                _640 = mem[_607]
                mem[_397 + 37] = mem[_607]
                mem[_397 + 69 len ceil32(_640)] = mem[_607 + 32 len ceil32(_640)]
                if ceil32(_640) > _640:
                    mem[_397 + _640 + 69] = 0
                return 32, mem[_397 + 37 len ceil32(_640) + 32]
            _622 = mem[64]
            mem[64] = _397 + 5
            mem[_397 + 5] = 32
            _648 = mem[_622]
            mem[_397 + 37] = mem[_622]
            mem[_397 + 69 len ceil32(_648)] = mem[_622 + 32 len ceil32(_648)]
            if ceil32(_648) > _648:
                mem[_397 + _648 + 69] = 0
            return 32, mem[_397 + 37 len ceil32(_648) + 32]
        mem[0] = 13
        idx = 0
        s = 0
        while idx < stor13.length.field_1:
            mem[_360 + idx + 32] = stor13[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _589 = mem[96]
        mem[_360 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_360 + stor13.length.field_1 + _589 + 32] = '.json'
        if ceil32(_589) <= _589:
            _801 = mem[64]
            mem[64] = _360 + stor13.length.field_1 + _589 + 37
            mem[_360 + stor13.length.field_1 + _589 + 37] = 32
            _817 = mem[_801]
            mem[_360 + stor13.length.field_1 + _589 + 69] = mem[_801]
            mem[_360 + stor13.length.field_1 + _589 + 101 len ceil32(_817)] = mem[_801 + 32 len ceil32(_817)]
            if ceil32(_817) > _817:
                mem[_360 + stor13.length.field_1 + _589 + _817 + 101] = 0
            return 32, mem[_360 + stor13.length.field_1 + _589 + 69 len ceil32(_817) + 32]
        _808 = mem[64]
        mem[64] = _360 + stor13.length.field_1 + _589 + 37
        mem[_360 + stor13.length.field_1 + _589 + 37] = 32
        _821 = mem[_808]
        mem[_360 + stor13.length.field_1 + _589 + 69] = mem[_808]
        mem[_360 + stor13.length.field_1 + _589 + 101 len ceil32(_821)] = mem[_808 + 32 len ceil32(_821)]
        if ceil32(_821) > _821:
            mem[_360 + stor13.length.field_1 + _589 + _821 + 101] = 0
        return 32, mem[_360 + stor13.length.field_1 + _589 + 69 len ceil32(_821) + 32]
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor13.length):
        mem[mem[64] + 32] = Mask(248, 8, stor13.length)
        _398 = mem[96]
        mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + stor13.length.field_1 + mem[96] + 32] = '.json'
        if ceil32(mem[96]) <= mem[96]:
            _608 = mem[64]
            mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
            mem[_360 + stor13.length.field_1 + mem[96] + 37] = 32
            _641 = mem[_608]
            mem[_360 + stor13.length.field_1 + _398 + 69] = mem[_608]
            mem[_360 + stor13.length.field_1 + _398 + 101 len ceil32(_641)] = mem[_608 + 32 len ceil32(_641)]
            if ceil32(_641) > _641:
                mem[_360 + stor13.length.field_1 + _398 + _641 + 101] = 0
            return 32, mem[_360 + stor13.length.field_1 + _398 + 69 len ceil32(_641) + 32]
        _624 = mem[64]
        mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
        mem[_360 + stor13.length.field_1 + mem[96] + 37] = 32
        _649 = mem[_624]
        mem[_360 + stor13.length.field_1 + _398 + 69] = mem[_624]
        mem[_360 + stor13.length.field_1 + _398 + 101 len ceil32(_649)] = mem[_624 + 32 len ceil32(_649)]
        if ceil32(_649) > _649:
            mem[_360 + stor13.length.field_1 + _398 + _649 + 101] = 0
        return 32, mem[_360 + stor13.length.field_1 + _398 + 69 len ceil32(_649) + 32]
    if bool(stor13.length) != 1:
        _400 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_400] = '.json'
        if ceil32(_400) <= _400:
            _610 = mem[64]
            mem[64] = _400 + 5
            mem[_400 + 5] = 32
            _642 = mem[_610]
            mem[_400 + 37] = mem[_610]
            mem[_400 + 69 len ceil32(_642)] = mem[_610 + 32 len ceil32(_642)]
            if ceil32(_642) > _642:
                mem[_400 + _642 + 69] = 0
            return 32, mem[_400 + 37 len ceil32(_642) + 32]
        _626 = mem[64]
        mem[64] = _400 + 5
        mem[_400 + 5] = 32
        _650 = mem[_626]
        mem[_400 + 37] = mem[_626]
        mem[_400 + 69 len ceil32(_650)] = mem[_626 + 32 len ceil32(_650)]
        if ceil32(_650) > _650:
            mem[_400 + _650 + 69] = 0
        return 32, mem[_400 + 37 len ceil32(_650) + 32]
    mem[0] = 13
    idx = 0
    s = 0
    while idx < stor13.length.field_1:
        mem[_360 + idx + 32] = stor13[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _590 = mem[96]
    mem[_360 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_360 + stor13.length.field_1 + _590 + 32] = '.json'
    if ceil32(_590) <= _590:
        _802 = mem[64]
        mem[64] = _360 + stor13.length.field_1 + _590 + 37
        mem[_360 + stor13.length.field_1 + _590 + 37] = 32
        _818 = mem[_802]
        mem[_360 + stor13.length.field_1 + _590 + 69] = mem[_802]
        mem[_360 + stor13.length.field_1 + _590 + 101 len ceil32(_818)] = mem[_802 + 32 len ceil32(_818)]
        if ceil32(_818) > _818:
            mem[_360 + stor13.length.field_1 + _590 + _818 + 101] = 0
        return 32, mem[_360 + stor13.length.field_1 + _590 + 69 len ceil32(_818) + 32]
    _810 = mem[64]
    mem[64] = _360 + stor13.length.field_1 + _590 + 37
    mem[_360 + stor13.length.field_1 + _590 + 37] = 32
    _822 = mem[_810]
    mem[_360 + stor13.length.field_1 + _590 + 69] = mem[_810]
    mem[_360 + stor13.length.field_1 + _590 + 101 len ceil32(_822)] = mem[_810 + 32 len ceil32(_822)]
    if ceil32(_822) > _822:
        mem[_360 + stor13.length.field_1 + _590 + _822 + 101] = 0
    return 32, mem[_360 + stor13.length.field_1 + _590 + 69 len ceil32(_822) + 32]
}



}
