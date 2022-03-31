contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const OPERATOR_ROLE = 0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
mapping of struct roleAdmin;
uint256 stor8;
uint256 stor9;
mapping of struct sub_d905952b;
array of struct stor11;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
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

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_d905952b(?) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheCommunityNFT#onlyExistentToken: NON_EXISTENT_TOKEN'
    return sub_d905952b[arg1].field_256
}

function checkOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0))
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    return ''
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

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
        emit RoleGranted(arg1, arg2, msg.sender);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
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

function addOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheCommunityNFT#onlyAdmin: CALLER_NO_ADMIN_ROLE'
    if not uint8(roleAdmin[roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0):
        uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0) = 1
        emit RoleGranted(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, arg1, msg.sender);
}

function removeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheCommunityNFT#onlyAdmin: CALLER_NO_ADMIN_ROLE'
    if not uint8(roleAdmin[roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0):
        uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0) = 0
        emit RoleRevoked(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, arg1, msg.sender);
}

function isTokenHolder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AvalancheCommunityNFT#isTokenHolder: ZERO_ADDRESS'
    if stor8 > test266151307():
        revert with 0, 65
    if stor8:
        mem[128 len 32 * stor8] = call.data[calldata.size len 32 * stor8]
    idx = 1
    s = 0
    while idx <= stor8:
        mem[0] = idx
        mem[32] = 2
        if not ownerOf[idx]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if s >= stor8:
            revert with 0, 50
        mem[(32 * s) + 128] = idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[(32 * stor8) + 128] = s
    if s:
        mem[(32 * stor8) + 160 len 32 * s] = call.data[calldata.size len 32 * s]
    t = 0
    while t < s:
        if t >= stor8:
            revert with 0, 50
        if t >= s:
            revert with 0, 50
        mem[(32 * t) + (32 * stor8) + 160] = mem[(32 * t) + 128]
        if t == -1:
            revert with 0, 17
        t = t + 1
        continue 
    return bool(s)
}

