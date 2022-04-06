contract main {




// =====================  Runtime code  =====================


const creatorAddress = 0x73d923358c8def832e4f7d5bc9fddb1ed5920b6a

const sub_fbb8e48d(?) = 8888


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
uint256 totalMint;
mapping of struct stor8;
uint256 stor9;
array of struct stor10;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalMint() {
    return totalMint
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

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
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

function withdrawBalance() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'Zero balance error.'
    call 0x73d923358c8def832e4f7d5bc9fddb1ed5920b6a with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
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
        revert with 0, 'ERC721: transfer of token that is not own'
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
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
        revert with 0, 'ERC721: transfer of token that is not own'
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
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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

function sub_22335395(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor10.length
    if stor10[arg1].field_256:
        if stor10[arg1].field_256 == stor10[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_256:
            if stor10[arg1].field_256 == stor10[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_257:
                if 31 >= stor10[arg1].field_257:
                    mem[128] = 256 * stor10[arg1].field_264
                else:
                    mem[128] = stor[sha3((2 * arg1) + ('name', 'stor10', 10) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((2 * arg1) + ('name', 'stor10', 10) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor10[arg1].field_256 == stor10[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_257:
                if 31 >= stor10[arg1].field_257:
                    mem[128] = 256 * stor10[arg1].field_264
                else:
                    mem[128] = stor[sha3((2 * arg1) + ('name', 'stor10', 10) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((2 * arg1) + ('name', 'stor10', 10) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor10[arg1].field_0, 
               Array(len=2 * Mask(256, -1, stor10[arg1].field_257), data=mem[128 len ceil32(stor10[arg1].field_257)])
    if stor10[arg1].field_256 == stor10[arg1].field_257 < 32:
        revert with 'NH{q', 34
    if stor10[arg1].field_256:
        if stor10[arg1].field_256 == stor10[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_257:
            if 31 >= stor10[arg1].field_257:
                mem[128] = 256 * stor10[arg1].field_264
            else:
                mem[128] = stor[sha3((2 * arg1) + ('name', 'stor10', 10) + 1)].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((2 * arg1) + ('name', 'stor10', 10) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor10[arg1].field_256 == stor10[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_257:
            if 31 >= stor10[arg1].field_257:
                mem[128] = 256 * stor10[arg1].field_264
            else:
                mem[128] = stor[sha3((2 * arg1) + ('name', 'stor10', 10) + 1)].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((2 * arg1) + ('name', 'stor10', 10) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor10[arg1].field_0, Array(len=stor10[arg1].field_256, data=mem[128 len ceil32(stor10[arg1].field_257)])
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ownerOf[arg1]
    if stor8[arg1].field_0:
        if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor8[arg1].field_0:
            if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor8[arg1].field_1:
                if 31 < stor8[arg1].field_1:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_1), data=mem[128 len ceil32(stor8[arg1].field_1)])
                mem[128] = 256 * stor8[arg1].field_8
        else:
            if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor8[arg1].field_1:
                if 31 < stor8[arg1].field_1:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_1), data=mem[128 len ceil32(stor8[arg1].field_1)])
                mem[128] = 256 * stor8[arg1].field_8
        mem[ceil32(stor8[arg1].field_1) + 192 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
        if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
            mem[ceil32(stor8[arg1].field_1) + stor8[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8[arg1].field_1), data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + 192 len 2 * ceil32(stor8[arg1].field_1)]), 
    if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor8[arg1].field_0:
        if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor8[arg1].field_1:
            if 31 < stor8[arg1].field_1:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
            mem[128] = 256 * stor8[arg1].field_8
    else:
        if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor8[arg1].field_1:
            if 31 < stor8[arg1].field_1:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
            mem[128] = 256 * stor8[arg1].field_8
    mem[ceil32(stor8[arg1].field_1) + 192 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
    if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
        mem[ceil32(stor8[arg1].field_1) + stor8[arg1].field_1 + 192] = 0
    return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + 192 len 2 * ceil32(stor8[arg1].field_1)]), 
}

function sub_7348229b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if totalMint > 8888:
        revert with 0, 'Max limit'
    if msg.value < stor9:
        revert with 0, 'Value below price'
    stor10.length++
    stor10[stor10.length].field_0 = totalMint
    if stor10[stor10.length].field_256:
        if stor10[stor10.length].field_256 == stor10[stor10.length].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((2 * stor10.length) + ('name', 'stor10', 10) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10[stor10.length].field_256 = 0
            idx = 0
            while stor10[stor10.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((2 * stor10.length) + ('name', 'stor10', 10) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor10[stor10.length].field_256 == stor10[stor10.length].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((2 * stor10.length) + ('name', 'stor10', 10) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10[stor10.length].field_256 = 0
            idx = 0
            while stor10[stor10.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((2 * stor10.length) + ('name', 'stor10', 10) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    totalMint++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor7] = msg.sender
    emit Transfer(0, msg.sender, totalMint);
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, 0, totalMint, 128, 0
        if not ext_call.success:
            if not return_data.size:
                if not arg1.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg1[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit CreateTurtle(totalMint);
}

function sub_12138460(?) {
    mem[64] = (32 * stor10.length) + 128
    mem[96] = stor10.length
    s = 128
    idx = 0
    while idx < stor10.length:
        mem[0] = 10
        _19 = mem[64]
        mem[64] = mem[64] + 64
        mem[_19] = stor10[idx].field_0
        if stor10[idx].field_256:
            if stor10[idx].field_256 == stor10[idx].field_257 < 32:
                revert with 'NH{q', 34
            _22 = mem[64]
            mem[64] = mem[64] + ceil32(stor10[idx].field_257) + 32
            mem[_22] = stor10[idx].field_257
            if stor10[idx].field_256:
                if stor10[idx].field_256 == stor10[idx].field_257 < 32:
                    revert with 'NH{q', 34
                if stor10[idx].field_257:
                    if 31 >= stor10[idx].field_257:
                        mem[_22 + 32] = 256 * stor10[idx].field_264
                    else:
                        mem[0] = (2 * idx) + sha3(10) + 1
                        mem[_22 + 32] = stor[sha3((2 * idx) + ('name', 'stor10', 10) + 1)].field_0
                        t = _22 + 32
                        u = sha3(mem[0])
                        while _22 + stor10[idx].field_257 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_19 + 32] = _22
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            if stor10[idx].field_256 == stor10[idx].field_257 < 32:
                revert with 'NH{q', 34
            if not stor10[idx].field_257:
                mem[_19 + 32] = _22
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor10[idx].field_257:
                mem[_22 + 32] = 256 * stor10[idx].field_264
                mem[_19 + 32] = _22
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (2 * idx) + sha3(10) + 1
            mem[_22 + 32] = stor[sha3((2 * idx) + ('name', 'stor10', 10) + 1)].field_0
            t = _22 + 32
            u = sha3(mem[0])
            while _22 + stor10[u].field_257 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_19 + 32] = _22
            mem[t] = _19
            t = t + 32
            u = u + 1
            continue 
        if stor10[idx].field_256 == stor10[idx].field_257 < 32:
            revert with 'NH{q', 34
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(stor10[idx].field_257) + 32
        mem[_23] = stor10[idx].field_257
        if stor10[idx].field_256:
            if stor10[idx].field_256 == stor10[idx].field_257 < 32:
                revert with 'NH{q', 34
            if not stor10[idx].field_257:
                mem[_19 + 32] = _23
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor10[idx].field_257:
                mem[_23 + 32] = 256 * stor10[idx].field_264
                mem[_19 + 32] = _23
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (2 * idx) + sha3(10) + 1
            mem[_23 + 32] = stor[sha3((2 * idx) + ('name', 'stor10', 10) + 1)].field_0
            t = _23 + 32
            u = sha3(mem[0])
            while _23 + stor10[u].field_257 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_19 + 32] = _23
            mem[t] = _19
            t = t + 32
            u = u + 1
            continue 
        if stor10[idx].field_256 == stor10[idx].field_257 < 32:
            revert with 'NH{q', 34
        if stor10[idx].field_257:
            if 31 >= stor10[idx].field_257:
                mem[_23 + 32] = 256 * stor10[idx].field_264
            else:
                mem[0] = (2 * idx) + sha3(10) + 1
                mem[_23 + 32] = stor[sha3((2 * idx) + ('name', 'stor10', 10) + 1)].field_0
                t = _23 + 32
                u = sha3(mem[0])
                while _23 + stor10[idx].field_257 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_19 + 32] = _23
        mem[s] = _19
        s = s + 32
        idx = idx + 1
        continue 
    _20 = mem[64]
    mem[mem[64]] = 32
    _21 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _21:
        mem[u] = t + -_20 - 64
        _34 = mem[s]
        mem[t] = mem[mem[s]]
        _37 = mem[_34 + 32]
        mem[t + 32] = 64
        _38 = mem[_37]
        mem[t + 64] = mem[_37]
        v = 0
        while v < _38:
            mem[t + v + 96] = mem[_37 + v + 32]
            v = v + 32
            continue 
        if ceil32(_38) > _38:
            mem[t + _38 + 96] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_38) + 96
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_74fd87c2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = address(arg1)
    mem[32] = 3
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    mem[96] = balanceOf[address(arg1)]
    mem[64] = (32 * balanceOf[address(arg1)]) + 128
    if not balanceOf[address(arg1)]:
        idx = 0
        s = 0
        while idx < stor10.length:
            mem[0] = idx
            mem[32] = 2
            if not ownerOf[idx]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[idx] != address(arg1):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor10.length:
                revert with 'NH{q', 50
            mem[0] = 10
            _74 = mem[64]
            mem[64] = mem[64] + 64
            mem[_74] = stor10[idx].field_0
            if stor10[idx].field_256:
                if stor10[idx].field_256 == stor10[idx].field_257 < 32:
                    revert with 'NH{q', 34
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(stor10[idx].field_257) + 32
                mem[_78] = stor10[idx].field_257
                if stor10[idx].field_256:
                    if stor10[idx].field_256 == stor10[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor10[idx].field_257:
                        if 31 >= stor10[idx].field_257:
                            mem[_78 + 32] = 256 * stor10[idx].field_264
                        else:
                            mem[0] = (2 * idx) + sha3(10) + 1
                            mem[_78 + 32] = stor[sha3((2 * idx) + ('name', 'stor10', 10) + 1)].field_0
                            t = _78 + 32
                            u = sha3(mem[0])
                            while _78 + stor10[idx].field_257 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor10[idx].field_256 == stor10[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor10[idx].field_257:
                        if 31 >= stor10[idx].field_257:
                            mem[_78 + 32] = 256 * stor10[idx].field_264
                        else:
                            mem[0] = (2 * idx) + sha3(10) + 1
                            mem[_78 + 32] = stor[sha3((2 * idx) + ('name', 'stor10', 10) + 1)].field_0
                            t = _78 + 32
                            u = sha3(mem[0])
                            while _78 + stor10[idx].field_257 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_74 + 32] = _78
            else:
                if stor10[idx].field_256 == stor10[idx].field_257 < 32:
                    revert with 'NH{q', 34
                _80 = mem[64]
                mem[64] = mem[64] + ceil32(stor10[idx].field_257) + 32
                mem[_80] = stor10[idx].field_257
                if stor10[idx].field_256:
                    if stor10[idx].field_256 == stor10[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor10[idx].field_257:
                        if 31 >= stor10[idx].field_257:
                            mem[_80 + 32] = 256 * stor10[idx].field_264
                        else:
                            mem[0] = (2 * idx) + sha3(10) + 1
                            mem[_80 + 32] = stor[sha3((2 * idx) + ('name', 'stor10', 10) + 1)].field_0
                            t = _80 + 32
                            u = sha3(mem[0])
                            while _80 + stor10[idx].field_257 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor10[idx].field_256 == stor10[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor10[idx].field_257:
                        if 31 >= stor10[idx].field_257:
                            mem[_80 + 32] = 256 * stor10[idx].field_264
                        else:
                            mem[0] = (2 * idx) + sha3(10) + 1
                            mem[_80 + 32] = stor[sha3((2 * idx) + ('name', 'stor10', 10) + 1)].field_0
                            t = _80 + 32
                            u = sha3(mem[0])
                            while _80 + stor10[idx].field_257 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_74 + 32] = _80
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _74
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _69 = mem[64]
        mem[mem[64]] = 32
        _72 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _72:
            mem[u] = t + -_69 - 64
            _132 = mem[s]
            mem[t] = mem[mem[s]]
            _141 = mem[_132 + 32]
            mem[t + 32] = 64
            _143 = mem[_141]
            mem[t + 64] = mem[_141]
            v = 0
            while v < _143:
                mem[t + v + 96] = mem[_141 + v + 32]
                v = v + 32
                continue 
            if ceil32(_143) > _143:
                mem[t + _143 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_143) + 96
            u = u + 32
            continue 
    else:
        mem[64] = (32 * balanceOf[address(arg1)]) + 192
        mem[(32 * balanceOf[address(arg1)]) + 128] = 0
        mem[(32 * balanceOf[address(arg1)]) + 160] = 96
        mem[var24001] = (32 * balanceOf[address(arg1)]) + 128
        s = var24001
        idx = var24002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * balanceOf[address(arg1)]) + 128] = 0
            mem[(32 * balanceOf[address(arg1)]) + 160] = 96
            mem[s + 32] = (32 * balanceOf[address(arg1)]) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        while idx < stor10.length:
            mem[0] = idx
            mem[32] = 2
            if not ownerOf[idx]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[idx] != address(arg1):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor10.length:
                revert with 'NH{q', 50
            mem[0] = 10
            _179 = mem[64]
            mem[64] = mem[64] + 64
            mem[_179] = stor10[idx].field_0
            if stor10[idx].field_256:
                if stor10[idx].field_256 == stor10[idx].field_257 < 32:
                    revert with 'NH{q', 34
                _180 = mem[64]
                mem[64] = mem[64] + ceil32(stor10[idx].field_257) + 32
                mem[_180] = stor10[idx].field_257
                if stor10[idx].field_256:
                    if stor10[idx].field_256 == stor10[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor10[idx].field_257:
                        if 31 >= stor10[idx].field_257:
                            mem[_180 + 32] = 256 * stor10[idx].field_264
                        else:
                            mem[0] = (2 * idx) + sha3(10) + 1
                            mem[_180 + 32] = stor[sha3((2 * idx) + ('name', 'stor10', 10) + 1)].field_0
                            t = _180 + 32
                            u = sha3(mem[0])
                            while _180 + stor10[idx].field_257 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor10[idx].field_256 == stor10[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor10[idx].field_257:
                        if 31 >= stor10[idx].field_257:
                            mem[_180 + 32] = 256 * stor10[idx].field_264
                        else:
                            mem[0] = (2 * idx) + sha3(10) + 1
                            mem[_180 + 32] = stor[sha3((2 * idx) + ('name', 'stor10', 10) + 1)].field_0
                            t = _180 + 32
                            u = sha3(mem[0])
                            while _180 + stor10[idx].field_257 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_179 + 32] = _180
            else:
                if stor10[idx].field_256 == stor10[idx].field_257 < 32:
                    revert with 'NH{q', 34
                _181 = mem[64]
                mem[64] = mem[64] + ceil32(stor10[idx].field_257) + 32
                mem[_181] = stor10[idx].field_257
                if stor10[idx].field_256:
                    if stor10[idx].field_256 == stor10[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor10[idx].field_257:
                        if 31 >= stor10[idx].field_257:
                            mem[_181 + 32] = 256 * stor10[idx].field_264
                        else:
                            mem[0] = (2 * idx) + sha3(10) + 1
                            mem[_181 + 32] = stor[sha3((2 * idx) + ('name', 'stor10', 10) + 1)].field_0
                            t = _181 + 32
                            u = sha3(mem[0])
                            while _181 + stor10[idx].field_257 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor10[idx].field_256 == stor10[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor10[idx].field_257:
                        if 31 >= stor10[idx].field_257:
                            mem[_181 + 32] = 256 * stor10[idx].field_264
                        else:
                            mem[0] = (2 * idx) + sha3(10) + 1
                            mem[_181 + 32] = stor[sha3((2 * idx) + ('name', 'stor10', 10) + 1)].field_0
                            t = _181 + 32
                            u = sha3(mem[0])
                            while _181 + stor10[idx].field_257 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_179 + 32] = _181
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _179
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _174 = mem[64]
        mem[mem[64]] = 32
        _177 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _177:
            mem[u] = t + -_174 - 64
            _205 = mem[s]
            mem[t] = mem[mem[s]]
            _212 = mem[_205 + 32]
            mem[t + 32] = 64
            _213 = mem[_212]
            mem[t + 64] = mem[_212]
            v = 0
            while v < _213:
                mem[t + v + 96] = mem[_212 + v + 32]
                v = v + 32
                continue 
            if ceil32(_213) > _213:
                mem[t + _213 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_213) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
