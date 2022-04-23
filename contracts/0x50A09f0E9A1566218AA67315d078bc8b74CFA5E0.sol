contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const sub_72fbeb50(?) = 100

const DEFAULT_ADMIN_ROLE = 0

const OPERATOR_ROLE = 0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct stor6;
address owner;
mapping of struct roleAdmin;
array of struct stor9;
mapping of struct stakes;
array of struct stakerIds;

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

function stakerIds(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < stakerIds[arg1].field_0
    return stakerIds[arg1][arg2].field_0
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
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function stakes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return stakes[arg1].field_0, stakes[arg1].field_256, stakes[arg1].field_512
}

function checkOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0)
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

function isHolder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return (balanceOf[address(arg1)] > 0)
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

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
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

function getStakerIds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stakerIds[address(arg1)].field_0:
        mem[128] = stakerIds[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stakerIds[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stakerIds[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stakerIds[address(arg1)].field_0, data=mem[128 len 32 * stakerIds[address(arg1)].field_0])
    mem[(32 * stakerIds[address(arg1)].field_0) + 128] = 32
    mem[(32 * stakerIds[address(arg1)].field_0) + 160] = stakerIds[address(arg1)].field_0
    mem[(32 * stakerIds[address(arg1)].field_0) + 192 len 32 * stakerIds[address(arg1)].field_0] = mem[128 len 32 * stakerIds[address(arg1)].field_0]
    return memory
      from (32 * stakerIds[address(arg1)].field_0) + 128
       len (96 * stakerIds[address(arg1)].field_0) + 64
}

function mint(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakeMirrorNFT: CALLER_NO_OPERATOR_ROLE'
    if arg2 <= 0:
        revert with 0, 'StakeMirrorNFT: INVALID_TOKEN_ID'
    if arg3 <= 0:
        revert with 0, 'StakeMirrorNFT: INVALID_AMOUNT'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakeMirrorNFT: CALLER_NO_OPERATOR_ROLE'
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[arg2] = arg1
    emit Transfer(0, arg1, arg2);
    stakes[arg2].field_0 = arg3
    stakes[arg2].field_256 = arg4
    stakes[arg2].field_512 = arg5
    stakerIds[address(arg1)].field_0++
    stakerIds[address(arg1)][stakerIds[address(arg1)].field_0].field_0 = arg2
    return arg2
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0:
        revert with 0, 'StakeMirrorNFT: CALLER_NO_OPERATOR_ROLE'
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while (uint255(stor9.length) * 0.5) + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while stor9.length.field_1 + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0:
        revert with 0, 'StakeMirrorNFT: CALLER_NO_OPERATOR_ROLE'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor6[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor6[arg1].field_0 = 0
            idx = 0
            while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor6[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor6[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor6[arg1].field_0 = 0
            idx = 0
            while stor6[arg1].field_1 + 31 / 32 > idx:
                stor6[arg1][idx].field_0 = 0
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
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakeMirrorNFT: CALLER_NO_OPERATOR_ROLE'
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

function removeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0:
        revert with 0, 'StakeMirrorNFT: NO_OPERATOR_ROLE'
    if roleAdmin[roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256][address(msg.sender)].field_0:
        if roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0:
            roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0 = 0
            emit RoleRevoked(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, arg1, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function addOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakeMirrorNFT: ALREADY_OERATOR_ROLE'
    if roleAdmin[roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256][address(msg.sender)].field_0:
        if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0:
            roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0 = 1
            emit RoleGranted(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, arg1, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0:
        revert with 0, 'StakeMirrorNFT: CALLER_NO_OPERATOR_ROLE'
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
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0:
        revert with 0, 'StakeMirrorNFT: CALLER_NO_OPERATOR_ROLE'
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

function getStakeAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stakerIds[address(arg1)].field_0:
        mem[128] = stakerIds[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stakerIds[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stakerIds[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    s = 0
    while idx < stakerIds[address(arg1)].field_0:
        if idx >= stakerIds[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 10
        if s > !stakes[mem[(32 * idx) + 128]].field_0:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + stakes[mem[(32 * idx) + 128]].field_0
        continue 
    return (s * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0 * stakerIds[address(arg1)].field_0)
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
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
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
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
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
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
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
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function baseURI() payable {
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor9.length):
            if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor9.length):
                if 31 < uint255(stor9.length) * 0.5:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor9.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
        if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)], mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor9.length) * 0.5)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 0, 34
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor9.length):
            if 31 < uint255(stor9.length) * 0.5:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while (uint255(stor9.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function decreaseStakeAmount(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakeMirrorNFT: CALLER_NO_OPERATOR_ROLE'
    if not ownerOf[arg1]:
        revert with 0, 'StakeMirrorNFT: STAKE_NOT_FOUND'
    if arg2 > stakes[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakeMirrorNFT: INSUFFICIENT_STAKE_AMOUNT'
    if arg2 != stakes[arg1].field_0:
        if stakes[arg1].field_0 < arg2:
            revert with 0, 17
        stakes[arg1].field_0 -= arg2
        emit StakeAmountDecreased(arg1, arg2);
    else:
        if not ownerOf[arg1]:
            revert with 0, 'StakeMirrorNFT: STAKE_NOT_FOUND'
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakeMirrorNFT: CALLER_NO_OPERATOR_ROLE'
        approved[arg1] = 0
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[arg1], 0, arg1);
        if balanceOf[stor2[arg1]] < 1:
            revert with 0, 17
        balanceOf[stor2[arg1]]--
        ownerOf[arg1] = 0
        emit Transfer(ownerOf[arg1], 0, arg1);
        if stor6[arg1].field_0:
            if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6[arg1].field_0):
                if stor6[arg1].field_0:
                    if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    stor6[arg1].field_0 = 0
                    if 31 < uint255(stor6[arg1].field_0) * 0.5:
                        idx = 0
                        while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                        revert with 0, 34
                    stor6[arg1].field_0 = 0
                    if 31 < stor6[arg1].field_1:
                        idx = 0
                        while stor6[arg1].field_1 + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
        else:
            if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                revert with 0, 34
            if stor6[arg1].field_1:
                if stor6[arg1].field_0:
                    if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    stor6[arg1].field_0 = 0
                    if 31 < uint255(stor6[arg1].field_0) * 0.5:
                        idx = 0
                        while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                        revert with 0, 34
                    stor6[arg1].field_0 = 0
                    if 31 < stor6[arg1].field_1:
                        idx = 0
                        while stor6[arg1].field_1 + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
        stakes[arg1].field_0 = 0
        stakes[arg1].field_256 = 0
        stakes[arg1].field_512 = 0
        idx = 0
        while idx < stakerIds[stor2[arg1]].field_0:
            mem[0] = sha3(ownerOf[arg1], 11)
            if stakerIds[stor2[arg1]][idx].field_0 != arg1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stakerIds[stor2[arg1]].field_0 < 1:
                revert with 0, 17
            if idx != stakerIds[stor2[arg1]].field_0 - 1:
                if stakerIds[stor2[arg1]].field_0 < 1:
                    revert with 0, 17
                if stakerIds[stor2[arg1]].field_0 - 1 >= stakerIds[stor2[arg1]].field_0:
                    revert with 0, 50
                if idx >= stakerIds[stor2[arg1]].field_0:
                    revert with 0, 50
                stakerIds[stor2[arg1]][idx].field_0 = stakerIds[stor2[arg1]][stakerIds[stor2[arg1]].field_0].field_0
            if not stakerIds[stor2[arg1]].field_0:
                revert with 0, 49
            stakerIds[stor2[arg1]][stakerIds[stor2[arg1]].field_0].field_0 = 0
            stakerIds[stor2[arg1]].field_0--
}



}
