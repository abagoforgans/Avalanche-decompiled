contract main {




// =====================  Runtime code  =====================


#
#  - sub_16a3af28(?)
#  - sub_4d26c840(?)
#  - sub_a21387ae(?)
#
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
mapping of struct sub_6adf4c85;
uint256 stor10;

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

function sub_6adf4c85(?) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')AvalancheCommunityCompetitionNF#getPointBalance: NON_EXISTENT_TOKEN'
    return sub_6adf4c85[arg1].field_512
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

function sub_6b02f07f(?) payable {
    require calldata.size - 4 >= 64
    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')AvalancheCommunityCompetitionNF#onlyOperator: CALLER_NO_OPERATOR_ROLE'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')AvalancheCommunityCompetitionNF#addPointBalance: NON_EXISTENT_TOKEN'
    if sub_6adf4c85[arg1].field_512 > !arg2:
        revert with 0, 17
    sub_6adf4c85[arg1].field_512 += arg2
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

function sub_13a85242(?) payable {
    require calldata.size - 4 >= 64
    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')AvalancheCommunityCompetitionNF#onlyOperator: CALLER_NO_OPERATOR_ROLE'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')AvalancheCommunityCompetitionNF#subPointBalance: NON_EXISTENT_TOKEN'
    if arg2 > sub_6adf4c85[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')AvalancheCommunityCompetitionNF#subPointBalance: INSUFFICIENT_POINT_BALANCE'
    if sub_6adf4c85[arg1].field_512 < arg2:
        revert with 0, 17
    sub_6adf4c85[arg1].field_512 -= arg2
}

function addOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')AvalancheCommunityCompetitionNF#onlyAdmin: CALLER_NO_ADMIN_ROLE'
    if uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')AvalancheCommunityCompetitionNF#addOperator: ALREADY_OERATOR_ROLE'
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
                    ')AvalancheCommunityCompetitionNF#onlyAdmin: CALLER_NO_ADMIN_ROLE'
    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')AvalancheCommunityCompetitionNF#removeOperator: NO_OPERATOR_ROLE'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')AvalancheCommunityCompetitionNF#isTokenHolder: ZERO_ADDRESS'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')AvalancheCommunityCompetitionNF#getTokenId: ZERO_ADDRESS'
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
                    ')AvalancheCommunityCompetitionNF#onlyAdmin: CALLER_NO_ADMIN_ROLE'
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
        revert with 0, ')AvalancheCommunityCompetitionNF#onlyOperator: CALLER_NO_OPERATOR_ROLE'
    if not ownerOf[arg1]:
        revert with 0, ')AvalancheCommunityCompetitionNF#setTokenURI: NON_EXISTENT_TOKEN'
    if bool(sub_6adf4c85[arg1].field_256):
        if bool(sub_6adf4c85[arg1].field_256) == uint255(sub_6adf4c85[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            sub_6adf4c85[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            sub_6adf4c85[arg1].field_256 = 0
            idx = 0
            while (uint255(sub_6adf4c85[arg1].field_256) * 0.5) + 31 / 32 > idx:
                sub_6adf4c85[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(sub_6adf4c85[arg1].field_256) == sub_6adf4c85[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            sub_6adf4c85[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            sub_6adf4c85[arg1].field_256 = 0
            idx = 0
            while sub_6adf4c85[arg1].field_257 % 128 + 31 / 32 > idx:
                sub_6adf4c85[arg1][idx + 1].field_0 = 0
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

function mintNFT(address arg1, string arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
        revert with 0, ')AvalancheCommunityCompetitionNF#onlyOperator: CALLER_NO_OPERATOR_ROLE'
    stor8++
    if stor8 > stor10:
        revert with 0, ')AvalancheCommunityCompetitionNF#_mint: CAP_OVERFLOW'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor8]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor8] = arg1
    emit Transfer(0, arg1, stor8);
    sub_6adf4c85[stor8].field_0 = stor8
    if bool(sub_6adf4c85[stor8].field_256):
        if bool(sub_6adf4c85[stor8].field_256) == uint255(sub_6adf4c85[stor8].field_256) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            sub_6adf4c85[stor8][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            sub_6adf4c85[stor8].field_256 = 0
            idx = 0
            while (uint255(sub_6adf4c85[stor8].field_256) * 0.5) + 31 / 32 > idx:
                sub_6adf4c85[stor8][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(sub_6adf4c85[stor8].field_256) == sub_6adf4c85[stor8].field_257 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            sub_6adf4c85[stor8][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            sub_6adf4c85[stor8].field_256 = 0
            idx = 0
            while sub_6adf4c85[stor8].field_257 % 128 + 31 / 32 > idx:
                sub_6adf4c85[stor8][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    sub_6adf4c85[stor8].field_512 = arg3
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
                    ')AvalancheCommunityCompetitionNF#getTokenURI: NON_EXISTENT_TOKEN'
    if bool(sub_6adf4c85[arg1].field_256):
        if bool(sub_6adf4c85[arg1].field_256) == uint255(sub_6adf4c85[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if bool(sub_6adf4c85[arg1].field_256):
            if bool(sub_6adf4c85[arg1].field_256) == uint255(sub_6adf4c85[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_6adf4c85[arg1].field_256):
                if 31 < uint255(sub_6adf4c85[arg1].field_256) * 0.5:
                    mem[128] = sub_6adf4c85[arg1][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_6adf4c85[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = sub_6adf4c85[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, sub_6adf4c85[arg1].field_256), data=mem[128 len ceil32(uint255(sub_6adf4c85[arg1].field_256) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, sub_6adf4c85[arg1].field_264)
        else:
            if bool(sub_6adf4c85[arg1].field_256) == sub_6adf4c85[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if sub_6adf4c85[arg1].field_257 % 128:
                if 31 < sub_6adf4c85[arg1].field_257 % 128:
                    mem[128] = sub_6adf4c85[arg1][1].field_0
                    idx = 128
                    s = 0
                    while sub_6adf4c85[arg1].field_257 % 128 + 96 > idx:
                        mem[idx + 32] = sub_6adf4c85[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, sub_6adf4c85[arg1].field_256), data=mem[128 len ceil32(uint255(sub_6adf4c85[arg1].field_256) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, sub_6adf4c85[arg1].field_264)
        mem[ceil32(uint255(sub_6adf4c85[arg1].field_256) * 0.5) + 192 len ceil32(uint255(sub_6adf4c85[arg1].field_256) * 0.5)] = mem[128 len ceil32(uint255(sub_6adf4c85[arg1].field_256) * 0.5)]
        if ceil32(uint255(sub_6adf4c85[arg1].field_256) * 0.5) > uint255(sub_6adf4c85[arg1].field_256) * 0.5:
            mem[(uint255(sub_6adf4c85[arg1].field_256) * 0.5) + ceil32(uint255(sub_6adf4c85[arg1].field_256) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, sub_6adf4c85[arg1].field_256), data=mem[128 len ceil32(uint255(sub_6adf4c85[arg1].field_256) * 0.5)], mem[(2 * ceil32(uint255(sub_6adf4c85[arg1].field_256) * 0.5)) + 192 len 2 * ceil32(uint255(sub_6adf4c85[arg1].field_256) * 0.5)]), 
    if bool(sub_6adf4c85[arg1].field_256) == sub_6adf4c85[arg1].field_257 % 128 < 32:
        revert with 0, 34
    if bool(sub_6adf4c85[arg1].field_256):
        if bool(sub_6adf4c85[arg1].field_256) == uint255(sub_6adf4c85[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_6adf4c85[arg1].field_256):
            if 31 < uint255(sub_6adf4c85[arg1].field_256) * 0.5:
                mem[128] = sub_6adf4c85[arg1][1].field_0
                idx = 128
                s = 0
                while (uint255(sub_6adf4c85[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = sub_6adf4c85[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=sub_6adf4c85[arg1].field_256 % 128, data=mem[128 len ceil32(sub_6adf4c85[arg1].field_257 % 128)])
            mem[128] = 256 * Mask(248, 0, sub_6adf4c85[arg1].field_264)
    else:
        if bool(sub_6adf4c85[arg1].field_256) == sub_6adf4c85[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if sub_6adf4c85[arg1].field_257 % 128:
            if 31 < sub_6adf4c85[arg1].field_257 % 128:
                mem[128] = sub_6adf4c85[arg1][1].field_0
                idx = 128
                s = 0
                while sub_6adf4c85[arg1].field_257 % 128 + 96 > idx:
                    mem[idx + 32] = sub_6adf4c85[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=sub_6adf4c85[arg1].field_256 % 128, data=mem[128 len ceil32(sub_6adf4c85[arg1].field_257 % 128)])
            mem[128] = 256 * Mask(248, 0, sub_6adf4c85[arg1].field_264)
    mem[ceil32(sub_6adf4c85[arg1].field_257 % 128) + 192 len ceil32(sub_6adf4c85[arg1].field_257 % 128)] = mem[128 len ceil32(sub_6adf4c85[arg1].field_257 % 128)]
    if ceil32(sub_6adf4c85[arg1].field_257 % 128) > sub_6adf4c85[arg1].field_257 % 128:
        mem[sub_6adf4c85[arg1].field_257 % 128 + ceil32(sub_6adf4c85[arg1].field_257 % 128) + 192] = 0
    return Array(len=sub_6adf4c85[arg1].field_256 % 128, data=mem[128 len ceil32(sub_6adf4c85[arg1].field_257 % 128)], mem[(2 * ceil32(sub_6adf4c85[arg1].field_257 % 128)) + 192 len 2 * ceil32(sub_6adf4c85[arg1].field_257 % 128)]), 
}

function sub_1f2d56be(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _118 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_118] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_118 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_118 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _118
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    _119 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 68).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 68).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 68).length) + 1
    mem[_119] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = _119 + 32
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 7)
    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
        revert with 0, ')AvalancheCommunityCompetitionNF#onlyOperator: CALLER_NO_OPERATOR_ROLE'
    if mem[96] != mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, ')AvalancheCommunityCompetitionNF#mintBatchNFT: PARAMS_LENGTH_MISMATCH'
    if mem[96] != ('cd', 68).length:
        revert with 0, ')AvalancheCommunityCompetitionNF#mintBatchNFT: PARAMS_LENGTH_MISMATCH'
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        if idx >= mem[_119]:
            revert with 0, 50
        _236 = mem[(32 * idx) + _119 + 32]
        stor8++
        if stor8 > stor10:
            revert with 0, ')AvalancheCommunityCompetitionNF#_mint: CAP_OVERFLOW'
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor8]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(mem[(32 * idx) + 128])] > -2:
            revert with 0, 17
        balanceOf[address(mem[(32 * idx) + 128])]++
        ownerOf[stor8] = mem[(32 * idx) + 140 len 20]
        emit Transfer(0, mem[(32 * idx) + 140 len 20], stor8);
        mem[0] = stor8
        mem[32] = 9
        sub_6adf4c85[stor8].field_0 = stor8
        _250 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
        if bool(sub_6adf4c85[stor8].field_256):
            if bool(sub_6adf4c85[stor8].field_256) == uint255(sub_6adf4c85[stor8].field_256) * 0.5 < 32:
                revert with 0, 34
            mem[0] = sha3(stor8, 9) + 1
            if not _250:
                sub_6adf4c85[stor8].field_256 = 0
                s = sha3(sha3(stor8, 9) + 1)
                while sha3(sha3(stor8, 9) + 1) + ((uint255(sub_6adf4c85[stor8].field_256) * 0.5) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                sub_6adf4c85[stor8].field_256 = (2 * _250) + 1
                s = sha3(sha3(stor8, 9) + 1)
                t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32
                while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + _250 + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(stor8, 9) + 1) + (Mask(251, 0, _250 + 31) >> 5)
                while sha3(sha3(stor8, 9) + 1) + ((uint255(sub_6adf4c85[stor8].field_256) * 0.5) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        else:
            if bool(sub_6adf4c85[stor8].field_256) == sub_6adf4c85[stor8].field_257 % 128 < 32:
                revert with 0, 34
            mem[0] = sha3(stor8, 9) + 1
            if not _250:
                sub_6adf4c85[stor8].field_256 = 0
                s = sha3(sha3(stor8, 9) + 1)
                while sha3(sha3(stor8, 9) + 1) + (sub_6adf4c85[stor8].field_257 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                sub_6adf4c85[stor8].field_256 = (2 * _250) + 1
                s = sha3(sha3(stor8, 9) + 1)
                t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32
                while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + _250 + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(stor8, 9) + 1) + (Mask(251, 0, _250 + 31) >> 5)
                while sha3(sha3(stor8, 9) + 1) + (sub_6adf4c85[stor8].field_257 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        mem[0] = stor8
        mem[32] = 9
        sub_6adf4c85[stor8].field_512 = _236
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
