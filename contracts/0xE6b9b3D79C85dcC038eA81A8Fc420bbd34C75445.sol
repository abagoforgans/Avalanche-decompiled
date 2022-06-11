contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const sub_abcbb7b4(?) = 32, 39, 0xfe68747470733a2f2f666163746f72792e63686f636f6d696e742e6170702f6d65746164617461, mem[167 len 25] >> 56, 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
array of struct stor151;
array of struct stor152;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor156;
uint8 paused;
array of struct stor351;
array of struct stor352;
array of struct stor353;
array of struct stor354;
mapping of uint256 sub_f0559fba;
array of struct stor356;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function paused() payable {
    return bool(paused)
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

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor156[address(arg1)][address(arg2)])
}

function sub_f0559fba(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_f0559fba[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setIpfsHash(uint256 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f0559fba[arg1] = arg2
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor156[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0xb779958400000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[arg2] = arg1
    emit Transfer(0, arg1, arg2);
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
        if not stor156[stor153[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_6cc247e0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor356.length):
        if bool(stor356.length) == uint255(stor356.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor356[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor356.length = 0
            idx = 0
            while uint255(stor356.length.field_1) + 31 / 32 > idx:
                uint256(stor356[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor356[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor356.length = 0
            idx = 0
            while stor356.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor356[idx].field_0) = 0
                idx = idx + 1
                continue 
}

function getFeeBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint256(stor354[arg1].field_0) > 0:
        if uint256(stor354[arg1].field_0):
            mem[128] = uint256(stor354[arg1].field_0)
            idx = 128
            s = 0
            while (32 * uint256(stor354[arg1].field_0)) + 96 > idx:
                mem[idx + 32] = uint256(stor354[arg1][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            return Array(len=uint256(stor354[arg1].field_0), data=mem[128 len 32 * uint256(stor354[arg1].field_0)])
        mem[(32 * uint256(stor354[arg1].field_0)) + 128] = 32
        mem[(32 * uint256(stor354[arg1].field_0)) + 160] = uint256(stor354[arg1].field_0)
        mem[(32 * uint256(stor354[arg1].field_0)) + 192 len 32 * uint256(stor354[arg1].field_0)] = mem[128 len 32 * uint256(stor354[arg1].field_0)]
        return memory
          from (32 * uint256(stor354[arg1].field_0)) + 128
           len (96 * uint256(stor354[arg1].field_0)) + 64
    if stor352.length:
        mem[128] = uint256(stor352.field_0)
        idx = 128
        s = 0
        while (32 * stor352.length) + 96 > idx:
            mem[idx + 32] = uint256(stor352[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor352.length, data=mem[128 len 32 * stor352.length])
    mem[(32 * stor352.length) + 128] = 32
    mem[(32 * stor352.length) + 160] = stor352.length
    mem[(32 * stor352.length) + 192 len 32 * stor352.length] = mem[128 len 32 * stor352.length]
    return memory
      from (32 * stor352.length) + 128
       len (96 * stor352.length) + 64
}

function sub_1b0e1bdd(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307() or (32 * ('cd', 36).length) + 160 < 128:
        revert with 'NH{q', 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'input length must be same'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 355
        sub_f0559fba[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
            if not stor156[stor153[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor156[stor153[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor153[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor153[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if uint256(stor353[arg1].field_0) > 0:
        uint256(stor353[arg1].field_0) = 0
        idx = 0
        while uint256(stor353[arg1].field_0) > idx:
            uint256(stor353[arg1][idx].field_0) = 0
            idx = idx + 1
            continue 
    if uint256(stor354[arg1].field_0) > 0:
        uint256(stor354[arg1].field_0) = 0
        idx = 0
        while uint256(stor354[arg1].field_0) > idx:
            uint256(stor354[arg1][idx].field_0) = 0
            idx = idx + 1
            continue 
    if sub_f0559fba[arg1]:
        sub_f0559fba[arg1] = 0
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
            if not stor156[stor153[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if paused:
        revert with 0, 'ERC721Pausable: token transfer while paused'
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

function mint(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + (32 * arg2.length) + 160 > test266151307() or (32 * arg2.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length != arg2.length:
        revert with 0, 'input length must be same'
    idx = 0
    while idx < arg2.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[mem[(32 * idx) + (32 * arg1.length) + 160]]:
            revert with 0, 'ERC721: token already minted'
        if paused:
            revert with 0, 'ERC721Pausable: token transfer while paused'
        if balanceOf[address(mem[(32 * idx) + 128])] > -2:
            revert with 'NH{q', 17
        balanceOf[address(mem[(32 * idx) + 128])]++
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[32] = 153
        ownerOf[mem[(32 * idx) + (32 * arg1.length) + 160]] = mem[(32 * idx) + 140 len 20]
        emit Transfer(0, mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * arg1.length) + 160]);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
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
            if not stor156[stor153[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if paused:
        revert with 0, 'ERC721Pausable: token transfer while paused'
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
    if ext_code.size(arg2) <= 0:
    require ext_code.size(arg2)
    call arg2 with:
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
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_1f1288be(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307() or (32 * ('cd', 36).length) + 160 < 128:
        revert with 'NH{q', 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'input length must be same'
    stor351.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor351.length > idx:
            uint256(stor351[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(stor351[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor351.length > idx:
            uint256(stor351[idx].field_0) = 0
            idx = idx + 1
            continue 
    stor352.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor352.length > idx:
            uint256(stor352[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * ('cd', 4).length) + 160
        while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > idx:
            uint256(stor352[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while stor352.length > idx:
            uint256(stor352[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function getFeeRecipients(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint256(stor353[arg1].field_0) > 0:
        mem[64] = (32 * uint256(stor353[arg1].field_0)) + 128
        mem[96] = uint256(stor353[arg1].field_0)
        if not uint256(stor353[arg1].field_0):
            mem[(32 * uint256(stor353[arg1].field_0)) + 128] = 32
            mem[(32 * uint256(stor353[arg1].field_0)) + 160] = uint256(stor353[arg1].field_0)
            idx = 0
            s = 128
            t = (32 * uint256(stor353[arg1].field_0)) + 192
            while idx < uint256(stor353[arg1].field_0):
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * uint256(stor353[arg1].field_0)) + 128
               len (96 * uint256(stor353[arg1].field_0)) + 64
        mem[128] = address(stor353[arg1].field_0)
        idx = 128
        s = 0
        while (32 * uint256(stor353[arg1].field_0)) + 96 > idx:
            mem[idx + 32] = address(stor353[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * uint256(stor353[arg1].field_0)) + 128] = 32
        mem[(32 * uint256(stor353[arg1].field_0)) + 160] = uint256(stor353[arg1].field_0)
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < uint256(stor353[arg1].field_0):
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * uint256(stor353[arg1].field_0)) + -mem[64] + 192
    mem[64] = (32 * stor351.length) + 128
    mem[96] = stor351.length
    if not stor351.length:
        mem[(32 * stor351.length) + 128] = 32
        mem[(32 * stor351.length) + 160] = stor351.length
        idx = 0
        s = 128
        t = (32 * stor351.length) + 192
        while idx < stor351.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor351.length) + 128
           len (96 * stor351.length) + 64
    mem[128] = address(stor351.field_0)
    idx = 128
    s = 0
    while (32 * stor351.length) + 96 > idx:
        mem[idx + 32] = address(stor351[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor351.length) + 128] = 32
    mem[(32 * stor351.length) + 160] = stor351.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor351.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor351.length) + -mem[64] + 192
}

function sub_01e8c1b0(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 36).length) + 128 > test266151307() or (32 * ('cd', 36).length) + 128 < 96:
        revert with 'NH{q', 65
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 > test266151307() or (32 * ('cd', 68).length) + 160 < 128:
        revert with 'NH{q', 65
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'input length must be same'
    uint256(stor353[cd[4]].field_0) = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while uint256(stor353[cd[4]].field_0) > idx:
            uint256(stor353[cd[4]][idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 36).length) + 128 > idx:
            address(stor353[cd[4]][s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while uint256(stor353[cd[4]].field_0) > idx:
            uint256(stor353[cd[4]][idx].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor354[cd[4]].field_0) = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while uint256(stor354[cd[4]].field_0) > idx:
            uint256(stor354[cd[4]][idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * ('cd', 36).length) + 160
        while (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 > idx:
            uint256(stor354[cd[4]][s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while uint256(stor354[cd[4]].field_0) > idx:
            uint256(stor354[cd[4]][idx].field_0) = 0
            idx = idx + 1
            continue 
}

function initialize(address arg1, string arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + ceil32(arg3.length) + 160 > test266151307() or ceil32(arg3.length) + 160 < 128:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                Mask(248, 0, stor0.field_8) = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
    if bool(stor151.length):
        if bool(stor151.length) == uint255(stor151.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            uint256(stor151[].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            stor151.length = 0
            idx = 0
            while uint255(stor151.length.field_1) + 31 / 32 > idx:
                uint256(stor151[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor151.length) == stor151.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            uint256(stor151[].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            stor151.length = 0
            idx = 0
            while stor151.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor151[idx].field_0) = 0
                idx = idx + 1
                continue 
    if bool(stor152.length):
        if bool(stor152.length) == uint255(stor152.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg3.length:
            uint256(stor152[].field_0) = Array(len=arg3.length, data=arg3[all])
        else:
            stor152.length = 0
            idx = 0
            while uint255(stor152.length.field_1) + 31 / 32 > idx:
                uint256(stor152[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor152.length) == stor152.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            uint256(stor152[].field_0) = Array(len=arg3.length, data=arg3[all])
        else:
            stor152.length = 0
            idx = 0
            while stor152.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor152[idx].field_0) = 0
                idx = idx + 1
                continue 
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
        Mask(248, 0, stor0.field_8) = 0
}

function name() payable {
    if bool(stor151.length):
        if bool(stor151.length) == uint255(stor151.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor151.length):
            if bool(stor151.length) == uint255(stor151.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor151.length.field_1):
                if 31 < uint255(stor151.length.field_1):
                    mem[128] = uint256(stor151.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor151.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor151[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor151.length.field_1)), data=mem[128 len ceil32(uint255(stor151.length.field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor151.length.field_8)
        else:
            if bool(stor151.length) == stor151.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor151.length.field_1 % 128:
                if 31 < stor151.length.field_1 % 128:
                    mem[128] = uint256(stor151.field_0)
                    idx = 128
                    s = 0
                    while stor151.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor151[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor151.length.field_1)), data=mem[128 len ceil32(uint255(stor151.length.field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor151.length.field_8)
        mem[ceil32(uint255(stor151.length.field_1)) + 192 len ceil32(uint255(stor151.length.field_1))] = mem[128 len ceil32(uint255(stor151.length.field_1))]
        if ceil32(uint255(stor151.length.field_1)) > uint255(stor151.length.field_1):
            mem[ceil32(uint255(stor151.length.field_1)) + uint255(stor151.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor151.length.field_1)), data=mem[128 len ceil32(uint255(stor151.length.field_1))], mem[(2 * ceil32(uint255(stor151.length.field_1))) + 192 len 2 * ceil32(uint255(stor151.length.field_1))]), 
    if bool(stor151.length) == stor151.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor151.length):
        if bool(stor151.length) == uint255(stor151.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor151.length.field_1):
            if 31 < uint255(stor151.length.field_1):
                mem[128] = uint256(stor151.field_0)
                idx = 128
                s = 0
                while uint255(stor151.length.field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor151[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor151.length.field_8)
    else:
        if bool(stor151.length) == stor151.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor151.length.field_1 % 128:
            if 31 < stor151.length.field_1 % 128:
                mem[128] = uint256(stor151.field_0)
                idx = 128
                s = 0
                while stor151.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor151[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor151.length.field_8)
    mem[ceil32(stor151.length.field_1 % 128) + 192 len ceil32(stor151.length.field_1 % 128)] = mem[128 len ceil32(stor151.length.field_1 % 128)]
    if ceil32(stor151.length.field_1 % 128) > stor151.length.field_1 % 128:
        mem[ceil32(stor151.length.field_1 % 128) + stor151.length.field_1 % 128 + 192] = 0
    return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1 % 128)], mem[(2 * ceil32(stor151.length.field_1 % 128)) + 192 len 2 * ceil32(stor151.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor152.length):
        if bool(stor152.length) == uint255(stor152.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor152.length):
            if bool(stor152.length) == uint255(stor152.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor152.length.field_1):
                if 31 < uint255(stor152.length.field_1):
                    mem[128] = uint256(stor152.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor152.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor152[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor152.length.field_1)), data=mem[128 len ceil32(uint255(stor152.length.field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor152.length.field_8)
        else:
            if bool(stor152.length) == stor152.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor152.length.field_1 % 128:
                if 31 < stor152.length.field_1 % 128:
                    mem[128] = uint256(stor152.field_0)
                    idx = 128
                    s = 0
                    while stor152.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor152[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor152.length.field_1)), data=mem[128 len ceil32(uint255(stor152.length.field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor152.length.field_8)
        mem[ceil32(uint255(stor152.length.field_1)) + 192 len ceil32(uint255(stor152.length.field_1))] = mem[128 len ceil32(uint255(stor152.length.field_1))]
        if ceil32(uint255(stor152.length.field_1)) > uint255(stor152.length.field_1):
            mem[ceil32(uint255(stor152.length.field_1)) + uint255(stor152.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor152.length.field_1)), data=mem[128 len ceil32(uint255(stor152.length.field_1))], mem[(2 * ceil32(uint255(stor152.length.field_1))) + 192 len 2 * ceil32(uint255(stor152.length.field_1))]), 
    if bool(stor152.length) == stor152.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor152.length):
        if bool(stor152.length) == uint255(stor152.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor152.length.field_1):
            if 31 < uint255(stor152.length.field_1):
                mem[128] = uint256(stor152.field_0)
                idx = 128
                s = 0
                while uint255(stor152.length.field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor152[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor152.length.field_8)
    else:
        if bool(stor152.length) == stor152.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor152.length.field_1 % 128:
            if 31 < stor152.length.field_1 % 128:
                mem[128] = uint256(stor152.field_0)
                idx = 128
                s = 0
                while stor152.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor152[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor152.length.field_8)
    mem[ceil32(stor152.length.field_1 % 128) + 192 len ceil32(stor152.length.field_1 % 128)] = mem[128 len ceil32(stor152.length.field_1 % 128)]
    if ceil32(stor152.length.field_1 % 128) > stor152.length.field_1 % 128:
        mem[ceil32(stor152.length.field_1 % 128) + stor152.length.field_1 % 128 + 192] = 0
    return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1 % 128)], mem[(2 * ceil32(stor152.length.field_1 % 128)) + 192 len 2 * ceil32(stor152.length.field_1 % 128)]), 
}

function sub_889a3f19(?) payable {
    if bool(stor356.length):
        if bool(stor356.length) == uint255(stor356.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor356.length):
            if bool(stor356.length) == uint255(stor356.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor356.length.field_1):
                if 31 < uint255(stor356.length.field_1):
                    mem[128] = uint256(stor356.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor356.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor356[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor356.length.field_1)), data=mem[128 len ceil32(uint255(stor356.length.field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor356.length.field_8)
        else:
            if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor356.length.field_1 % 128:
                if 31 < stor356.length.field_1 % 128:
                    mem[128] = uint256(stor356.field_0)
                    idx = 128
                    s = 0
                    while stor356.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor356[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor356.length.field_1)), data=mem[128 len ceil32(uint255(stor356.length.field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor356.length.field_8)
        mem[ceil32(uint255(stor356.length.field_1)) + 192 len ceil32(uint255(stor356.length.field_1))] = mem[128 len ceil32(uint255(stor356.length.field_1))]
        if ceil32(uint255(stor356.length.field_1)) > uint255(stor356.length.field_1):
            mem[ceil32(uint255(stor356.length.field_1)) + uint255(stor356.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor356.length.field_1)), data=mem[128 len ceil32(uint255(stor356.length.field_1))], mem[(2 * ceil32(uint255(stor356.length.field_1))) + 192 len 2 * ceil32(uint255(stor356.length.field_1))]), 
    if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor356.length):
        if bool(stor356.length) == uint255(stor356.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor356.length.field_1):
            if 31 < uint255(stor356.length.field_1):
                mem[128] = uint256(stor356.field_0)
                idx = 128
                s = 0
                while uint255(stor356.length.field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor356[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor356.length % 128, data=mem[128 len ceil32(stor356.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor356.length.field_8)
    else:
        if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor356.length.field_1 % 128:
            if 31 < stor356.length.field_1 % 128:
                mem[128] = uint256(stor356.field_0)
                idx = 128
                s = 0
                while stor356.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor356[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor356.length % 128, data=mem[128 len ceil32(stor356.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor356.length.field_8)
    mem[ceil32(stor356.length.field_1 % 128) + 192 len ceil32(stor356.length.field_1 % 128)] = mem[128 len ceil32(stor356.length.field_1 % 128)]
    if ceil32(stor356.length.field_1 % 128) > stor356.length.field_1 % 128:
        mem[ceil32(stor356.length.field_1 % 128) + stor356.length.field_1 % 128 + 192] = 0
    return Array(len=stor356.length % 128, data=mem[128 len ceil32(stor356.length.field_1 % 128)], mem[(2 * ceil32(stor356.length.field_1 % 128)) + 192 len 2 * ceil32(stor356.length.field_1 % 128)]), 
}

function sub_74962126(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307() or (32 * ('cd', 36).length) + 160 < 128:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _76 = mem[64]
        if mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_76] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + (32 * cd[(cd[36] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[36] + cd[s] + 68
        w = _76 + 32
        while u < cd[(cd[36] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _76
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    _77 = mem[64]
    if mem[64] + (32 * ('cd', 68).length) + 32 > test266151307() or mem[64] + (32 * ('cd', 68).length) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_77] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = _77 + 32
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _112 = mem[64]
        if mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_112] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[68] + cd[s] + 68
        w = _112 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == cd[v]
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _112
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[96] != mem[(32 * ('cd', 4).length) + 128]:
        revert with 0, 'input length must be same'
    if mem[96] != mem[_77]:
        revert with 0, 'input length must be same'
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 'NH{q', 50
        if idx >= mem[_77]:
            revert with 'NH{q', 50
        _152 = mem[(32 * idx) + _77 + 32]
        if mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] != mem[mem[(32 * idx) + _77 + 32]]:
            revert with 0, 'input length must be same'
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 353
        uint256(stor353[mem[(32 * idx) + 128]].field_0) = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
        if not mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]:
            s = sha3(sha3(mem[(32 * idx) + 128], 353))
            while sha3(sha3(mem[(32 * idx) + 128], 353)) + uint256(stor353[mem[(32 * idx) + 128]].field_0) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 354
            _171 = mem[_152]
            uint256(stor354[mem[(32 * idx) + 128]].field_0) = mem[_152]
            mem[0] = sha3(mem[(32 * idx) + 128], 354)
            if not _171:
                s = sha3(sha3(mem[(32 * idx) + 128], 354))
                while sha3(sha3(mem[(32 * idx) + 128], 354)) + uint256(stor354[mem[(32 * idx) + 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                t = sha3(sha3(mem[(32 * idx) + 128], 354))
                s = _152 + 32
                while _152 + (32 * _171) + 32 > s:
                    uint256(stor[t]) = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(mem[(32 * idx) + 128], 354)) + (Mask(251, 0, (32 * _171) + 31) >> 5)
                while sha3(sha3(mem[(32 * idx) + 128], 354)) + uint256(stor354[mem[(32 * idx) + 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
        else:
            s = sha3(sha3(mem[(32 * idx) + 128], 353))
            t = mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32
            while mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + (32 * mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]) + 32 > t:
                address(stor[s]) = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                continue 
            s = sha3(sha3(mem[(32 * idx) + 128], 353)) + (Mask(251, 0, (32 * mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]) + 31) >> 5)
            while sha3(sha3(mem[(32 * idx) + 128], 353)) + uint256(stor353[mem[(32 * idx) + 128]].field_0) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 354
            _180 = mem[_152]
            uint256(stor354[mem[(32 * idx) + 128]].field_0) = mem[_152]
            mem[0] = sha3(mem[(32 * idx) + 128], 354)
            if not _180:
                s = sha3(sha3(mem[(32 * idx) + 128], 354))
                while sha3(sha3(mem[(32 * idx) + 128], 354)) + uint256(stor354[mem[(32 * idx) + 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                t = sha3(sha3(mem[(32 * idx) + 128], 354))
                s = _152 + 32
                while _152 + (32 * _180) + 32 > s:
                    uint256(stor[t]) = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(mem[(32 * idx) + 128], 354)) + (Mask(251, 0, (32 * _180) + 31) >> 5)
                while sha3(sha3(mem[(32 * idx) + 128], 354)) + uint256(stor354[mem[(32 * idx) + 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
