contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
mapping of struct stor7;
mapping of uint256 tokenEID;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function tokenEID(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    return tokenEID[arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function totalSupply() payable {
    if var18001 != -1:
        if not var26001:
            if var26002 < 2:
                revert with 'NH{q', 17
            return (var26002 - 2)
        idx = var26002
        while idx != -1:
            mem[0] = idx
            mem[32] = 2
            if ownerOf[idx]:
                idx = idx + 1
                continue 
            if idx + 1 < 2:
                revert with 'NH{q', 17
            return (idx - 1)
    revert with 'NH{q', 17
}

function mint(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[arg2] = arg1
    emit Transfer(0, arg1, arg2);
    tokenEID[arg2] = arg3
}

function approve(address arg1, uint256 arg2) payable {
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

function makeExperience(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7[arg1].field_0:
        if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor7[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor7[arg1].field_0 = 0
            idx = 0
            while stor7[arg1].field_1 + 31 / 32 > idx:
                stor7[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor7[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor7[arg1].field_0 = 0
            idx = 0
            while stor7[arg1].field_1 + 31 / 32 > idx:
                stor7[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function totalExperiences() payable {
    if var21001 == -1:
        revert with 'NH{q', 17
    if bool(var27001):
        s = bool(var27001)
        t = var27001 / 2
        u = var27001
        u = var27003
        u = var27005
        while s != t < 32:
            if not t:
                if u < 2:
                    revert with 'NH{q', 17
                return (u - 2)
            if u == -1:
                revert with 'NH{q', 17
            mem[0] = u
            mem[32] = 7
            if stor7[u].field_0:
                s = stor7[u].field_0
                t = stor7[u].field_1
                u = stor7[u].field_0
                u = sha3(u, 7)
                u = u + 1
                continue 
            s = stor7[u].field_0
            t = stor7[u].field_1
            u = stor7[u].field_0
            u = sha3(u, 7)
            u = u + 1
            continue 
    else:
        s = bool(var27001)
        s = var27001 / 2
        s = var27001
        s = var27003
        s = var27005
        while var30001 != var30002 < 32:
            if not var30002:
                if var30007 < 2:
                    revert with 'NH{q', 17
                return (var30007 - 2)
            if var30007 == -1:
                revert with 'NH{q', 17
            mem[0] = var30007
            mem[32] = 7
            if stor7[var30007].field_0:
                var30001 = stor7[var30007].field_0
                var30002 = stor7[var30007].field_1
                var30003 = stor7[var30007].field_0
                var30005 = sha3(var30007, 7)
                var30007 = var30007 + 1
                continue 
            s = stor7[var30007].field_0
            s = stor7[var30007].field_1
            s = stor7[var30007].field_0
            s = sha3(var30007, 7)
            s = var30007 + 1
            continue 
    revert with 'NH{q', 34
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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

function name() payable {
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

function symbol() payable {
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if stor7[stor8[arg1]].field_0:
        if stor7[stor8[arg1]].field_0 == stor7[stor8[arg1]].field_1 < 32:
            revert with 'NH{q', 34
        if stor7[stor8[arg1]].field_0:
            if stor7[stor8[arg1]].field_0 == stor7[stor8[arg1]].field_1 < 32:
                revert with 'NH{q', 34
            if stor7[stor8[arg1]].field_1:
                if 31 < stor7[stor8[arg1]].field_1:
                    mem[128] = stor7[stor8[arg1]].field_0
                    idx = 128
                    s = 0
                    while stor7[stor8[arg1]].field_1 + 96 > idx:
                        mem[idx + 32] = stor7[stor8[arg1]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7[stor8[arg1]].field_1), data=mem[128 len ceil32(stor7[stor8[arg1]].field_1)])
                mem[128] = 256 * stor7[stor8[arg1]].field_8
        else:
            if stor7[stor8[arg1]].field_0 == stor7[stor8[arg1]].field_1 < 32:
                revert with 'NH{q', 34
            if stor7[stor8[arg1]].field_1:
                if 31 < stor7[stor8[arg1]].field_1:
                    mem[128] = stor7[stor8[arg1]].field_0
                    idx = 128
                    s = 0
                    while stor7[stor8[arg1]].field_1 + 96 > idx:
                        mem[idx + 32] = stor7[stor8[arg1]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7[stor8[arg1]].field_1), data=mem[128 len ceil32(stor7[stor8[arg1]].field_1)])
                mem[128] = 256 * stor7[stor8[arg1]].field_8
        mem[ceil32(stor7[stor8[arg1]].field_1) + 192 len ceil32(stor7[stor8[arg1]].field_1)] = mem[128 len ceil32(stor7[stor8[arg1]].field_1)]
        if ceil32(stor7[stor8[arg1]].field_1) > stor7[stor8[arg1]].field_1:
            mem[ceil32(stor7[stor8[arg1]].field_1) + stor7[stor8[arg1]].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7[stor8[arg1]].field_1), data=mem[128 len ceil32(stor7[stor8[arg1]].field_1)], mem[(2 * ceil32(stor7[stor8[arg1]].field_1)) + 192 len 2 * ceil32(stor7[stor8[arg1]].field_1)]), 
    if stor7[stor8[arg1]].field_0 == stor7[stor8[arg1]].field_1 < 32:
        revert with 'NH{q', 34
    if stor7[stor8[arg1]].field_0:
        if stor7[stor8[arg1]].field_0 == stor7[stor8[arg1]].field_1 < 32:
            revert with 'NH{q', 34
        if stor7[stor8[arg1]].field_1:
            if 31 < stor7[stor8[arg1]].field_1:
                mem[128] = stor7[stor8[arg1]].field_0
                idx = 128
                s = 0
                while stor7[stor8[arg1]].field_1 + 96 > idx:
                    mem[idx + 32] = stor7[stor8[arg1]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[stor8[arg1]].field_0, data=mem[128 len ceil32(stor7[stor8[arg1]].field_1)])
            mem[128] = 256 * stor7[stor8[arg1]].field_8
    else:
        if stor7[stor8[arg1]].field_0 == stor7[stor8[arg1]].field_1 < 32:
            revert with 'NH{q', 34
        if stor7[stor8[arg1]].field_1:
            if 31 < stor7[stor8[arg1]].field_1:
                mem[128] = stor7[stor8[arg1]].field_0
                idx = 128
                s = 0
                while stor7[stor8[arg1]].field_1 + 96 > idx:
                    mem[idx + 32] = stor7[stor8[arg1]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[stor8[arg1]].field_0, data=mem[128 len ceil32(stor7[stor8[arg1]].field_1)])
            mem[128] = 256 * stor7[stor8[arg1]].field_8
    mem[ceil32(stor7[stor8[arg1]].field_1) + 192 len ceil32(stor7[stor8[arg1]].field_1)] = mem[128 len ceil32(stor7[stor8[arg1]].field_1)]
    if ceil32(stor7[stor8[arg1]].field_1) > stor7[stor8[arg1]].field_1:
        mem[ceil32(stor7[stor8[arg1]].field_1) + stor7[stor8[arg1]].field_1 + 192] = 0
    return Array(len=stor7[stor8[arg1]].field_0, data=mem[128 len ceil32(stor7[stor8[arg1]].field_1)], mem[(2 * ceil32(stor7[stor8[arg1]].field_1)) + 192 len 2 * ceil32(stor7[stor8[arg1]].field_1)]), 
}

function owns(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if var31001 == -1:
        revert with 'NH{q', 17
    mem[0] = var37001
    mem[32] = 2
    if var39001:
        idx = var39002
        while idx != -1:
            mem[0] = idx
            mem[32] = 2
            if ownerOf[idx]:
                idx = idx + 1
                continue 
            if idx + 1 < 2:
                revert with 'NH{q', 17
            mem[64] = 160
            mem[96] = 2
            mem[128] = '[ '
            s = 1
            while s <= idx - 1:
                mem[0] = s
                mem[32] = 2
                if not ownerOf[s]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[s] == arg1:
                    _284 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 160
                    mem[_284 + 32 len 100] = call.data[calldata.size len 100]
                    t = 0
                    idx = s
                    while idx:
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t == -1:
                            revert with 'NH{q', 17
                        if t >= mem[_284]:
                            revert with 'NH{q', 50
                        mem[t + _284 + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t + 1
                        idx = idx / 10
                        continue 
                    _367 = mem[96]
                    if mem[96] > -t - 1:
                        revert with 'NH{q', 17
                    if mem[96] + t > test266151307():
                        revert with 'NH{q', 65
                    _380 = mem[64]
                    mem[mem[64]] = mem[96] + t
                    mem[64] = mem[64] + floor32(_367 + t + 31) + 32
                    if not _367 + t:
                        _434 = mem[96]
                        idx = 0
                        while idx < _434:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[_380]:
                                revert with 'NH{q', 50
                            mem[idx + _380 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        u = 0
                        while u < t:
                            if t < 1:
                                revert with 'NH{q', 17
                            if t - 1 < u:
                                revert with 'NH{q', 17
                            if t + -u - 1 >= mem[_284]:
                                revert with 'NH{q', 50
                            if u > -mem[96] - 1:
                                revert with 'NH{q', 17
                            if u + mem[96] >= mem[_380]:
                                revert with 'NH{q', 50
                            mem[u + mem[96] + _380 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            continue 
                        _486 = mem[64]
                        _488 = mem[_380]
                        idx = 0
                        while idx < _488:
                            mem[_486 + idx + 32] = mem[_380 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_486 + _488 + 32] = ', '
                        mem[mem[64]] = _486 + _488 + -mem[64] + 2
                        mem[64] = _486 + _488 + 34
                    else:
                        mem[_380 + 32 len _367 + t] = call.data[calldata.size len _367 + t]
                        _435 = mem[96]
                        idx = 0
                        while idx < _435:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[_380]:
                                revert with 'NH{q', 50
                            mem[idx + _380 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        u = 0
                        while u < t:
                            if t < 1:
                                revert with 'NH{q', 17
                            if t - 1 < u:
                                revert with 'NH{q', 17
                            if t + -u - 1 >= mem[_284]:
                                revert with 'NH{q', 50
                            if u > -mem[96] - 1:
                                revert with 'NH{q', 17
                            if u + mem[96] >= mem[_380]:
                                revert with 'NH{q', 50
                            mem[u + mem[96] + _380 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            continue 
                        _487 = mem[64]
                        _489 = mem[_380]
                        idx = 0
                        while idx < _489:
                            mem[_487 + idx + 32] = mem[_380 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_487 + _489 + 32] = ', '
                        mem[mem[64]] = _487 + _489 + -mem[64] + 2
                        mem[64] = _487 + _489 + 34
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            _280 = mem[64]
            _283 = mem[96]
            idx = 0
            while idx < _283:
                mem[_280 + idx + 32] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_280 + _283 + 32] = ']'
            if ceil32(_283) <= _283:
                _381 = mem[64]
                mem[64] = _280 + _283 + 33
                mem[_280 + _283 + 33] = 32
                _395 = mem[_381]
                mem[_280 + _283 + 65] = mem[_381]
                idx = 0
                while idx < _395:
                    mem[_280 + _283 + idx + 97] = mem[_381 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_395) > _395:
                    mem[_280 + _283 + _395 + 97] = 0
                return 32, mem[_280 + _283 + 65 len ceil32(_395) + 32]
            _384 = mem[64]
            mem[64] = _280 + _283 + 33
            mem[_280 + _283 + 33] = 32
            _397 = mem[_384]
            mem[_280 + _283 + 65] = mem[_384]
            idx = 0
            while idx < _397:
                mem[_280 + _283 + idx + 97] = mem[_384 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_397) > _397:
                mem[_280 + _283 + _397 + 97] = 0
            return 32, mem[_280 + _283 + 65 len ceil32(_397) + 32]
        revert with 'NH{q', 17
    if var39002 < 2:
        revert with 'NH{q', 17
    mem[64] = 160
    mem[96] = 2
    mem[128] = '[ '
    s = 1
    while s <= var39002 - 2:
        mem[0] = s
        mem[32] = 2
        if not ownerOf[s]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[s] == arg1:
            _220 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 160
            mem[_220 + 32 len 100] = call.data[calldata.size len 100]
            t = 0
            idx = s
            while idx:
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t == -1:
                    revert with 'NH{q', 17
                if t >= mem[_220]:
                    revert with 'NH{q', 50
                mem[t + _220 + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t + 1
                idx = idx / 10
                continue 
            _279 = mem[96]
            if mem[96] > -t - 1:
                revert with 'NH{q', 17
            if mem[96] + t > test266151307():
                revert with 'NH{q', 65
            _285 = mem[64]
            mem[mem[64]] = mem[96] + t
            mem[64] = mem[64] + floor32(_279 + t + 31) + 32
            if not _279 + t:
                _360 = mem[96]
                idx = 0
                while idx < _360:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_285]:
                        revert with 'NH{q', 50
                    mem[idx + _285 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                u = 0
                while u < t:
                    if t < 1:
                        revert with 'NH{q', 17
                    if t - 1 < u:
                        revert with 'NH{q', 17
                    if t + -u - 1 >= mem[_220]:
                        revert with 'NH{q', 50
                    if u > -mem[96] - 1:
                        revert with 'NH{q', 17
                    if u + mem[96] >= mem[_285]:
                        revert with 'NH{q', 50
                    mem[u + mem[96] + _285 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    continue 
                _440 = mem[64]
                _448 = mem[_285]
                idx = 0
                while idx < _448:
                    mem[_440 + idx + 32] = mem[_285 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_440 + _448 + 32] = ', '
                mem[mem[64]] = _440 + _448 + -mem[64] + 2
                mem[64] = _440 + _448 + 34
            else:
                mem[_285 + 32 len _279 + t] = call.data[calldata.size len _279 + t]
                _361 = mem[96]
                idx = 0
                while idx < _361:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_285]:
                        revert with 'NH{q', 50
                    mem[idx + _285 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                u = 0
                while u < t:
                    if t < 1:
                        revert with 'NH{q', 17
                    if t - 1 < u:
                        revert with 'NH{q', 17
                    if t + -u - 1 >= mem[_220]:
                        revert with 'NH{q', 50
                    if u > -mem[96] - 1:
                        revert with 'NH{q', 17
                    if u + mem[96] >= mem[_285]:
                        revert with 'NH{q', 50
                    mem[u + mem[96] + _285 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    continue 
                _441 = mem[64]
                _449 = mem[_285]
                idx = 0
                while idx < _449:
                    mem[_441 + idx + 32] = mem[_285 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_441 + _449 + 32] = ', '
                mem[mem[64]] = _441 + _449 + -mem[64] + 2
                mem[64] = _441 + _449 + 34
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        continue 
    _216 = mem[64]
    _219 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[mem[64] + mem[96] + 32] = ']'
    if ceil32(mem[96]) <= mem[96]:
        _287 = mem[64]
        mem[64] = _216 + _219 + 33
        mem[_216 + _219 + 33] = 32
        _301 = mem[_287]
        mem[_216 + _219 + 65] = mem[_287]
        mem[_216 + _219 + 97 len ceil32(_301)] = mem[_287 + 32 len ceil32(_301)]
        if ceil32(_301) > _301:
            mem[_216 + _219 + _301 + 97] = 0
        return 32, mem[_216 + _219 + 65 len ceil32(_301) + 32]
    _292 = mem[64]
    mem[64] = _216 + _219 + 33
    mem[_216 + _219 + 33] = 32
    _303 = mem[_292]
    mem[_216 + _219 + 65] = mem[_292]
    mem[_216 + _219 + 97 len ceil32(_303)] = mem[_292 + 32 len ceil32(_303)]
    if ceil32(_303) > _303:
        mem[_216 + _219 + _303 + 97] = 0
    return 32, mem[_216 + _219 + 65 len ceil32(_303) + 32]
}

function experiences(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if var31001 == -1:
        revert with 'NH{q', 17
    mem[0] = var37001
    mem[32] = 2
    if var39001:
        idx = var39002
        while idx != -1:
            mem[0] = idx
            mem[32] = 2
            if ownerOf[idx]:
                idx = idx + 1
                continue 
            if idx + 1 < 2:
                revert with 'NH{q', 17
            mem[64] = 160
            mem[96] = 2
            mem[128] = '{ '
            s = 1
            while s <= idx - 1:
                mem[0] = s
                mem[32] = 2
                if not ownerOf[s]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[s] == arg1:
                    _388 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 160
                    mem[_388 + 32 len 100] = call.data[calldata.size len 100]
                    t = 0
                    idx = s
                    while idx:
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t == -1:
                            revert with 'NH{q', 17
                        if t >= mem[_388]:
                            revert with 'NH{q', 50
                        mem[t + _388 + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t + 1
                        idx = idx / 10
                        continue 
                    _679 = mem[96]
                    if mem[96] > -t - 1:
                        revert with 'NH{q', 17
                    if mem[96] + t > test266151307():
                        revert with 'NH{q', 65
                    _692 = mem[64]
                    mem[mem[64]] = mem[96] + t
                    mem[64] = mem[64] + floor32(_679 + t + 31) + 32
                    if not _679 + t:
                        _954 = mem[96]
                        idx = 0
                        while idx < _954:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[_692]:
                                revert with 'NH{q', 50
                            mem[idx + _692 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        u = 0
                        while u < t:
                            if t < 1:
                                revert with 'NH{q', 17
                            if t - 1 < u:
                                revert with 'NH{q', 17
                            if t + -u - 1 >= mem[_388]:
                                revert with 'NH{q', 50
                            if u > -mem[96] - 1:
                                revert with 'NH{q', 17
                            if u + mem[96] >= mem[_692]:
                                revert with 'NH{q', 50
                            mem[u + mem[96] + _692 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            continue 
                        _1214 = mem[64]
                        _1216 = mem[_692]
                        idx = 0
                        while idx < _1216:
                            mem[_1214 + idx + 32] = mem[_692 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1214 + _1216 + 32] = ':'
                        if ceil32(_1216) <= _1216:
                            _1458 = mem[64]
                            mem[mem[64]] = _1214 + _1216 + -mem[64] + 1
                            if not ownerOf[s]:
                                revert with 0, 'ERC721Metadata: URI query for nonexistent token'
                            mem[0] = s
                            mem[32] = 8
                            mem[_1214 + _1216 + 33] = 100
                            mem[64] = _1214 + _1216 + 193
                            mem[_1214 + _1216 + 65 len 100] = call.data[calldata.size len 100]
                            t = 0
                            idx = tokenEID[s]
                            while idx:
                                if 48 > -(idx % 10) - 1:
                                    revert with 'NH{q', 17
                                if t == -1:
                                    revert with 'NH{q', 17
                                if t >= 100:
                                    revert with 'NH{q', 50
                                mem[t + _1214 + _1216 + 65 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t + 1
                                idx = idx / 10
                                continue 
                            _1686 = mem[_1458]
                            if mem[_1458] > -t - 1:
                                revert with 'NH{q', 17
                            if mem[_1458] + t > test266151307():
                                revert with 'NH{q', 65
                            _1722 = mem[64]
                            mem[mem[64]] = mem[_1458] + t
                            mem[64] = mem[64] + floor32(_1686 + t + 31) + 32
                            if not _1686 + t:
                                _1890 = mem[_1458]
                                idx = 0
                                while idx < _1890:
                                    if idx >= mem[_1458]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[_1722]:
                                        revert with 'NH{q', 50
                                    mem[idx + _1722 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _1890 = mem[_1458]
                                    idx = idx + 1
                                    continue 
                                u = 0
                                while u < t:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if t - 1 < u:
                                        revert with 'NH{q', 17
                                    if t + -u - 1 >= mem[_1214 + _1216 + 33]:
                                        revert with 'NH{q', 50
                                    if u > -mem[_1458] - 1:
                                        revert with 'NH{q', 17
                                    if u + mem[_1458] >= mem[_1722]:
                                        revert with 'NH{q', 50
                                    mem[u + mem[_1458] + _1722 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    u = u + 1
                                    continue 
                                _2074 = mem[64]
                                _2082 = mem[_1722]
                                idx = 0
                                while idx < _2082:
                                    mem[_2074 + idx + 32] = mem[_1722 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2074 + _2082 + 32] = ', '
                                mem[mem[64]] = _2074 + _2082 + -mem[64] + 2
                                mem[64] = _2074 + _2082 + 34
                            else:
                                mem[_1722 + 32 len _1686 + t] = call.data[calldata.size len _1686 + t]
                                _1891 = mem[_1458]
                                idx = 0
                                while idx < _1891:
                                    if idx >= mem[_1458]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[_1722]:
                                        revert with 'NH{q', 50
                                    mem[idx + _1722 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _1891 = mem[_1458]
                                    idx = idx + 1
                                    continue 
                                u = 0
                                while u < t:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if t - 1 < u:
                                        revert with 'NH{q', 17
                                    if t + -u - 1 >= mem[_1214 + _1216 + 33]:
                                        revert with 'NH{q', 50
                                    if u > -mem[_1458] - 1:
                                        revert with 'NH{q', 17
                                    if u + mem[_1458] >= mem[_1722]:
                                        revert with 'NH{q', 50
                                    mem[u + mem[_1458] + _1722 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    u = u + 1
                                    continue 
                                _2075 = mem[64]
                                _2083 = mem[_1722]
                                idx = 0
                                while idx < _2083:
                                    mem[_2075 + idx + 32] = mem[_1722 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2075 + _2083 + 32] = ', '
                                mem[mem[64]] = _2075 + _2083 + -mem[64] + 2
                                mem[64] = _2075 + _2083 + 34
                        else:
                            _1468 = mem[64]
                            mem[mem[64]] = _1214 + _1216 + -mem[64] + 1
                            if not ownerOf[s]:
                                revert with 0, 'ERC721Metadata: URI query for nonexistent token'
                            mem[0] = s
                            mem[32] = 8
                            mem[_1214 + _1216 + 33] = 100
                            mem[64] = _1214 + _1216 + 193
                            mem[_1214 + _1216 + 65 len 100] = call.data[calldata.size len 100]
                            t = 0
                            idx = tokenEID[s]
                            while idx:
                                if 48 > -(idx % 10) - 1:
                                    revert with 'NH{q', 17
                                if t == -1:
                                    revert with 'NH{q', 17
                                if t >= 100:
                                    revert with 'NH{q', 50
                                mem[t + _1214 + _1216 + 65 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t + 1
                                idx = idx / 10
                                continue 
                            _1687 = mem[_1468]
                            if mem[_1468] > -t - 1:
                                revert with 'NH{q', 17
                            if mem[_1468] + t > test266151307():
                                revert with 'NH{q', 65
                            _1723 = mem[64]
                            mem[mem[64]] = mem[_1468] + t
                            mem[64] = mem[64] + floor32(_1687 + t + 31) + 32
                            if not _1687 + t:
                                _1892 = mem[_1468]
                                idx = 0
                                while idx < _1892:
                                    if idx >= mem[_1468]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[_1723]:
                                        revert with 'NH{q', 50
                                    mem[idx + _1723 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _1892 = mem[_1468]
                                    idx = idx + 1
                                    continue 
                                u = 0
                                while u < t:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if t - 1 < u:
                                        revert with 'NH{q', 17
                                    if t + -u - 1 >= mem[_1214 + _1216 + 33]:
                                        revert with 'NH{q', 50
                                    if u > -mem[_1468] - 1:
                                        revert with 'NH{q', 17
                                    if u + mem[_1468] >= mem[_1723]:
                                        revert with 'NH{q', 50
                                    mem[u + mem[_1468] + _1723 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    u = u + 1
                                    continue 
                                _2076 = mem[64]
                                _2084 = mem[_1723]
                                idx = 0
                                while idx < _2084:
                                    mem[_2076 + idx + 32] = mem[_1723 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2076 + _2084 + 32] = ', '
                                mem[mem[64]] = _2076 + _2084 + -mem[64] + 2
                                mem[64] = _2076 + _2084 + 34
                            else:
                                mem[_1723 + 32 len _1687 + t] = call.data[calldata.size len _1687 + t]
                                _1893 = mem[_1468]
                                idx = 0
                                while idx < _1893:
                                    if idx >= mem[_1468]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[_1723]:
                                        revert with 'NH{q', 50
                                    mem[idx + _1723 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _1893 = mem[_1468]
                                    idx = idx + 1
                                    continue 
                                u = 0
                                while u < t:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if t - 1 < u:
                                        revert with 'NH{q', 17
                                    if t + -u - 1 >= mem[_1214 + _1216 + 33]:
                                        revert with 'NH{q', 50
                                    if u > -mem[_1468] - 1:
                                        revert with 'NH{q', 17
                                    if u + mem[_1468] >= mem[_1723]:
                                        revert with 'NH{q', 50
                                    mem[u + mem[_1468] + _1723 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    u = u + 1
                                    continue 
                                _2077 = mem[64]
                                _2085 = mem[_1723]
                                idx = 0
                                while idx < _2085:
                                    mem[_2077 + idx + 32] = mem[_1723 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2077 + _2085 + 32] = ', '
                                mem[mem[64]] = _2077 + _2085 + -mem[64] + 2
                                mem[64] = _2077 + _2085 + 34
                    else:
                        mem[_692 + 32 len _679 + t] = call.data[calldata.size len _679 + t]
                        _955 = mem[96]
                        idx = 0
                        while idx < _955:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[_692]:
                                revert with 'NH{q', 50
                            mem[idx + _692 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        u = 0
                        while u < t:
                            if t < 1:
                                revert with 'NH{q', 17
                            if t - 1 < u:
                                revert with 'NH{q', 17
                            if t + -u - 1 >= mem[_388]:
                                revert with 'NH{q', 50
                            if u > -mem[96] - 1:
                                revert with 'NH{q', 17
                            if u + mem[96] >= mem[_692]:
                                revert with 'NH{q', 50
                            mem[u + mem[96] + _692 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            continue 
                        _1215 = mem[64]
                        _1217 = mem[_692]
                        idx = 0
                        while idx < _1217:
                            mem[_1215 + idx + 32] = mem[_692 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1215 + _1217 + 32] = ':'
                        if ceil32(_1217) <= _1217:
                            _1459 = mem[64]
                            mem[mem[64]] = _1215 + _1217 + -mem[64] + 1
                            if not ownerOf[s]:
                                revert with 0, 'ERC721Metadata: URI query for nonexistent token'
                            mem[0] = s
                            mem[32] = 8
                            mem[_1215 + _1217 + 33] = 100
                            mem[64] = _1215 + _1217 + 193
                            mem[_1215 + _1217 + 65 len 100] = call.data[calldata.size len 100]
                            t = 0
                            idx = tokenEID[s]
                            while idx:
                                if 48 > -(idx % 10) - 1:
                                    revert with 'NH{q', 17
                                if t == -1:
                                    revert with 'NH{q', 17
                                if t >= 100:
                                    revert with 'NH{q', 50
                                mem[t + _1215 + _1217 + 65 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t + 1
                                idx = idx / 10
                                continue 
                            _1688 = mem[_1459]
                            if mem[_1459] > -t - 1:
                                revert with 'NH{q', 17
                            if mem[_1459] + t > test266151307():
                                revert with 'NH{q', 65
                            _1724 = mem[64]
                            mem[mem[64]] = mem[_1459] + t
                            mem[64] = mem[64] + floor32(_1688 + t + 31) + 32
                            if not _1688 + t:
                                _1894 = mem[_1459]
                                idx = 0
                                while idx < _1894:
                                    if idx >= mem[_1459]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[_1724]:
                                        revert with 'NH{q', 50
                                    mem[idx + _1724 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _1894 = mem[_1459]
                                    idx = idx + 1
                                    continue 
                                u = 0
                                while u < t:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if t - 1 < u:
                                        revert with 'NH{q', 17
                                    if t + -u - 1 >= mem[_1215 + _1217 + 33]:
                                        revert with 'NH{q', 50
                                    if u > -mem[_1459] - 1:
                                        revert with 'NH{q', 17
                                    if u + mem[_1459] >= mem[_1724]:
                                        revert with 'NH{q', 50
                                    mem[u + mem[_1459] + _1724 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    u = u + 1
                                    continue 
                                _2078 = mem[64]
                                _2086 = mem[_1724]
                                idx = 0
                                while idx < _2086:
                                    mem[_2078 + idx + 32] = mem[_1724 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2078 + _2086 + 32] = ', '
                                mem[mem[64]] = _2078 + _2086 + -mem[64] + 2
                                mem[64] = _2078 + _2086 + 34
                            else:
                                mem[_1724 + 32 len _1688 + t] = call.data[calldata.size len _1688 + t]
                                _1895 = mem[_1459]
                                idx = 0
                                while idx < _1895:
                                    if idx >= mem[_1459]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[_1724]:
                                        revert with 'NH{q', 50
                                    mem[idx + _1724 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _1895 = mem[_1459]
                                    idx = idx + 1
                                    continue 
                                u = 0
                                while u < t:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if t - 1 < u:
                                        revert with 'NH{q', 17
                                    if t + -u - 1 >= mem[_1215 + _1217 + 33]:
                                        revert with 'NH{q', 50
                                    if u > -mem[_1459] - 1:
                                        revert with 'NH{q', 17
                                    if u + mem[_1459] >= mem[_1724]:
                                        revert with 'NH{q', 50
                                    mem[u + mem[_1459] + _1724 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    u = u + 1
                                    continue 
                                _2079 = mem[64]
                                _2087 = mem[_1724]
                                idx = 0
                                while idx < _2087:
                                    mem[_2079 + idx + 32] = mem[_1724 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2079 + _2087 + 32] = ', '
                                mem[mem[64]] = _2079 + _2087 + -mem[64] + 2
                                mem[64] = _2079 + _2087 + 34
                        else:
                            _1469 = mem[64]
                            mem[mem[64]] = _1215 + _1217 + -mem[64] + 1
                            if not ownerOf[s]:
                                revert with 0, 'ERC721Metadata: URI query for nonexistent token'
                            mem[0] = s
                            mem[32] = 8
                            mem[_1215 + _1217 + 33] = 100
                            mem[64] = _1215 + _1217 + 193
                            mem[_1215 + _1217 + 65 len 100] = call.data[calldata.size len 100]
                            t = 0
                            idx = tokenEID[s]
                            while idx:
                                if 48 > -(idx % 10) - 1:
                                    revert with 'NH{q', 17
                                if t == -1:
                                    revert with 'NH{q', 17
                                if t >= 100:
                                    revert with 'NH{q', 50
                                mem[t + _1215 + _1217 + 65 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t + 1
                                idx = idx / 10
                                continue 
                            _1689 = mem[_1469]
                            if mem[_1469] > -t - 1:
                                revert with 'NH{q', 17
                            if mem[_1469] + t > test266151307():
                                revert with 'NH{q', 65
                            _1725 = mem[64]
                            mem[mem[64]] = mem[_1469] + t
                            mem[64] = mem[64] + floor32(_1689 + t + 31) + 32
                            if not _1689 + t:
                                _1896 = mem[_1469]
                                idx = 0
                                while idx < _1896:
                                    if idx >= mem[_1469]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[_1725]:
                                        revert with 'NH{q', 50
                                    mem[idx + _1725 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _1896 = mem[_1469]
                                    idx = idx + 1
                                    continue 
                                u = 0
                                while u < t:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if t - 1 < u:
                                        revert with 'NH{q', 17
                                    if t + -u - 1 >= mem[_1215 + _1217 + 33]:
                                        revert with 'NH{q', 50
                                    if u > -mem[_1469] - 1:
                                        revert with 'NH{q', 17
                                    if u + mem[_1469] >= mem[_1725]:
                                        revert with 'NH{q', 50
                                    mem[u + mem[_1469] + _1725 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    u = u + 1
                                    continue 
                                _2080 = mem[64]
                                _2088 = mem[_1725]
                                idx = 0
                                while idx < _2088:
                                    mem[_2080 + idx + 32] = mem[_1725 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2080 + _2088 + 32] = ', '
                                mem[mem[64]] = _2080 + _2088 + -mem[64] + 2
                                mem[64] = _2080 + _2088 + 34
                            else:
                                mem[_1725 + 32 len _1689 + t] = call.data[calldata.size len _1689 + t]
                                _1897 = mem[_1469]
                                idx = 0
                                while idx < _1897:
                                    if idx >= mem[_1469]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[_1725]:
                                        revert with 'NH{q', 50
                                    mem[idx + _1725 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _1897 = mem[_1469]
                                    idx = idx + 1
                                    continue 
                                u = 0
                                while u < t:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if t - 1 < u:
                                        revert with 'NH{q', 17
                                    if t + -u - 1 >= mem[_1215 + _1217 + 33]:
                                        revert with 'NH{q', 50
                                    if u > -mem[_1469] - 1:
                                        revert with 'NH{q', 17
                                    if u + mem[_1469] >= mem[_1725]:
                                        revert with 'NH{q', 50
                                    mem[u + mem[_1469] + _1725 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    u = u + 1
                                    continue 
                                _2081 = mem[64]
                                _2089 = mem[_1725]
                                idx = 0
                                while idx < _2089:
                                    mem[_2081 + idx + 32] = mem[_1725 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2081 + _2089 + 32] = ', '
                                mem[mem[64]] = _2081 + _2089 + -mem[64] + 2
                                mem[64] = _2081 + _2089 + 34
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            _384 = mem[64]
            _387 = mem[96]
            idx = 0
            while idx < _387:
                mem[_384 + idx + 32] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_384 + _387 + 32] = '}'
            if ceil32(_387) <= _387:
                _693 = mem[64]
                mem[64] = _384 + _387 + 33
                mem[_384 + _387 + 33] = 32
                _707 = mem[_693]
                mem[_384 + _387 + 65] = mem[_693]
                idx = 0
                while idx < _707:
                    mem[_384 + _387 + idx + 97] = mem[_693 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_707) > _707:
                    mem[_384 + _387 + _707 + 97] = 0
                return 32, mem[_384 + _387 + 65 len ceil32(_707) + 32]
            _696 = mem[64]
            mem[64] = _384 + _387 + 33
            mem[_384 + _387 + 33] = 32
            _709 = mem[_696]
            mem[_384 + _387 + 65] = mem[_696]
            idx = 0
            while idx < _709:
                mem[_384 + _387 + idx + 97] = mem[_696 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_709) > _709:
                mem[_384 + _387 + _709 + 97] = 0
            return 32, mem[_384 + _387 + 65 len ceil32(_709) + 32]
        revert with 'NH{q', 17
    if var39002 < 2:
        revert with 'NH{q', 17
    mem[64] = 160
    mem[96] = 2
    mem[128] = '{ '
    s = 1
    while s <= var39002 - 2:
        mem[0] = s
        mem[32] = 2
        if not ownerOf[s]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[s] == arg1:
            _220 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 160
            mem[_220 + 32 len 100] = call.data[calldata.size len 100]
            t = 0
            idx = s
            while idx:
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t == -1:
                    revert with 'NH{q', 17
                if t >= mem[_220]:
                    revert with 'NH{q', 50
                mem[t + _220 + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t + 1
                idx = idx / 10
                continue 
            _383 = mem[96]
            if mem[96] > -t - 1:
                revert with 'NH{q', 17
            if mem[96] + t > test266151307():
                revert with 'NH{q', 65
            _389 = mem[64]
            mem[mem[64]] = mem[96] + t
            mem[64] = mem[64] + floor32(_383 + t + 31) + 32
            if not _383 + t:
                _672 = mem[96]
                idx = 0
                while idx < _672:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_389]:
                        revert with 'NH{q', 50
                    mem[idx + _389 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                u = 0
                while u < t:
                    if t < 1:
                        revert with 'NH{q', 17
                    if t - 1 < u:
                        revert with 'NH{q', 17
                    if t + -u - 1 >= mem[_220]:
                        revert with 'NH{q', 50
                    if u > -mem[96] - 1:
                        revert with 'NH{q', 17
                    if u + mem[96] >= mem[_389]:
                        revert with 'NH{q', 50
                    mem[u + mem[96] + _389 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    continue 
                _960 = mem[64]
                _968 = mem[_389]
                idx = 0
                while idx < _968:
                    mem[_960 + idx + 32] = mem[_389 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_960 + _968 + 32] = ':'
                if ceil32(_968) <= _968:
                    _1218 = mem[64]
                    mem[mem[64]] = _960 + _968 + -mem[64] + 1
                    if not ownerOf[s]:
                        revert with 0, 'ERC721Metadata: URI query for nonexistent token'
                    mem[0] = s
                    mem[32] = 8
                    mem[_960 + _968 + 33] = 100
                    mem[64] = _960 + _968 + 193
                    mem[_960 + _968 + 65 len 100] = call.data[calldata.size len 100]
                    t = 0
                    idx = tokenEID[s]
                    while idx:
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t == -1:
                            revert with 'NH{q', 17
                        if t >= 100:
                            revert with 'NH{q', 50
                        mem[t + _960 + _968 + 65 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t + 1
                        idx = idx / 10
                        continue 
                    _1444 = mem[_1218]
                    if mem[_1218] > -t - 1:
                        revert with 'NH{q', 17
                    if mem[_1218] + t > test266151307():
                        revert with 'NH{q', 65
                    _1450 = mem[64]
                    mem[mem[64]] = mem[_1218] + t
                    mem[64] = mem[64] + floor32(_1444 + t + 31) + 32
                    if not _1444 + t:
                        _1670 = mem[_1218]
                        idx = 0
                        while idx < _1670:
                            if idx >= mem[_1218]:
                                revert with 'NH{q', 50
                            if idx >= mem[_1450]:
                                revert with 'NH{q', 50
                            mem[idx + _1450 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1670 = mem[_1218]
                            idx = idx + 1
                            continue 
                        u = 0
                        while u < t:
                            if t < 1:
                                revert with 'NH{q', 17
                            if t - 1 < u:
                                revert with 'NH{q', 17
                            if t + -u - 1 >= mem[_960 + _968 + 33]:
                                revert with 'NH{q', 50
                            if u > -mem[_1218] - 1:
                                revert with 'NH{q', 17
                            if u + mem[_1218] >= mem[_1450]:
                                revert with 'NH{q', 50
                            mem[u + mem[_1218] + _1450 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            continue 
                        _1906 = mem[64]
                        _1938 = mem[_1450]
                        idx = 0
                        while idx < _1938:
                            mem[_1906 + idx + 32] = mem[_1450 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1906 + _1938 + 32] = ', '
                        mem[mem[64]] = _1906 + _1938 + -mem[64] + 2
                        mem[64] = _1906 + _1938 + 34
                    else:
                        mem[_1450 + 32 len _1444 + t] = call.data[calldata.size len _1444 + t]
                        _1671 = mem[_1218]
                        idx = 0
                        while idx < _1671:
                            if idx >= mem[_1218]:
                                revert with 'NH{q', 50
                            if idx >= mem[_1450]:
                                revert with 'NH{q', 50
                            mem[idx + _1450 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1671 = mem[_1218]
                            idx = idx + 1
                            continue 
                        u = 0
                        while u < t:
                            if t < 1:
                                revert with 'NH{q', 17
                            if t - 1 < u:
                                revert with 'NH{q', 17
                            if t + -u - 1 >= mem[_960 + _968 + 33]:
                                revert with 'NH{q', 50
                            if u > -mem[_1218] - 1:
                                revert with 'NH{q', 17
                            if u + mem[_1218] >= mem[_1450]:
                                revert with 'NH{q', 50
                            mem[u + mem[_1218] + _1450 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            continue 
                        _1907 = mem[64]
                        _1939 = mem[_1450]
                        idx = 0
                        while idx < _1939:
                            mem[_1907 + idx + 32] = mem[_1450 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1907 + _1939 + 32] = ', '
                        mem[mem[64]] = _1907 + _1939 + -mem[64] + 2
                        mem[64] = _1907 + _1939 + 34
                else:
                    _1222 = mem[64]
                    mem[mem[64]] = _960 + _968 + -mem[64] + 1
                    if not ownerOf[s]:
                        revert with 0, 'ERC721Metadata: URI query for nonexistent token'
                    mem[0] = s
                    mem[32] = 8
                    mem[_960 + _968 + 33] = 100
                    mem[64] = _960 + _968 + 193
                    mem[_960 + _968 + 65 len 100] = call.data[calldata.size len 100]
                    t = 0
                    idx = tokenEID[s]
                    while idx:
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t == -1:
                            revert with 'NH{q', 17
                        if t >= 100:
                            revert with 'NH{q', 50
                        mem[t + _960 + _968 + 65 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t + 1
                        idx = idx / 10
                        continue 
                    _1445 = mem[_1222]
                    if mem[_1222] > -t - 1:
                        revert with 'NH{q', 17
                    if mem[_1222] + t > test266151307():
                        revert with 'NH{q', 65
                    _1451 = mem[64]
                    mem[mem[64]] = mem[_1222] + t
                    mem[64] = mem[64] + floor32(_1445 + t + 31) + 32
                    if not _1445 + t:
                        _1672 = mem[_1222]
                        idx = 0
                        while idx < _1672:
                            if idx >= mem[_1222]:
                                revert with 'NH{q', 50
                            if idx >= mem[_1451]:
                                revert with 'NH{q', 50
                            mem[idx + _1451 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1672 = mem[_1222]
                            idx = idx + 1
                            continue 
                        u = 0
                        while u < t:
                            if t < 1:
                                revert with 'NH{q', 17
                            if t - 1 < u:
                                revert with 'NH{q', 17
                            if t + -u - 1 >= mem[_960 + _968 + 33]:
                                revert with 'NH{q', 50
                            if u > -mem[_1222] - 1:
                                revert with 'NH{q', 17
                            if u + mem[_1222] >= mem[_1451]:
                                revert with 'NH{q', 50
                            mem[u + mem[_1222] + _1451 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            continue 
                        _1908 = mem[64]
                        _1940 = mem[_1451]
                        idx = 0
                        while idx < _1940:
                            mem[_1908 + idx + 32] = mem[_1451 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1908 + _1940 + 32] = ', '
                        mem[mem[64]] = _1908 + _1940 + -mem[64] + 2
                        mem[64] = _1908 + _1940 + 34
                    else:
                        mem[_1451 + 32 len _1445 + t] = call.data[calldata.size len _1445 + t]
                        _1673 = mem[_1222]
                        idx = 0
                        while idx < _1673:
                            if idx >= mem[_1222]:
                                revert with 'NH{q', 50
                            if idx >= mem[_1451]:
                                revert with 'NH{q', 50
                            mem[idx + _1451 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1673 = mem[_1222]
                            idx = idx + 1
                            continue 
                        u = 0
                        while u < t:
                            if t < 1:
                                revert with 'NH{q', 17
                            if t - 1 < u:
                                revert with 'NH{q', 17
                            if t + -u - 1 >= mem[_960 + _968 + 33]:
                                revert with 'NH{q', 50
                            if u > -mem[_1222] - 1:
                                revert with 'NH{q', 17
                            if u + mem[_1222] >= mem[_1451]:
                                revert with 'NH{q', 50
                            mem[u + mem[_1222] + _1451 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            continue 
                        _1909 = mem[64]
                        _1941 = mem[_1451]
                        idx = 0
                        while idx < _1941:
                            mem[_1909 + idx + 32] = mem[_1451 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1909 + _1941 + 32] = ', '
                        mem[mem[64]] = _1909 + _1941 + -mem[64] + 2
                        mem[64] = _1909 + _1941 + 34
            else:
                mem[_389 + 32 len _383 + t] = call.data[calldata.size len _383 + t]
                _673 = mem[96]
                idx = 0
                while idx < _673:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_389]:
                        revert with 'NH{q', 50
                    mem[idx + _389 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                u = 0
                while u < t:
                    if t < 1:
                        revert with 'NH{q', 17
                    if t - 1 < u:
                        revert with 'NH{q', 17
                    if t + -u - 1 >= mem[_220]:
                        revert with 'NH{q', 50
                    if u > -mem[96] - 1:
                        revert with 'NH{q', 17
                    if u + mem[96] >= mem[_389]:
                        revert with 'NH{q', 50
                    mem[u + mem[96] + _389 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    continue 
                _961 = mem[64]
                _969 = mem[_389]
                idx = 0
                while idx < _969:
                    mem[_961 + idx + 32] = mem[_389 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_961 + _969 + 32] = ':'
                if ceil32(_969) <= _969:
                    _1219 = mem[64]
                    mem[mem[64]] = _961 + _969 + -mem[64] + 1
                    if not ownerOf[s]:
                        revert with 0, 'ERC721Metadata: URI query for nonexistent token'
                    mem[0] = s
                    mem[32] = 8
                    mem[_961 + _969 + 33] = 100
                    mem[64] = _961 + _969 + 193
                    mem[_961 + _969 + 65 len 100] = call.data[calldata.size len 100]
                    t = 0
                    idx = tokenEID[s]
                    while idx:
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t == -1:
                            revert with 'NH{q', 17
                        if t >= 100:
                            revert with 'NH{q', 50
                        mem[t + _961 + _969 + 65 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t + 1
                        idx = idx / 10
                        continue 
                    _1446 = mem[_1219]
                    if mem[_1219] > -t - 1:
                        revert with 'NH{q', 17
                    if mem[_1219] + t > test266151307():
                        revert with 'NH{q', 65
                    _1452 = mem[64]
                    mem[mem[64]] = mem[_1219] + t
                    mem[64] = mem[64] + floor32(_1446 + t + 31) + 32
                    if not _1446 + t:
                        _1674 = mem[_1219]
                        idx = 0
                        while idx < _1674:
                            if idx >= mem[_1219]:
                                revert with 'NH{q', 50
                            if idx >= mem[_1452]:
                                revert with 'NH{q', 50
                            mem[idx + _1452 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1674 = mem[_1219]
                            idx = idx + 1
                            continue 
                        u = 0
                        while u < t:
                            if t < 1:
                                revert with 'NH{q', 17
                            if t - 1 < u:
                                revert with 'NH{q', 17
                            if t + -u - 1 >= mem[_961 + _969 + 33]:
                                revert with 'NH{q', 50
                            if u > -mem[_1219] - 1:
                                revert with 'NH{q', 17
                            if u + mem[_1219] >= mem[_1452]:
                                revert with 'NH{q', 50
                            mem[u + mem[_1219] + _1452 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            continue 
                        _1910 = mem[64]
                        _1942 = mem[_1452]
                        idx = 0
                        while idx < _1942:
                            mem[_1910 + idx + 32] = mem[_1452 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1910 + _1942 + 32] = ', '
                        mem[mem[64]] = _1910 + _1942 + -mem[64] + 2
                        mem[64] = _1910 + _1942 + 34
                    else:
                        mem[_1452 + 32 len _1446 + t] = call.data[calldata.size len _1446 + t]
                        _1675 = mem[_1219]
                        idx = 0
                        while idx < _1675:
                            if idx >= mem[_1219]:
                                revert with 'NH{q', 50
                            if idx >= mem[_1452]:
                                revert with 'NH{q', 50
                            mem[idx + _1452 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1675 = mem[_1219]
                            idx = idx + 1
                            continue 
                        u = 0
                        while u < t:
                            if t < 1:
                                revert with 'NH{q', 17
                            if t - 1 < u:
                                revert with 'NH{q', 17
                            if t + -u - 1 >= mem[_961 + _969 + 33]:
                                revert with 'NH{q', 50
                            if u > -mem[_1219] - 1:
                                revert with 'NH{q', 17
                            if u + mem[_1219] >= mem[_1452]:
                                revert with 'NH{q', 50
                            mem[u + mem[_1219] + _1452 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            continue 
                        _1911 = mem[64]
                        _1943 = mem[_1452]
                        idx = 0
                        while idx < _1943:
                            mem[_1911 + idx + 32] = mem[_1452 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1911 + _1943 + 32] = ', '
                        mem[mem[64]] = _1911 + _1943 + -mem[64] + 2
                        mem[64] = _1911 + _1943 + 34
                else:
                    _1223 = mem[64]
                    mem[mem[64]] = _961 + _969 + -mem[64] + 1
                    if not ownerOf[s]:
                        revert with 0, 'ERC721Metadata: URI query for nonexistent token'
                    mem[0] = s
                    mem[32] = 8
                    mem[_961 + _969 + 33] = 100
                    mem[64] = _961 + _969 + 193
                    mem[_961 + _969 + 65 len 100] = call.data[calldata.size len 100]
                    t = 0
                    idx = tokenEID[s]
                    while idx:
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t == -1:
                            revert with 'NH{q', 17
                        if t >= 100:
                            revert with 'NH{q', 50
                        mem[t + _961 + _969 + 65 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t + 1
                        idx = idx / 10
                        continue 
                    _1447 = mem[_1223]
                    if mem[_1223] > -t - 1:
                        revert with 'NH{q', 17
                    if mem[_1223] + t > test266151307():
                        revert with 'NH{q', 65
                    _1453 = mem[64]
                    mem[mem[64]] = mem[_1223] + t
                    mem[64] = mem[64] + floor32(_1447 + t + 31) + 32
                    if not _1447 + t:
                        _1676 = mem[_1223]
                        idx = 0
                        while idx < _1676:
                            if idx >= mem[_1223]:
                                revert with 'NH{q', 50
                            if idx >= mem[_1453]:
                                revert with 'NH{q', 50
                            mem[idx + _1453 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1676 = mem[_1223]
                            idx = idx + 1
                            continue 
                        u = 0
                        while u < t:
                            if t < 1:
                                revert with 'NH{q', 17
                            if t - 1 < u:
                                revert with 'NH{q', 17
                            if t + -u - 1 >= mem[_961 + _969 + 33]:
                                revert with 'NH{q', 50
                            if u > -mem[_1223] - 1:
                                revert with 'NH{q', 17
                            if u + mem[_1223] >= mem[_1453]:
                                revert with 'NH{q', 50
                            mem[u + mem[_1223] + _1453 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            continue 
                        _1912 = mem[64]
                        _1944 = mem[_1453]
                        idx = 0
                        while idx < _1944:
                            mem[_1912 + idx + 32] = mem[_1453 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1912 + _1944 + 32] = ', '
                        mem[mem[64]] = _1912 + _1944 + -mem[64] + 2
                        mem[64] = _1912 + _1944 + 34
                    else:
                        mem[_1453 + 32 len _1447 + t] = call.data[calldata.size len _1447 + t]
                        _1677 = mem[_1223]
                        idx = 0
                        while idx < _1677:
                            if idx >= mem[_1223]:
                                revert with 'NH{q', 50
                            if idx >= mem[_1453]:
                                revert with 'NH{q', 50
                            mem[idx + _1453 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1677 = mem[_1223]
                            idx = idx + 1
                            continue 
                        u = 0
                        while u < t:
                            if t < 1:
                                revert with 'NH{q', 17
                            if t - 1 < u:
                                revert with 'NH{q', 17
                            if t + -u - 1 >= mem[_961 + _969 + 33]:
                                revert with 'NH{q', 50
                            if u > -mem[_1223] - 1:
                                revert with 'NH{q', 17
                            if u + mem[_1223] >= mem[_1453]:
                                revert with 'NH{q', 50
                            mem[u + mem[_1223] + _1453 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            continue 
                        _1913 = mem[64]
                        _1945 = mem[_1453]
                        idx = 0
                        while idx < _1945:
                            mem[_1913 + idx + 32] = mem[_1453 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1913 + _1945 + 32] = ', '
                        mem[mem[64]] = _1913 + _1945 + -mem[64] + 2
                        mem[64] = _1913 + _1945 + 34
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        continue 
    _216 = mem[64]
    _219 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[mem[64] + mem[96] + 32] = '}'
    if ceil32(mem[96]) <= mem[96]:
        _391 = mem[64]
        mem[64] = _216 + _219 + 33
        mem[_216 + _219 + 33] = 32
        _405 = mem[_391]
        mem[_216 + _219 + 65] = mem[_391]
        mem[_216 + _219 + 97 len ceil32(_405)] = mem[_391 + 32 len ceil32(_405)]
        if ceil32(_405) > _405:
            mem[_216 + _219 + _405 + 97] = 0
        return 32, mem[_216 + _219 + 65 len ceil32(_405) + 32]
    _396 = mem[64]
    mem[64] = _216 + _219 + 33
    mem[_216 + _219 + 33] = 32
    _407 = mem[_396]
    mem[_216 + _219 + 65] = mem[_396]
    mem[_216 + _219 + 97 len ceil32(_407)] = mem[_396 + 32 len ceil32(_407)]
    if ceil32(_407) > _407:
        mem[_216 + _219 + _407 + 97] = 0
    return 32, mem[_216 + _219 + 65 len ceil32(_407) + 32]
}



}