function getTokenId(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AvalancheCommunityNFT#getTokenId: ZERO_ADDRESS'
    if stor8 > test266151307():
        revert with 0, 65
    if stor8:
        mem[128 len 32 * stor8] = call.data[calldata.size len 32 * stor8]
    idx = 1
    s = 0
    while idx <= stor8:
        mem[0] = idx
        mem[32] = 2
        if not ownerOf[idx]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if s >= stor8:
            revert with 0, 50
        mem[(32 * s) + 128] = idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[(32 * stor8) + 128] = s
    if s:
        mem[(32 * stor8) + 160 len 32 * s] = call.data[calldata.size len 32 * s]
    t = 0
    while t < s:
        if t >= stor8:
            revert with 0, 50
        if t >= s:
            revert with 0, 50
        mem[(32 * t) + (32 * stor8) + 160] = mem[(32 * t) + 128]
        if t == -1:
            revert with 0, 17
        t = t + 1
        continue 
    return Array(len=s, data=mem[(32 * stor8) + 160 len 32 * s])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheCommunityNFT#onlyAdmin: CALLER_NO_ADMIN_ROLE'
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[0][stor6].field_0):
        uint8(roleAdmin[0][stor6].field_0) = 0
        emit RoleRevoked(0, owner, msg.sender);
    if not uint8(roleAdmin[0][address(arg1)].field_0):
        uint8(roleAdmin[0][address(arg1)].field_0) = 1
        emit RoleGranted(0, arg1, msg.sender);
    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0):
        if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0):
            uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0) = 1
            emit RoleGranted(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, arg1, msg.sender);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTokenURI(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
        revert with 0, 'AvalancheCommunityNFT#onlyOperator: CALLER_NO_OPERATOR_ROLE'
    if not ownerOf[arg1]:
        revert with 0, 'AvalancheCommunityNFT#onlyExistentToken: NON_EXISTENT_TOKEN'
    if bool(sub_d905952b[arg1].field_0):
        if bool(sub_d905952b[arg1].field_0) == uint255(sub_d905952b[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            sub_d905952b[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            sub_d905952b[arg1].field_0 = 0
            idx = 0
            while (uint255(sub_d905952b[arg1].field_0) * 0.5) + 31 / 32 > idx:
                sub_d905952b[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(sub_d905952b[arg1].field_0) == sub_d905952b[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            sub_d905952b[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            sub_d905952b[arg1].field_0 = 0
            idx = 0
            while sub_d905952b[arg1].field_1 % 128 + 31 / 32 > idx:
                sub_d905952b[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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

function getTokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheCommunityNFT#onlyExistentToken: NON_EXISTENT_TOKEN'
    if bool(sub_d905952b[arg1].field_0):
        if bool(sub_d905952b[arg1].field_0) == uint255(sub_d905952b[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(sub_d905952b[arg1].field_0):
            if bool(sub_d905952b[arg1].field_0) == uint255(sub_d905952b[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_d905952b[arg1].field_0):
                if 31 < uint255(sub_d905952b[arg1].field_0) * 0.5:
                    mem[128] = sub_d905952b[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_d905952b[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = sub_d905952b[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, sub_d905952b[arg1].field_0), data=mem[128 len ceil32(uint255(sub_d905952b[arg1].field_0) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, sub_d905952b[arg1].field_8)
        else:
            if bool(sub_d905952b[arg1].field_0) == sub_d905952b[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if sub_d905952b[arg1].field_1 % 128:
                if 31 < sub_d905952b[arg1].field_1 % 128:
                    mem[128] = sub_d905952b[arg1].field_0
                    idx = 128
                    s = 0
                    while sub_d905952b[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = sub_d905952b[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, sub_d905952b[arg1].field_0), data=mem[128 len ceil32(uint255(sub_d905952b[arg1].field_0) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, sub_d905952b[arg1].field_8)
        mem[ceil32(uint255(sub_d905952b[arg1].field_0) * 0.5) + 192 len ceil32(uint255(sub_d905952b[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(sub_d905952b[arg1].field_0) * 0.5)]
        if ceil32(uint255(sub_d905952b[arg1].field_0) * 0.5) > uint255(sub_d905952b[arg1].field_0) * 0.5:
            mem[(uint255(sub_d905952b[arg1].field_0) * 0.5) + ceil32(uint255(sub_d905952b[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, sub_d905952b[arg1].field_0), data=mem[128 len ceil32(uint255(sub_d905952b[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(sub_d905952b[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(sub_d905952b[arg1].field_0) * 0.5)]), 
    if bool(sub_d905952b[arg1].field_0) == sub_d905952b[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(sub_d905952b[arg1].field_0):
        if bool(sub_d905952b[arg1].field_0) == uint255(sub_d905952b[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_d905952b[arg1].field_0):
            if 31 < uint255(sub_d905952b[arg1].field_0) * 0.5:
                mem[128] = sub_d905952b[arg1].field_0
                idx = 128
                s = 0
                while (uint255(sub_d905952b[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = sub_d905952b[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=sub_d905952b[arg1].field_0 % 128, data=mem[128 len ceil32(sub_d905952b[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, sub_d905952b[arg1].field_8)
    else:
        if bool(sub_d905952b[arg1].field_0) == sub_d905952b[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if sub_d905952b[arg1].field_1 % 128:
            if 31 < sub_d905952b[arg1].field_1 % 128:
                mem[128] = sub_d905952b[arg1].field_0
                idx = 128
                s = 0
                while sub_d905952b[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = sub_d905952b[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=sub_d905952b[arg1].field_0 % 128, data=mem[128 len ceil32(sub_d905952b[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, sub_d905952b[arg1].field_8)
    mem[ceil32(sub_d905952b[arg1].field_1 % 128) + 192 len ceil32(sub_d905952b[arg1].field_1 % 128)] = mem[128 len ceil32(sub_d905952b[arg1].field_1 % 128)]
    if ceil32(sub_d905952b[arg1].field_1 % 128) > sub_d905952b[arg1].field_1 % 128:
        mem[sub_d905952b[arg1].field_1 % 128 + ceil32(sub_d905952b[arg1].field_1 % 128) + 192] = 0
    return Array(len=sub_d905952b[arg1].field_0 % 128, data=mem[128 len ceil32(sub_d905952b[arg1].field_1 % 128)], mem[(2 * ceil32(sub_d905952b[arg1].field_1 % 128)) + 192 len 2 * ceil32(sub_d905952b[arg1].field_1 % 128)]), 
}

function mintNFT(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
        revert with 0, 'AvalancheCommunityNFT#onlyOperator: CALLER_NO_OPERATOR_ROLE'
    stor8++
    if stor8 > stor9:
        revert with 0, 'AvalancheCommunityNFT#_mint: CAP_OVERFLOW'
    mem[64] = ceil32(ceil32(arg2.length)) + 129
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor8]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor8] = arg1
    emit Transfer(0, arg1, stor8);
    if not ext_code.size(arg1):
        if bool(sub_d905952b[stor8].field_0):
            if bool(sub_d905952b[stor8].field_0) == uint255(sub_d905952b[stor8].field_0) * 0.5 < 32:
                revert with 0, 34
            if arg2.length:
                sub_d905952b[stor8][].field_0 = Array(len=arg2.length, data=arg2[all])
                if stor8 > stor9:
                    revert with 0, 'AvalancheCommunityNFT#_resolveTokenAccelerator: CAP_OVERFLOW'
                idx = 0
                while idx < stor11.length:
                    mem[0] = 11
                    _618 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_618] = stor11[idx].field_0
                    mem[_618 + 32] = stor11[idx].field_256
                    if 0 == stor11[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if stor8 > stor11[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    sub_d905952b[stor8].field_256 = stor11[idx].field_256
            else:
                sub_d905952b[stor8].field_0 = 0
                idx = 0
                while (uint255(sub_d905952b[stor8].field_0) * 0.5) + 31 / 32 > idx:
                    sub_d905952b[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if stor8 > stor9:
                    revert with 0, 'AvalancheCommunityNFT#_resolveTokenAccelerator: CAP_OVERFLOW'
                idx = 0
                while idx < stor11.length:
                    mem[0] = 11
                    _468 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_468] = stor11[idx].field_0
                    mem[_468 + 32] = stor11[idx].field_256
                    if 0 == stor11[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if stor8 > stor11[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    sub_d905952b[stor8].field_256 = stor11[idx].field_256
        else:
            if bool(sub_d905952b[stor8].field_0) == sub_d905952b[stor8].field_1 % 128 < 32:
                revert with 0, 34
            if arg2.length:
                sub_d905952b[stor8][].field_0 = Array(len=arg2.length, data=arg2[all])
                if stor8 > stor9:
                    revert with 0, 'AvalancheCommunityNFT#_resolveTokenAccelerator: CAP_OVERFLOW'
                idx = 0
                while idx < stor11.length:
                    mem[0] = 11
                    _621 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_621] = stor11[idx].field_0
                    mem[_621 + 32] = stor11[idx].field_256
                    if 0 == stor11[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if stor8 > stor11[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    sub_d905952b[stor8].field_256 = stor11[idx].field_256
            else:
                sub_d905952b[stor8].field_0 = 0
                idx = 0
                while sub_d905952b[stor8].field_1 % 128 + 31 / 32 > idx:
                    sub_d905952b[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if stor8 > stor9:
                    revert with 0, 'AvalancheCommunityNFT#_resolveTokenAccelerator: CAP_OVERFLOW'
                idx = 0
                while idx < stor11.length:
                    mem[0] = 11
                    _477 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_477] = stor11[idx].field_0
                    mem[_477 + 32] = stor11[idx].field_256
                    if 0 == stor11[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if stor8 > stor11[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    sub_d905952b[stor8].field_256 = stor11[idx].field_256
    else:
        require ext_code.size(arg1)
        call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, 0, stor8, 128, 0
        if not ext_call.success:
            if not return_data.size:
                if not arg2.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg2[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 129
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if bool(sub_d905952b[stor8].field_0):
            if bool(sub_d905952b[stor8].field_0) == uint255(sub_d905952b[stor8].field_0) * 0.5 < 32:
                revert with 0, 34
            if arg2.length:
                sub_d905952b[stor8][].field_0 = Array(len=arg2.length, data=arg2[all])
                if stor8 > stor9:
                    revert with 0, 'AvalancheCommunityNFT#_resolveTokenAccelerator: CAP_OVERFLOW'
                idx = 0
                while idx < stor11.length:
                    mem[0] = 11
                    _716 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_716] = stor11[idx].field_0
                    mem[_716 + 32] = stor11[idx].field_256
                    if 0 == stor11[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if stor8 > stor11[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    sub_d905952b[stor8].field_256 = stor11[idx].field_256
            else:
                sub_d905952b[stor8].field_0 = 0
                idx = 0
                while (uint255(sub_d905952b[stor8].field_0) * 0.5) + 31 / 32 > idx:
                    sub_d905952b[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if stor8 > stor9:
                    revert with 0, 'AvalancheCommunityNFT#_resolveTokenAccelerator: CAP_OVERFLOW'
                idx = 0
                while idx < stor11.length:
                    mem[0] = 11
                    _630 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_630] = stor11[idx].field_0
                    mem[_630 + 32] = stor11[idx].field_256
                    if 0 == stor11[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if stor8 > stor11[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    sub_d905952b[stor8].field_256 = stor11[idx].field_256
        else:
            if bool(sub_d905952b[stor8].field_0) == sub_d905952b[stor8].field_1 % 128 < 32:
                revert with 0, 34
            if arg2.length:
                sub_d905952b[stor8][].field_0 = Array(len=arg2.length, data=arg2[all])
                if stor8 > stor9:
                    revert with 0, 'AvalancheCommunityNFT#_resolveTokenAccelerator: CAP_OVERFLOW'
                idx = 0
                while idx < stor11.length:
                    mem[0] = 11
                    _719 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_719] = stor11[idx].field_0
                    mem[_719 + 32] = stor11[idx].field_256
                    if 0 == stor11[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if stor8 > stor11[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    sub_d905952b[stor8].field_256 = stor11[idx].field_256
            else:
                sub_d905952b[stor8].field_0 = 0
                idx = 0
                while sub_d905952b[stor8].field_1 % 128 + 31 / 32 > idx:
                    sub_d905952b[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if stor8 > stor9:
                    revert with 0, 'AvalancheCommunityNFT#_resolveTokenAccelerator: CAP_OVERFLOW'
                idx = 0
                while idx < stor11.length:
                    mem[0] = 11
                    _639 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_639] = stor11[idx].field_0
                    mem[_639 + 32] = stor11[idx].field_256
                    if 0 == stor11[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if stor8 > stor11[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    sub_d905952b[stor8].field_256 = stor11[idx].field_256
    sub_d905952b[stor8].field_256 = 100
}

function mintBatchNFT(address[] arg1, string[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        require arg2 + cd[s] + 67 < calldata.size
        if cd[(arg2 + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _508 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1
        mem[_508] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_508 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_508 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _508
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 7)
    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
        revert with 0, 'AvalancheCommunityNFT#onlyOperator: CALLER_NO_OPERATOR_ROLE'
    if mem[96] != mem[ceil32(32 * arg1.length) + 97]:
        revert with 0, 'AvalancheCommunityNFT#mintBatchNFT: PARAMS_LENGTH_MISMATCH'
    _754 = mem[96]
    idx = 0
    while idx < _754:
        if idx >= mem[96]:
            revert with 0, 50
        _756 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        _758 = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        stor8++
        if stor8 > stor9:
            revert with 0, 'AvalancheCommunityNFT#_mint: CAP_OVERFLOW'
        _761 = mem[64]
        mem[64] = mem[64] + 32
        mem[_761] = 0
        if not address(_756):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor8]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(_756)] > -2:
            revert with 0, 17
        balanceOf[address(_756)]++
        mem[0] = stor8
        mem[32] = 2
        ownerOf[stor8] = address(_756)
        emit Transfer(0, address(_756), stor8);
        if not ext_code.size(address(_756)):
            mem[0] = stor8
            mem[32] = 10
            _773 = mem[_758]
            if bool(sub_d905952b[stor8].field_0):
                if bool(sub_d905952b[stor8].field_0) == uint255(sub_d905952b[stor8].field_0) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = sha3(stor8, 10)
                if not _773:
                    sub_d905952b[stor8].field_0 = 0
                    s = sha3(sha3(stor8, 10))
                    while sha3(sha3(stor8, 10)) + ((uint255(sub_d905952b[stor8].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        _754 = mem[96]
                        s = s + 1
                        continue 
                    if stor8 > stor9:
                        revert with 0, 'AvalancheCommunityNFT#_resolveTokenAccelerator: CAP_OVERFLOW'
                    s = 0
                    while s < stor11.length:
                        mem[0] = 11
                        _1219 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1219] = stor11[s].field_0
                        mem[_1219 + 32] = stor11[s].field_256
                        if 0 == stor11[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            _754 = mem[96]
                            s = s + 1
                            continue 
                        if stor8 > stor11[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            _754 = mem[96]
                            s = s + 1
                            continue 
                        sub_d905952b[stor8].field_256 = stor11[s].field_256
                        if idx == -1:
                            revert with 0, 17
                        _754 = mem[96]
                        idx = idx + 1
                        continue 
                else:
                    sub_d905952b[stor8].field_0 = (2 * _773) + 1
                    t = sha3(sha3(stor8, 10))
                    s = _758 + 32
                    while _758 + _773 + 32 > s:
                        stor[t] = mem[s]
                        _754 = mem[96]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor8, 10)) + (Mask(251, 0, _773 + 31) >> 5)
                    while sha3(sha3(stor8, 10)) + ((uint255(sub_d905952b[stor8].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        _754 = mem[96]
                        s = s + 1
                        continue 
                    if stor8 > stor9:
                        revert with 0, 'AvalancheCommunityNFT#_resolveTokenAccelerator: CAP_OVERFLOW'
                    s = 0
                    while s < stor11.length:
                        mem[0] = 11
                        _1369 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1369] = stor11[s].field_0
                        mem[_1369 + 32] = stor11[s].field_256
                        if 0 == stor11[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            _754 = mem[96]
                            s = s + 1
                            continue 
                        if stor8 > stor11[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            _754 = mem[96]
                            s = s + 1
                            continue 
                        sub_d905952b[stor8].field_256 = stor11[s].field_256
                        if idx == -1:
                            revert with 0, 17
                        _754 = mem[96]
                        idx = idx + 1
                        continue 
            else:
                if bool(sub_d905952b[stor8].field_0) == sub_d905952b[stor8].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = sha3(stor8, 10)
                if not _773:
                    sub_d905952b[stor8].field_0 = 0
                    s = sha3(sha3(stor8, 10))
                    while sha3(sha3(stor8, 10)) + (sub_d905952b[stor8].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        _754 = mem[96]
                        s = s + 1
                        continue 
                    if stor8 > stor9:
                        revert with 0, 'AvalancheCommunityNFT#_resolveTokenAccelerator: CAP_OVERFLOW'
                    s = 0
                    while s < stor11.length:
                        mem[0] = 11
                        _1228 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1228] = stor11[s].field_0
                        mem[_1228 + 32] = stor11[s].field_256
                        if 0 == stor11[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            _754 = mem[96]
                            s = s + 1
                            continue 
                        if stor8 > stor11[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            _754 = mem[96]
                            s = s + 1
                            continue 
                        sub_d905952b[stor8].field_256 = stor11[s].field_256
                        if idx == -1:
                            revert with 0, 17
                        _754 = mem[96]
                        idx = idx + 1
                        continue 
                else:
                    sub_d905952b[stor8].field_0 = (2 * _773) + 1
                    t = sha3(sha3(stor8, 10))
                    s = _758 + 32
                    while _758 + _773 + 32 > s:
                        stor[t] = mem[s]
                        _754 = mem[96]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor8, 10)) + (Mask(251, 0, _773 + 31) >> 5)
                    while sha3(sha3(stor8, 10)) + (sub_d905952b[stor8].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        _754 = mem[96]
                        s = s + 1
                        continue 
                    if stor8 > stor9:
                        revert with 0, 'AvalancheCommunityNFT#_resolveTokenAccelerator: CAP_OVERFLOW'
                    s = 0
                    while s < stor11.length:
                        mem[0] = 11
                        _1372 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1372] = stor11[s].field_0
                        mem[_1372 + 32] = stor11[s].field_256
                        if 0 == stor11[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            _754 = mem[96]
                            s = s + 1
                            continue 
                        if stor8 > stor11[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            _754 = mem[96]
                            s = s + 1
                            continue 
                        sub_d905952b[stor8].field_256 = stor11[s].field_256
                        if idx == -1:
                            revert with 0, 17
                        _754 = mem[96]
                        idx = idx + 1
                        continue 
        else:
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = stor8
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 164] = mem[s + _761 + 32]
                _754 = mem[96]
                s = s + 32
                continue 
            require ext_code.size(address(_756))
            call address(_756).onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
            _1010 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1010] == Mask(32, 224, mem[_1010])
            if Mask(32, 224, mem[_1010]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[0] = stor8
            mem[32] = 10
            _1079 = mem[_758]
            if bool(sub_d905952b[stor8].field_0):
                if bool(sub_d905952b[stor8].field_0) == uint255(sub_d905952b[stor8].field_0) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = sha3(stor8, 10)
                if not _1079:
                    sub_d905952b[stor8].field_0 = 0
                    s = sha3(sha3(stor8, 10))
                    while sha3(sha3(stor8, 10)) + ((uint255(sub_d905952b[stor8].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        _754 = mem[96]
                        s = s + 1
                        continue 
                    if stor8 > stor9:
                        revert with 0, 'AvalancheCommunityNFT#_resolveTokenAccelerator: CAP_OVERFLOW'
                    s = 0
                    while s < stor11.length:
                        mem[0] = 11
                        _1381 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1381] = stor11[s].field_0
                        mem[_1381 + 32] = stor11[s].field_256
                        if 0 == stor11[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            _754 = mem[96]
                            s = s + 1
                            continue 
                        if stor8 > stor11[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            _754 = mem[96]
                            s = s + 1
                            continue 
                        sub_d905952b[stor8].field_256 = stor11[s].field_256
                        if idx == -1:
                            revert with 0, 17
                        _754 = mem[96]
                        idx = idx + 1
                        continue 
                else:
                    sub_d905952b[stor8].field_0 = (2 * _1079) + 1
                    t = sha3(sha3(stor8, 10))
                    s = _758 + 32
                    while _758 + _1079 + 32 > s:
                        stor[t] = mem[s]
                        _754 = mem[96]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor8, 10)) + (Mask(251, 0, _1079 + 31) >> 5)
                    while sha3(sha3(stor8, 10)) + ((uint255(sub_d905952b[stor8].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        _754 = mem[96]
                        s = s + 1
                        continue 
                    if stor8 > stor9:
                        revert with 0, 'AvalancheCommunityNFT#_resolveTokenAccelerator: CAP_OVERFLOW'
                    s = 0
                    while s < stor11.length:
                        mem[0] = 11
                        _1467 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1467] = stor11[s].field_0
                        mem[_1467 + 32] = stor11[s].field_256
                        if 0 == stor11[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            _754 = mem[96]
                            s = s + 1
                            continue 
                        if stor8 > stor11[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            _754 = mem[96]
                            s = s + 1
                            continue 
                        sub_d905952b[stor8].field_256 = stor11[s].field_256
                        if idx == -1:
                            revert with 0, 17
                        _754 = mem[96]
                        idx = idx + 1
                        continue 
            else:
                if bool(sub_d905952b[stor8].field_0) == sub_d905952b[stor8].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = sha3(stor8, 10)
                if not _1079:
                    sub_d905952b[stor8].field_0 = 0
                    s = sha3(sha3(stor8, 10))
                    while sha3(sha3(stor8, 10)) + (sub_d905952b[stor8].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        _754 = mem[96]
                        s = s + 1
                        continue 
                    if stor8 > stor9:
                        revert with 0, 'AvalancheCommunityNFT#_resolveTokenAccelerator: CAP_OVERFLOW'
                    s = 0
                    while s < stor11.length:
                        mem[0] = 11
                        _1390 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1390] = stor11[s].field_0
                        mem[_1390 + 32] = stor11[s].field_256
                        if 0 == stor11[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            _754 = mem[96]
                            s = s + 1
                            continue 
                        if stor8 > stor11[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            _754 = mem[96]
                            s = s + 1
                            continue 
                        sub_d905952b[stor8].field_256 = stor11[s].field_256
                        if s == -1:
                            revert with 0, 17
                        _754 = mem[96]
                        s = s + 1
                        continue 
                    sub_d905952b[stor8].field_256 = 100
                    if s == -1:
                        revert with 0, 17
                    _754 = mem[96]
                    s = s + 1
                    continue 
                sub_d905952b[stor8].field_0 = (2 * _1079) + 1
                t = sha3(sha3(stor8, 10))
                s = _758 + 32
                while _758 + _1079 + 32 > s:
                    stor[t] = mem[s]
                    _754 = mem[96]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(stor8, 10)) + (Mask(251, 0, _1079 + 31) >> 5)
                while sha3(sha3(stor8, 10)) + (sub_d905952b[stor8].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    _754 = mem[96]
                    s = s + 1
                    continue 
                if stor8 > stor9:
                    revert with 0, 'AvalancheCommunityNFT#_resolveTokenAccelerator: CAP_OVERFLOW'
                s = 0
                while s < stor11.length:
                    mem[0] = 11
                    _1470 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1470] = stor11[s].field_0
                    mem[_1470 + 32] = stor11[s].field_256
                    if 0 == stor11[s].field_0:
                        if s == -1:
                            revert with 0, 17
                        _754 = mem[96]
                        s = s + 1
                        continue 
                    if stor8 > stor11[s].field_0:
                        if s == -1:
                            revert with 0, 17
                        _754 = mem[96]
                        s = s + 1
                        continue 
                    sub_d905952b[stor8].field_256 = stor11[s].field_256
                    if idx == -1:
                        revert with 0, 17
                    _754 = mem[96]
                    idx = idx + 1
                    continue 
        sub_d905952b[stor8].field_256 = 100
        if idx == -1:
            revert with 0, 17
        _754 = mem[96]
        idx = idx + 1
        continue 
}



}
