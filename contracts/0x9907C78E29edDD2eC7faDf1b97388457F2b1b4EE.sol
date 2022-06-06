contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const sub_5944bc02(?) = 120

const sub_5d5b31d8(?) = 80

const sub_69712a72(?) = 1000

const sub_85c57be0(?) = 0x9bb7abd9e62ce76bd68265c8ba02cd0dfcbc2786f2e76e685cba803835c05479

const sub_b4da03a4(?) = 0x6cb203373780fe72a9090763cdaec72df1a9e24fb36a16246f7e7bb98eb4fe1a

const INVITE_ROLE = 0x9c46b4965636b67d33f26e1ec2280b49002b4009804fe727c1ea22a87d72eef7

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const OWNER_ROLE = 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor152;
array of uint256 tokenByIndex;
mapping of uint256 stor154;
mapping of struct roleAdmin;
array of struct roleMember;
mapping of uint256 sub_30a2ae24;
array of uint256 stor302;
mapping of uint256 stor303;
mapping of uint8 stor304;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function getCapital(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_30a2ae24[arg1]
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_30a2ae24(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_30a2ae24[arg1]
}

function sub_42805c2b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(arg1)].field_0)
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function sub_50533f23(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor304[arg1])
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

function sub_8d43e553(?) payable {
    return stor302.length
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= roleMember[arg1].field_0:
        revert with 'NH{q', 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleMember[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_0d3823f2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not ownerOf[arg1]
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_bb181878(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_30a2ae24[arg1]:
        return 0
    if not ownerOf[stor301[arg1]]:
        return 0
    if not ownerOf[stor301[arg1]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[stor301[arg1]]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x5a05180f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 'NH{q', 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function sub_0eaa6920(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not roleAdmin[0x6cb203373780fe72a9090763cdaec72df1a9e24fb36a16246f7e7bb98eb4fe1a][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x6cb203373780fe72a9090763cdaec72df1a9e24fb36a16246f7e7bb98eb4fe1a
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    require ext_code.size(address(arg2))
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_01b8192e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == arg2
    if roleAdmin[0x9bb7abd9e62ce76bd68265c8ba02cd0dfcbc2786f2e76e685cba803835c05479][address(msg.sender)].field_0:
        stor304[arg2] = uint8(bool(arg1))
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0x9bb7abd9e62ce76bd68265c8ba02cd0dfcbc2786f2e76e685cba803835c05479
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function sub_2bb9c294(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[0x9bb7abd9e62ce76bd68265c8ba02cd0dfcbc2786f2e76e685cba803835c05479][address(msg.sender)].field_0:
        sub_30a2ae24[arg1] = arg2
        if not stor303[arg1]:
            stor302.length++
            stor302[stor302.length] = arg1
            stor303[arg1] = stor302.length
        if not ownerOf[arg2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        emit 0x3ab26572: ownerOf[arg2], arg1
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0x9bb7abd9e62ce76bd68265c8ba02cd0dfcbc2786f2e76e685cba803835c05479
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
        if not roleMember[arg1][1][address(arg2)].field_0:
            roleMember[arg1].field_0++
            roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
            roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
            roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function sub_069ca7c9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][address(msg.sender)].field_0:
        if not roleAdmin[0x9c46b4965636b67d33f26e1ec2280b49002b4009804fe727c1ea22a87d72eef7][address(arg1)].field_0:
            roleAdmin[0x9c46b4965636b67d33f26e1ec2280b49002b4009804fe727c1ea22a87d72eef7][address(arg1)].field_0 = 1
            emit RoleGranted(0x9c46b4965636b67d33f26e1ec2280b49002b4009804fe727c1ea22a87d72eef7, address(arg1), msg.sender);
        if not roleMember[0x9c46b4965636b67d33f26e1ec2280b49002b4009804fe727c1ea22a87d72eef7][1][address(arg1)].field_0:
            roleMember[0x9c46b4965636b67d33f26e1ec2280b49002b4009804fe727c1ea22a87d72eef7].field_0++
            roleMember[0x9c46b4965636b67d33f26e1ec2280b49002b4009804fe727c1ea22a87d72eef7][roleMember[0x9c46b4965636b67d33f26e1ec2280b49002b4009804fe727c1ea22a87d72eef7].field_0].field_0 = address(arg1)
            roleMember[0x9c46b4965636b67d33f26e1ec2280b49002b4009804fe727c1ea22a87d72eef7][roleMember[0x9c46b4965636b67d33f26e1ec2280b49002b4009804fe727c1ea22a87d72eef7].field_0].field_160 = 0
            roleMember[0x9c46b4965636b67d33f26e1ec2280b49002b4009804fe727c1ea22a87d72eef7][1][address(arg1)].field_0 = roleMember[0x9c46b4965636b67d33f26e1ec2280b49002b4009804fe727c1ea22a87d72eef7].field_0
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function sub_963f0876(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][address(msg.sender)].field_0:
        if not roleAdmin[0x6cb203373780fe72a9090763cdaec72df1a9e24fb36a16246f7e7bb98eb4fe1a][address(arg1)].field_0:
            roleAdmin[0x6cb203373780fe72a9090763cdaec72df1a9e24fb36a16246f7e7bb98eb4fe1a][address(arg1)].field_0 = 1
            emit RoleGranted(0x6cb203373780fe72a9090763cdaec72df1a9e24fb36a16246f7e7bb98eb4fe1a, address(arg1), msg.sender);
        if not roleMember[0x6cb203373780fe72a9090763cdaec72df1a9e24fb36a16246f7e7bb98eb4fe1a][1][address(arg1)].field_0:
            roleMember[0x6cb203373780fe72a9090763cdaec72df1a9e24fb36a16246f7e7bb98eb4fe1a].field_0++
            roleMember[0x6cb203373780fe72a9090763cdaec72df1a9e24fb36a16246f7e7bb98eb4fe1a][roleMember[0x6cb203373780fe72a9090763cdaec72df1a9e24fb36a16246f7e7bb98eb4fe1a].field_0].field_0 = address(arg1)
            roleMember[0x6cb203373780fe72a9090763cdaec72df1a9e24fb36a16246f7e7bb98eb4fe1a][roleMember[0x6cb203373780fe72a9090763cdaec72df1a9e24fb36a16246f7e7bb98eb4fe1a].field_0].field_160 = 0
            roleMember[0x6cb203373780fe72a9090763cdaec72df1a9e24fb36a16246f7e7bb98eb4fe1a][1][address(arg1)].field_0 = roleMember[0x6cb203373780fe72a9090763cdaec72df1a9e24fb36a16246f7e7bb98eb4fe1a].field_0
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function sub_a4186601(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][address(msg.sender)].field_0:
        if ext_code.size(address(arg1)) <= 0:
            revert with 0, 'War address error.'
        if not roleAdmin[0x9bb7abd9e62ce76bd68265c8ba02cd0dfcbc2786f2e76e685cba803835c05479][address(arg1)].field_0:
            roleAdmin[0x9bb7abd9e62ce76bd68265c8ba02cd0dfcbc2786f2e76e685cba803835c05479][address(arg1)].field_0 = 1
            emit RoleGranted(0x9bb7abd9e62ce76bd68265c8ba02cd0dfcbc2786f2e76e685cba803835c05479, address(arg1), msg.sender);
        if not roleMember[0x9bb7abd9e62ce76bd68265c8ba02cd0dfcbc2786f2e76e685cba803835c05479][1][address(arg1)].field_0:
            roleMember[0x9bb7abd9e62ce76bd68265c8ba02cd0dfcbc2786f2e76e685cba803835c05479].field_0++
            roleMember[0x9bb7abd9e62ce76bd68265c8ba02cd0dfcbc2786f2e76e685cba803835c05479][roleMember[0x9bb7abd9e62ce76bd68265c8ba02cd0dfcbc2786f2e76e685cba803835c05479].field_0].field_0 = address(arg1)
            roleMember[0x9bb7abd9e62ce76bd68265c8ba02cd0dfcbc2786f2e76e685cba803835c05479][roleMember[0x9bb7abd9e62ce76bd68265c8ba02cd0dfcbc2786f2e76e685cba803835c05479].field_0].field_160 = 0
            roleMember[0x9bb7abd9e62ce76bd68265c8ba02cd0dfcbc2786f2e76e685cba803835c05479][1][address(arg1)].field_0 = roleMember[0x9bb7abd9e62ce76bd68265c8ba02cd0dfcbc2786f2e76e685cba803835c05479].field_0
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x9c46b4965636b67d33f26e1ec2280b49002b4009804fe727c1ea22a87d72eef7][address(msg.sender)].field_0:
        if ext_code.size(arg1) > 0:
            revert with 0, 'Contract can not mint.'
        if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(arg1)].field_0:
            roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(arg1)].field_0 = 1
            emit RoleGranted(0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, arg1, msg.sender);
        if not roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0:
            roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0++
            roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_0 = arg1
            roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_160 = 0
            roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0 = roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0
        emit 0x77e54f48: arg1
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0x9c46b4965636b67d33f26e1ec2280b49002b4009804fe727c1ea22a87d72eef7
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
        if roleMember[arg1][1][address(arg2)].field_0:
            if roleMember[arg1][1][address(arg2)].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[arg1].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
                if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                    revert with 'NH{q', 50
                if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                    revert with 'NH{q', 50
                roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
                roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
            if not roleMember[arg1].field_0:
                revert with 'NH{q', 49
            roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
            roleMember[arg1].field_0--
            roleMember[arg1][1][address(arg2)].field_0 = 0
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 12
        stor101.length.field_8 = 'HashLand(r1)' / 256
        idx = 0
        while stor101.length.field_1 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 12
        stor101.length.field_8 = 'HashLand(r1)' / 256
        idx = 0
        while stor101.length.field_1 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 7
        stor102.length.field_8 = 'HLANDr1' / 256
        idx = 0
        while stor102.length.field_1 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 7
        stor102.length.field_8 = 'HLANDr1' / 256
        idx = 0
        while stor102.length.field_1 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    if not roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][address(msg.sender)].field_0:
        roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e, msg.sender, msg.sender);
    if not roleMember[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][1][address(msg.sender)].field_0:
        roleMember[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e].field_0++
        roleMember[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][roleMember[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e].field_0].field_0 = msg.sender
        roleMember[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][roleMember[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e].field_0].field_160 = 0
        roleMember[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][1][address(msg.sender)].field_0 = roleMember[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e].field_0
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor152[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor152[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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

function name() payable {
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor101.length):
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
        if ceil32(stor101.length.field_1) > stor101.length.field_1:
            mem[ceil32(stor101.length.field_1) + stor101.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
    if ceil32(stor101.length.field_1) > stor101.length.field_1:
        mem[ceil32(stor101.length.field_1) + stor101.length.field_1 + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function symbol() payable {
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor102.length):
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
        if ceil32(stor102.length.field_1) > stor102.length.field_1:
            mem[ceil32(stor102.length.field_1) + stor102.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
    if ceil32(stor102.length.field_1) > stor102.length.field_1:
        mem[ceil32(stor102.length.field_1) + stor102.length.field_1 + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function sub_a6c5b6bc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 < 0:
        revert with 0, 'Wrong position.'
    if arg2 < 0:
        revert with 0, 'Wrong position.'
    if arg1 >= 120:
        revert with 0, 'Wrong position.'
    if arg2 >= 80:
        revert with 0, 'Wrong position.'
    if arg2 and 120 > -1 / arg2:
        revert with 'NH{q', 17
    if arg1 > (-120 * arg2) - 1:
        revert with 'NH{q', 17
    if stor304[arg1 + (120 * arg2)]:
        revert with 0, 'This land can not mint.'
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        mem[352] = 'AccessControl: account '
        mem[375 len 64] = 0, mem[129 len 63]
        mem[417] = ' is missing role '
        mem[434 len 96] = 0, mem[225 len 95]
        mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[504] = 32
        mem[536] = mem[320]
        mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
        if ceil32(mem[320]) > mem[320]:
            mem[mem[320] + 568] = 0
        revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
    if arg2 and 120 > -1 / arg2:
        revert with 'NH{q', 17
    if arg1 > (-120 * arg2) - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length >= 1000:
        revert with 0, 'Mint amount is out of range'
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'Can not mint.'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(msg.sender)]:
        revert with 0, 'You have Land already.'
    if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0 = 0
        emit RoleRevoked(0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, msg.sender, msg.sender);
    if roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0:
        if roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0 - 1 != roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0 - 1:
            if roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0 - 1 >= roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0:
                revert with 'NH{q', 50
            if roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0 - 1 >= roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0:
                revert with 'NH{q', 50
            roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0].field_0 = roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_0
            roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_0].field_0 = roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0
        if not roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0:
            revert with 'NH{q', 49
        roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_0 = 0
        roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0--
        roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0 = 0
    sub_30a2ae24[arg1 + (120 * arg2)] = arg1 + (120 * arg2)
    if not stor303[arg1 + (120 * arg2)]:
        stor302.length++
        stor302[stor302.length] = arg1 + (120 * arg2)
        stor303[arg1 + (120 * arg2)] = stor302.length
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg1 + (120 * arg2)]:
        revert with 0, 'ERC721: token already minted'
    stor154[arg1 + (120 * arg2)] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg1 + (120 * arg2)
    if msg.sender:
        tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = arg1 + (120 * arg2)
        stor152[arg1 + (120 * arg2)] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor154[arg1 + (120 * arg2)] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor154[arg1 + (120 * arg2)]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg1 + (120 * arg2)]
        stor154[arg1 + (120 * arg2)] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1 + (120 * arg2)] = msg.sender
    emit Transfer(0, msg.sender, arg1 + (120 * arg2));
    emit 0x7b42a657: msg.sender, arg1 + (120 * arg2)
}

function sub_fe92faff(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 < 0:
        revert with 0, 'Start position error.'
    if arg2 <= 0:
        revert with 0, 'Start position error.'
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > stor302.length:
        revert with 0, 'Start position error.'
    if arg2 > test266151307():
        revert with 'NH{q', 65
    if arg2 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * arg2) + 128] = arg2
    if not arg2:
        if not arg2:
            if arg2 > test266151307():
                revert with 'NH{q', 65
            mem[(64 * arg2) + 160] = arg2
            if not arg2:
                if arg1 > -arg2 - 1:
                    revert with 'NH{q', 17
                if var104002 < arg1 + arg2:
                    if var110001 >= stor302.length:
                        revert with 'NH{q', 50
                    if var126003 < arg1:
                        revert with 'NH{q', 17
                    # nil
                else:
                    mem[(98 * arg2) + 192] = 96
                    mem[(98 * arg2) + 288] = arg2
                    mem[(98 * arg2) + 320 len 32 * arg2] = mem[128 len 32 * arg2]
                    mem[(98 * arg2) + 224] = (32 * arg2) + 128
                    mem[(131 * arg2) + 320] = arg2
                    idx = 0
                    s = (32 * arg2) + 160
                    t = (131 * arg2) + 352
                    while idx < arg2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(98 * arg2) + 256] = (64 * arg2) + 160
                    mem[(164 * arg2) + 352] = arg2
                    idx = 0
                    s = (64 * arg2) + 192
                    t = (164 * arg2) + 384
                    while idx < arg2:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return Array(len=arg2, data=mem[(98 * arg2) + 320 len (66 * arg2) + 32], arg2, mem[(164 * arg2) + 384 len 33 * arg2]), 
                           (32 * arg2) + 128,
                           (64 * arg2) + 160
            else:
                mem[(64 * arg2) + 192 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
                if arg1 > -arg2 - 1:
                    revert with 'NH{q', 17
                if var105002 < arg1 + arg2:
                    if var111001 >= stor302.length:
                        revert with 'NH{q', 50
                    if var127003 < arg1:
                        revert with 'NH{q', 17
                    # nil
                else:
                    mem[(98 * arg2) + 192] = 96
                    mem[(98 * arg2) + 288] = arg2
                    mem[(98 * arg2) + 320 len 32 * arg2] = mem[128 len 32 * arg2]
                    mem[(98 * arg2) + 224] = (32 * arg2) + 128
                    mem[(131 * arg2) + 320] = arg2
                    idx = 0
                    s = (32 * arg2) + 160
                    t = (131 * arg2) + 352
                    while idx < arg2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(98 * arg2) + 256] = (64 * arg2) + 160
                    mem[(164 * arg2) + 352] = arg2
                    idx = 0
                    s = (64 * arg2) + 192
                    t = (164 * arg2) + 384
                    while idx < arg2:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return Array(len=arg2, data=mem[(98 * arg2) + 320 len (66 * arg2) + 32], arg2, mem[(164 * arg2) + 384 len 33 * arg2]), 
                           (32 * arg2) + 128,
                           (64 * arg2) + 160
        else:
            mem[(32 * arg2) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
            if arg2 > test266151307():
                revert with 'NH{q', 65
            mem[(64 * arg2) + 160] = arg2
            if not arg2:
                if arg1 > -arg2 - 1:
                    revert with 'NH{q', 17
                if var105002 < arg1 + arg2:
                    if var111001 >= stor302.length:
                        revert with 'NH{q', 50
                    if var127003 < arg1:
                        revert with 'NH{q', 17
                    # nil
                else:
                    mem[(98 * arg2) + 192] = 96
                    mem[(98 * arg2) + 288] = arg2
                    mem[(98 * arg2) + 320 len 32 * arg2] = mem[128 len 32 * arg2]
                    mem[(98 * arg2) + 224] = (32 * arg2) + 128
                    mem[(131 * arg2) + 320] = arg2
                    idx = 0
                    s = (32 * arg2) + 160
                    t = (131 * arg2) + 352
                    while idx < arg2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(98 * arg2) + 256] = (64 * arg2) + 160
                    mem[(164 * arg2) + 352] = arg2
                    idx = 0
                    s = (64 * arg2) + 192
                    t = (164 * arg2) + 384
                    while idx < arg2:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return Array(len=arg2, data=mem[(98 * arg2) + 320 len (66 * arg2) + 32], arg2, mem[(164 * arg2) + 384 len 33 * arg2]), 
                           (32 * arg2) + 128,
                           (64 * arg2) + 160
            else:
                mem[(64 * arg2) + 192 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
                if arg1 > -arg2 - 1:
                    revert with 'NH{q', 17
                if var106002 < arg1 + arg2:
                    if var112001 >= stor302.length:
                        revert with 'NH{q', 50
                    if var128003 < arg1:
                        revert with 'NH{q', 17
                    # nil
                else:
                    mem[(98 * arg2) + 192] = 96
                    mem[(98 * arg2) + 288] = arg2
                    mem[(98 * arg2) + 320 len 32 * arg2] = mem[128 len 32 * arg2]
                    mem[(98 * arg2) + 224] = (32 * arg2) + 128
                    mem[(131 * arg2) + 320] = arg2
                    idx = 0
                    s = (32 * arg2) + 160
                    t = (131 * arg2) + 352
                    while idx < arg2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(98 * arg2) + 256] = (64 * arg2) + 160
                    mem[(164 * arg2) + 352] = arg2
                    idx = 0
                    s = (64 * arg2) + 192
                    t = (164 * arg2) + 384
                    while idx < arg2:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return Array(len=arg2, data=mem[(98 * arg2) + 320 len (66 * arg2) + 32], arg2, mem[(164 * arg2) + 384 len 33 * arg2]), 
                           (32 * arg2) + 128,
                           (64 * arg2) + 160
    else:
        if not arg2:
            if arg2 > test266151307():
                revert with 'NH{q', 65
            mem[(64 * arg2) + 160] = arg2
            if not arg2:
                if arg1 > -arg2 - 1:
                    revert with 'NH{q', 17
                if var105002 < arg1 + arg2:
                    if var111001 >= stor302.length:
                        revert with 'NH{q', 50
                    if var127003 < arg1:
                        revert with 'NH{q', 17
                    # nil
                else:
                    mem[(98 * arg2) + 192] = 96
                    mem[(98 * arg2) + 288] = arg2
                    mem[(98 * arg2) + 320 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
                    mem[(98 * arg2) + 224] = (32 * arg2) + 128
                    mem[(131 * arg2) + 320] = arg2
                    idx = 0
                    s = (32 * arg2) + 160
                    t = (131 * arg2) + 352
                    while idx < arg2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(98 * arg2) + 256] = (64 * arg2) + 160
                    mem[(164 * arg2) + 352] = arg2
                    idx = 0
                    s = (64 * arg2) + 192
                    t = (164 * arg2) + 384
                    while idx < arg2:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return Array(len=arg2, data=mem[(98 * arg2) + 320 len (66 * arg2) + 32], arg2, mem[(164 * arg2) + 384 len 33 * arg2]), 
                           (32 * arg2) + 128,
                           (64 * arg2) + 160
            else:
                mem[(64 * arg2) + 192 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
                if arg1 > -arg2 - 1:
                    revert with 'NH{q', 17
                if var106002 < arg1 + arg2:
                    if var112001 >= stor302.length:
                        revert with 'NH{q', 50
                    if var128003 < arg1:
                        revert with 'NH{q', 17
                    # nil
                else:
                    mem[(98 * arg2) + 192] = 96
                    mem[(98 * arg2) + 288] = arg2
                    mem[(98 * arg2) + 320 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
                    mem[(98 * arg2) + 224] = (32 * arg2) + 128
                    mem[(131 * arg2) + 320] = arg2
                    idx = 0
                    s = (32 * arg2) + 160
                    t = (131 * arg2) + 352
                    while idx < arg2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(98 * arg2) + 256] = (64 * arg2) + 160
                    mem[(164 * arg2) + 352] = arg2
                    idx = 0
                    s = (64 * arg2) + 192
                    t = (164 * arg2) + 384
                    while idx < arg2:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return Array(len=arg2, data=mem[(98 * arg2) + 320 len (66 * arg2) + 32], arg2, mem[(164 * arg2) + 384 len 33 * arg2]), 
                           (32 * arg2) + 128,
                           (64 * arg2) + 160
        else:
            mem[(32 * arg2) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
            if arg2 > test266151307():
                revert with 'NH{q', 65
            mem[(64 * arg2) + 160] = arg2
            if not arg2:
                if arg1 > -arg2 - 1:
                    revert with 'NH{q', 17
                if var106002 < arg1 + arg2:
                    if var112001 >= stor302.length:
                        revert with 'NH{q', 50
                    if var128003 < arg1:
                        revert with 'NH{q', 17
                    # nil
                else:
                    mem[(98 * arg2) + 192] = 96
                    mem[(98 * arg2) + 288] = arg2
                    mem[(98 * arg2) + 320 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
                    mem[(98 * arg2) + 224] = (32 * arg2) + 128
                    mem[(131 * arg2) + 320] = arg2
                    idx = 0
                    s = (32 * arg2) + 160
                    t = (131 * arg2) + 352
                    while idx < arg2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(98 * arg2) + 256] = (64 * arg2) + 160
                    mem[(164 * arg2) + 352] = arg2
                    idx = 0
                    s = (64 * arg2) + 192
                    t = (164 * arg2) + 384
                    while idx < arg2:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return Array(len=arg2, data=mem[(98 * arg2) + 320 len (66 * arg2) + 32], arg2, mem[(164 * arg2) + 384 len 33 * arg2]), 
                           (32 * arg2) + 128,
                           (64 * arg2) + 160
            else:
                mem[(64 * arg2) + 192 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
                if arg1 > -arg2 - 1:
                    revert with 'NH{q', 17
                if var107002 < arg1 + arg2:
                    if var113001 >= stor302.length:
                        revert with 'NH{q', 50
                    if var129003 < arg1:
                        revert with 'NH{q', 17
                    # nil
                else:
                    mem[(98 * arg2) + 192] = 96
                    mem[(98 * arg2) + 288] = arg2
                    mem[(98 * arg2) + 320 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
                    mem[(98 * arg2) + 224] = (32 * arg2) + 128
                    mem[(131 * arg2) + 320] = arg2
                    idx = 0
                    s = (32 * arg2) + 160
                    t = (131 * arg2) + 352
                    while idx < arg2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(98 * arg2) + 256] = (64 * arg2) + 160
                    mem[(164 * arg2) + 352] = arg2
                    idx = 0
                    s = (64 * arg2) + 192
                    t = (164 * arg2) + 384
                    while idx < arg2:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return Array(len=arg2, data=mem[(98 * arg2) + 320 len (66 * arg2) + 32], arg2, mem[(164 * arg2) + 384 len 33 * arg2]), 
                           (32 * arg2) + 128,
                           (64 * arg2) + 160
}



}
