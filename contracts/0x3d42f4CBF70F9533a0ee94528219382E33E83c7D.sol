contract main {




// =====================  Runtime code  =====================


const contractURI = 32, 53, 0xfe697066733a2f2f516d64526276587375654677684d644553335542456e38767668446f4351325444335a7a623962776e4d314e37, mem[181 len 11] >> 168, 0


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct stor6;
address owner;
uint256 totalSupply;
uint128 stor9; offset 160
address stor9;
address stor10;
address stor11;
uint256 stor12;
address vaultContractAddress;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(ownerOf[arg1])
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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

function getVaultContract() payable {
    return vaultContractAddress
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

function sub_c92ae959(?) payable {
    return stor10, stor12, stor11
}

function sub_94c9b968(?) payable {
    return address(stor9.field_0), Mask(96, 0, stor9.field_160)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function royaltyInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 and Mask(96, 0, stor9.field_160) > -1 / arg2:
        revert with 0, 17
    return address(stor9.field_0), arg2 * Mask(96, 0, stor9.field_160) / 10000
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_9d3a8582(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == Mask(96, 0, arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor9.field_0) = address(arg1)
    Mask(96, 0, stor9.field_160) = Mask(96, 0, arg2)
    return 1
}

function sub_e68bd4bb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = address(arg1)
    stor11 = address(arg3)
    stor12 = arg2
    emit 0xb1f3632e: arg2, address(arg1), address(arg3)
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

function getRaribleV2Royalties(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 1
    mem[64] = 224
    mem[128] = 160
    mem[192] = Mask(96, 0, stor9.field_160)
    mem[160] = address(stor9.field_0)
    mem[224] = 32
    mem[256] = 1
    idx = 0
    s = 128
    t = 288
    while idx < mem[96]:
        _13 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_13 + 52 len 12]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len -mem[64] + 352
}

function setVaultContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if vaultContractAddress:
        revert with 0, 'VAULT IS ALREADY SET'
    vaultContractAddress = arg1
    require ext_code.size(stor10)
    call stor10.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), 100000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0xcad96cca00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return 1
    if 0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return 1
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
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

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalSupply > 1000:
        revert with 0, 'HARD CAP REACHED'
    if not vaultContractAddress:
        revert with 0, 'VAULT IS INVALID'
    mem[132] = stor11
    mem[164] = stor12
    require ext_code.size(stor10)
    call stor10.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor11, stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor8]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor8] = arg1
    emit Transfer(0, arg1, totalSupply);
    mem[ceil32(return_data.size) + 128 len 62] = 0x35697066733a2f2f516d52515179424c74484d6b4648726e694c714b505a5961446d583270736869537473456e4c366e70527355774d2f3131312e6a736f
    if not ownerOf[stor8]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if bool(stor6[stor8].field_0):
        if bool(stor6[stor8].field_0) == uint255(stor6[stor8].field_0) * 0.5 < 32:
            revert with 0, 34
        stor6[stor8].field_0 = 125
        s = 0
        idx = ceil32(return_data.size) + 128
        while ceil32(return_data.size) + 190 > idx:
            stor6[stor8][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while (uint255(stor6[stor8].field_0) * 0.5) + 31 / 32 > idx:
            stor6[stor8][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor6[stor8].field_0) == stor6[stor8].field_1 % 128 < 32:
            revert with 0, 34
        stor6[stor8].field_0 = 125
        s = 0
        idx = ceil32(return_data.size) + 128
        while ceil32(return_data.size) + 190 > idx:
            stor6[stor8][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while stor6[stor8].field_1 % 128 + 31 / 32 > idx:
            stor6[stor8][idx].field_0 = 0
            idx = idx + 1
            continue 
    totalSupply++
    require ext_code.size(vaultContractAddress)
    call vaultContractAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args totalSupply, 2500 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return totalSupply
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
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
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if vaultContractAddress != msg.sender:
            revert with 0, 'NOT OWNER OR VAULT'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if bool(stor6[arg1].field_0):
        if bool(stor6[arg1].field_0) == uint255(stor6[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6[arg1].field_0):
            if bool(stor6[arg1].field_0):
                if bool(stor6[arg1].field_0) == uint255(stor6[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor6[arg1].field_0 = 0
                if 31 < uint255(stor6[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor6[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                stor6[arg1].field_0 = 0
                if 31 < stor6[arg1].field_1 % 128:
                    idx = 0
                    while stor6[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor6[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor6[arg1].field_1 % 128:
            if bool(stor6[arg1].field_0):
                if bool(stor6[arg1].field_0) == uint255(stor6[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor6[arg1].field_0 = 0
                if 31 < uint255(stor6[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor6[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                stor6[arg1].field_0 = 0
                if 31 < stor6[arg1].field_1 % 128:
                    idx = 0
                    while stor6[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor6[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    return 1
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[stor0.length.field_1 % 128 + ceil32(stor0.length.field_1 % 128) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() payable {
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
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
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
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if bool(stor6[arg1].field_0):
        if bool(stor6[arg1].field_0) == uint255(stor6[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6[arg1].field_0):
            if bool(stor6[arg1].field_0) == uint255(stor6[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6[arg1].field_0):
                if 31 < uint255(stor6[arg1].field_0) * 0.5:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor6[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_0), data=mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
        else:
            if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor6[arg1].field_1 % 128:
                if 31 < stor6[arg1].field_1 % 128:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_0), data=mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
        mem[ceil32(uint255(stor6[arg1].field_0) * 0.5) + 224 len ceil32(uint255(stor6[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor6[arg1].field_0) * 0.5) > uint255(stor6[arg1].field_0) * 0.5:
            mem[(uint255(stor6[arg1].field_0) * 0.5) + ceil32(uint255(stor6[arg1].field_0) * 0.5) + 224] = 0
        return Array(len=2 * Mask(256, -1, stor6[arg1].field_0), data=mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor6[arg1].field_0) * 0.5)) + 224 len 2 * ceil32(uint255(stor6[arg1].field_0) * 0.5)]), 
    if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor6[arg1].field_0):
        if bool(stor6[arg1].field_0) == uint255(stor6[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6[arg1].field_0):
            if 31 < uint255(stor6[arg1].field_0) * 0.5:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor6[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
    else:
        if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor6[arg1].field_1 % 128:
            if 31 < stor6[arg1].field_1 % 128:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
    mem[ceil32(stor6[arg1].field_1 % 128) + 224 len ceil32(stor6[arg1].field_1 % 128)] = mem[128 len ceil32(stor6[arg1].field_1 % 128)]
    if ceil32(stor6[arg1].field_1 % 128) > stor6[arg1].field_1 % 128:
        mem[stor6[arg1].field_1 % 128 + ceil32(stor6[arg1].field_1 % 128) + 224] = 0
    return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)], mem[(2 * ceil32(stor6[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor6[arg1].field_1 % 128)]), 
}

function sub_3771aaa1(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    t = ('cd', 4).length
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        t = cd[idx]
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _251 = mem[(32 * idx) + 128]
            if totalSupply > 1000:
                revert with 0, 'HARD CAP REACHED'
            if not vaultContractAddress:
                revert with 0, 'VAULT IS INVALID'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = stor11
            mem[mem[64] + 68] = stor12
            require ext_code.size(stor10)
            call stor10.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, stor11, stor12
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _272 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_272] == bool(mem[_272])
            if not address(_251):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor8]:
                revert with 0, 'ERC721: token already minted'
            if balanceOf[address(_251)] > -2:
                revert with 0, 17
            balanceOf[address(_251)]++
            mem[0] = totalSupply
            mem[32] = 2
            ownerOf[stor8] = address(_251)
            emit Transfer(0, address(_251), totalSupply);
            _292 = mem[64]
            mem[64] = mem[64] + 96
            mem[_292] = 62
            mem[_292 + 32 len 62] = 0x35697066733a2f2f516d52515179424c74484d6b4648726e694c714b505a5961446d583270736869537473456e4c366e70527355774d2f3131312e6a736f
            if not ownerOf[stor8]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[32] = 6
            if bool(stor6[stor8].field_0):
                if bool(stor6[stor8].field_0) == uint255(stor6[stor8].field_0) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = sha3(totalSupply, 6)
                stor6[stor8].field_0 = 125
                t = sha3(sha3(totalSupply, 6))
                s = _292 + 32
                while _292 + 94 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(totalSupply, 6)) + 2
                while sha3(sha3(totalSupply, 6)) + ((uint255(stor6[stor8].field_0) * 0.5) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                if bool(stor6[stor8].field_0) == stor6[stor8].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = sha3(totalSupply, 6)
                stor6[stor8].field_0 = 125
                t = sha3(sha3(totalSupply, 6))
                s = _292 + 32
                while _292 + 94 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(totalSupply, 6)) + 2
                while sha3(sha3(totalSupply, 6)) + (stor6[stor8].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            totalSupply++
            mem[mem[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = totalSupply
            mem[mem[64] + 36] = 2500 * 10^18
            require ext_code.size(vaultContractAddress)
            call vaultContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args totalSupply, 2500 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = totalSupply
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _254 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 64 len 32 * _254] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _254]
        return 32, mem[mem[64] + 32 len (32 * _254) + 32]
    mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _253 = mem[(32 * idx) + 128]
        if totalSupply > 1000:
            revert with 0, 'HARD CAP REACHED'
        if not vaultContractAddress:
            revert with 0, 'VAULT IS INVALID'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = stor11
        mem[mem[64] + 68] = stor12
        require ext_code.size(stor10)
        call stor10.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, stor11, stor12
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _273 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_273] == bool(mem[_273])
        if not address(_253):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor8]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(_253)] > -2:
            revert with 0, 17
        balanceOf[address(_253)]++
        mem[0] = totalSupply
        mem[32] = 2
        ownerOf[stor8] = address(_253)
        emit Transfer(0, address(_253), totalSupply);
        _293 = mem[64]
        mem[64] = mem[64] + 96
        mem[_293] = 62
        mem[_293 + 32 len 62] = 0x35697066733a2f2f516d52515179424c74484d6b4648726e694c714b505a5961446d583270736869537473456e4c366e70527355774d2f3131312e6a736f
        if not ownerOf[stor8]:
            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
        mem[32] = 6
        if bool(stor6[stor8].field_0):
            if bool(stor6[stor8].field_0) == uint255(stor6[stor8].field_0) * 0.5 < 32:
                revert with 0, 34
            mem[0] = sha3(totalSupply, 6)
            stor6[stor8].field_0 = 125
            t = sha3(sha3(totalSupply, 6))
            s = _293 + 32
            while _293 + 94 > s:
                stor[t] = mem[s]
                t = t + 1
                s = s + 32
                continue 
            s = sha3(sha3(totalSupply, 6)) + 2
            while sha3(sha3(totalSupply, 6)) + ((uint255(stor6[stor8].field_0) * 0.5) + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        else:
            if bool(stor6[stor8].field_0) == stor6[stor8].field_1 % 128 < 32:
                revert with 0, 34
            mem[0] = sha3(totalSupply, 6)
            stor6[stor8].field_0 = 125
            t = sha3(sha3(totalSupply, 6))
            s = _293 + 32
            while _293 + 94 > s:
                stor[t] = mem[s]
                t = t + 1
                s = s + 32
                continue 
            s = sha3(sha3(totalSupply, 6)) + 2
            while sha3(sha3(totalSupply, 6)) + (stor6[stor8].field_1 % 128 + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        totalSupply++
        mem[mem[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = totalSupply
        mem[mem[64] + 36] = 2500 * 10^18
        require ext_code.size(vaultContractAddress)
        call vaultContractAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args totalSupply, 2500 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = totalSupply
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _255 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 64 len 32 * _255] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _255]
    return 32, mem[mem[64] + 32 len (32 * _255) + 32]
}



}
