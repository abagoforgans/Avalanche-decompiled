contract main {




// =====================  Runtime code  =====================


#
#  - sub_8494ff35(?)
#
address stor0;
array of uint256 stor1;
address sub_e0a59189Address;
array of struct stor3;
mapping of struct sub_61ea2027;

function sub_61ea2027(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return uint256(sub_61ea2027[arg1][arg2].field_0), 
           uint256(sub_61ea2027[arg1][arg2].field_256),
           bool(uint8(sub_61ea2027[arg1][arg2].field_512))
}

function getWhitelistAddress() payable {
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 113:
        revert with 0, 'You must be an Admin to access this function'
    return address(stor1.length)
}

function sub_e0a59189(?) payable {
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 113:
        revert with 0, 'You must be an Admin to access this function'
    return sub_e0a59189Address
}

function _fallback() payable {
    revert
}

function sub_c8dc45f0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 113:
        revert with 0, 'You must be an Admin to access this function'
    address(stor1.length) = address(arg1)
}

function sub_6372359d(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 113:
        revert with 0, 'You must be an Admin to access this function'
    if bool(uint8(stor3[arg1].field_1536)) != 1:
        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
    uint8(stor3[arg1].field_1536) = 0
}

function getVoteCount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 113:
        if sub_e0a59189Address != msg.sender:
            revert with 0, 'You must be the Propertys Owner or an Admin to access this function'
    if bool(uint8(stor3[arg1].field_1536)) != 1:
        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
    return uint256(stor3[arg1].field_2048)
}

function sub_8dab7afc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 113:
        revert with 0, 'You must be an Admin to access this function'
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).isOwner(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'New address has not been whitelisted as a Property Owner'
    sub_e0a59189Address = address(arg1)
}

function updateEndDate(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 113:
        if sub_e0a59189Address != msg.sender:
            revert with 0, 'You must be the Propertys Owner or an Admin to access this function'
    if uint8(stor3[arg1].field_1544):
        revert with 0, 'The vote has already been finalized'
    if bool(uint8(stor3[arg1].field_1536)) != 1:
        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
    if uint256(stor3[arg1].field_512) == arg2:
        revert with 0, 'New end date cannot be the same as the old one'
    if block.timestamp >= uint256(stor3[arg1].field_512):
        revert with 0, 'Cannot change end date for a vote that has already ended'
    uint256(stor3[arg1].field_512) = arg2
}

function sub_3b0c0a44(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 113:
        if sub_e0a59189Address != msg.sender:
            revert with 0, 'You must be the Propertys Owner or an Admin to access this function'
    if bool(uint8(stor3[arg1].field_1536)) != 1:
        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
    if 1 == bool(uint8(stor3[arg1].field_1544)):
        revert with 0, 'Cannot update default option if vote is finalized'
    if block.timestamp >= uint256(stor3[arg1].field_512):
        revert with 0, 'Cannot update default option for vote that has ended'
    if uint256(stor3[arg1].field_1280) == arg2:
        revert with 0, 'New default option is the same as the current one'
    if uint256(stor3[arg1].field_1024) <= arg2:
        revert with 0, 'Selected default option does not exist'
    uint256(stor3[arg1].field_1280) = arg2
}

function updateStartDate(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 113:
        if sub_e0a59189Address != msg.sender:
            revert with 0, 'You must be the Propertys Owner or an Admin to access this function'
    if uint8(stor3[arg1].field_1544):
        revert with 0, 'The vote has already been finalized'
    if bool(uint8(stor3[arg1].field_1536)) != 1:
        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
    if uint256(stor3[arg1].field_256) == arg2:
        revert with 0, 'New start date cannot be the same as the old one'
    if block.timestamp >= uint256(stor3[arg1].field_256):
        revert with 0, 'Cannot change start date for a vote that has already begun'
    if uint256(stor3[arg1].field_512) <= arg2:
        revert with 0, 'The new start date for the vote cannot be after the end date'
    uint256(stor3[arg1].field_256) = arg2
}

function sub_c1fa3b2e(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 113:
        if sub_e0a59189Address != msg.sender:
            revert with 0, 'You must be the Propertys Owner or an Admin to access this function'
    if bool(uint8(stor3[arg1].field_1536)) != 1:
        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
    if uint256(stor3[arg1].field_512) >= block.timestamp:
        revert with 0, 'The vote has not reached its end date and time yet'
    if uint8(stor3[arg1].field_1544):
        revert with 0, 'Vote has already been Finalized'
    uint8(stor3[arg1].field_1544) = 1
    require ext_code.size(stor0)
    staticcall stor0.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > uint256(stor3[arg1].field_2048):
        require ext_code.size(stor0)
        staticcall stor0.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < uint256(stor3[arg1].field_2048):
            revert with 0, 17
        uint8(sub_61ea2027[arg1][stor0].field_512) = 1
        uint256(sub_61ea2027[arg1][stor0].field_256) = ext_call.return_data[0] - uint256(stor3[arg1].field_2048)
        uint256(sub_61ea2027[arg1][stor0].field_0) = uint256(stor3[arg1].field_1280)
        uint256(stor3[arg1].field_1792)++
        address(stor[uint256(stor3[arg1].field_1792) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'stor3', 3)))].field_0) = stor0
}

function castVote(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 202:
        revert with 0, 'Only Investors within this property are allowed to cast votes'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Only Investors within this property are allowed to cast votes'
    if not uint8(stor3[arg1].field_1536):
        revert with 0, 'This vote has been suspended/does not exist'
    if uint256(stor3[arg1].field_512) <= block.timestamp:
        revert with 0, 'This Vote has closed'
    if uint256(stor3[arg1].field_256) >= block.timestamp:
        revert with 0, 'This Vote has not opened yet'
    if uint256(stor3[arg1].field_1024) <= arg2:
        revert with 0, 'You are voting for an option that does not exist'
    if uint8(sub_61ea2027[arg1][msg.sender].field_512):
        revert with 0, 'You have already cast your Vote'
    uint8(sub_61ea2027[arg1][msg.sender].field_512) = 1
    uint256(sub_61ea2027[arg1][msg.sender].field_256) = ext_call.return_data[0]
    uint256(sub_61ea2027[arg1][msg.sender].field_0) = arg2
    uint256(stor3[arg1].field_1792)++
    uint256(stor[uint256(stor3[arg1].field_1792) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'stor3', 3)))].field_0) = msg.sender or Mask(96, 160, uint256(stor[uint256(stor3[arg1].field_1792) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'stor3', 3)))].field_0))
    if uint256(stor3[arg1].field_2048) > !ext_call.return_data[0]:
        revert with 0, 17
    uint256(stor3[arg1].field_2048) += ext_call.return_data[0]
}

function sub_93e74e0d(?) payable {
    require calldata.size - 4 >= 32
    if bool(uint8(stor3[arg1].field_1536)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'No Vote exists against this ID or the vote has been suspended'
    if bool(stor3[arg1].field_0):
        if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
            revert with 0, 34
        if bool(stor3[arg1].field_0):
            if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
                revert with 0, 34
            if uint255(stor3[arg1].field_1):
                if 31 < uint255(stor3[arg1].field_1):
                    mem[128] = uint256(stor3[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor3[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor3[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor3[arg1].field_1)), data=mem[128 len ceil32(uint255(stor3[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor3[arg1].field_8)
        else:
            if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor3[arg1].field_1 % 128:
                if 31 < stor3[arg1].field_1 % 128:
                    mem[128] = uint256(stor3[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor3[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor3[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor3[arg1].field_1)), data=mem[128 len ceil32(uint255(stor3[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor3[arg1].field_8)
        mem[ceil32(uint255(stor3[arg1].field_1)) + 192 len ceil32(uint255(stor3[arg1].field_1))] = mem[128 len ceil32(uint255(stor3[arg1].field_1))]
        if ceil32(uint255(stor3[arg1].field_1)) > uint255(stor3[arg1].field_1):
            mem[ceil32(uint255(stor3[arg1].field_1)) + uint255(stor3[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor3[arg1].field_1)), data=mem[128 len ceil32(uint255(stor3[arg1].field_1))], mem[(2 * ceil32(uint255(stor3[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor3[arg1].field_1))]), 
    if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor3[arg1].field_0):
        if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
            revert with 0, 34
        if uint255(stor3[arg1].field_1):
            if 31 < uint255(stor3[arg1].field_1):
                mem[128] = uint256(stor3[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor3[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor3[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[arg1].field_0 % 128, data=mem[128 len ceil32(stor3[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3[arg1].field_8)
    else:
        if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor3[arg1].field_1 % 128:
            if 31 < stor3[arg1].field_1 % 128:
                mem[128] = uint256(stor3[arg1].field_0)
                idx = 128
                s = 0
                while stor3[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor3[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[arg1].field_0 % 128, data=mem[128 len ceil32(stor3[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3[arg1].field_8)
    mem[ceil32(stor3[arg1].field_1 % 128) + 192 len ceil32(stor3[arg1].field_1 % 128)] = mem[128 len ceil32(stor3[arg1].field_1 % 128)]
    if ceil32(stor3[arg1].field_1 % 128) > stor3[arg1].field_1 % 128:
        mem[ceil32(stor3[arg1].field_1 % 128) + stor3[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor3[arg1].field_0 % 128, data=mem[128 len ceil32(stor3[arg1].field_1 % 128)], mem[(2 * ceil32(stor3[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor3[arg1].field_1 % 128)]), 
}

function sub_dbcf2c81(?) payable {
    require calldata.size - 4 >= 192
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 36).length)) + 97 < 96 or ceil32(ceil32(('cd', 36).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + 128] = 0
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 68).length) + 98 < 97 or ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + 98
    mem[ceil32(ceil32(('cd', 36).length)) + 97] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = ceil32(ceil32(('cd', 36).length)) + 129
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _132 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1
        mem[_132] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_132 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_132 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _132
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _133 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_133] < 113:
        if uint8(stor3[cd[4]].field_1536):
            revert with 0, 'This Vote Identifcation Number has already been used'
        if cd[100] >= cd[132]:
            revert with 0, 'Voting start date cannot be after the end date'
        if cd[132] <= block.timestamp:
            revert with 0, 'End date is before current time'
        if cd[100] <= block.timestamp:
            revert with 0, 'Start date is before current time'
        if cd[164] >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
            revert with 0, 'The Default option you are choosing does not exist'
        if mem[ceil32(ceil32(('cd', 36).length)) + 97] < 2:
            revert with 0, 'Atleast two different voting options are required to launch a vote'
        mem[32] = 3
        uint8(stor3[cd[4]].field_1536) = 1
        uint256(stor3[cd[4]].field_768) = mem[ceil32(ceil32(('cd', 36).length)) + 97]
        mem[0] = sha3(cd[4], 3) + 3
        if not mem[ceil32(ceil32(('cd', 36).length)) + 97]:
            idx = 0
            while sha3(sha3(cd[4], 3) + 3) + uint256(stor3[cd[4]].field_768) > idx + sha3(mem[0]):
                if bool(stor[idx + sha3(mem[0])].field_0):
                    if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                        revert with 0, 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = ceil32(ceil32(('cd', 36).length)) + 129
            while ceil32(ceil32(('cd', 36).length)) + (32 * mem[ceil32(ceil32(('cd', 36).length)) + 97]) + 129 > idx:
                _257 = mem[idx]
                _258 = mem[mem[idx]]
                if bool(stor[s + sha3(mem[0])].field_0):
                    if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                        revert with 0, 34
                    mem[0] = s + sha3(mem[0])
                    if not _258:
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        t = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    else:
                        uint256(stor[s + sha3(mem[0])].field_0) = (2 * _258) + 1
                        u = sha3(s + sha3(mem[0]))
                        t = _257 + 32
                        while _257 + _258 + 32 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _258 + 31) >> 5)
                        while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                else:
                    if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = s + sha3(mem[0])
                    if not _258:
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        t = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    else:
                        uint256(stor[s + sha3(mem[0])].field_0) = (2 * _258) + 1
                        u = sha3(s + sha3(mem[0]))
                        t = _257 + 32
                        while _257 + _258 + 32 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _258 + 31) >> 5)
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(sha3(cd[4], 3) + 3) + uint256(stor3[cd[4]].field_768) > idx:
                if bool(stor[idx].field_0):
                    if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                        revert with 0, 34
                    uint256(stor[idx].field_0) = 0
                    if 31 < uint255(stor[idx].field_1):
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor[idx].field_0) = 0
                    if 31 < stor[idx].field_1 % 128:
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
    else:
        if sub_e0a59189Address != msg.sender:
            revert with 0, 'You must be the Propertys Owner or an Admin to access this function'
        if uint8(stor3[cd[4]].field_1536):
            revert with 0, 'This Vote Identifcation Number has already been used'
        if cd[100] >= cd[132]:
            revert with 0, 'Voting start date cannot be after the end date'
        if cd[132] <= block.timestamp:
            revert with 0, 'End date is before current time'
        if cd[100] <= block.timestamp:
            revert with 0, 'Start date is before current time'
        if cd[164] >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
            revert with 0, 'The Default option you are choosing does not exist'
        if mem[ceil32(ceil32(('cd', 36).length)) + 97] < 2:
            revert with 0, 'Atleast two different voting options are required to launch a vote'
        mem[32] = 3
        uint8(stor3[cd[4]].field_1536) = 1
        uint256(stor3[cd[4]].field_768) = mem[ceil32(ceil32(('cd', 36).length)) + 97]
        mem[0] = sha3(cd[4], 3) + 3
        if not mem[ceil32(ceil32(('cd', 36).length)) + 97]:
            idx = 0
            while sha3(sha3(cd[4], 3) + 3) + uint256(stor3[cd[4]].field_768) > idx + sha3(mem[0]):
                if bool(stor[idx + sha3(mem[0])].field_0):
                    if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                        revert with 0, 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = ceil32(ceil32(('cd', 36).length)) + 129
            while ceil32(ceil32(('cd', 36).length)) + (32 * mem[ceil32(ceil32(('cd', 36).length)) + 97]) + 129 > idx:
                _259 = mem[idx]
                _260 = mem[mem[idx]]
                if bool(stor[s + sha3(mem[0])].field_0):
                    if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                        revert with 0, 34
                    mem[0] = s + sha3(mem[0])
                    if not _260:
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        t = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    else:
                        uint256(stor[s + sha3(mem[0])].field_0) = (2 * _260) + 1
                        u = sha3(s + sha3(mem[0]))
                        t = _259 + 32
                        while _259 + _260 + 32 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _260 + 31) >> 5)
                        while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                else:
                    if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = s + sha3(mem[0])
                    if not _260:
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        t = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    else:
                        uint256(stor[s + sha3(mem[0])].field_0) = (2 * _260) + 1
                        u = sha3(s + sha3(mem[0]))
                        t = _259 + 32
                        while _259 + _260 + 32 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _260 + 31) >> 5)
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(sha3(cd[4], 3) + 3) + uint256(stor3[cd[4]].field_768) > idx:
                if bool(stor[idx].field_0):
                    if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                        revert with 0, 34
                    uint256(stor[idx].field_0) = 0
                    if 31 < uint255(stor[idx].field_1):
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor[idx].field_0) = 0
                    if 31 < stor[idx].field_1 % 128:
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
    uint256(stor3[cd[4]].field_256) = cd[100]
    uint256(stor3[cd[4]].field_512) = cd[132]
    if bool(stor3[cd[4]].field_0):
        if bool(stor3[cd[4]].field_0) == uint255(stor3[cd[4]].field_1) < 32:
            revert with 0, 34
        if mem[96]:
            uint256(stor3[cd[4]][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            uint256(stor3[cd[4]].field_0) = 0
            idx = 0
            while uint255(stor3[cd[4]].field_1) + 31 / 32 > idx:
                uint256(stor3[cd[4]][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor3[cd[4]].field_0) == stor3[cd[4]].field_1 % 128 < 32:
            revert with 0, 34
        if mem[96]:
            uint256(stor3[cd[4]][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            uint256(stor3[cd[4]].field_0) = 0
            idx = 0
            while stor3[cd[4]].field_1 % 128 + 31 / 32 > idx:
                uint256(stor3[cd[4]][idx].field_0) = 0
                idx = idx + 1
                continue 
    uint256(stor3[cd[4]].field_1024) = mem[ceil32(ceil32(('cd', 36).length)) + 97]
    uint256(stor3[cd[4]].field_1280) = cd[164]
}

function sub_7c50ff9a(?) payable {
    require calldata.size - 4 >= 32
    mem[100] = msg.sender
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 113:
        mem[0] = arg1
        mem[32] = 3
        if bool(stor3[arg1].field_0):
            if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
                revert with 0, 34
            mem[ceil32(return_data.size) + 416] = uint255(stor3[arg1].field_1)
            if bool(stor3[arg1].field_0):
                if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
                    revert with 0, 34
                if not uint255(stor3[arg1].field_1):
                    mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                    mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                    mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                    mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
                    mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    idx = 0
                    while idx < uint256(stor3[arg1].field_768):
                        mem[0] = sha3(arg1, 3) + 3
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            _593 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                            mem[_593] = uint255(stor3[arg1][idx + 3].field_1)
                            if bool(stor3[arg1][idx + 3].field_0):
                                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                    revert with 0, 34
                                if uint255(stor3[arg1][idx + 3].field_1):
                                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                        mem[_593 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                    else:
                                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                        mem[_593 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                        t = _593 + 32
                                        u = sha3(mem[0])
                                        while _593 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[s] = _593
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor3[arg1][idx + 3].field_1 % 128:
                                mem[s] = _593
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                                mem[_593 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                mem[s] = _593
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_593 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _593 + 32
                            u = sha3(mem[0])
                            while _593 + stor3[arg1][u + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _593
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        _655 = mem[64]
                        mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                        mem[_655] = stor3[arg1][idx + 3].field_1 % 128
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if not uint255(stor3[arg1][idx + 3].field_1):
                                mem[s] = _655
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_655 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                mem[s] = _655
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_655 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _655 + 32
                            u = sha3(mem[0])
                            while _655 + uint255(stor3[arg1][u + 3].field_1) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _655
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor3[arg1][idx + 3].field_1 % 128:
                            if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                                mem[_655 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_655 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _655 + 32
                                u = sha3(mem[0])
                                while _655 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _655
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
                    mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                    mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                    mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                    mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                    _455 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                    mem[_455] = uint256(stor3[arg1].field_1792)
                    if not uint256(stor3[arg1].field_1792):
                        mem[ceil32(return_data.size) + 352] = _455
                        mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                        if bool(uint8(stor3[arg1].field_1536)) != 1:
                            revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                        _559 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                        idx = 0
                        s = mem[64] + 64
                        t = _455 + 32
                        while idx < uint256(stor3[arg1].field_1792):
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _559 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
                    mem[0] = sha3(arg1, 3) + 7
                    mem[_455 + 32] = address(stor3[arg1][7].field_0)
                    idx = _455 + 32
                    s = 0
                    while _455 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                        mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(return_data.size) + 352] = _455
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(mem[ceil32(return_data.size) + 288]) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _1095 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                    idx = 0
                    s = mem[64] + 64
                    t = _455 + 32
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1095 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
                if 31 >= uint255(stor3[arg1].field_1):
                    mem[ceil32(return_data.size) + 448] = 256 * Mask(248, 0, stor3[arg1].field_8)
                    mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                    mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                    mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                    mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
                    mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    idx = 0
                    while idx < uint256(stor3[arg1].field_768):
                        mem[0] = sha3(arg1, 3) + 3
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            _598 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                            mem[_598] = uint255(stor3[arg1][idx + 3].field_1)
                            if bool(stor3[arg1][idx + 3].field_0):
                                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                    revert with 0, 34
                                if uint255(stor3[arg1][idx + 3].field_1):
                                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                        mem[_598 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                    else:
                                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                        mem[_598 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                        t = _598 + 32
                                        u = sha3(mem[0])
                                        while _598 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[s] = _598
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor3[arg1][idx + 3].field_1 % 128:
                                mem[s] = _598
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                                mem[_598 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                mem[s] = _598
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_598 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _598 + 32
                            u = sha3(mem[0])
                            while _598 + stor3[arg1][u + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _598
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        _658 = mem[64]
                        mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                        mem[_658] = stor3[arg1][idx + 3].field_1 % 128
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if not uint255(stor3[arg1][idx + 3].field_1):
                                mem[s] = _658
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_658 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                mem[s] = _658
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_658 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _658 + 32
                            u = sha3(mem[0])
                            while _658 + uint255(stor3[arg1][u + 3].field_1) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _658
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor3[arg1][idx + 3].field_1 % 128:
                            if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                                mem[_658 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_658 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _658 + 32
                                u = sha3(mem[0])
                                while _658 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _658
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
                    mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                    mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                    mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                    mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                    _457 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                    mem[_457] = uint256(stor3[arg1].field_1792)
                    if not uint256(stor3[arg1].field_1792):
                        mem[ceil32(return_data.size) + 352] = _457
                        mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                        if bool(uint8(stor3[arg1].field_1536)) != 1:
                            revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                        _562 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                        idx = 0
                        s = mem[64] + 64
                        t = _457 + 32
                        while idx < uint256(stor3[arg1].field_1792):
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _562 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
                    mem[0] = sha3(arg1, 3) + 7
                    mem[_457 + 32] = address(stor3[arg1][7].field_0)
                    idx = _457 + 32
                    s = 0
                    while _457 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                        mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(return_data.size) + 352] = _457
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(mem[ceil32(return_data.size) + 288]) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _1097 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                    idx = 0
                    s = mem[64] + 64
                    t = _457 + 32
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1097 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
                mem[0] = sha3(arg1, 3)
                mem[ceil32(return_data.size) + 448] = uint256(stor3[arg1].field_0)
                idx = ceil32(return_data.size) + 448
                s = 0
                while ceil32(return_data.size) + uint255(stor3[arg1].field_1) + 416 > idx:
                    mem[idx + 32] = uint256(stor3[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
                mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                idx = 0
                while idx < uint256(stor3[arg1].field_768):
                    mem[0] = sha3(arg1, 3) + 3
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        _961 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                        mem[_961] = uint255(stor3[arg1][idx + 3].field_1)
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor3[arg1][idx + 3].field_1):
                                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                    mem[_961 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                    mem[_961 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                    t = _961 + 32
                                    u = sha3(mem[0])
                                    while _961 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _961
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor3[arg1][idx + 3].field_1 % 128:
                            mem[s] = _961
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_961 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _961
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_961 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _961 + 32
                        u = sha3(mem[0])
                        while _961 + stor3[arg1][u + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _961
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    _983 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                    mem[_983] = stor3[arg1][idx + 3].field_1 % 128
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor3[arg1][idx + 3].field_1):
                            mem[s] = _983
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_983 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _983
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_983 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _983 + 32
                        u = sha3(mem[0])
                        while _983 + uint255(stor3[arg1][u + 3].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _983
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor3[arg1][idx + 3].field_1 % 128:
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_983 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_983 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _983 + 32
                            u = sha3(mem[0])
                            while _983 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _983
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
                mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                _872 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                mem[_872] = uint256(stor3[arg1].field_1792)
                if not uint256(stor3[arg1].field_1792):
                    mem[ceil32(return_data.size) + 352] = _872
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(uint8(stor3[arg1].field_1536)) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _951 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                    idx = 0
                    s = mem[64] + 64
                    t = _872 + 32
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _951 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
                mem[0] = sha3(arg1, 3) + 7
                mem[_872 + 32] = address(stor3[arg1][7].field_0)
                idx = _872 + 32
                s = 0
                while _872 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                    mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + 352] = _872
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(mem[ceil32(return_data.size) + 288]) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _1224 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                idx = 0
                s = mem[64] + 64
                t = _872 + 32
                while idx < uint256(stor3[arg1].field_1792):
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1224 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
            if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if not stor3[arg1].field_1 % 128:
                mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
                mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                idx = 0
                while idx < uint256(stor3[arg1].field_768):
                    mem[0] = sha3(arg1, 3) + 3
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        _601 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                        mem[_601] = uint255(stor3[arg1][idx + 3].field_1)
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor3[arg1][idx + 3].field_1):
                                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                    mem[_601 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                    mem[_601 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                    t = _601 + 32
                                    u = sha3(mem[0])
                                    while _601 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _601
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor3[arg1][idx + 3].field_1 % 128:
                            mem[s] = _601
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_601 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _601
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_601 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _601 + 32
                        u = sha3(mem[0])
                        while _601 + stor3[arg1][u + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _601
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    _659 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                    mem[_659] = stor3[arg1][idx + 3].field_1 % 128
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor3[arg1][idx + 3].field_1):
                            mem[s] = _659
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_659 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _659
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_659 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _659 + 32
                        u = sha3(mem[0])
                        while _659 + uint255(stor3[arg1][u + 3].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _659
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor3[arg1][idx + 3].field_1 % 128:
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_659 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_659 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _659 + 32
                            u = sha3(mem[0])
                            while _659 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _659
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
                mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                _459 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                mem[_459] = uint256(stor3[arg1].field_1792)
                if not uint256(stor3[arg1].field_1792):
                    mem[ceil32(return_data.size) + 352] = _459
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(uint8(stor3[arg1].field_1536)) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _563 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                    idx = 0
                    s = mem[64] + 64
                    t = _459 + 32
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _563 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
                mem[0] = sha3(arg1, 3) + 7
                mem[_459 + 32] = address(stor3[arg1][7].field_0)
                idx = _459 + 32
                s = 0
                while _459 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                    mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + 352] = _459
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(mem[ceil32(return_data.size) + 288]) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _1098 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                idx = 0
                s = mem[64] + 64
                t = _459 + 32
                while idx < uint256(stor3[arg1].field_1792):
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1098 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
            if 31 >= stor3[arg1].field_1 % 128:
                mem[ceil32(return_data.size) + 448] = 256 * Mask(248, 0, stor3[arg1].field_8)
                mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
                mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                idx = 0
                while idx < uint256(stor3[arg1].field_768):
                    mem[0] = sha3(arg1, 3) + 3
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        _606 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                        mem[_606] = uint255(stor3[arg1][idx + 3].field_1)
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor3[arg1][idx + 3].field_1):
                                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                    mem[_606 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                    mem[_606 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                    t = _606 + 32
                                    u = sha3(mem[0])
                                    while _606 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _606
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor3[arg1][idx + 3].field_1 % 128:
                            mem[s] = _606
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_606 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _606
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_606 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _606 + 32
                        u = sha3(mem[0])
                        while _606 + stor3[arg1][u + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _606
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    _662 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                    mem[_662] = stor3[arg1][idx + 3].field_1 % 128
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor3[arg1][idx + 3].field_1):
                            mem[s] = _662
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_662 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _662
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_662 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _662 + 32
                        u = sha3(mem[0])
                        while _662 + uint255(stor3[arg1][u + 3].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _662
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor3[arg1][idx + 3].field_1 % 128:
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_662 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_662 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _662 + 32
                            u = sha3(mem[0])
                            while _662 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _662
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
                mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                _461 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                mem[_461] = uint256(stor3[arg1].field_1792)
                if not uint256(stor3[arg1].field_1792):
                    mem[ceil32(return_data.size) + 352] = _461
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(uint8(stor3[arg1].field_1536)) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _566 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                    idx = 0
                    s = mem[64] + 64
                    t = _461 + 32
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _566 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
                mem[0] = sha3(arg1, 3) + 7
                mem[_461 + 32] = address(stor3[arg1][7].field_0)
                idx = _461 + 32
                s = 0
                while _461 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                    mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + 352] = _461
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(mem[ceil32(return_data.size) + 288]) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _1100 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                idx = 0
                s = mem[64] + 64
                t = _461 + 32
                while idx < uint256(stor3[arg1].field_1792):
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1100 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
            mem[0] = sha3(arg1, 3)
            mem[ceil32(return_data.size) + 448] = uint256(stor3[arg1].field_0)
            idx = ceil32(return_data.size) + 448
            s = 0
            while ceil32(return_data.size) + stor3[arg1].field_1 % 128 + 416 > idx:
                mem[idx + 32] = uint256(stor3[arg1][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _964 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_964] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_964 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_964 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _964 + 32
                                u = sha3(mem[0])
                                while _964 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _964
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _964
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_964 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _964
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_964 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _964 + 32
                    u = sha3(mem[0])
                    while _964 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _964
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _984 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_984] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _984
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_984 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _984
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_984 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _984 + 32
                    u = sha3(mem[0])
                    while _984 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _984
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_984 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_984 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _984 + 32
                        u = sha3(mem[0])
                        while _984 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _984
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _876 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_876] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _876
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _952 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                idx = 0
                s = mem[64] + 64
                t = _876 + 32
                while idx < uint256(stor3[arg1].field_1792):
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _952 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
            mem[0] = sha3(arg1, 3) + 7
            mem[_876 + 32] = address(stor3[arg1][7].field_0)
            idx = _876 + 32
            s = 0
            while _876 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _876
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _1227 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
            idx = 0
            s = mem[64] + 64
            t = _876 + 32
            while idx < uint256(stor3[arg1].field_1792):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1227 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
        if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
            revert with 0, 34
        mem[ceil32(return_data.size) + 416] = stor3[arg1].field_1 % 128
        if bool(stor3[arg1].field_0):
            if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
                revert with 0, 34
            if not uint255(stor3[arg1].field_1):
                mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
                mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                idx = 0
                while idx < uint256(stor3[arg1].field_768):
                    mem[0] = sha3(arg1, 3) + 3
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        _609 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                        mem[_609] = uint255(stor3[arg1][idx + 3].field_1)
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor3[arg1][idx + 3].field_1):
                                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                    mem[_609 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                    mem[_609 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                    t = _609 + 32
                                    u = sha3(mem[0])
                                    while _609 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _609
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor3[arg1][idx + 3].field_1 % 128:
                            mem[s] = _609
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_609 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _609
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_609 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _609 + 32
                        u = sha3(mem[0])
                        while _609 + stor3[arg1][u + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _609
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    _663 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                    mem[_663] = stor3[arg1][idx + 3].field_1 % 128
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor3[arg1][idx + 3].field_1):
                            mem[s] = _663
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_663 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _663
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_663 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _663 + 32
                        u = sha3(mem[0])
                        while _663 + uint255(stor3[arg1][u + 3].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _663
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor3[arg1][idx + 3].field_1 % 128:
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_663 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_663 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _663 + 32
                            u = sha3(mem[0])
                            while _663 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _663
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
                mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                _463 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                mem[_463] = uint256(stor3[arg1].field_1792)
                if not uint256(stor3[arg1].field_1792):
                    mem[ceil32(return_data.size) + 352] = _463
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(uint8(stor3[arg1].field_1536)) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _567 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                    idx = 0
                    s = mem[64] + 64
                    t = _463 + 32
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _567 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
                mem[0] = sha3(arg1, 3) + 7
                mem[_463 + 32] = address(stor3[arg1][7].field_0)
                idx = _463 + 32
                s = 0
                while _463 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                    mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + 352] = _463
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(mem[ceil32(return_data.size) + 288]) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _1101 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                idx = 0
                s = mem[64] + 64
                t = _463 + 32
                while idx < uint256(stor3[arg1].field_1792):
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1101 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
            if 31 >= uint255(stor3[arg1].field_1):
                mem[ceil32(return_data.size) + 448] = 256 * Mask(248, 0, stor3[arg1].field_8)
                mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
                mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                idx = 0
                while idx < uint256(stor3[arg1].field_768):
                    mem[0] = sha3(arg1, 3) + 3
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        _614 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                        mem[_614] = uint255(stor3[arg1][idx + 3].field_1)
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor3[arg1][idx + 3].field_1):
                                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                    mem[_614 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                    mem[_614 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                    t = _614 + 32
                                    u = sha3(mem[0])
                                    while _614 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _614
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor3[arg1][idx + 3].field_1 % 128:
                            mem[s] = _614
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_614 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _614
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_614 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _614 + 32
                        u = sha3(mem[0])
                        while _614 + stor3[arg1][u + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _614
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    _666 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                    mem[_666] = stor3[arg1][idx + 3].field_1 % 128
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor3[arg1][idx + 3].field_1):
                            mem[s] = _666
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_666 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _666
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_666 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _666 + 32
                        u = sha3(mem[0])
                        while _666 + uint255(stor3[arg1][u + 3].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _666
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor3[arg1][idx + 3].field_1 % 128:
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_666 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_666 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _666 + 32
                            u = sha3(mem[0])
                            while _666 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _666
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
                mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                _465 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                mem[_465] = uint256(stor3[arg1].field_1792)
                if not uint256(stor3[arg1].field_1792):
                    mem[ceil32(return_data.size) + 352] = _465
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(uint8(stor3[arg1].field_1536)) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _570 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                    idx = 0
                    s = mem[64] + 64
                    t = _465 + 32
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _570 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
                mem[0] = sha3(arg1, 3) + 7
                mem[_465 + 32] = address(stor3[arg1][7].field_0)
                idx = _465 + 32
                s = 0
                while _465 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                    mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + 352] = _465
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(mem[ceil32(return_data.size) + 288]) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _1103 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                idx = 0
                s = mem[64] + 64
                t = _465 + 32
                while idx < uint256(stor3[arg1].field_1792):
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1103 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
            mem[0] = sha3(arg1, 3)
            mem[ceil32(return_data.size) + 448] = uint256(stor3[arg1].field_0)
            idx = ceil32(return_data.size) + 448
            s = 0
            while ceil32(return_data.size) + uint255(stor3[arg1].field_1) + 416 > idx:
                mem[idx + 32] = uint256(stor3[arg1][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _967 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_967] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_967 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_967 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _967 + 32
                                u = sha3(mem[0])
                                while _967 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _967
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _967
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_967 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _967
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_967 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _967 + 32
                    u = sha3(mem[0])
                    while _967 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _967
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _985 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_985] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _985
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_985 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _985
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_985 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _985 + 32
                    u = sha3(mem[0])
                    while _985 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _985
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_985 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_985 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _985 + 32
                        u = sha3(mem[0])
                        while _985 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _985
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _880 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_880] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _880
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _953 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                idx = 0
                s = mem[64] + 64
                t = _880 + 32
                while idx < uint256(stor3[arg1].field_1792):
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _953 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
            mem[0] = sha3(arg1, 3) + 7
            mem[_880 + 32] = address(stor3[arg1][7].field_0)
            idx = _880 + 32
            s = 0
            while _880 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _880
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _1230 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
            idx = 0
            s = mem[64] + 64
            t = _880 + 32
            while idx < uint256(stor3[arg1].field_1792):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1230 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
        if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if not stor3[arg1].field_1 % 128:
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _617 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_617] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_617 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_617 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _617 + 32
                                u = sha3(mem[0])
                                while _617 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _617
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _617
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_617 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _617
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_617 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _617 + 32
                    u = sha3(mem[0])
                    while _617 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _617
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _667 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_667] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _667
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_667 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _667
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_667 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _667 + 32
                    u = sha3(mem[0])
                    while _667 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _667
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_667 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_667 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _667 + 32
                        u = sha3(mem[0])
                        while _667 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _667
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _467 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_467] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _467
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _571 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                idx = 0
                s = mem[64] + 64
                t = _467 + 32
                while idx < uint256(stor3[arg1].field_1792):
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _571 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
            mem[0] = sha3(arg1, 3) + 7
            mem[_467 + 32] = address(stor3[arg1][7].field_0)
            idx = _467 + 32
            s = 0
            while _467 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _467
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _1104 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
            idx = 0
            s = mem[64] + 64
            t = _467 + 32
            while idx < uint256(stor3[arg1].field_1792):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1104 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
        if 31 >= stor3[arg1].field_1 % 128:
            mem[ceil32(return_data.size) + 448] = 256 * Mask(248, 0, stor3[arg1].field_8)
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _622 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_622] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_622 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_622 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _622 + 32
                                u = sha3(mem[0])
                                while _622 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _622
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _622
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_622 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _622
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_622 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _622 + 32
                    u = sha3(mem[0])
                    while _622 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _622
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _670 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_670] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _670
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_670 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _670
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_670 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _670 + 32
                    u = sha3(mem[0])
                    while _670 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _670
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_670 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_670 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _670 + 32
                        u = sha3(mem[0])
                        while _670 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _670
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _469 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_469] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _469
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _574 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                idx = 0
                s = mem[64] + 64
                t = _469 + 32
                while idx < uint256(stor3[arg1].field_1792):
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _574 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
            mem[0] = sha3(arg1, 3) + 7
            mem[_469 + 32] = address(stor3[arg1][7].field_0)
            idx = _469 + 32
            s = 0
            while _469 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _469
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _1106 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
            idx = 0
            s = mem[64] + 64
            t = _469 + 32
            while idx < uint256(stor3[arg1].field_1792):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1106 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
        mem[0] = sha3(arg1, 3)
        mem[ceil32(return_data.size) + 448] = uint256(stor3[arg1].field_0)
        idx = ceil32(return_data.size) + 448
        s = 0
        while ceil32(return_data.size) + stor3[arg1].field_1 % 128 + 416 > idx:
            mem[idx + 32] = uint256(stor3[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
        mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
        mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
        mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
        mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
        idx = 0
        while idx < uint256(stor3[arg1].field_768):
            mem[0] = sha3(arg1, 3) + 3
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                _970 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                mem[_970] = uint255(stor3[arg1][idx + 3].field_1)
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor3[arg1][idx + 3].field_1):
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_970 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_970 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _970 + 32
                            u = sha3(mem[0])
                            while _970 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _970
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor3[arg1][idx + 3].field_1 % 128:
                    mem[s] = _970
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_970 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _970
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_970 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _970 + 32
                u = sha3(mem[0])
                while _970 + stor3[arg1][u + 3].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _970
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            _986 = mem[64]
            mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
            mem[_986] = stor3[arg1][idx + 3].field_1 % 128
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                if not uint255(stor3[arg1][idx + 3].field_1):
                    mem[s] = _986
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                    mem[_986 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _986
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_986 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _986 + 32
                u = sha3(mem[0])
                while _986 + uint255(stor3[arg1][u + 3].field_1) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _986
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            if stor3[arg1][idx + 3].field_1 % 128:
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_986 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_986 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _986 + 32
                    u = sha3(mem[0])
                    while _986 + stor3[arg1][idx + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _986
            s = s + 32
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
        mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
        mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
        mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
        mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
        _884 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
        mem[_884] = uint256(stor3[arg1].field_1792)
        if not uint256(stor3[arg1].field_1792):
            mem[ceil32(return_data.size) + 352] = _884
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(uint8(stor3[arg1].field_1536)) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _954 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
            idx = 0
            s = mem[64] + 64
            t = _884 + 32
            while idx < uint256(stor3[arg1].field_1792):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _954 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
        mem[0] = sha3(arg1, 3) + 7
        mem[_884 + 32] = address(stor3[arg1][7].field_0)
        idx = _884 + 32
        s = 0
        while _884 + (32 * uint256(stor3[arg1].field_1792)) > idx:
            mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + 352] = _884
        mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
        if bool(mem[ceil32(return_data.size) + 288]) != 1:
            revert with 0, 'No Vote exists against this ID or the vote has been suspended'
        _1233 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
        idx = 0
        s = mem[64] + 64
        t = _884 + 32
        while idx < uint256(stor3[arg1].field_1792):
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1233 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
    if sub_e0a59189Address != msg.sender:
        revert with 0, 'You must be the Propertys Owner or an Admin to access this function'
    mem[0] = arg1
    mem[32] = 3
    if bool(stor3[arg1].field_0):
        if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
            revert with 0, 34
        mem[ceil32(return_data.size) + 416] = uint255(stor3[arg1].field_1)
        if bool(stor3[arg1].field_0):
            if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
                revert with 0, 34
            if not uint255(stor3[arg1].field_1):
                mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
                mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                idx = 0
                while idx < uint256(stor3[arg1].field_768):
                    mem[0] = sha3(arg1, 3) + 3
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        _625 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                        mem[_625] = uint255(stor3[arg1][idx + 3].field_1)
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor3[arg1][idx + 3].field_1):
                                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                    mem[_625 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                    mem[_625 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                    t = _625 + 32
                                    u = sha3(mem[0])
                                    while _625 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _625
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor3[arg1][idx + 3].field_1 % 128:
                            mem[s] = _625
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_625 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _625
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_625 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _625 + 32
                        u = sha3(mem[0])
                        while _625 + stor3[arg1][u + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _625
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    _671 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                    mem[_671] = stor3[arg1][idx + 3].field_1 % 128
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor3[arg1][idx + 3].field_1):
                            mem[s] = _671
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_671 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _671
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_671 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _671 + 32
                        u = sha3(mem[0])
                        while _671 + uint255(stor3[arg1][u + 3].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _671
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor3[arg1][idx + 3].field_1 % 128:
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_671 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_671 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _671 + 32
                            u = sha3(mem[0])
                            while _671 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _671
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
                mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                _471 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                mem[_471] = uint256(stor3[arg1].field_1792)
                if not uint256(stor3[arg1].field_1792):
                    mem[ceil32(return_data.size) + 352] = _471
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(uint8(stor3[arg1].field_1536)) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _575 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                    idx = 0
                    s = mem[64] + 64
                    t = _471 + 32
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _575 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
                mem[0] = sha3(arg1, 3) + 7
                mem[_471 + 32] = address(stor3[arg1][7].field_0)
                idx = _471 + 32
                s = 0
                while _471 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                    mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + 352] = _471
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(mem[ceil32(return_data.size) + 288]) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _1107 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                idx = 0
                s = mem[64] + 64
                t = _471 + 32
                while idx < uint256(stor3[arg1].field_1792):
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1107 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
            if 31 >= uint255(stor3[arg1].field_1):
                mem[ceil32(return_data.size) + 448] = 256 * Mask(248, 0, stor3[arg1].field_8)
                mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
                mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                idx = 0
                while idx < uint256(stor3[arg1].field_768):
                    mem[0] = sha3(arg1, 3) + 3
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        _630 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                        mem[_630] = uint255(stor3[arg1][idx + 3].field_1)
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor3[arg1][idx + 3].field_1):
                                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                    mem[_630 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                    mem[_630 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                    t = _630 + 32
                                    u = sha3(mem[0])
                                    while _630 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _630
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor3[arg1][idx + 3].field_1 % 128:
                            mem[s] = _630
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_630 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _630
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_630 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _630 + 32
                        u = sha3(mem[0])
                        while _630 + stor3[arg1][u + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _630
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    _674 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                    mem[_674] = stor3[arg1][idx + 3].field_1 % 128
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor3[arg1][idx + 3].field_1):
                            mem[s] = _674
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_674 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _674
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_674 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _674 + 32
                        u = sha3(mem[0])
                        while _674 + uint255(stor3[arg1][u + 3].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _674
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor3[arg1][idx + 3].field_1 % 128:
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_674 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_674 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _674 + 32
                            u = sha3(mem[0])
                            while _674 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _674
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
                mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                _473 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                mem[_473] = uint256(stor3[arg1].field_1792)
                if not uint256(stor3[arg1].field_1792):
                    mem[ceil32(return_data.size) + 352] = _473
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(uint8(stor3[arg1].field_1536)) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _578 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                    idx = 0
                    s = mem[64] + 64
                    t = _473 + 32
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _578 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
                mem[0] = sha3(arg1, 3) + 7
                mem[_473 + 32] = address(stor3[arg1][7].field_0)
                idx = _473 + 32
                s = 0
                while _473 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                    mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + 352] = _473
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(mem[ceil32(return_data.size) + 288]) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _1109 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                idx = 0
                s = mem[64] + 64
                t = _473 + 32
                while idx < uint256(stor3[arg1].field_1792):
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1109 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
            mem[0] = sha3(arg1, 3)
            mem[ceil32(return_data.size) + 448] = uint256(stor3[arg1].field_0)
            idx = ceil32(return_data.size) + 448
            s = 0
            while ceil32(return_data.size) + uint255(stor3[arg1].field_1) + 416 > idx:
                mem[idx + 32] = uint256(stor3[arg1][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _973 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_973] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_973 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_973 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _973 + 32
                                u = sha3(mem[0])
                                while _973 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _973
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _973
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_973 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _973
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_973 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _973 + 32
                    u = sha3(mem[0])
                    while _973 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _973
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _987 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_987] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _987
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_987 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _987
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_987 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _987 + 32
                    u = sha3(mem[0])
                    while _987 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _987
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_987 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_987 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _987 + 32
                        u = sha3(mem[0])
                        while _987 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _987
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _888 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_888] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _888
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _955 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                idx = 0
                s = mem[64] + 64
                t = _888 + 32
                while idx < uint256(stor3[arg1].field_1792):
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _955 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
            mem[0] = sha3(arg1, 3) + 7
            mem[_888 + 32] = address(stor3[arg1][7].field_0)
            idx = _888 + 32
            s = 0
            while _888 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _888
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _1236 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
            idx = 0
            s = mem[64] + 64
            t = _888 + 32
            while idx < uint256(stor3[arg1].field_1792):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1236 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
        if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if not stor3[arg1].field_1 % 128:
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _633 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_633] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_633 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_633 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _633 + 32
                                u = sha3(mem[0])
                                while _633 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _633
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _633
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_633 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _633
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_633 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _633 + 32
                    u = sha3(mem[0])
                    while _633 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _633
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _675 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_675] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _675
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_675 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _675
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_675 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _675 + 32
                    u = sha3(mem[0])
                    while _675 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _675
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_675 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_675 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _675 + 32
                        u = sha3(mem[0])
                        while _675 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _675
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _475 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_475] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _475
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _579 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                idx = 0
                s = mem[64] + 64
                t = _475 + 32
                while idx < uint256(stor3[arg1].field_1792):
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _579 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
            mem[0] = sha3(arg1, 3) + 7
            mem[_475 + 32] = address(stor3[arg1][7].field_0)
            idx = _475 + 32
            s = 0
            while _475 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _475
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _1110 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
            idx = 0
            s = mem[64] + 64
            t = _475 + 32
            while idx < uint256(stor3[arg1].field_1792):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1110 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
        if 31 >= stor3[arg1].field_1 % 128:
            mem[ceil32(return_data.size) + 448] = 256 * Mask(248, 0, stor3[arg1].field_8)
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_638] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_638 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_638 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _638 + 32
                                u = sha3(mem[0])
                                while _638 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _638
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _638
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_638 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _638
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_638 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _638 + 32
                    u = sha3(mem[0])
                    while _638 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _638
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _678 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_678] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _678
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_678 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _678
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_678 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _678 + 32
                    u = sha3(mem[0])
                    while _678 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _678
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_678 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_678 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _678 + 32
                        u = sha3(mem[0])
                        while _678 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _678
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _477 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_477] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _477
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _582 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                idx = 0
                s = mem[64] + 64
                t = _477 + 32
                while idx < uint256(stor3[arg1].field_1792):
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _582 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
            mem[0] = sha3(arg1, 3) + 7
            mem[_477 + 32] = address(stor3[arg1][7].field_0)
            idx = _477 + 32
            s = 0
            while _477 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _477
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _1112 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
            idx = 0
            s = mem[64] + 64
            t = _477 + 32
            while idx < uint256(stor3[arg1].field_1792):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1112 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
        mem[0] = sha3(arg1, 3)
        mem[ceil32(return_data.size) + 448] = uint256(stor3[arg1].field_0)
        idx = ceil32(return_data.size) + 448
        s = 0
        while ceil32(return_data.size) + stor3[arg1].field_1 % 128 + 416 > idx:
            mem[idx + 32] = uint256(stor3[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
        mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
        mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
        mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
        mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
        idx = 0
        while idx < uint256(stor3[arg1].field_768):
            mem[0] = sha3(arg1, 3) + 3
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                _976 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                mem[_976] = uint255(stor3[arg1][idx + 3].field_1)
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor3[arg1][idx + 3].field_1):
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_976 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_976 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _976 + 32
                            u = sha3(mem[0])
                            while _976 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _976
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor3[arg1][idx + 3].field_1 % 128:
                    mem[s] = _976
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_976 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _976
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_976 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _976 + 32
                u = sha3(mem[0])
                while _976 + stor3[arg1][u + 3].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _976
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            _988 = mem[64]
            mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
            mem[_988] = stor3[arg1][idx + 3].field_1 % 128
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                if not uint255(stor3[arg1][idx + 3].field_1):
                    mem[s] = _988
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                    mem[_988 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _988
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_988 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _988 + 32
                u = sha3(mem[0])
                while _988 + uint255(stor3[arg1][u + 3].field_1) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _988
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            if stor3[arg1][idx + 3].field_1 % 128:
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_988 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_988 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _988 + 32
                    u = sha3(mem[0])
                    while _988 + stor3[arg1][idx + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _988
            s = s + 32
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
        mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
        mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
        mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
        mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
        _892 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
        mem[_892] = uint256(stor3[arg1].field_1792)
        if not uint256(stor3[arg1].field_1792):
            mem[ceil32(return_data.size) + 352] = _892
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(uint8(stor3[arg1].field_1536)) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _956 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
            idx = 0
            s = mem[64] + 64
            t = _892 + 32
            while idx < uint256(stor3[arg1].field_1792):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _956 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
        mem[0] = sha3(arg1, 3) + 7
        mem[_892 + 32] = address(stor3[arg1][7].field_0)
        idx = _892 + 32
        s = 0
        while _892 + (32 * uint256(stor3[arg1].field_1792)) > idx:
            mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + 352] = _892
        mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
        if bool(mem[ceil32(return_data.size) + 288]) != 1:
            revert with 0, 'No Vote exists against this ID or the vote has been suspended'
        _1239 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
        idx = 0
        s = mem[64] + 64
        t = _892 + 32
        while idx < uint256(stor3[arg1].field_1792):
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1239 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
    if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
        revert with 0, 34
    mem[ceil32(return_data.size) + 416] = stor3[arg1].field_1 % 128
    if bool(stor3[arg1].field_0):
        if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
            revert with 0, 34
        if not uint255(stor3[arg1].field_1):
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _641 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_641] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_641 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_641 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _641 + 32
                                u = sha3(mem[0])
                                while _641 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _641
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _641
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_641 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _641
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_641 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _641 + 32
                    u = sha3(mem[0])
                    while _641 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _641
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _679 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_679] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _679
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_679 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _679
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_679 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _679 + 32
                    u = sha3(mem[0])
                    while _679 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _679
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_679 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_679 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _679 + 32
                        u = sha3(mem[0])
                        while _679 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _679
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _479 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_479] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _479
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _583 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                idx = 0
                s = mem[64] + 64
                t = _479 + 32
                while idx < uint256(stor3[arg1].field_1792):
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _583 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
            mem[0] = sha3(arg1, 3) + 7
            mem[_479 + 32] = address(stor3[arg1][7].field_0)
            idx = _479 + 32
            s = 0
            while _479 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _479
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _1113 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
            idx = 0
            s = mem[64] + 64
            t = _479 + 32
            while idx < uint256(stor3[arg1].field_1792):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1113 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
        if 31 >= uint255(stor3[arg1].field_1):
            mem[ceil32(return_data.size) + 448] = 256 * Mask(248, 0, stor3[arg1].field_8)
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _646 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_646] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_646 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_646 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _646 + 32
                                u = sha3(mem[0])
                                while _646 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _646
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _646
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_646 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _646
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_646 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _646 + 32
                    u = sha3(mem[0])
                    while _646 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _646
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _682 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_682] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _682
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_682 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _682
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_682 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _682 + 32
                    u = sha3(mem[0])
                    while _682 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _682
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_682 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_682 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _682 + 32
                        u = sha3(mem[0])
                        while _682 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _682
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _481 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_481] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _481
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _586 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
                idx = 0
                s = mem[64] + 64
                t = _481 + 32
                while idx < uint256(stor3[arg1].field_1792):
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _586 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
            mem[0] = sha3(arg1, 3) + 7
            mem[_481 + 32] = address(stor3[arg1][7].field_0)
            idx = _481 + 32
            s = 0
            while _481 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _481
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _1115 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
            idx = 0
            s = mem[64] + 64
            t = _481 + 32
            while idx < uint256(stor3[arg1].field_1792):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1115 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
        mem[0] = sha3(arg1, 3)
        mem[ceil32(return_data.size) + 448] = uint256(stor3[arg1].field_0)
        idx = ceil32(return_data.size) + 448
        s = 0
        while ceil32(return_data.size) + uint255(stor3[arg1].field_1) + 416 > idx:
            mem[idx + 32] = uint256(stor3[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
        mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
        mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
        mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
        mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
        idx = 0
        while idx < uint256(stor3[arg1].field_768):
            mem[0] = sha3(arg1, 3) + 3
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                _979 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                mem[_979] = uint255(stor3[arg1][idx + 3].field_1)
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor3[arg1][idx + 3].field_1):
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_979 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_979 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _979 + 32
                            u = sha3(mem[0])
                            while _979 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _979
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor3[arg1][idx + 3].field_1 % 128:
                    mem[s] = _979
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_979 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _979
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_979 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _979 + 32
                u = sha3(mem[0])
                while _979 + stor3[arg1][u + 3].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _979
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            _989 = mem[64]
            mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
            mem[_989] = stor3[arg1][idx + 3].field_1 % 128
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                if not uint255(stor3[arg1][idx + 3].field_1):
                    mem[s] = _989
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                    mem[_989 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _989
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_989 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _989 + 32
                u = sha3(mem[0])
                while _989 + uint255(stor3[arg1][u + 3].field_1) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _989
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            if stor3[arg1][idx + 3].field_1 % 128:
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_989 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_989 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _989 + 32
                    u = sha3(mem[0])
                    while _989 + stor3[arg1][idx + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _989
            s = s + 32
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
        mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
        mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
        mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
        mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
        _896 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
        mem[_896] = uint256(stor3[arg1].field_1792)
        if not uint256(stor3[arg1].field_1792):
            mem[ceil32(return_data.size) + 352] = _896
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(uint8(stor3[arg1].field_1536)) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _957 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
            idx = 0
            s = mem[64] + 64
            t = _896 + 32
            while idx < uint256(stor3[arg1].field_1792):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _957 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
        mem[0] = sha3(arg1, 3) + 7
        mem[_896 + 32] = address(stor3[arg1][7].field_0)
        idx = _896 + 32
        s = 0
        while _896 + (32 * uint256(stor3[arg1].field_1792)) > idx:
            mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + 352] = _896
        mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
        if bool(mem[ceil32(return_data.size) + 288]) != 1:
            revert with 0, 'No Vote exists against this ID or the vote has been suspended'
        _1242 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
        idx = 0
        s = mem[64] + 64
        t = _896 + 32
        while idx < uint256(stor3[arg1].field_1792):
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1242 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
    if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if not stor3[arg1].field_1 % 128:
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
        mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
        mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
        mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
        mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
        idx = 0
        while idx < uint256(stor3[arg1].field_768):
            mem[0] = sha3(arg1, 3) + 3
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                _649 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                mem[_649] = uint255(stor3[arg1][idx + 3].field_1)
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor3[arg1][idx + 3].field_1):
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_649 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_649 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _649 + 32
                            u = sha3(mem[0])
                            while _649 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _649
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor3[arg1][idx + 3].field_1 % 128:
                    mem[s] = _649
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_649 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _649
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_649 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _649 + 32
                u = sha3(mem[0])
                while _649 + stor3[arg1][u + 3].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _649
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            _683 = mem[64]
            mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
            mem[_683] = stor3[arg1][idx + 3].field_1 % 128
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                if not uint255(stor3[arg1][idx + 3].field_1):
                    mem[s] = _683
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                    mem[_683 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _683
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_683 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _683 + 32
                u = sha3(mem[0])
                while _683 + uint255(stor3[arg1][u + 3].field_1) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _683
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            if stor3[arg1][idx + 3].field_1 % 128:
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_683 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_683 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _683 + 32
                    u = sha3(mem[0])
                    while _683 + stor3[arg1][idx + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _683
            s = s + 32
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
        mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
        mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
        mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
        mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
        _483 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
        mem[_483] = uint256(stor3[arg1].field_1792)
        if not uint256(stor3[arg1].field_1792):
            mem[ceil32(return_data.size) + 352] = _483
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(uint8(stor3[arg1].field_1536)) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _587 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
            idx = 0
            s = mem[64] + 64
            t = _483 + 32
            while idx < uint256(stor3[arg1].field_1792):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _587 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
        mem[0] = sha3(arg1, 3) + 7
        mem[_483 + 32] = address(stor3[arg1][7].field_0)
        idx = _483 + 32
        s = 0
        while _483 + (32 * uint256(stor3[arg1].field_1792)) > idx:
            mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + 352] = _483
        mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
        if bool(mem[ceil32(return_data.size) + 288]) != 1:
            revert with 0, 'No Vote exists against this ID or the vote has been suspended'
        _1116 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
        idx = 0
        s = mem[64] + 64
        t = _483 + 32
        while idx < uint256(stor3[arg1].field_1792):
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1116 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
    if 31 >= stor3[arg1].field_1 % 128:
        mem[ceil32(return_data.size) + 448] = 256 * Mask(248, 0, stor3[arg1].field_8)
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
        mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
        mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
        mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
        mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
        idx = 0
        while idx < uint256(stor3[arg1].field_768):
            mem[0] = sha3(arg1, 3) + 3
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                _654 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                mem[_654] = uint255(stor3[arg1][idx + 3].field_1)
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor3[arg1][idx + 3].field_1):
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_654 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_654 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _654 + 32
                            u = sha3(mem[0])
                            while _654 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _654
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor3[arg1][idx + 3].field_1 % 128:
                    mem[s] = _654
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_654 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _654
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_654 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _654 + 32
                u = sha3(mem[0])
                while _654 + stor3[arg1][u + 3].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _654
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            _686 = mem[64]
            mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
            mem[_686] = stor3[arg1][idx + 3].field_1 % 128
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                if not uint255(stor3[arg1][idx + 3].field_1):
                    mem[s] = _686
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                    mem[_686 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _686
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_686 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _686 + 32
                u = sha3(mem[0])
                while _686 + uint255(stor3[arg1][u + 3].field_1) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _686
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            if stor3[arg1][idx + 3].field_1 % 128:
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_686 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_686 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _686 + 32
                    u = sha3(mem[0])
                    while _686 + stor3[arg1][idx + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _686
            s = s + 32
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
        mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
        mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
        mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
        mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
        _485 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
        mem[_485] = uint256(stor3[arg1].field_1792)
        if not uint256(stor3[arg1].field_1792):
            mem[ceil32(return_data.size) + 352] = _485
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(uint8(stor3[arg1].field_1536)) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _590 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
            idx = 0
            s = mem[64] + 64
            t = _485 + 32
            while idx < uint256(stor3[arg1].field_1792):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _590 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
        mem[0] = sha3(arg1, 3) + 7
        mem[_485 + 32] = address(stor3[arg1][7].field_0)
        idx = _485 + 32
        s = 0
        while _485 + (32 * uint256(stor3[arg1].field_1792)) > idx:
            mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + 352] = _485
        mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
        if bool(mem[ceil32(return_data.size) + 288]) != 1:
            revert with 0, 'No Vote exists against this ID or the vote has been suspended'
        _1118 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
        idx = 0
        s = mem[64] + 64
        t = _485 + 32
        while idx < uint256(stor3[arg1].field_1792):
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1118 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
    mem[0] = sha3(arg1, 3)
    mem[ceil32(return_data.size) + 448] = uint256(stor3[arg1].field_0)
    idx = ceil32(return_data.size) + 448
    s = 0
    while ceil32(return_data.size) + stor3[arg1].field_1 % 128 + 416 > idx:
        mem[idx + 32] = uint256(stor3[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
    mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
    mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
    mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
    mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
    idx = 0
    while idx < uint256(stor3[arg1].field_768):
        mem[0] = sha3(arg1, 3) + 3
        if bool(stor3[arg1][idx + 3].field_0):
            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                revert with 0, 34
            _982 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
            mem[_982] = uint255(stor3[arg1][idx + 3].field_1)
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                if uint255(stor3[arg1][idx + 3].field_1):
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_982 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_982 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _982 + 32
                        u = sha3(mem[0])
                        while _982 + uint255(stor3[arg1][idx + 3].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _982
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            if not stor3[arg1][idx + 3].field_1 % 128:
                mem[s] = _982
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                mem[_982 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                mem[s] = _982
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
            mem[_982 + 32] = uint256(stor3[arg1][idx + 3].field_0)
            t = _982 + 32
            u = sha3(mem[0])
            while _982 + stor3[arg1][u + 3].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _982
            t = t + 32
            u = u + 1
            continue 
        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
            revert with 0, 34
        _990 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
        mem[_990] = stor3[arg1][idx + 3].field_1 % 128
        if bool(stor3[arg1][idx + 3].field_0):
            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                revert with 0, 34
            if not uint255(stor3[arg1][idx + 3].field_1):
                mem[s] = _990
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                mem[_990 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                mem[s] = _990
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
            mem[_990 + 32] = uint256(stor3[arg1][idx + 3].field_0)
            t = _990 + 32
            u = sha3(mem[0])
            while _990 + uint255(stor3[arg1][u + 3].field_1) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _990
            t = t + 32
            u = u + 1
            continue 
        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
            revert with 0, 34
        if stor3[arg1][idx + 3].field_1 % 128:
            if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                mem[_990 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
            else:
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_990 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _990 + 32
                u = sha3(mem[0])
                while _990 + stor3[arg1][idx + 3].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _990
        s = s + 32
        idx = idx + 1
        continue 
    mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
    mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
    mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
    mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
    mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
    _900 = mem[64]
    mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
    mem[_900] = uint256(stor3[arg1].field_1792)
    if not uint256(stor3[arg1].field_1792):
        mem[ceil32(return_data.size) + 352] = _900
        mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
        if bool(uint8(stor3[arg1].field_1536)) != 1:
            revert with 0, 'No Vote exists against this ID or the vote has been suspended'
        _958 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
        idx = 0
        s = mem[64] + 64
        t = _900 + 32
        while idx < uint256(stor3[arg1].field_1792):
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _958 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
    mem[0] = sha3(arg1, 3) + 7
    mem[_900 + 32] = address(stor3[arg1][7].field_0)
    idx = _900 + 32
    s = 0
    while _900 + (32 * uint256(stor3[arg1].field_1792)) > idx:
        mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(return_data.size) + 352] = _900
    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
    if bool(mem[ceil32(return_data.size) + 288]) != 1:
        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
    _1245 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = uint256(stor3[arg1].field_1792)
    idx = 0
    s = mem[64] + 64
    t = _900 + 32
    while idx < uint256(stor3[arg1].field_1792):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _1245 + (32 * uint256(stor3[arg1].field_1792)) + -mem[64] + 64
}

function sub_79cc9351(?) payable {
    require calldata.size - 4 >= 32
    mem[100] = msg.sender
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 113:
        mem[0] = arg1
        mem[32] = 3
        if bool(stor3[arg1].field_0):
            if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
                revert with 0, 34
            mem[ceil32(return_data.size) + 416] = uint255(stor3[arg1].field_1)
            if bool(stor3[arg1].field_0):
                if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
                    revert with 0, 34
                if not uint255(stor3[arg1].field_1):
                    mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                    mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                    mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                    mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
                    mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    idx = 0
                    while idx < uint256(stor3[arg1].field_768):
                        mem[0] = sha3(arg1, 3) + 3
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            _1984 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                            mem[_1984] = uint255(stor3[arg1][idx + 3].field_1)
                            if bool(stor3[arg1][idx + 3].field_0):
                                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                    revert with 0, 34
                                if uint255(stor3[arg1][idx + 3].field_1):
                                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                        mem[_1984 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                    else:
                                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                        mem[_1984 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                        t = _1984 + 32
                                        u = sha3(mem[0])
                                        while _1984 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[s] = _1984
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor3[arg1][idx + 3].field_1 % 128:
                                mem[s] = _1984
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                                mem[_1984 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                mem[s] = _1984
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_1984 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _1984 + 32
                            u = sha3(mem[0])
                            while _1984 + stor3[arg1][u + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _1984
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        _2032 = mem[64]
                        mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                        mem[_2032] = stor3[arg1][idx + 3].field_1 % 128
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if not uint255(stor3[arg1][idx + 3].field_1):
                                mem[s] = _2032
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_2032 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                mem[s] = _2032
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_2032 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _2032 + 32
                            u = sha3(mem[0])
                            while _2032 + uint255(stor3[arg1][u + 3].field_1) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _2032
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor3[arg1][idx + 3].field_1 % 128:
                            if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                                mem[_2032 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_2032 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _2032 + 32
                                u = sha3(mem[0])
                                while _2032 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _2032
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
                    mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                    mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                    mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                    mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                    _1799 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                    mem[_1799] = uint256(stor3[arg1].field_1792)
                    if not uint256(stor3[arg1].field_1792):
                        mem[ceil32(return_data.size) + 352] = _1799
                        mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                        if bool(uint8(stor3[arg1].field_1536)) != 1:
                            revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                        _1873 = mem[ceil32(return_data.size) + 96]
                        _1874 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        if mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] > test266151307():
                            revert with 0, 65
                        _1951 = mem[64]
                        mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[64] = mem[64] + (32 * _1874) + 32
                        if not _1874:
                            idx = 0
                            while idx < uint256(stor3[arg1].field_1792):
                                mem[0] = arg1
                                mem[32] = 4
                                if idx >= mem[_1799]:
                                    revert with 0, 50
                                _3673 = sha3(mem[(32 * idx) + _1799 + 44 len 20], sha3(arg1, 4))
                                mem[0] = arg1
                                mem[32] = 4
                                if idx >= mem[_1799]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + _1799 + 44 len 20]
                                mem[32] = sha3(arg1, 4)
                                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1951]:
                                    revert with 0, 50
                                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1951 + 32] > !uint256(stor1[_3673]):
                                    revert with 0, 17
                                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1951 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1951 + 32] + uint256(stor1[_3673])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            _3671 = mem[64]
                            mem[mem[64]] = 96
                            _3983 = mem[_1873]
                            mem[mem[64] + 96] = mem[_1873]
                            mem[mem[64] + 128 len ceil32(_3983)] = mem[_1873 + 32 len ceil32(_3983)]
                            if ceil32(_3983) <= _3983:
                                mem[mem[64] + 32] = ceil32(_3983) + 128
                                _5311 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                                mem[ceil32(_3983) + _3671 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                                idx = 0
                                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                                t = ceil32(_3983) + _3671 + (32 * _5311) + 160
                                u = ceil32(_3983) + _3671 + 160
                                while idx < _5311:
                                    mem[u] = t + -ceil32(_3983) + -_3671 - 160
                                    _7032 = mem[s]
                                    _7279 = mem[mem[s]]
                                    mem[t] = mem[mem[s]]
                                    v = 0
                                    while v < _7279:
                                        mem[v + t + 32] = mem[_7032 + v + 32]
                                        v = v + 32
                                        continue 
                                    if ceil32(_7279) > _7279:
                                        mem[t + _7279 + 32] = 0
                                    idx = idx + 1
                                    s = s + 32
                                    t = ceil32(_7279) + t + 32
                                    u = u + 32
                                    continue 
                                mem[_3671 + 64] = t - _3671
                                _7031 = mem[_1951]
                                mem[t] = mem[_1951]
                                mem[t + 32 len 32 * _7031] = mem[_1951 + 32 len 32 * _7031]
                                return memory
                                  from mem[64]
                                   len t + (32 * _7031) + -mem[64] + 32
                            mem[mem[64] + _3983 + 128] = 0
                            mem[mem[64] + 32] = ceil32(_3983) + 128
                            _5407 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            mem[ceil32(_3983) + _3671 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            idx = 0
                            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                            t = ceil32(_3983) + _3671 + (32 * _5407) + 160
                            u = ceil32(_3983) + _3671 + 160
                            while idx < _5407:
                                mem[u] = t + -ceil32(_3983) + -_3671 - 160
                                _7034 = mem[s]
                                _7280 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7280:
                                    mem[v + t + 32] = mem[_7034 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7280) > _7280:
                                    mem[t + _7280 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_7280) + t + 32
                                u = u + 32
                                continue 
                            mem[_3671 + 64] = t - _3671
                            _7033 = mem[_1951]
                            mem[t] = mem[_1951]
                            mem[t + 32 len 32 * _7033] = mem[_1951 + 32 len 32 * _7033]
                            var48001 = _7033
                            return memory
                              from mem[64]
                               len t + (32 * _7033) + -mem[64] + 32
                        mem[_1951 + 32 len 32 * _1874] = call.data[calldata.size len 32 * _1874]
                        idx = 0
                        while idx < uint256(stor3[arg1].field_1792):
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1799]:
                                revert with 0, 50
                            _3678 = sha3(mem[(32 * idx) + _1799 + 44 len 20], sha3(arg1, 4))
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1799]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + _1799 + 44 len 20]
                            mem[32] = sha3(arg1, 4)
                            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1951]:
                                revert with 0, 50
                            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1951 + 32] > !uint256(stor1[_3678]):
                                revert with 0, 17
                            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1951 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1951 + 32] + uint256(stor1[_3678])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _3676 = mem[64]
                        mem[mem[64]] = 96
                        _3985 = mem[_1873]
                        mem[mem[64] + 96] = mem[_1873]
                        mem[mem[64] + 128 len ceil32(_3985)] = mem[_1873 + 32 len ceil32(_3985)]
                        if ceil32(_3985) <= _3985:
                            mem[mem[64] + 32] = ceil32(_3985) + 128
                            _5312 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            mem[ceil32(_3985) + _3676 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            idx = 0
                            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                            t = ceil32(_3985) + _3676 + (32 * _5312) + 160
                            u = ceil32(_3985) + _3676 + 160
                            while idx < _5312:
                                mem[u] = t + -ceil32(_3985) + -_3676 - 160
                                _7036 = mem[s]
                                _7281 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7281:
                                    mem[v + t + 32] = mem[_7036 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7281) > _7281:
                                    mem[t + _7281 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_7281) + t + 32
                                u = u + 32
                                continue 
                            mem[_3676 + 64] = t - _3676
                            _7035 = mem[_1951]
                            mem[t] = mem[_1951]
                            mem[t + 32 len 32 * _7035] = mem[_1951 + 32 len 32 * _7035]
                            return memory
                              from mem[64]
                               len t + (32 * _7035) + -mem[64] + 32
                        mem[mem[64] + _3985 + 128] = 0
                        mem[mem[64] + 32] = ceil32(_3985) + 128
                        _5408 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[ceil32(_3985) + _3676 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                        t = ceil32(_3985) + _3676 + (32 * _5408) + 160
                        u = ceil32(_3985) + _3676 + 160
                        while idx < _5408:
                            mem[u] = t + -ceil32(_3985) + -_3676 - 160
                            _7038 = mem[s]
                            _7282 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7282:
                                mem[v + t + 32] = mem[_7038 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7282) > _7282:
                                mem[t + _7282 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7282) + t + 32
                            u = u + 32
                            continue 
                        mem[_3676 + 64] = t - _3676
                        _7037 = mem[_1951]
                        mem[t] = mem[_1951]
                        mem[t + 32 len 32 * _7037] = mem[_1951 + 32 len 32 * _7037]
                        var49001 = _7037
                        return memory
                          from mem[64]
                           len t + (32 * _7037) + -mem[64] + 32
                    mem[0] = sha3(arg1, 3) + 7
                    mem[_1799 + 32] = address(stor3[arg1][7].field_0)
                    idx = _1799 + 32
                    s = 0
                    while _1799 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                        mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(return_data.size) + 352] = _1799
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(mem[ceil32(return_data.size) + 288]) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _5074 = mem[ceil32(return_data.size) + 192]
                    _5075 = mem[ceil32(return_data.size) + 96]
                    _5076 = mem[mem[ceil32(return_data.size) + 192]]
                    if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                        revert with 0, 65
                    _5215 = mem[64]
                    mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
                    mem[64] = mem[64] + (32 * _5076) + 32
                    if not _5076:
                        idx = 0
                        while idx < uint256(stor3[arg1].field_1792):
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1799]:
                                revert with 0, 50
                            _7285 = sha3(mem[(32 * idx) + _1799 + 44 len 20], sha3(arg1, 4))
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1799]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + _1799 + 44 len 20]
                            mem[32] = sha3(arg1, 4)
                            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5215]:
                                revert with 0, 50
                            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5215 + 32] > !uint256(stor1[_7285]):
                                revert with 0, 17
                            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5215 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5215 + 32] + uint256(stor1[_7285])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _7283 = mem[64]
                        mem[mem[64]] = 96
                        _7703 = mem[_5075]
                        mem[mem[64] + 96] = mem[_5075]
                        mem[mem[64] + 128 len ceil32(_7703)] = mem[_5075 + 32 len ceil32(_7703)]
                        if ceil32(_7703) <= _7703:
                            mem[mem[64] + 32] = ceil32(_7703) + 128
                            _9471 = mem[_5074]
                            mem[ceil32(_7703) + _7283 + 128] = mem[_5074]
                            idx = 0
                            s = _5074 + 32
                            t = ceil32(_7703) + _7283 + (32 * _9471) + 160
                            u = ceil32(_7703) + _7283 + 160
                            while idx < _9471:
                                mem[u] = t + -ceil32(_7703) + -_7283 - 160
                                _10336 = mem[s]
                                _10543 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10543:
                                    mem[v + t + 32] = mem[_10336 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10543) > _10543:
                                    mem[t + _10543 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10543) + t + 32
                                u = u + 32
                                continue 
                            mem[_7283 + 64] = t - _7283
                            _10335 = mem[_5215]
                            mem[t] = mem[_5215]
                            mem[t + 32 len 32 * _10335] = mem[_5215 + 32 len 32 * _10335]
                            return memory
                              from mem[64]
                               len t + (32 * _10335) + -mem[64] + 32
                        mem[mem[64] + _7703 + 128] = 0
                        mem[mem[64] + 32] = ceil32(_7703) + 128
                        _9583 = mem[_5074]
                        mem[ceil32(_7703) + _7283 + 128] = mem[_5074]
                        idx = 0
                        s = _5074 + 32
                        t = ceil32(_7703) + _7283 + (32 * _9583) + 160
                        u = ceil32(_7703) + _7283 + 160
                        while idx < _9583:
                            mem[u] = t + -ceil32(_7703) + -_7283 - 160
                            _10338 = mem[s]
                            _10544 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _10544:
                                mem[v + t + 32] = mem[_10338 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_10544) > _10544:
                                mem[t + _10544 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_10544) + t + 32
                            u = u + 32
                            continue 
                        mem[_7283 + 64] = t - _7283
                        _10337 = mem[_5215]
                        mem[t] = mem[_5215]
                        mem[t + 32 len 32 * _10337] = mem[_5215 + 32 len 32 * _10337]
                        var52001 = _10337
                        return memory
                          from mem[64]
                           len t + (32 * _10337) + -mem[64] + 32
                    mem[_5215 + 32 len 32 * _5076] = call.data[calldata.size len 32 * _5076]
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1799]:
                            revert with 0, 50
                        _7290 = sha3(mem[(32 * idx) + _1799 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1799]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1799 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5215]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5215 + 32] > !uint256(stor1[_7290]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5215 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5215 + 32] + uint256(stor1[_7290])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _7288 = mem[64]
                    mem[mem[64]] = 96
                    _7705 = mem[_5075]
                    mem[mem[64] + 96] = mem[_5075]
                    mem[mem[64] + 128 len ceil32(_7705)] = mem[_5075 + 32 len ceil32(_7705)]
                    if ceil32(_7705) <= _7705:
                        mem[mem[64] + 32] = ceil32(_7705) + 128
                        _9472 = mem[_5074]
                        mem[ceil32(_7705) + _7288 + 128] = mem[_5074]
                        idx = 0
                        s = _5074 + 32
                        t = ceil32(_7705) + _7288 + (32 * _9472) + 160
                        u = ceil32(_7705) + _7288 + 160
                        while idx < _9472:
                            mem[u] = t + -ceil32(_7705) + -_7288 - 160
                            _10340 = mem[s]
                            _10545 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _10545:
                                mem[v + t + 32] = mem[_10340 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_10545) > _10545:
                                mem[t + _10545 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_10545) + t + 32
                            u = u + 32
                            continue 
                        mem[_7288 + 64] = t - _7288
                        _10339 = mem[_5215]
                        mem[t] = mem[_5215]
                        mem[t + 32 len 32 * _10339] = mem[_5215 + 32 len 32 * _10339]
                        var52001 = _10339
                        return memory
                          from mem[64]
                           len t + (32 * _10339) + -mem[64] + 32
                    mem[mem[64] + _7705 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_7705) + 128
                    _9584 = mem[_5074]
                    mem[ceil32(_7705) + _7288 + 128] = mem[_5074]
                    idx = 0
                    s = _5074 + 32
                    t = ceil32(_7705) + _7288 + (32 * _9584) + 160
                    u = ceil32(_7705) + _7288 + 160
                    while idx < _9584:
                        mem[u] = t + -ceil32(_7705) + -_7288 - 160
                        _10342 = mem[s]
                        _10546 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10546:
                            mem[v + t + 32] = mem[_10342 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10546) > _10546:
                            mem[t + _10546 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10546) + t + 32
                        u = u + 32
                        continue 
                    mem[_7288 + 64] = t - _7288
                    _10341 = mem[_5215]
                    mem[t] = mem[_5215]
                    mem[t + 32 len 32 * _10341] = mem[_5215 + 32 len 32 * _10341]
                    var53001 = _10341
                    return memory
                      from mem[64]
                       len t + (32 * _10341) + -mem[64] + 32
                if 31 >= uint255(stor3[arg1].field_1):
                    mem[ceil32(return_data.size) + 448] = 256 * Mask(248, 0, stor3[arg1].field_8)
                    mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                    mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                    mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                    mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
                    mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    idx = 0
                    while idx < uint256(stor3[arg1].field_768):
                        mem[0] = sha3(arg1, 3) + 3
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            _1988 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                            mem[_1988] = uint255(stor3[arg1][idx + 3].field_1)
                            if bool(stor3[arg1][idx + 3].field_0):
                                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                    revert with 0, 34
                                if uint255(stor3[arg1][idx + 3].field_1):
                                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                        mem[_1988 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                    else:
                                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                        mem[_1988 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                        t = _1988 + 32
                                        u = sha3(mem[0])
                                        while _1988 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[s] = _1988
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor3[arg1][idx + 3].field_1 % 128:
                                mem[s] = _1988
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                                mem[_1988 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                mem[s] = _1988
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_1988 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _1988 + 32
                            u = sha3(mem[0])
                            while _1988 + stor3[arg1][u + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _1988
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        _2039 = mem[64]
                        mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                        mem[_2039] = stor3[arg1][idx + 3].field_1 % 128
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if not uint255(stor3[arg1][idx + 3].field_1):
                                mem[s] = _2039
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_2039 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                mem[s] = _2039
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_2039 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _2039 + 32
                            u = sha3(mem[0])
                            while _2039 + uint255(stor3[arg1][u + 3].field_1) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _2039
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor3[arg1][idx + 3].field_1 % 128:
                            if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                                mem[_2039 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_2039 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _2039 + 32
                                u = sha3(mem[0])
                                while _2039 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _2039
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
                    mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                    mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                    mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                    mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                    _1801 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                    mem[_1801] = uint256(stor3[arg1].field_1792)
                    if not uint256(stor3[arg1].field_1792):
                        mem[ceil32(return_data.size) + 352] = _1801
                        mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                        if bool(uint8(stor3[arg1].field_1536)) != 1:
                            revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                        _1878 = mem[ceil32(return_data.size) + 96]
                        _1879 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        if mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] > test266151307():
                            revert with 0, 65
                        _1954 = mem[64]
                        mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[64] = mem[64] + (32 * _1879) + 32
                        if not _1879:
                            idx = 0
                            while idx < uint256(stor3[arg1].field_1792):
                                mem[0] = arg1
                                mem[32] = 4
                                if idx >= mem[_1801]:
                                    revert with 0, 50
                                _3685 = sha3(mem[(32 * idx) + _1801 + 44 len 20], sha3(arg1, 4))
                                mem[0] = arg1
                                mem[32] = 4
                                if idx >= mem[_1801]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + _1801 + 44 len 20]
                                mem[32] = sha3(arg1, 4)
                                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1954]:
                                    revert with 0, 50
                                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1954 + 32] > !uint256(stor1[_3685]):
                                    revert with 0, 17
                                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1954 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1954 + 32] + uint256(stor1[_3685])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            _3683 = mem[64]
                            mem[mem[64]] = 96
                            _3988 = mem[_1878]
                            mem[mem[64] + 96] = mem[_1878]
                            mem[mem[64] + 128 len ceil32(_3988)] = mem[_1878 + 32 len ceil32(_3988)]
                            if ceil32(_3988) <= _3988:
                                mem[mem[64] + 32] = ceil32(_3988) + 128
                                _5320 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                                mem[ceil32(_3988) + _3683 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                                idx = 0
                                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                                t = ceil32(_3988) + _3683 + (32 * _5320) + 160
                                u = ceil32(_3988) + _3683 + 160
                                while idx < _5320:
                                    mem[u] = t + -ceil32(_3988) + -_3683 - 160
                                    _7051 = mem[s]
                                    _7294 = mem[mem[s]]
                                    mem[t] = mem[mem[s]]
                                    v = 0
                                    while v < _7294:
                                        mem[v + t + 32] = mem[_7051 + v + 32]
                                        v = v + 32
                                        continue 
                                    if ceil32(_7294) > _7294:
                                        mem[t + _7294 + 32] = 0
                                    idx = idx + 1
                                    s = s + 32
                                    t = ceil32(_7294) + t + 32
                                    u = u + 32
                                    continue 
                                mem[_3683 + 64] = t - _3683
                                _7050 = mem[_1954]
                                mem[t] = mem[_1954]
                                mem[t + 32 len 32 * _7050] = mem[_1954 + 32 len 32 * _7050]
                                return memory
                                  from mem[64]
                                   len t + (32 * _7050) + -mem[64] + 32
                            mem[mem[64] + _3988 + 128] = 0
                            mem[mem[64] + 32] = ceil32(_3988) + 128
                            _5414 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            mem[ceil32(_3988) + _3683 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            idx = 0
                            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                            t = ceil32(_3988) + _3683 + (32 * _5414) + 160
                            u = ceil32(_3988) + _3683 + 160
                            while idx < _5414:
                                mem[u] = t + -ceil32(_3988) + -_3683 - 160
                                _7053 = mem[s]
                                _7295 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7295:
                                    mem[v + t + 32] = mem[_7053 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7295) > _7295:
                                    mem[t + _7295 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_7295) + t + 32
                                u = u + 32
                                continue 
                            mem[_3683 + 64] = t - _3683
                            _7052 = mem[_1954]
                            mem[t] = mem[_1954]
                            mem[t + 32 len 32 * _7052] = mem[_1954 + 32 len 32 * _7052]
                            var50001 = _7052
                            return memory
                              from mem[64]
                               len t + (32 * _7052) + -mem[64] + 32
                        mem[_1954 + 32 len 32 * _1879] = call.data[calldata.size len 32 * _1879]
                        idx = 0
                        while idx < uint256(stor3[arg1].field_1792):
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1801]:
                                revert with 0, 50
                            _3690 = sha3(mem[(32 * idx) + _1801 + 44 len 20], sha3(arg1, 4))
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1801]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + _1801 + 44 len 20]
                            mem[32] = sha3(arg1, 4)
                            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1954]:
                                revert with 0, 50
                            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1954 + 32] > !uint256(stor1[_3690]):
                                revert with 0, 17
                            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1954 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1954 + 32] + uint256(stor1[_3690])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _3688 = mem[64]
                        mem[mem[64]] = 96
                        _3990 = mem[_1878]
                        mem[mem[64] + 96] = mem[_1878]
                        mem[mem[64] + 128 len ceil32(_3990)] = mem[_1878 + 32 len ceil32(_3990)]
                        if ceil32(_3990) <= _3990:
                            mem[mem[64] + 32] = ceil32(_3990) + 128
                            _5321 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            mem[ceil32(_3990) + _3688 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            idx = 0
                            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                            t = ceil32(_3990) + _3688 + (32 * _5321) + 160
                            u = ceil32(_3990) + _3688 + 160
                            while idx < _5321:
                                mem[u] = t + -ceil32(_3990) + -_3688 - 160
                                _7055 = mem[s]
                                _7296 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7296:
                                    mem[v + t + 32] = mem[_7055 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7296) > _7296:
                                    mem[t + _7296 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_7296) + t + 32
                                u = u + 32
                                continue 
                            mem[_3688 + 64] = t - _3688
                            _7054 = mem[_1954]
                            mem[t] = mem[_1954]
                            mem[t + 32 len 32 * _7054] = mem[_1954 + 32 len 32 * _7054]
                            return memory
                              from mem[64]
                               len t + (32 * _7054) + -mem[64] + 32
                        mem[mem[64] + _3990 + 128] = 0
                        mem[mem[64] + 32] = ceil32(_3990) + 128
                        _5415 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[ceil32(_3990) + _3688 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                        t = ceil32(_3990) + _3688 + (32 * _5415) + 160
                        u = ceil32(_3990) + _3688 + 160
                        while idx < _5415:
                            mem[u] = t + -ceil32(_3990) + -_3688 - 160
                            _7057 = mem[s]
                            _7297 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7297:
                                mem[v + t + 32] = mem[_7057 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7297) > _7297:
                                mem[t + _7297 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7297) + t + 32
                            u = u + 32
                            continue 
                        mem[_3688 + 64] = t - _3688
                        _7056 = mem[_1954]
                        mem[t] = mem[_1954]
                        mem[t + 32 len 32 * _7056] = mem[_1954 + 32 len 32 * _7056]
                        var51001 = _7056
                        return memory
                          from mem[64]
                           len t + (32 * _7056) + -mem[64] + 32
                    mem[0] = sha3(arg1, 3) + 7
                    mem[_1801 + 32] = address(stor3[arg1][7].field_0)
                    idx = _1801 + 32
                    s = 0
                    while _1801 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                        mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(return_data.size) + 352] = _1801
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(mem[ceil32(return_data.size) + 288]) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _5085 = mem[ceil32(return_data.size) + 192]
                    _5086 = mem[ceil32(return_data.size) + 96]
                    _5087 = mem[mem[ceil32(return_data.size) + 192]]
                    if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                        revert with 0, 65
                    _5226 = mem[64]
                    mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
                    mem[64] = mem[64] + (32 * _5087) + 32
                    if not _5087:
                        idx = 0
                        while idx < uint256(stor3[arg1].field_1792):
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1801]:
                                revert with 0, 50
                            _7300 = sha3(mem[(32 * idx) + _1801 + 44 len 20], sha3(arg1, 4))
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1801]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + _1801 + 44 len 20]
                            mem[32] = sha3(arg1, 4)
                            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5226]:
                                revert with 0, 50
                            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5226 + 32] > !uint256(stor1[_7300]):
                                revert with 0, 17
                            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5226 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5226 + 32] + uint256(stor1[_7300])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _7298 = mem[64]
                        mem[mem[64]] = 96
                        _7718 = mem[_5086]
                        mem[mem[64] + 96] = mem[_5086]
                        mem[mem[64] + 128 len ceil32(_7718)] = mem[_5086 + 32 len ceil32(_7718)]
                        if ceil32(_7718) <= _7718:
                            mem[mem[64] + 32] = ceil32(_7718) + 128
                            _9483 = mem[_5085]
                            mem[ceil32(_7718) + _7298 + 128] = mem[_5085]
                            idx = 0
                            s = _5085 + 32
                            t = ceil32(_7718) + _7298 + (32 * _9483) + 160
                            u = ceil32(_7718) + _7298 + 160
                            while idx < _9483:
                                mem[u] = t + -ceil32(_7718) + -_7298 - 160
                                _10354 = mem[s]
                                _10551 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10551:
                                    mem[v + t + 32] = mem[_10354 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10551) > _10551:
                                    mem[t + _10551 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10551) + t + 32
                                u = u + 32
                                continue 
                            mem[_7298 + 64] = t - _7298
                            _10353 = mem[_5226]
                            mem[t] = mem[_5226]
                            mem[t + 32 len 32 * _10353] = mem[_5226 + 32 len 32 * _10353]
                            return memory
                              from mem[64]
                               len t + (32 * _10353) + -mem[64] + 32
                        mem[mem[64] + _7718 + 128] = 0
                        mem[mem[64] + 32] = ceil32(_7718) + 128
                        _9597 = mem[_5085]
                        mem[ceil32(_7718) + _7298 + 128] = mem[_5085]
                        idx = 0
                        s = _5085 + 32
                        t = ceil32(_7718) + _7298 + (32 * _9597) + 160
                        u = ceil32(_7718) + _7298 + 160
                        while idx < _9597:
                            mem[u] = t + -ceil32(_7718) + -_7298 - 160
                            _10356 = mem[s]
                            _10552 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _10552:
                                mem[v + t + 32] = mem[_10356 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_10552) > _10552:
                                mem[t + _10552 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_10552) + t + 32
                            u = u + 32
                            continue 
                        mem[_7298 + 64] = t - _7298
                        _10355 = mem[_5226]
                        mem[t] = mem[_5226]
                        mem[t + 32 len 32 * _10355] = mem[_5226 + 32 len 32 * _10355]
                        var54001 = _10355
                        return memory
                          from mem[64]
                           len t + (32 * _10355) + -mem[64] + 32
                    mem[_5226 + 32 len 32 * _5087] = call.data[calldata.size len 32 * _5087]
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1801]:
                            revert with 0, 50
                        _7305 = sha3(mem[(32 * idx) + _1801 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1801]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1801 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5226]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5226 + 32] > !uint256(stor1[_7305]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5226 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5226 + 32] + uint256(stor1[_7305])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _7303 = mem[64]
                    mem[mem[64]] = 96
                    _7720 = mem[_5086]
                    mem[mem[64] + 96] = mem[_5086]
                    mem[mem[64] + 128 len ceil32(_7720)] = mem[_5086 + 32 len ceil32(_7720)]
                    if ceil32(_7720) <= _7720:
                        mem[mem[64] + 32] = ceil32(_7720) + 128
                        _9484 = mem[_5085]
                        mem[ceil32(_7720) + _7303 + 128] = mem[_5085]
                        idx = 0
                        s = _5085 + 32
                        t = ceil32(_7720) + _7303 + (32 * _9484) + 160
                        u = ceil32(_7720) + _7303 + 160
                        while idx < _9484:
                            mem[u] = t + -ceil32(_7720) + -_7303 - 160
                            _10358 = mem[s]
                            _10553 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _10553:
                                mem[v + t + 32] = mem[_10358 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_10553) > _10553:
                                mem[t + _10553 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_10553) + t + 32
                            u = u + 32
                            continue 
                        mem[_7303 + 64] = t - _7303
                        _10357 = mem[_5226]
                        mem[t] = mem[_5226]
                        mem[t + 32 len 32 * _10357] = mem[_5226 + 32 len 32 * _10357]
                        var54001 = _10357
                        return memory
                          from mem[64]
                           len t + (32 * _10357) + -mem[64] + 32
                    mem[mem[64] + _7720 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_7720) + 128
                    _9598 = mem[_5085]
                    mem[ceil32(_7720) + _7303 + 128] = mem[_5085]
                    idx = 0
                    s = _5085 + 32
                    t = ceil32(_7720) + _7303 + (32 * _9598) + 160
                    u = ceil32(_7720) + _7303 + 160
                    while idx < _9598:
                        mem[u] = t + -ceil32(_7720) + -_7303 - 160
                        _10360 = mem[s]
                        _10554 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10554:
                            mem[v + t + 32] = mem[_10360 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10554) > _10554:
                            mem[t + _10554 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10554) + t + 32
                        u = u + 32
                        continue 
                    mem[_7303 + 64] = t - _7303
                    _10359 = mem[_5226]
                    mem[t] = mem[_5226]
                    mem[t + 32 len 32 * _10359] = mem[_5226 + 32 len 32 * _10359]
                    var55001 = _10359
                    return memory
                      from mem[64]
                       len t + (32 * _10359) + -mem[64] + 32
                mem[0] = sha3(arg1, 3)
                mem[ceil32(return_data.size) + 448] = uint256(stor3[arg1].field_0)
                idx = ceil32(return_data.size) + 448
                s = 0
                while ceil32(return_data.size) + uint255(stor3[arg1].field_1) + 416 > idx:
                    mem[idx + 32] = uint256(stor3[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
                mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                idx = 0
                while idx < uint256(stor3[arg1].field_768):
                    mem[0] = sha3(arg1, 3) + 3
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        _4056 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                        mem[_4056] = uint255(stor3[arg1][idx + 3].field_1)
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor3[arg1][idx + 3].field_1):
                                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                    mem[_4056 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                    mem[_4056 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                    t = _4056 + 32
                                    u = sha3(mem[0])
                                    while _4056 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _4056
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor3[arg1][idx + 3].field_1 % 128:
                            mem[s] = _4056
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_4056 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _4056
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_4056 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _4056 + 32
                        u = sha3(mem[0])
                        while _4056 + stor3[arg1][u + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _4056
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    _4074 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                    mem[_4074] = stor3[arg1][idx + 3].field_1 % 128
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor3[arg1][idx + 3].field_1):
                            mem[s] = _4074
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_4074 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _4074
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_4074 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _4074 + 32
                        u = sha3(mem[0])
                        while _4074 + uint255(stor3[arg1][u + 3].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _4074
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor3[arg1][idx + 3].field_1 % 128:
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_4074 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_4074 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _4074 + 32
                            u = sha3(mem[0])
                            while _4074 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _4074
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
                mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                _3595 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                mem[_3595] = uint256(stor3[arg1].field_1792)
                if not uint256(stor3[arg1].field_1792):
                    mem[ceil32(return_data.size) + 352] = _3595
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(uint8(stor3[arg1].field_1536)) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _3855 = mem[ceil32(return_data.size) + 96]
                    _3856 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    if mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] > test266151307():
                        revert with 0, 65
                    _3987 = mem[64]
                    mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[64] = mem[64] + (32 * _3856) + 32
                    if not _3856:
                        idx = 0
                        while idx < uint256(stor3[arg1].field_1792):
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_3595]:
                                revert with 0, 50
                            _5218 = sha3(mem[(32 * idx) + _3595 + 44 len 20], sha3(arg1, 4))
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_3595]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + _3595 + 44 len 20]
                            mem[32] = sha3(arg1, 4)
                            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_3987]:
                                revert with 0, 50
                            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _3987 + 32] > !uint256(stor1[_5218]):
                                revert with 0, 17
                            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _3987 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _3987 + 32] + uint256(stor1[_5218])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _5216 = mem[64]
                        mem[mem[64]] = 96
                        _5410 = mem[_3855]
                        mem[mem[64] + 96] = mem[_3855]
                        mem[mem[64] + 128 len ceil32(_5410)] = mem[_3855 + 32 len ceil32(_5410)]
                        s = ceil32(_5410)
                        if ceil32(_5410) <= _5410:
                            mem[mem[64] + 32] = ceil32(_5410) + 128
                            _7521 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            mem[ceil32(_5410) + _5216 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            idx = 0
                            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                            t = ceil32(_5410) + _5216 + (32 * _7521) + 160
                            u = ceil32(_5410) + _5216 + 160
                            while idx < _7521:
                                mem[u] = t + -ceil32(_5410) + -_5216 - 160
                                _9050 = mem[s]
                                _9299 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _9299:
                                    mem[v + t + 32] = mem[_9050 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_9299) > _9299:
                                    mem[t + _9299 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_9299) + t + 32
                                u = u + 32
                                continue 
                            mem[_5216 + 64] = t - _5216
                            _9049 = mem[_3987]
                            mem[t] = mem[_3987]
                            mem[t + 32 len 32 * _9049] = mem[_3987 + 32 len 32 * _9049]
                            var52002 = _3987 + (32 * _9049) + 32
                            return memory
                              from mem[64]
                               len t + (32 * _9049) + -mem[64] + 32
                        mem[mem[64] + _5410 + 128] = 0
                        mem[mem[64] + 32] = ceil32(_5410) + 128
                        _7707 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[ceil32(_5410) + _5216 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                        t = ceil32(_5410) + _5216 + (32 * _7707) + 160
                        u = ceil32(_5410) + _5216 + 160
                        while idx < _7707:
                            mem[u] = t + -ceil32(_5410) + -_5216 - 160
                            _9052 = mem[s]
                            _9300 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _9300:
                                mem[v + t + 32] = mem[_9052 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_9300) > _9300:
                                mem[t + _9300 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_9300) + t + 32
                            u = u + 32
                            continue 
                        mem[_5216 + 64] = t - _5216
                        _9051 = mem[_3987]
                        mem[t] = mem[_3987]
                        mem[t + 32 len 32 * _9051] = mem[_3987 + 32 len 32 * _9051]
                        var53001 = _9051
                        return memory
                          from mem[64]
                           len t + (32 * _9051) + -mem[64] + 32
                    mem[_3987 + 32 len 32 * _3856] = call.data[calldata.size len 32 * _3856]
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_3595]:
                            revert with 0, 50
                        _5223 = sha3(mem[(32 * idx) + _3595 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_3595]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _3595 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_3987]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _3987 + 32] > !uint256(stor1[_5223]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _3987 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _3987 + 32] + uint256(stor1[_5223])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _5221 = mem[64]
                    mem[mem[64]] = 96
                    _5412 = mem[_3855]
                    mem[mem[64] + 96] = mem[_3855]
                    mem[mem[64] + 128 len ceil32(_5412)] = mem[_3855 + 32 len ceil32(_5412)]
                    var45001 = ceil32(_5412)
                    if ceil32(_5412) <= _5412:
                        mem[_5221 + 32] = ceil32(_5412) + 128
                        _7522 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[ceil32(_5412) + _5221 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                        t = ceil32(_5412) + _5221 + (32 * _7522) + 160
                        u = ceil32(_5412) + _5221 + 160
                        while idx < _7522:
                            mem[u] = t + -ceil32(_5412) + -_5221 - 160
                            _9054 = mem[s]
                            _9301 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _9301:
                                mem[v + t + 32] = mem[_9054 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_9301) > _9301:
                                mem[t + _9301 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_9301) + t + 32
                            u = u + 32
                            continue 
                        mem[_5221 + 64] = t - _5221
                        _9053 = mem[_3987]
                        mem[t] = mem[_3987]
                        mem[t + 32 len 32 * _9053] = mem[_3987 + 32 len 32 * _9053]
                        var53001 = _9053
                        return memory
                          from mem[64]
                           len t + (32 * _9053) + -mem[64] + 32
                    mem[_5221 + _5412 + 128] = 0
                    mem[_5221 + 32] = ceil32(_5412) + 128
                    _7708 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[ceil32(_5412) + _5221 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    t = ceil32(_5412) + _5221 + (32 * _7708) + 160
                    u = ceil32(_5412) + _5221 + 160
                    while idx < _7708:
                        mem[u] = t + -ceil32(_5412) + -_5221 - 160
                        _9056 = mem[s]
                        _9302 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _9302:
                            mem[v + t + 32] = mem[_9056 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_9302) > _9302:
                            mem[t + _9302 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_9302) + t + 32
                        u = u + 32
                        continue 
                    mem[_5221 + 64] = t - _5221
                    _9055 = mem[_3987]
                    mem[t] = mem[_3987]
                    mem[t + 32 len 32 * _9055] = mem[_3987 + 32 len 32 * _9055]
                    var54001 = _9055
                    return memory
                      from mem[64]
                       len t + (32 * _9055) + -mem[64] + 32
                mem[0] = sha3(arg1, 3) + 7
                mem[_3595 + 32] = address(stor3[arg1][7].field_0)
                idx = _3595 + 32
                s = 0
                while _3595 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                    mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + 352] = _3595
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(mem[ceil32(return_data.size) + 288]) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _7046 = mem[ceil32(return_data.size) + 192]
                _7047 = mem[ceil32(return_data.size) + 96]
                _7048 = mem[mem[ceil32(return_data.size) + 192]]
                if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                    revert with 0, 65
                _7293 = mem[64]
                mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
                mem[64] = mem[64] + (32 * _7048) + 32
                if not _7048:
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_3595]:
                            revert with 0, 50
                        _9305 = sha3(mem[(32 * idx) + _3595 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_3595]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _3595 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_7293]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7293 + 32] > !uint256(stor1[_9305]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7293 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7293 + 32] + uint256(stor1[_9305])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _9303 = mem[64]
                    mem[mem[64]] = 96
                    _9593 = mem[_7047]
                    mem[mem[64] + 96] = mem[_7047]
                    mem[mem[64] + 128 len ceil32(_9593)] = mem[_7047 + 32 len ceil32(_9593)]
                    if ceil32(_9593) <= _9593:
                        mem[mem[64] + 32] = ceil32(_9593) + 128
                        _10643 = mem[_7046]
                        mem[ceil32(_9593) + _9303 + 128] = mem[_7046]
                        idx = 0
                        s = _7046 + 32
                        t = ceil32(_9593) + _9303 + (32 * _10643) + 160
                        u = ceil32(_9593) + _9303 + 160
                        while idx < _10643:
                            mem[u] = t + -ceil32(_9593) + -_9303 - 160
                            _11064 = mem[s]
                            _11251 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _11251:
                                mem[v + t + 32] = mem[_11064 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_11251) > _11251:
                                mem[t + _11251 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_11251) + t + 32
                            u = u + 32
                            continue 
                        mem[_9303 + 64] = t - _9303
                        _11063 = mem[_7293]
                        mem[t] = mem[_7293]
                        mem[t + 32 len 32 * _11063] = mem[_7293 + 32 len 32 * _11063]
                        var56001 = _11063
                        var56002 = _7293 + (32 * _11063) + 32
                        var56005 = t + (32 * _11063) + 32
                        return memory
                          from mem[64]
                           len t + (32 * _11063) + -mem[64] + 32
                    mem[mem[64] + _9593 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_9593) + 128
                    _10727 = mem[_7046]
                    mem[ceil32(_9593) + _9303 + 128] = mem[_7046]
                    idx = 0
                    s = _7046 + 32
                    t = ceil32(_9593) + _9303 + (32 * _10727) + 160
                    u = ceil32(_9593) + _9303 + 160
                    while idx < _10727:
                        mem[u] = t + -ceil32(_9593) + -_9303 - 160
                        _11066 = mem[s]
                        _11252 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _11252:
                            mem[v + t + 32] = mem[_11066 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_11252) > _11252:
                            mem[t + _11252 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_11252) + t + 32
                        u = u + 32
                        continue 
                    mem[_9303 + 64] = t - _9303
                    _11065 = mem[_7293]
                    mem[t] = mem[_7293]
                    mem[t + 32 len 32 * _11065] = mem[_7293 + 32 len 32 * _11065]
                    var57001 = _11065
                    var57002 = _7293 + (32 * _11065) + 32
                    var57005 = t + (32 * _11065) + 32
                    return memory
                      from mem[64]
                       len t + (32 * _11065) + -mem[64] + 32
                mem[_7293 + 32 len 32 * _7048] = call.data[calldata.size len 32 * _7048]
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3595]:
                        revert with 0, 50
                    _9310 = sha3(mem[(32 * idx) + _3595 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3595]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _3595 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_7293]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7293 + 32] > !uint256(stor1[_9310]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7293 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7293 + 32] + uint256(stor1[_9310])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _9308 = mem[64]
                mem[mem[64]] = 96
                _9595 = mem[_7047]
                mem[mem[64] + 96] = mem[_7047]
                mem[mem[64] + 128 len ceil32(_9595)] = mem[_7047 + 32 len ceil32(_9595)]
                if ceil32(_9595) > _9595:
                    mem[mem[64] + _9595 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_9595) + 128
                    _10728 = mem[_7046]
                    mem[ceil32(_9595) + _9308 + 128] = mem[_7046]
                    idx = 0
                    s = _7046 + 32
                    t = ceil32(_9595) + _9308 + (32 * _10728) + 160
                    u = ceil32(_9595) + _9308 + 160
                    while idx < _10728:
                        mem[u] = t + -ceil32(_9595) + -_9308 - 160
                        _11070 = mem[s]
                        _11254 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _11254:
                            mem[v + t + 32] = mem[_11070 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_11254) > _11254:
                            mem[t + _11254 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_11254) + t + 32
                        u = u + 32
                        continue 
                    mem[_9308 + 64] = t - _9308
                    _11069 = mem[_7293]
                    mem[t] = mem[_7293]
                    mem[t + 32 len 32 * _11069] = mem[_7293 + 32 len 32 * _11069]
                    var58001 = _11069
                    return memory
                      from mem[64]
                       len t + (32 * _11069) + -mem[64] + 32
                mem[mem[64] + 32] = ceil32(_9595) + 128
                _10644 = mem[_7046]
                mem[ceil32(_9595) + _9308 + 128] = mem[_7046]
                idx = 0
                s = _7046 + 32
                t = ceil32(_9595) + _9308 + (32 * _10644) + 160
                u = ceil32(_9595) + _9308 + 160
                while idx < _10644:
                    mem[u] = t + -ceil32(_9595) + -_9308 - 160
                    _11068 = mem[s]
                    _11253 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _11253:
                        mem[v + t + 32] = mem[_11068 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_11253) > _11253:
                        mem[t + _11253 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_11253) + t + 32
                    u = u + 32
                    continue 
                mem[_9308 + 64] = t - _9308
                _11067 = mem[_7293]
                mem[t] = mem[_7293]
                mem[t + 32 len 32 * _11067] = mem[_7293 + 32 len 32 * _11067]
                var57001 = _11067
                var57002 = _7293 + (32 * _11067) + 32
                var57005 = t + (32 * _11067) + 32
                return memory
                  from mem[64]
                   len t + (32 * _11067) + -mem[64] + 32
            if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if not stor3[arg1].field_1 % 128:
                mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
                mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                idx = 0
                while idx < uint256(stor3[arg1].field_768):
                    mem[0] = sha3(arg1, 3) + 3
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        _1990 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                        mem[_1990] = uint255(stor3[arg1][idx + 3].field_1)
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor3[arg1][idx + 3].field_1):
                                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                    mem[_1990 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                    mem[_1990 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                    t = _1990 + 32
                                    u = sha3(mem[0])
                                    while _1990 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _1990
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor3[arg1][idx + 3].field_1 % 128:
                            mem[s] = _1990
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_1990 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _1990
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_1990 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _1990 + 32
                        u = sha3(mem[0])
                        while _1990 + stor3[arg1][u + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _1990
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    _2041 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                    mem[_2041] = stor3[arg1][idx + 3].field_1 % 128
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor3[arg1][idx + 3].field_1):
                            mem[s] = _2041
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_2041 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _2041
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_2041 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _2041 + 32
                        u = sha3(mem[0])
                        while _2041 + uint255(stor3[arg1][u + 3].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _2041
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor3[arg1][idx + 3].field_1 % 128:
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_2041 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_2041 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _2041 + 32
                            u = sha3(mem[0])
                            while _2041 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _2041
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
                mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                _1803 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                mem[_1803] = uint256(stor3[arg1].field_1792)
                if not uint256(stor3[arg1].field_1792):
                    mem[ceil32(return_data.size) + 352] = _1803
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(uint8(stor3[arg1].field_1536)) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _1883 = mem[ceil32(return_data.size) + 96]
                    _1884 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    if mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] > test266151307():
                        revert with 0, 65
                    _1955 = mem[64]
                    mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[64] = mem[64] + (32 * _1884) + 32
                    if not _1884:
                        idx = 0
                        while idx < uint256(stor3[arg1].field_1792):
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1803]:
                                revert with 0, 50
                            _3695 = sha3(mem[(32 * idx) + _1803 + 44 len 20], sha3(arg1, 4))
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1803]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + _1803 + 44 len 20]
                            mem[32] = sha3(arg1, 4)
                            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1955]:
                                revert with 0, 50
                            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1955 + 32] > !uint256(stor1[_3695]):
                                revert with 0, 17
                            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1955 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1955 + 32] + uint256(stor1[_3695])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _3693 = mem[64]
                        mem[mem[64]] = 96
                        _3992 = mem[_1883]
                        mem[mem[64] + 96] = mem[_1883]
                        mem[mem[64] + 128 len ceil32(_3992)] = mem[_1883 + 32 len ceil32(_3992)]
                        if ceil32(_3992) <= _3992:
                            mem[mem[64] + 32] = ceil32(_3992) + 128
                            _5323 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            mem[ceil32(_3992) + _3693 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            idx = 0
                            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                            t = ceil32(_3992) + _3693 + (32 * _5323) + 160
                            u = ceil32(_3992) + _3693 + 160
                            while idx < _5323:
                                mem[u] = t + -ceil32(_3992) + -_3693 - 160
                                _7063 = mem[s]
                                _7308 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7308:
                                    mem[v + t + 32] = mem[_7063 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7308) > _7308:
                                    mem[t + _7308 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_7308) + t + 32
                                u = u + 32
                                continue 
                            mem[_3693 + 64] = t - _3693
                            _7062 = mem[_1955]
                            mem[t] = mem[_1955]
                            mem[t + 32 len 32 * _7062] = mem[_1955 + 32 len 32 * _7062]
                            return memory
                              from mem[64]
                               len t + (32 * _7062) + -mem[64] + 32
                        mem[mem[64] + _3992 + 128] = 0
                        mem[mem[64] + 32] = ceil32(_3992) + 128
                        _5417 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[ceil32(_3992) + _3693 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                        t = ceil32(_3992) + _3693 + (32 * _5417) + 160
                        u = ceil32(_3992) + _3693 + 160
                        while idx < _5417:
                            mem[u] = t + -ceil32(_3992) + -_3693 - 160
                            _7065 = mem[s]
                            _7309 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7309:
                                mem[v + t + 32] = mem[_7065 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7309) > _7309:
                                mem[t + _7309 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7309) + t + 32
                            u = u + 32
                            continue 
                        mem[_3693 + 64] = t - _3693
                        _7064 = mem[_1955]
                        mem[t] = mem[_1955]
                        mem[t + 32 len 32 * _7064] = mem[_1955 + 32 len 32 * _7064]
                        var49001 = _7064
                        return memory
                          from mem[64]
                           len t + (32 * _7064) + -mem[64] + 32
                    mem[_1955 + 32 len 32 * _1884] = call.data[calldata.size len 32 * _1884]
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1803]:
                            revert with 0, 50
                        _3700 = sha3(mem[(32 * idx) + _1803 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1803]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1803 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1955]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1955 + 32] > !uint256(stor1[_3700]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1955 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1955 + 32] + uint256(stor1[_3700])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3698 = mem[64]
                    mem[mem[64]] = 96
                    _3994 = mem[_1883]
                    mem[mem[64] + 96] = mem[_1883]
                    mem[mem[64] + 128 len ceil32(_3994)] = mem[_1883 + 32 len ceil32(_3994)]
                    if ceil32(_3994) <= _3994:
                        mem[mem[64] + 32] = ceil32(_3994) + 128
                        _5324 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[ceil32(_3994) + _3698 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                        t = ceil32(_3994) + _3698 + (32 * _5324) + 160
                        u = ceil32(_3994) + _3698 + 160
                        while idx < _5324:
                            mem[u] = t + -ceil32(_3994) + -_3698 - 160
                            _7067 = mem[s]
                            _7310 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7310:
                                mem[v + t + 32] = mem[_7067 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7310) > _7310:
                                mem[t + _7310 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7310) + t + 32
                            u = u + 32
                            continue 
                        mem[_3698 + 64] = t - _3698
                        _7066 = mem[_1955]
                        mem[t] = mem[_1955]
                        mem[t + 32 len 32 * _7066] = mem[_1955 + 32 len 32 * _7066]
                        return memory
                          from mem[64]
                           len t + (32 * _7066) + -mem[64] + 32
                    mem[mem[64] + _3994 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_3994) + 128
                    _5418 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[ceil32(_3994) + _3698 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    t = ceil32(_3994) + _3698 + (32 * _5418) + 160
                    u = ceil32(_3994) + _3698 + 160
                    while idx < _5418:
                        mem[u] = t + -ceil32(_3994) + -_3698 - 160
                        _7069 = mem[s]
                        _7311 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7311:
                            mem[v + t + 32] = mem[_7069 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7311) > _7311:
                            mem[t + _7311 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7311) + t + 32
                        u = u + 32
                        continue 
                    mem[_3698 + 64] = t - _3698
                    _7068 = mem[_1955]
                    mem[t] = mem[_1955]
                    mem[t + 32 len 32 * _7068] = mem[_1955 + 32 len 32 * _7068]
                    var50001 = _7068
                    return memory
                      from mem[64]
                       len t + (32 * _7068) + -mem[64] + 32
                mem[0] = sha3(arg1, 3) + 7
                mem[_1803 + 32] = address(stor3[arg1][7].field_0)
                idx = _1803 + 32
                s = 0
                while _1803 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                    mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + 352] = _1803
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(mem[ceil32(return_data.size) + 288]) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _5092 = mem[ceil32(return_data.size) + 192]
                _5093 = mem[ceil32(return_data.size) + 96]
                _5094 = mem[mem[ceil32(return_data.size) + 192]]
                if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                    revert with 0, 65
                _5227 = mem[64]
                mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
                mem[64] = mem[64] + (32 * _5094) + 32
                if not _5094:
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1803]:
                            revert with 0, 50
                        _7314 = sha3(mem[(32 * idx) + _1803 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1803]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1803 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5227]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5227 + 32] > !uint256(stor1[_7314]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5227 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5227 + 32] + uint256(stor1[_7314])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _7312 = mem[64]
                    mem[mem[64]] = 96
                    _7730 = mem[_5093]
                    mem[mem[64] + 96] = mem[_5093]
                    mem[mem[64] + 128 len ceil32(_7730)] = mem[_5093 + 32 len ceil32(_7730)]
                    if ceil32(_7730) <= _7730:
                        mem[mem[64] + 32] = ceil32(_7730) + 128
                        _9485 = mem[_5092]
                        mem[ceil32(_7730) + _7312 + 128] = mem[_5092]
                        idx = 0
                        s = _5092 + 32
                        t = ceil32(_7730) + _7312 + (32 * _9485) + 160
                        u = ceil32(_7730) + _7312 + 160
                        while idx < _9485:
                            mem[u] = t + -ceil32(_7730) + -_7312 - 160
                            _10362 = mem[s]
                            _10555 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _10555:
                                mem[v + t + 32] = mem[_10362 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_10555) > _10555:
                                mem[t + _10555 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_10555) + t + 32
                            u = u + 32
                            continue 
                        mem[_7312 + 64] = t - _7312
                        _10361 = mem[_5227]
                        mem[t] = mem[_5227]
                        mem[t + 32 len 32 * _10361] = mem[_5227 + 32 len 32 * _10361]
                        return memory
                          from mem[64]
                           len t + (32 * _10361) + -mem[64] + 32
                    mem[mem[64] + _7730 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_7730) + 128
                    _9599 = mem[_5092]
                    mem[ceil32(_7730) + _7312 + 128] = mem[_5092]
                    idx = 0
                    s = _5092 + 32
                    t = ceil32(_7730) + _7312 + (32 * _9599) + 160
                    u = ceil32(_7730) + _7312 + 160
                    while idx < _9599:
                        mem[u] = t + -ceil32(_7730) + -_7312 - 160
                        _10364 = mem[s]
                        _10556 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10556:
                            mem[v + t + 32] = mem[_10364 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10556) > _10556:
                            mem[t + _10556 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10556) + t + 32
                        u = u + 32
                        continue 
                    mem[_7312 + 64] = t - _7312
                    _10363 = mem[_5227]
                    mem[t] = mem[_5227]
                    mem[t + 32 len 32 * _10363] = mem[_5227 + 32 len 32 * _10363]
                    var53001 = _10363
                    return memory
                      from mem[64]
                       len t + (32 * _10363) + -mem[64] + 32
                mem[_5227 + 32 len 32 * _5094] = call.data[calldata.size len 32 * _5094]
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1803]:
                        revert with 0, 50
                    _7319 = sha3(mem[(32 * idx) + _1803 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1803]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1803 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5227]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5227 + 32] > !uint256(stor1[_7319]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5227 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5227 + 32] + uint256(stor1[_7319])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _7317 = mem[64]
                mem[mem[64]] = 96
                _7732 = mem[_5093]
                mem[mem[64] + 96] = mem[_5093]
                mem[mem[64] + 128 len ceil32(_7732)] = mem[_5093 + 32 len ceil32(_7732)]
                if ceil32(_7732) <= _7732:
                    mem[mem[64] + 32] = ceil32(_7732) + 128
                    _9486 = mem[_5092]
                    mem[ceil32(_7732) + _7317 + 128] = mem[_5092]
                    idx = 0
                    s = _5092 + 32
                    t = ceil32(_7732) + _7317 + (32 * _9486) + 160
                    u = ceil32(_7732) + _7317 + 160
                    while idx < _9486:
                        mem[u] = t + -ceil32(_7732) + -_7317 - 160
                        _10366 = mem[s]
                        _10557 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10557:
                            mem[v + t + 32] = mem[_10366 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10557) > _10557:
                            mem[t + _10557 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10557) + t + 32
                        u = u + 32
                        continue 
                    mem[_7317 + 64] = t - _7317
                    _10365 = mem[_5227]
                    mem[t] = mem[_5227]
                    mem[t + 32 len 32 * _10365] = mem[_5227 + 32 len 32 * _10365]
                    var53001 = _10365
                    return memory
                      from mem[64]
                       len t + (32 * _10365) + -mem[64] + 32
                mem[mem[64] + _7732 + 128] = 0
                mem[mem[64] + 32] = ceil32(_7732) + 128
                _9600 = mem[_5092]
                mem[ceil32(_7732) + _7317 + 128] = mem[_5092]
                idx = 0
                s = _5092 + 32
                t = ceil32(_7732) + _7317 + (32 * _9600) + 160
                u = ceil32(_7732) + _7317 + 160
                while idx < _9600:
                    mem[u] = t + -ceil32(_7732) + -_7317 - 160
                    _10368 = mem[s]
                    _10558 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10558:
                        mem[v + t + 32] = mem[_10368 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10558) > _10558:
                        mem[t + _10558 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10558) + t + 32
                    u = u + 32
                    continue 
                mem[_7317 + 64] = t - _7317
                _10367 = mem[_5227]
                mem[t] = mem[_5227]
                mem[t + 32 len 32 * _10367] = mem[_5227 + 32 len 32 * _10367]
                var54001 = _10367
                return memory
                  from mem[64]
                   len t + (32 * _10367) + -mem[64] + 32
            if 31 >= stor3[arg1].field_1 % 128:
                mem[ceil32(return_data.size) + 448] = 256 * Mask(248, 0, stor3[arg1].field_8)
                mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
                mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                idx = 0
                while idx < uint256(stor3[arg1].field_768):
                    mem[0] = sha3(arg1, 3) + 3
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        _1994 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                        mem[_1994] = uint255(stor3[arg1][idx + 3].field_1)
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor3[arg1][idx + 3].field_1):
                                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                    mem[_1994 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                    mem[_1994 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                    t = _1994 + 32
                                    u = sha3(mem[0])
                                    while _1994 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _1994
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor3[arg1][idx + 3].field_1 % 128:
                            mem[s] = _1994
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_1994 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _1994
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_1994 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _1994 + 32
                        u = sha3(mem[0])
                        while _1994 + stor3[arg1][u + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _1994
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    _2048 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                    mem[_2048] = stor3[arg1][idx + 3].field_1 % 128
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor3[arg1][idx + 3].field_1):
                            mem[s] = _2048
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_2048 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _2048
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_2048 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _2048 + 32
                        u = sha3(mem[0])
                        while _2048 + uint255(stor3[arg1][u + 3].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _2048
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor3[arg1][idx + 3].field_1 % 128:
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_2048 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_2048 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _2048 + 32
                            u = sha3(mem[0])
                            while _2048 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _2048
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
                mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                _1805 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                mem[_1805] = uint256(stor3[arg1].field_1792)
                if not uint256(stor3[arg1].field_1792):
                    mem[ceil32(return_data.size) + 352] = _1805
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(uint8(stor3[arg1].field_1536)) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _1888 = mem[ceil32(return_data.size) + 96]
                    _1889 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    if mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] > test266151307():
                        revert with 0, 65
                    _1958 = mem[64]
                    mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[64] = mem[64] + (32 * _1889) + 32
                    if not _1889:
                        idx = 0
                        while idx < uint256(stor3[arg1].field_1792):
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1805]:
                                revert with 0, 50
                            _3707 = sha3(mem[(32 * idx) + _1805 + 44 len 20], sha3(arg1, 4))
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1805]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + _1805 + 44 len 20]
                            mem[32] = sha3(arg1, 4)
                            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1958]:
                                revert with 0, 50
                            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1958 + 32] > !uint256(stor1[_3707]):
                                revert with 0, 17
                            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1958 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1958 + 32] + uint256(stor1[_3707])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _3705 = mem[64]
                        mem[mem[64]] = 96
                        _3997 = mem[_1888]
                        mem[mem[64] + 96] = mem[_1888]
                        mem[mem[64] + 128 len ceil32(_3997)] = mem[_1888 + 32 len ceil32(_3997)]
                        if ceil32(_3997) <= _3997:
                            mem[mem[64] + 32] = ceil32(_3997) + 128
                            _5332 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            mem[ceil32(_3997) + _3705 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            idx = 0
                            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                            t = ceil32(_3997) + _3705 + (32 * _5332) + 160
                            u = ceil32(_3997) + _3705 + 160
                            while idx < _5332:
                                mem[u] = t + -ceil32(_3997) + -_3705 - 160
                                _7082 = mem[s]
                                _7323 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7323:
                                    mem[v + t + 32] = mem[_7082 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7323) > _7323:
                                    mem[t + _7323 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_7323) + t + 32
                                u = u + 32
                                continue 
                            mem[_3705 + 64] = t - _3705
                            _7081 = mem[_1958]
                            mem[t] = mem[_1958]
                            mem[t + 32 len 32 * _7081] = mem[_1958 + 32 len 32 * _7081]
                            return memory
                              from mem[64]
                               len t + (32 * _7081) + -mem[64] + 32
                        mem[mem[64] + _3997 + 128] = 0
                        mem[mem[64] + 32] = ceil32(_3997) + 128
                        _5424 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[ceil32(_3997) + _3705 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                        t = ceil32(_3997) + _3705 + (32 * _5424) + 160
                        u = ceil32(_3997) + _3705 + 160
                        while idx < _5424:
                            mem[u] = t + -ceil32(_3997) + -_3705 - 160
                            _7084 = mem[s]
                            _7324 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7324:
                                mem[v + t + 32] = mem[_7084 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7324) > _7324:
                                mem[t + _7324 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7324) + t + 32
                            u = u + 32
                            continue 
                        mem[_3705 + 64] = t - _3705
                        _7083 = mem[_1958]
                        mem[t] = mem[_1958]
                        mem[t + 32 len 32 * _7083] = mem[_1958 + 32 len 32 * _7083]
                        var51001 = _7083
                        return memory
                          from mem[64]
                           len t + (32 * _7083) + -mem[64] + 32
                    mem[_1958 + 32 len 32 * _1889] = call.data[calldata.size len 32 * _1889]
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1805]:
                            revert with 0, 50
                        _3712 = sha3(mem[(32 * idx) + _1805 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1805]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1805 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1958]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1958 + 32] > !uint256(stor1[_3712]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1958 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1958 + 32] + uint256(stor1[_3712])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3710 = mem[64]
                    mem[mem[64]] = 96
                    _3999 = mem[_1888]
                    mem[mem[64] + 96] = mem[_1888]
                    mem[mem[64] + 128 len ceil32(_3999)] = mem[_1888 + 32 len ceil32(_3999)]
                    if ceil32(_3999) <= _3999:
                        mem[mem[64] + 32] = ceil32(_3999) + 128
                        _5333 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[ceil32(_3999) + _3710 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                        t = ceil32(_3999) + _3710 + (32 * _5333) + 160
                        u = ceil32(_3999) + _3710 + 160
                        while idx < _5333:
                            mem[u] = t + -ceil32(_3999) + -_3710 - 160
                            _7086 = mem[s]
                            _7325 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7325:
                                mem[v + t + 32] = mem[_7086 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7325) > _7325:
                                mem[t + _7325 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7325) + t + 32
                            u = u + 32
                            continue 
                        mem[_3710 + 64] = t - _3710
                        _7085 = mem[_1958]
                        mem[t] = mem[_1958]
                        mem[t + 32 len 32 * _7085] = mem[_1958 + 32 len 32 * _7085]
                        return memory
                          from mem[64]
                           len t + (32 * _7085) + -mem[64] + 32
                    mem[mem[64] + _3999 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_3999) + 128
                    _5425 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[ceil32(_3999) + _3710 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    t = ceil32(_3999) + _3710 + (32 * _5425) + 160
                    u = ceil32(_3999) + _3710 + 160
                    while idx < _5425:
                        mem[u] = t + -ceil32(_3999) + -_3710 - 160
                        _7088 = mem[s]
                        _7326 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7326:
                            mem[v + t + 32] = mem[_7088 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7326) > _7326:
                            mem[t + _7326 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7326) + t + 32
                        u = u + 32
                        continue 
                    mem[_3710 + 64] = t - _3710
                    _7087 = mem[_1958]
                    mem[t] = mem[_1958]
                    mem[t + 32 len 32 * _7087] = mem[_1958 + 32 len 32 * _7087]
                    var52001 = _7087
                    return memory
                      from mem[64]
                       len t + (32 * _7087) + -mem[64] + 32
                mem[0] = sha3(arg1, 3) + 7
                mem[_1805 + 32] = address(stor3[arg1][7].field_0)
                idx = _1805 + 32
                s = 0
                while _1805 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                    mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + 352] = _1805
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(mem[ceil32(return_data.size) + 288]) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _5103 = mem[ceil32(return_data.size) + 192]
                _5104 = mem[ceil32(return_data.size) + 96]
                _5105 = mem[mem[ceil32(return_data.size) + 192]]
                if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                    revert with 0, 65
                _5238 = mem[64]
                mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
                mem[64] = mem[64] + (32 * _5105) + 32
                if not _5105:
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1805]:
                            revert with 0, 50
                        _7329 = sha3(mem[(32 * idx) + _1805 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1805]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1805 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5238]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5238 + 32] > !uint256(stor1[_7329]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5238 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5238 + 32] + uint256(stor1[_7329])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _7327 = mem[64]
                    mem[mem[64]] = 96
                    _7745 = mem[_5104]
                    mem[mem[64] + 96] = mem[_5104]
                    mem[mem[64] + 128 len ceil32(_7745)] = mem[_5104 + 32 len ceil32(_7745)]
                    if ceil32(_7745) <= _7745:
                        mem[mem[64] + 32] = ceil32(_7745) + 128
                        _9497 = mem[_5103]
                        mem[ceil32(_7745) + _7327 + 128] = mem[_5103]
                        idx = 0
                        s = _5103 + 32
                        t = ceil32(_7745) + _7327 + (32 * _9497) + 160
                        u = ceil32(_7745) + _7327 + 160
                        while idx < _9497:
                            mem[u] = t + -ceil32(_7745) + -_7327 - 160
                            _10380 = mem[s]
                            _10563 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _10563:
                                mem[v + t + 32] = mem[_10380 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_10563) > _10563:
                                mem[t + _10563 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_10563) + t + 32
                            u = u + 32
                            continue 
                        mem[_7327 + 64] = t - _7327
                        _10379 = mem[_5238]
                        mem[t] = mem[_5238]
                        mem[t + 32 len 32 * _10379] = mem[_5238 + 32 len 32 * _10379]
                        return memory
                          from mem[64]
                           len t + (32 * _10379) + -mem[64] + 32
                    mem[mem[64] + _7745 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_7745) + 128
                    _9613 = mem[_5103]
                    mem[ceil32(_7745) + _7327 + 128] = mem[_5103]
                    idx = 0
                    s = _5103 + 32
                    t = ceil32(_7745) + _7327 + (32 * _9613) + 160
                    u = ceil32(_7745) + _7327 + 160
                    while idx < _9613:
                        mem[u] = t + -ceil32(_7745) + -_7327 - 160
                        _10382 = mem[s]
                        _10564 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10564:
                            mem[v + t + 32] = mem[_10382 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10564) > _10564:
                            mem[t + _10564 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10564) + t + 32
                        u = u + 32
                        continue 
                    mem[_7327 + 64] = t - _7327
                    _10381 = mem[_5238]
                    mem[t] = mem[_5238]
                    mem[t + 32 len 32 * _10381] = mem[_5238 + 32 len 32 * _10381]
                    var55001 = _10381
                    return memory
                      from mem[64]
                       len t + (32 * _10381) + -mem[64] + 32
                mem[_5238 + 32 len 32 * _5105] = call.data[calldata.size len 32 * _5105]
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1805]:
                        revert with 0, 50
                    _7334 = sha3(mem[(32 * idx) + _1805 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1805]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1805 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5238]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5238 + 32] > !uint256(stor1[_7334]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5238 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5238 + 32] + uint256(stor1[_7334])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _7332 = mem[64]
                mem[mem[64]] = 96
                _7747 = mem[_5104]
                mem[mem[64] + 96] = mem[_5104]
                mem[mem[64] + 128 len ceil32(_7747)] = mem[_5104 + 32 len ceil32(_7747)]
                if ceil32(_7747) <= _7747:
                    mem[mem[64] + 32] = ceil32(_7747) + 128
                    _9498 = mem[_5103]
                    mem[ceil32(_7747) + _7332 + 128] = mem[_5103]
                    idx = 0
                    s = _5103 + 32
                    t = ceil32(_7747) + _7332 + (32 * _9498) + 160
                    u = ceil32(_7747) + _7332 + 160
                    while idx < _9498:
                        mem[u] = t + -ceil32(_7747) + -_7332 - 160
                        _10384 = mem[s]
                        _10565 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10565:
                            mem[v + t + 32] = mem[_10384 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10565) > _10565:
                            mem[t + _10565 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10565) + t + 32
                        u = u + 32
                        continue 
                    mem[_7332 + 64] = t - _7332
                    _10383 = mem[_5238]
                    mem[t] = mem[_5238]
                    mem[t + 32 len 32 * _10383] = mem[_5238 + 32 len 32 * _10383]
                    var55001 = _10383
                    return memory
                      from mem[64]
                       len t + (32 * _10383) + -mem[64] + 32
                mem[mem[64] + _7747 + 128] = 0
                mem[mem[64] + 32] = ceil32(_7747) + 128
                _9614 = mem[_5103]
                mem[ceil32(_7747) + _7332 + 128] = mem[_5103]
                idx = 0
                s = _5103 + 32
                t = ceil32(_7747) + _7332 + (32 * _9614) + 160
                u = ceil32(_7747) + _7332 + 160
                while idx < _9614:
                    mem[u] = t + -ceil32(_7747) + -_7332 - 160
                    _10386 = mem[s]
                    _10566 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10566:
                        mem[v + t + 32] = mem[_10386 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10566) > _10566:
                        mem[t + _10566 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10566) + t + 32
                    u = u + 32
                    continue 
                mem[_7332 + 64] = t - _7332
                _10385 = mem[_5238]
                mem[t] = mem[_5238]
                mem[t + 32 len 32 * _10385] = mem[_5238 + 32 len 32 * _10385]
                var56001 = _10385
                return memory
                  from mem[64]
                   len t + (32 * _10385) + -mem[64] + 32
            mem[0] = sha3(arg1, 3)
            mem[ceil32(return_data.size) + 448] = uint256(stor3[arg1].field_0)
            idx = ceil32(return_data.size) + 448
            s = 0
            while ceil32(return_data.size) + stor3[arg1].field_1 % 128 + 416 > idx:
                mem[idx + 32] = uint256(stor3[arg1][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _4058 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_4058] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_4058 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_4058 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _4058 + 32
                                u = sha3(mem[0])
                                while _4058 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _4058
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _4058
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_4058 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _4058
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_4058 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _4058 + 32
                    u = sha3(mem[0])
                    while _4058 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _4058
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _4080 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_4080] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _4080
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_4080 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _4080
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_4080 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _4080 + 32
                    u = sha3(mem[0])
                    while _4080 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _4080
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_4080 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_4080 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _4080 + 32
                        u = sha3(mem[0])
                        while _4080 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _4080
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _3605 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_3605] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _3605
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _3872 = mem[ceil32(return_data.size) + 96]
                _3873 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                if mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] > test266151307():
                    revert with 0, 65
                _3996 = mem[64]
                mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                mem[64] = mem[64] + (32 * _3873) + 32
                if not _3873:
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_3605]:
                            revert with 0, 50
                        _5230 = sha3(mem[(32 * idx) + _3605 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_3605]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _3605 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_3996]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _3996 + 32] > !uint256(stor1[_5230]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _3996 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _3996 + 32] + uint256(stor1[_5230])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _5228 = mem[64]
                    mem[mem[64]] = 96
                    _5420 = mem[_3872]
                    mem[mem[64] + 96] = mem[_3872]
                    mem[mem[64] + 128 len ceil32(_5420)] = mem[_3872 + 32 len ceil32(_5420)]
                    s = ceil32(_5420)
                    if ceil32(_5420) <= _5420:
                        mem[_5228 + 32] = ceil32(_5420) + 128
                        _7544 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[ceil32(_5420) + _5228 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                        t = ceil32(_5420) + _5228 + (32 * _7544) + 160
                        u = ceil32(_5420) + _5228 + 160
                        while idx < _7544:
                            mem[u] = t + -ceil32(_5420) + -_5228 - 160
                            _9082 = mem[s]
                            _9321 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _9321:
                                mem[v + t + 32] = mem[_9082 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_9321) > _9321:
                                mem[t + _9321 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_9321) + t + 32
                            u = u + 32
                            continue 
                        mem[_5228 + 64] = t - _5228
                        _9081 = mem[_3996]
                        mem[t] = mem[_3996]
                        mem[t + 32 len 32 * _9081] = mem[_3996 + 32 len 32 * _9081]
                        var53002 = _3996 + (32 * _9081) + 32
                        return memory
                          from mem[64]
                           len t + (32 * _9081) + -mem[64] + 32
                    mem[_5228 + _5420 + 128] = 0
                    mem[_5228 + 32] = ceil32(_5420) + 128
                    _7734 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[ceil32(_5420) + _5228 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    t = ceil32(_5420) + _5228 + (32 * _7734) + 160
                    u = ceil32(_5420) + _5228 + 160
                    while idx < _7734:
                        mem[u] = t + -ceil32(_5420) + -_5228 - 160
                        _9084 = mem[s]
                        _9322 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _9322:
                            mem[v + t + 32] = mem[_9084 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_9322) > _9322:
                            mem[t + _9322 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_9322) + t + 32
                        u = u + 32
                        continue 
                    mem[_5228 + 64] = t - _5228
                    _9083 = mem[_3996]
                    mem[t] = mem[_3996]
                    mem[t + 32 len 32 * _9083] = mem[_3996 + 32 len 32 * _9083]
                    var54001 = _9083
                    return memory
                      from mem[64]
                       len t + (32 * _9083) + -mem[64] + 32
                mem[_3996 + 32 len 32 * _3873] = call.data[calldata.size len 32 * _3873]
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3605]:
                        revert with 0, 50
                    _5235 = sha3(mem[(32 * idx) + _3605 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3605]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _3605 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_3996]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _3996 + 32] > !uint256(stor1[_5235]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _3996 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _3996 + 32] + uint256(stor1[_5235])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _5233 = mem[64]
                mem[mem[64]] = 96
                _5422 = mem[_3872]
                mem[mem[64] + 96] = mem[_3872]
                mem[mem[64] + 128 len ceil32(_5422)] = mem[_3872 + 32 len ceil32(_5422)]
                var46001 = ceil32(_5422)
                if ceil32(_5422) <= _5422:
                    mem[mem[64] + 32] = ceil32(_5422) + 128
                    _7545 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[ceil32(_5422) + _5233 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    t = ceil32(_5422) + _5233 + (32 * _7545) + 160
                    u = ceil32(_5422) + _5233 + 160
                    while idx < _7545:
                        mem[u] = t + -ceil32(_5422) + -_5233 - 160
                        _9086 = mem[s]
                        _9323 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _9323:
                            mem[v + t + 32] = mem[_9086 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_9323) > _9323:
                            mem[t + _9323 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_9323) + t + 32
                        u = u + 32
                        continue 
                    mem[_5233 + 64] = t - _5233
                    _9085 = mem[_3996]
                    mem[t] = mem[_3996]
                    mem[t + 32 len 32 * _9085] = mem[_3996 + 32 len 32 * _9085]
                    var54001 = _9085
                    return memory
                      from mem[64]
                       len t + (32 * _9085) + -mem[64] + 32
                mem[mem[64] + _5422 + 128] = 0
                mem[mem[64] + 32] = ceil32(_5422) + 128
                _7735 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                mem[ceil32(_5422) + _5233 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                t = ceil32(_5422) + _5233 + (32 * _7735) + 160
                u = ceil32(_5422) + _5233 + 160
                while idx < _7735:
                    mem[u] = t + -ceil32(_5422) + -_5233 - 160
                    _9088 = mem[s]
                    _9324 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _9324:
                        mem[v + t + 32] = mem[_9088 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_9324) > _9324:
                        mem[t + _9324 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_9324) + t + 32
                    u = u + 32
                    continue 
                mem[_5233 + 64] = t - _5233
                _9087 = mem[_3996]
                mem[t] = mem[_3996]
                mem[t + 32 len 32 * _9087] = mem[_3996 + 32 len 32 * _9087]
                var55001 = _9087
                return memory
                  from mem[64]
                   len t + (32 * _9087) + -mem[64] + 32
            mem[0] = sha3(arg1, 3) + 7
            mem[_3605 + 32] = address(stor3[arg1][7].field_0)
            idx = _3605 + 32
            s = 0
            while _3605 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _3605
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _7077 = mem[ceil32(return_data.size) + 192]
            _7078 = mem[ceil32(return_data.size) + 96]
            _7079 = mem[mem[ceil32(return_data.size) + 192]]
            if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                revert with 0, 65
            _7322 = mem[64]
            mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
            mem[64] = mem[64] + (32 * _7079) + 32
            if not _7079:
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3605]:
                        revert with 0, 50
                    _9327 = sha3(mem[(32 * idx) + _3605 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3605]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _3605 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_7322]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7322 + 32] > !uint256(stor1[_9327]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7322 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7322 + 32] + uint256(stor1[_9327])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _9325 = mem[64]
                mem[mem[64]] = 96
                _9609 = mem[_7078]
                mem[mem[64] + 96] = mem[_7078]
                mem[mem[64] + 128 len ceil32(_9609)] = mem[_7078 + 32 len ceil32(_9609)]
                if ceil32(_9609) <= _9609:
                    mem[mem[64] + 32] = ceil32(_9609) + 128
                    _10653 = mem[_7077]
                    mem[ceil32(_9609) + _9325 + 128] = mem[_7077]
                    idx = 0
                    s = _7077 + 32
                    t = ceil32(_9609) + _9325 + (32 * _10653) + 160
                    u = ceil32(_9609) + _9325 + 160
                    while idx < _10653:
                        mem[u] = t + -ceil32(_9609) + -_9325 - 160
                        _11088 = mem[s]
                        _11263 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _11263:
                            mem[v + t + 32] = mem[_11088 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_11263) > _11263:
                            mem[t + _11263 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_11263) + t + 32
                        u = u + 32
                        continue 
                    mem[_9325 + 64] = t - _9325
                    _11087 = mem[_7322]
                    mem[t] = mem[_7322]
                    mem[t + 32 len 32 * _11087] = mem[_7322 + 32 len 32 * _11087]
                    var57001 = _11087
                    var57002 = _7322 + (32 * _11087) + 32
                    var57005 = t + (32 * _11087) + 32
                    return memory
                      from mem[64]
                       len t + (32 * _11087) + -mem[64] + 32
                mem[mem[64] + _9609 + 128] = 0
                mem[mem[64] + 32] = ceil32(_9609) + 128
                _10745 = mem[_7077]
                mem[ceil32(_9609) + _9325 + 128] = mem[_7077]
                idx = 0
                s = _7077 + 32
                t = ceil32(_9609) + _9325 + (32 * _10745) + 160
                u = ceil32(_9609) + _9325 + 160
                while idx < _10745:
                    mem[u] = t + -ceil32(_9609) + -_9325 - 160
                    _11090 = mem[s]
                    _11264 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _11264:
                        mem[v + t + 32] = mem[_11090 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_11264) > _11264:
                        mem[t + _11264 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_11264) + t + 32
                    u = u + 32
                    continue 
                mem[_9325 + 64] = t - _9325
                _11089 = mem[_7322]
                mem[t] = mem[_7322]
                mem[t + 32 len 32 * _11089] = mem[_7322 + 32 len 32 * _11089]
                var58001 = _11089
                var58002 = _7322 + (32 * _11089) + 32
                var58005 = t + (32 * _11089) + 32
                return memory
                  from mem[64]
                   len t + (32 * _11089) + -mem[64] + 32
            mem[_7322 + 32 len 32 * _7079] = call.data[calldata.size len 32 * _7079]
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3605]:
                    revert with 0, 50
                _9332 = sha3(mem[(32 * idx) + _3605 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3605]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _3605 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_7322]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7322 + 32] > !uint256(stor1[_9332]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7322 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7322 + 32] + uint256(stor1[_9332])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _9330 = mem[64]
            mem[mem[64]] = 96
            _9611 = mem[_7078]
            mem[mem[64] + 96] = mem[_7078]
            mem[mem[64] + 128 len ceil32(_9611)] = mem[_7078 + 32 len ceil32(_9611)]
            if ceil32(_9611) > _9611:
                mem[mem[64] + _9611 + 128] = 0
                mem[mem[64] + 32] = ceil32(_9611) + 128
                _10746 = mem[_7077]
                mem[ceil32(_9611) + _9330 + 128] = mem[_7077]
                idx = 0
                s = _7077 + 32
                t = ceil32(_9611) + _9330 + (32 * _10746) + 160
                u = ceil32(_9611) + _9330 + 160
                while idx < _10746:
                    mem[u] = t + -ceil32(_9611) + -_9330 - 160
                    _11094 = mem[s]
                    _11266 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _11266:
                        mem[v + t + 32] = mem[_11094 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_11266) > _11266:
                        mem[t + _11266 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_11266) + t + 32
                    u = u + 32
                    continue 
                mem[_9330 + 64] = t - _9330
                _11093 = mem[_7322]
                mem[t] = mem[_7322]
                mem[t + 32 len 32 * _11093] = mem[_7322 + 32 len 32 * _11093]
                var59001 = _11093
                return memory
                  from mem[64]
                   len t + (32 * _11093) + -mem[64] + 32
            mem[mem[64] + 32] = ceil32(_9611) + 128
            _10654 = mem[_7077]
            mem[ceil32(_9611) + _9330 + 128] = mem[_7077]
            idx = 0
            s = _7077 + 32
            t = ceil32(_9611) + _9330 + (32 * _10654) + 160
            u = ceil32(_9611) + _9330 + 160
            while idx < _10654:
                mem[u] = t + -ceil32(_9611) + -_9330 - 160
                _11092 = mem[s]
                _11265 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _11265:
                    mem[v + t + 32] = mem[_11092 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_11265) > _11265:
                    mem[t + _11265 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_11265) + t + 32
                u = u + 32
                continue 
            mem[_9330 + 64] = t - _9330
            _11091 = mem[_7322]
            mem[t] = mem[_7322]
            mem[t + 32 len 32 * _11091] = mem[_7322 + 32 len 32 * _11091]
            var58001 = _11091
            var58002 = _7322 + (32 * _11091) + 32
            var58005 = t + (32 * _11091) + 32
            return memory
              from mem[64]
               len t + (32 * _11091) + -mem[64] + 32
        if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
            revert with 0, 34
        mem[ceil32(return_data.size) + 416] = stor3[arg1].field_1 % 128
        if bool(stor3[arg1].field_0):
            if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
                revert with 0, 34
            if not uint255(stor3[arg1].field_1):
                mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
                mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                idx = 0
                while idx < uint256(stor3[arg1].field_768):
                    mem[0] = sha3(arg1, 3) + 3
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        _1996 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                        mem[_1996] = uint255(stor3[arg1][idx + 3].field_1)
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor3[arg1][idx + 3].field_1):
                                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                    mem[_1996 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                    mem[_1996 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                    t = _1996 + 32
                                    u = sha3(mem[0])
                                    while _1996 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _1996
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor3[arg1][idx + 3].field_1 % 128:
                            mem[s] = _1996
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_1996 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _1996
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_1996 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _1996 + 32
                        u = sha3(mem[0])
                        while _1996 + stor3[arg1][u + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _1996
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    _2050 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                    mem[_2050] = stor3[arg1][idx + 3].field_1 % 128
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor3[arg1][idx + 3].field_1):
                            mem[s] = _2050
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_2050 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _2050
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_2050 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _2050 + 32
                        u = sha3(mem[0])
                        while _2050 + uint255(stor3[arg1][u + 3].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _2050
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor3[arg1][idx + 3].field_1 % 128:
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_2050 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_2050 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _2050 + 32
                            u = sha3(mem[0])
                            while _2050 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _2050
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
                mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                _1807 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                mem[_1807] = uint256(stor3[arg1].field_1792)
                if not uint256(stor3[arg1].field_1792):
                    mem[ceil32(return_data.size) + 352] = _1807
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(uint8(stor3[arg1].field_1536)) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _1893 = mem[ceil32(return_data.size) + 96]
                    _1894 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    if mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] > test266151307():
                        revert with 0, 65
                    _1959 = mem[64]
                    mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[64] = mem[64] + (32 * _1894) + 32
                    if not _1894:
                        idx = 0
                        while idx < uint256(stor3[arg1].field_1792):
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1807]:
                                revert with 0, 50
                            _3717 = sha3(mem[(32 * idx) + _1807 + 44 len 20], sha3(arg1, 4))
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1807]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + _1807 + 44 len 20]
                            mem[32] = sha3(arg1, 4)
                            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1959]:
                                revert with 0, 50
                            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1959 + 32] > !uint256(stor1[_3717]):
                                revert with 0, 17
                            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1959 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1959 + 32] + uint256(stor1[_3717])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _3715 = mem[64]
                        mem[mem[64]] = 96
                        _4001 = mem[_1893]
                        mem[mem[64] + 96] = mem[_1893]
                        mem[mem[64] + 128 len ceil32(_4001)] = mem[_1893 + 32 len ceil32(_4001)]
                        if ceil32(_4001) <= _4001:
                            mem[mem[64] + 32] = ceil32(_4001) + 128
                            _5335 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                            mem[ceil32(_4001) + _3715 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                            idx = 0
                            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                            t = ceil32(_4001) + _3715 + (32 * _5335) + 160
                            u = ceil32(_4001) + _3715 + 160
                            while idx < _5335:
                                mem[u] = t + -ceil32(_4001) + -_3715 - 160
                                _7094 = mem[s]
                                _7337 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7337:
                                    mem[v + t + 32] = mem[_7094 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7337) > _7337:
                                    mem[t + _7337 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_7337) + t + 32
                                u = u + 32
                                continue 
                            mem[_3715 + 64] = t - _3715
                            _7093 = mem[_1959]
                            mem[t] = mem[_1959]
                            mem[t + 32 len 32 * _7093] = mem[_1959 + 32 len 32 * _7093]
                            return memory
                              from mem[64]
                               len t + (32 * _7093) + -mem[64] + 32
                        mem[mem[64] + _4001 + 128] = 0
                        mem[mem[64] + 32] = ceil32(_4001) + 128
                        _5427 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        mem[ceil32(_4001) + _3715 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                        t = ceil32(_4001) + _3715 + (32 * _5427) + 160
                        u = ceil32(_4001) + _3715 + 160
                        while idx < _5427:
                            mem[u] = t + -ceil32(_4001) + -_3715 - 160
                            _7096 = mem[s]
                            _7338 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7338:
                                mem[v + t + 32] = mem[_7096 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7338) > _7338:
                                mem[t + _7338 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7338) + t + 32
                            u = u + 32
                            continue 
                        mem[_3715 + 64] = t - _3715
                        _7095 = mem[_1959]
                        mem[t] = mem[_1959]
                        mem[t + 32 len 32 * _7095] = mem[_1959 + 32 len 32 * _7095]
                        var49001 = _7095
                        return memory
                          from mem[64]
                           len t + (32 * _7095) + -mem[64] + 32
                    mem[_1959 + 32 len 32 * _1894] = call.data[calldata.size len 32 * _1894]
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1807]:
                            revert with 0, 50
                        _3722 = sha3(mem[(32 * idx) + _1807 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1807]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1807 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1959]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1959 + 32] > !uint256(stor1[_3722]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1959 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1959 + 32] + uint256(stor1[_3722])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3720 = mem[64]
                    mem[mem[64]] = 96
                    _4003 = mem[_1893]
                    mem[mem[64] + 96] = mem[_1893]
                    mem[mem[64] + 128 len ceil32(_4003)] = mem[_1893 + 32 len ceil32(_4003)]
                    if ceil32(_4003) <= _4003:
                        mem[_3720 + 32] = ceil32(_4003) + 128
                        _5336 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        mem[ceil32(_4003) + _3720 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                        t = ceil32(_4003) + _3720 + (32 * _5336) + 160
                        u = ceil32(_4003) + _3720 + 160
                        while idx < _5336:
                            mem[u] = t + -ceil32(_4003) + -_3720 - 160
                            _7098 = mem[s]
                            _7339 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7339:
                                mem[v + t + 32] = mem[_7098 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7339) > _7339:
                                mem[t + _7339 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7339) + t + 32
                            u = u + 32
                            continue 
                        mem[_3720 + 64] = t - _3720
                        _7097 = mem[_1959]
                        mem[t] = mem[_1959]
                        mem[t + 32 len 32 * _7097] = mem[_1959 + 32 len 32 * _7097]
                        return memory
                          from mem[64]
                           len t + (32 * _7097) + -mem[64] + 32
                    mem[_3720 + _4003 + 128] = 0
                    mem[_3720 + 32] = ceil32(_4003) + 128
                    _5428 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[ceil32(_4003) + _3720 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                    t = ceil32(_4003) + _3720 + (32 * _5428) + 160
                    u = ceil32(_4003) + _3720 + 160
                    while idx < _5428:
                        mem[u] = t + -ceil32(_4003) + -_3720 - 160
                        _7100 = mem[s]
                        _7340 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7340:
                            mem[v + t + 32] = mem[_7100 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7340) > _7340:
                            mem[t + _7340 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7340) + t + 32
                        u = u + 32
                        continue 
                    mem[_3720 + 64] = t - _3720
                    _7099 = mem[_1959]
                    mem[t] = mem[_1959]
                    mem[t + 32 len 32 * _7099] = mem[_1959 + 32 len 32 * _7099]
                    var50001 = _7099
                    return memory
                      from mem[64]
                       len t + (32 * _7099) + -mem[64] + 32
                mem[0] = sha3(arg1, 3) + 7
                mem[_1807 + 32] = address(stor3[arg1][7].field_0)
                idx = _1807 + 32
                s = 0
                while _1807 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                    mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + 352] = _1807
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(mem[ceil32(return_data.size) + 288]) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _5110 = mem[ceil32(return_data.size) + 192]
                _5111 = mem[ceil32(return_data.size) + 96]
                _5112 = mem[mem[ceil32(return_data.size) + 192]]
                if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                    revert with 0, 65
                _5239 = mem[64]
                mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
                mem[64] = mem[64] + (32 * _5112) + 32
                if not _5112:
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1807]:
                            revert with 0, 50
                        _7343 = sha3(mem[(32 * idx) + _1807 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1807]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1807 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5239]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5239 + 32] > !uint256(stor1[_7343]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5239 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5239 + 32] + uint256(stor1[_7343])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _7341 = mem[64]
                    mem[mem[64]] = 96
                    _7757 = mem[_5111]
                    mem[mem[64] + 96] = mem[_5111]
                    mem[mem[64] + 128 len ceil32(_7757)] = mem[_5111 + 32 len ceil32(_7757)]
                    if ceil32(_7757) <= _7757:
                        mem[mem[64] + 32] = ceil32(_7757) + 128
                        _9499 = mem[_5110]
                        mem[ceil32(_7757) + _7341 + 128] = mem[_5110]
                        idx = 0
                        s = _5110 + 32
                        t = ceil32(_7757) + _7341 + (32 * _9499) + 160
                        u = ceil32(_7757) + _7341 + 160
                        while idx < _9499:
                            mem[u] = t + -ceil32(_7757) + -_7341 - 160
                            _10388 = mem[s]
                            _10567 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _10567:
                                mem[v + t + 32] = mem[_10388 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_10567) > _10567:
                                mem[t + _10567 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_10567) + t + 32
                            u = u + 32
                            continue 
                        mem[_7341 + 64] = t - _7341
                        _10387 = mem[_5239]
                        mem[t] = mem[_5239]
                        mem[t + 32 len 32 * _10387] = mem[_5239 + 32 len 32 * _10387]
                        return memory
                          from mem[64]
                           len t + (32 * _10387) + -mem[64] + 32
                    mem[mem[64] + _7757 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_7757) + 128
                    _9615 = mem[_5110]
                    mem[ceil32(_7757) + _7341 + 128] = mem[_5110]
                    idx = 0
                    s = _5110 + 32
                    t = ceil32(_7757) + _7341 + (32 * _9615) + 160
                    u = ceil32(_7757) + _7341 + 160
                    while idx < _9615:
                        mem[u] = t + -ceil32(_7757) + -_7341 - 160
                        _10390 = mem[s]
                        _10568 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10568:
                            mem[v + t + 32] = mem[_10390 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10568) > _10568:
                            mem[t + _10568 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10568) + t + 32
                        u = u + 32
                        continue 
                    mem[_7341 + 64] = t - _7341
                    _10389 = mem[_5239]
                    mem[t] = mem[_5239]
                    mem[t + 32 len 32 * _10389] = mem[_5239 + 32 len 32 * _10389]
                    var53001 = _10389
                    return memory
                      from mem[64]
                       len t + (32 * _10389) + -mem[64] + 32
                mem[_5239 + 32 len 32 * _5112] = call.data[calldata.size len 32 * _5112]
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1807]:
                        revert with 0, 50
                    _7348 = sha3(mem[(32 * idx) + _1807 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1807]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1807 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5239]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5239 + 32] > !uint256(stor1[_7348]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5239 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5239 + 32] + uint256(stor1[_7348])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _7346 = mem[64]
                mem[mem[64]] = 96
                _7759 = mem[_5111]
                mem[mem[64] + 96] = mem[_5111]
                mem[mem[64] + 128 len ceil32(_7759)] = mem[_5111 + 32 len ceil32(_7759)]
                if ceil32(_7759) <= _7759:
                    mem[_7346 + 32] = ceil32(_7759) + 128
                    _9500 = mem[_5110]
                    mem[ceil32(_7759) + _7346 + 128] = mem[_5110]
                    idx = 0
                    s = _5110 + 32
                    t = ceil32(_7759) + _7346 + (32 * _9500) + 160
                    u = ceil32(_7759) + _7346 + 160
                    while idx < _9500:
                        mem[u] = t + -ceil32(_7759) + -_7346 - 160
                        _10392 = mem[s]
                        _10569 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10569:
                            mem[v + t + 32] = mem[_10392 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10569) > _10569:
                            mem[t + _10569 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10569) + t + 32
                        u = u + 32
                        continue 
                    mem[_7346 + 64] = t - _7346
                    _10391 = mem[_5239]
                    mem[t] = mem[_5239]
                    mem[t + 32 len 32 * _10391] = mem[_5239 + 32 len 32 * _10391]
                    var53001 = _10391
                    return memory
                      from mem[64]
                       len t + (32 * _10391) + -mem[64] + 32
                mem[_7346 + _7759 + 128] = 0
                mem[_7346 + 32] = ceil32(_7759) + 128
                _9616 = mem[_5110]
                mem[ceil32(_7759) + _7346 + 128] = mem[_5110]
                idx = 0
                s = _5110 + 32
                t = ceil32(_7759) + _7346 + (32 * _9616) + 160
                u = ceil32(_7759) + _7346 + 160
                while idx < _9616:
                    mem[u] = t + -ceil32(_7759) + -_7346 - 160
                    _10394 = mem[s]
                    _10570 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10570:
                        mem[v + t + 32] = mem[_10394 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10570) > _10570:
                        mem[t + _10570 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10570) + t + 32
                    u = u + 32
                    continue 
                mem[_7346 + 64] = t - _7346
                _10393 = mem[_5239]
                mem[t] = mem[_5239]
                mem[t + 32 len 32 * _10393] = mem[_5239 + 32 len 32 * _10393]
                var54001 = _10393
                return memory
                  from mem[64]
                   len t + (32 * _10393) + -mem[64] + 32
            if 31 >= uint255(stor3[arg1].field_1):
                mem[ceil32(return_data.size) + 448] = 256 * Mask(248, 0, stor3[arg1].field_8)
                mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
                mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                idx = 0
                while idx < uint256(stor3[arg1].field_768):
                    mem[0] = sha3(arg1, 3) + 3
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        _2000 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                        mem[_2000] = uint255(stor3[arg1][idx + 3].field_1)
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor3[arg1][idx + 3].field_1):
                                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                    mem[_2000 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                    mem[_2000 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                    t = _2000 + 32
                                    u = sha3(mem[0])
                                    while _2000 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _2000
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor3[arg1][idx + 3].field_1 % 128:
                            mem[s] = _2000
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_2000 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _2000
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_2000 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _2000 + 32
                        u = sha3(mem[0])
                        while _2000 + stor3[arg1][u + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _2000
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    _2057 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                    mem[_2057] = stor3[arg1][idx + 3].field_1 % 128
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor3[arg1][idx + 3].field_1):
                            mem[s] = _2057
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_2057 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _2057
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_2057 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _2057 + 32
                        u = sha3(mem[0])
                        while _2057 + uint255(stor3[arg1][u + 3].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _2057
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor3[arg1][idx + 3].field_1 % 128:
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_2057 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_2057 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _2057 + 32
                            u = sha3(mem[0])
                            while _2057 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _2057
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
                mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                _1809 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                mem[_1809] = uint256(stor3[arg1].field_1792)
                if not uint256(stor3[arg1].field_1792):
                    mem[ceil32(return_data.size) + 352] = _1809
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(uint8(stor3[arg1].field_1536)) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _1898 = mem[ceil32(return_data.size) + 96]
                    _1899 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    if mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] > test266151307():
                        revert with 0, 65
                    _1962 = mem[64]
                    mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[64] = mem[64] + (32 * _1899) + 32
                    if not _1899:
                        idx = 0
                        while idx < uint256(stor3[arg1].field_1792):
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1809]:
                                revert with 0, 50
                            _3729 = sha3(mem[(32 * idx) + _1809 + 44 len 20], sha3(arg1, 4))
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1809]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + _1809 + 44 len 20]
                            mem[32] = sha3(arg1, 4)
                            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1962]:
                                revert with 0, 50
                            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1962 + 32] > !uint256(stor1[_3729]):
                                revert with 0, 17
                            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1962 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1962 + 32] + uint256(stor1[_3729])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _3727 = mem[64]
                        mem[mem[64]] = 96
                        _4006 = mem[_1898]
                        mem[mem[64] + 96] = mem[_1898]
                        mem[mem[64] + 128 len ceil32(_4006)] = mem[_1898 + 32 len ceil32(_4006)]
                        if ceil32(_4006) <= _4006:
                            mem[mem[64] + 32] = ceil32(_4006) + 128
                            _5344 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                            mem[ceil32(_4006) + _3727 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                            idx = 0
                            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                            t = ceil32(_4006) + _3727 + (32 * _5344) + 160
                            u = ceil32(_4006) + _3727 + 160
                            while idx < _5344:
                                mem[u] = t + -ceil32(_4006) + -_3727 - 160
                                _7113 = mem[s]
                                _7352 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7352:
                                    mem[v + t + 32] = mem[_7113 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7352) > _7352:
                                    mem[t + _7352 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_7352) + t + 32
                                u = u + 32
                                continue 
                            mem[_3727 + 64] = t - _3727
                            _7112 = mem[_1962]
                            mem[t] = mem[_1962]
                            mem[t + 32 len 32 * _7112] = mem[_1962 + 32 len 32 * _7112]
                            return memory
                              from mem[64]
                               len t + (32 * _7112) + -mem[64] + 32
                        mem[mem[64] + _4006 + 128] = 0
                        mem[mem[64] + 32] = ceil32(_4006) + 128
                        _5434 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        mem[ceil32(_4006) + _3727 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                        t = ceil32(_4006) + _3727 + (32 * _5434) + 160
                        u = ceil32(_4006) + _3727 + 160
                        while idx < _5434:
                            mem[u] = t + -ceil32(_4006) + -_3727 - 160
                            _7115 = mem[s]
                            _7353 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7353:
                                mem[v + t + 32] = mem[_7115 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7353) > _7353:
                                mem[t + _7353 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7353) + t + 32
                            u = u + 32
                            continue 
                        mem[_3727 + 64] = t - _3727
                        _7114 = mem[_1962]
                        mem[t] = mem[_1962]
                        mem[t + 32 len 32 * _7114] = mem[_1962 + 32 len 32 * _7114]
                        var51001 = _7114
                        return memory
                          from mem[64]
                           len t + (32 * _7114) + -mem[64] + 32
                    mem[_1962 + 32 len 32 * _1899] = call.data[calldata.size len 32 * _1899]
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1809]:
                            revert with 0, 50
                        _3734 = sha3(mem[(32 * idx) + _1809 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1809]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1809 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1962]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1962 + 32] > !uint256(stor1[_3734]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1962 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1962 + 32] + uint256(stor1[_3734])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3732 = mem[64]
                    mem[mem[64]] = 96
                    _4008 = mem[_1898]
                    mem[mem[64] + 96] = mem[_1898]
                    mem[mem[64] + 128 len ceil32(_4008)] = mem[_1898 + 32 len ceil32(_4008)]
                    if ceil32(_4008) <= _4008:
                        mem[mem[64] + 32] = ceil32(_4008) + 128
                        _5345 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        mem[ceil32(_4008) + _3732 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                        t = ceil32(_4008) + _3732 + (32 * _5345) + 160
                        u = ceil32(_4008) + _3732 + 160
                        while idx < _5345:
                            mem[u] = t + -ceil32(_4008) + -_3732 - 160
                            _7117 = mem[s]
                            _7354 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7354:
                                mem[v + t + 32] = mem[_7117 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7354) > _7354:
                                mem[t + _7354 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7354) + t + 32
                            u = u + 32
                            continue 
                        mem[_3732 + 64] = t - _3732
                        _7116 = mem[_1962]
                        mem[t] = mem[_1962]
                        mem[t + 32 len 32 * _7116] = mem[_1962 + 32 len 32 * _7116]
                        return memory
                          from mem[64]
                           len t + (32 * _7116) + -mem[64] + 32
                    mem[mem[64] + _4008 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_4008) + 128
                    _5435 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[ceil32(_4008) + _3732 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                    t = ceil32(_4008) + _3732 + (32 * _5435) + 160
                    u = ceil32(_4008) + _3732 + 160
                    while idx < _5435:
                        mem[u] = t + -ceil32(_4008) + -_3732 - 160
                        _7119 = mem[s]
                        _7355 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7355:
                            mem[v + t + 32] = mem[_7119 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7355) > _7355:
                            mem[t + _7355 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7355) + t + 32
                        u = u + 32
                        continue 
                    mem[_3732 + 64] = t - _3732
                    _7118 = mem[_1962]
                    mem[t] = mem[_1962]
                    mem[t + 32 len 32 * _7118] = mem[_1962 + 32 len 32 * _7118]
                    var52001 = _7118
                    return memory
                      from mem[64]
                       len t + (32 * _7118) + -mem[64] + 32
                mem[0] = sha3(arg1, 3) + 7
                mem[_1809 + 32] = address(stor3[arg1][7].field_0)
                idx = _1809 + 32
                s = 0
                while _1809 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                    mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + 352] = _1809
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(mem[ceil32(return_data.size) + 288]) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _5121 = mem[ceil32(return_data.size) + 192]
                _5122 = mem[ceil32(return_data.size) + 96]
                _5123 = mem[mem[ceil32(return_data.size) + 192]]
                if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                    revert with 0, 65
                _5250 = mem[64]
                mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
                mem[64] = mem[64] + (32 * _5123) + 32
                if not _5123:
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1809]:
                            revert with 0, 50
                        _7358 = sha3(mem[(32 * idx) + _1809 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1809]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1809 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5250]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5250 + 32] > !uint256(stor1[_7358]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5250 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5250 + 32] + uint256(stor1[_7358])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _7356 = mem[64]
                    mem[mem[64]] = 96
                    _7772 = mem[_5122]
                    mem[mem[64] + 96] = mem[_5122]
                    mem[mem[64] + 128 len ceil32(_7772)] = mem[_5122 + 32 len ceil32(_7772)]
                    if ceil32(_7772) <= _7772:
                        mem[mem[64] + 32] = ceil32(_7772) + 128
                        _9511 = mem[_5121]
                        mem[ceil32(_7772) + _7356 + 128] = mem[_5121]
                        idx = 0
                        s = _5121 + 32
                        t = ceil32(_7772) + _7356 + (32 * _9511) + 160
                        u = ceil32(_7772) + _7356 + 160
                        while idx < _9511:
                            mem[u] = t + -ceil32(_7772) + -_7356 - 160
                            _10406 = mem[s]
                            _10575 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _10575:
                                mem[v + t + 32] = mem[_10406 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_10575) > _10575:
                                mem[t + _10575 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_10575) + t + 32
                            u = u + 32
                            continue 
                        mem[_7356 + 64] = t - _7356
                        _10405 = mem[_5250]
                        mem[t] = mem[_5250]
                        mem[t + 32 len 32 * _10405] = mem[_5250 + 32 len 32 * _10405]
                        return memory
                          from mem[64]
                           len t + (32 * _10405) + -mem[64] + 32
                    mem[mem[64] + _7772 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_7772) + 128
                    _9629 = mem[_5121]
                    mem[ceil32(_7772) + _7356 + 128] = mem[_5121]
                    idx = 0
                    s = _5121 + 32
                    t = ceil32(_7772) + _7356 + (32 * _9629) + 160
                    u = ceil32(_7772) + _7356 + 160
                    while idx < _9629:
                        mem[u] = t + -ceil32(_7772) + -_7356 - 160
                        _10408 = mem[s]
                        _10576 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10576:
                            mem[v + t + 32] = mem[_10408 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10576) > _10576:
                            mem[t + _10576 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10576) + t + 32
                        u = u + 32
                        continue 
                    mem[_7356 + 64] = t - _7356
                    _10407 = mem[_5250]
                    mem[t] = mem[_5250]
                    mem[t + 32 len 32 * _10407] = mem[_5250 + 32 len 32 * _10407]
                    var55001 = _10407
                    return memory
                      from mem[64]
                       len t + (32 * _10407) + -mem[64] + 32
                mem[_5250 + 32 len 32 * _5123] = call.data[calldata.size len 32 * _5123]
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1809]:
                        revert with 0, 50
                    _7363 = sha3(mem[(32 * idx) + _1809 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1809]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1809 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5250]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5250 + 32] > !uint256(stor1[_7363]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5250 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5250 + 32] + uint256(stor1[_7363])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _7361 = mem[64]
                mem[mem[64]] = 96
                _7774 = mem[_5122]
                mem[mem[64] + 96] = mem[_5122]
                mem[mem[64] + 128 len ceil32(_7774)] = mem[_5122 + 32 len ceil32(_7774)]
                if ceil32(_7774) <= _7774:
                    mem[mem[64] + 32] = ceil32(_7774) + 128
                    _9512 = mem[_5121]
                    mem[ceil32(_7774) + _7361 + 128] = mem[_5121]
                    idx = 0
                    s = _5121 + 32
                    t = ceil32(_7774) + _7361 + (32 * _9512) + 160
                    u = ceil32(_7774) + _7361 + 160
                    while idx < _9512:
                        mem[u] = t + -ceil32(_7774) + -_7361 - 160
                        _10410 = mem[s]
                        _10577 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10577:
                            mem[v + t + 32] = mem[_10410 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10577) > _10577:
                            mem[t + _10577 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10577) + t + 32
                        u = u + 32
                        continue 
                    mem[_7361 + 64] = t - _7361
                    _10409 = mem[_5250]
                    mem[t] = mem[_5250]
                    mem[t + 32 len 32 * _10409] = mem[_5250 + 32 len 32 * _10409]
                    var55001 = _10409
                    return memory
                      from mem[64]
                       len t + (32 * _10409) + -mem[64] + 32
                mem[mem[64] + _7774 + 128] = 0
                mem[mem[64] + 32] = ceil32(_7774) + 128
                _9630 = mem[_5121]
                mem[ceil32(_7774) + _7361 + 128] = mem[_5121]
                idx = 0
                s = _5121 + 32
                t = ceil32(_7774) + _7361 + (32 * _9630) + 160
                u = ceil32(_7774) + _7361 + 160
                while idx < _9630:
                    mem[u] = t + -ceil32(_7774) + -_7361 - 160
                    _10412 = mem[s]
                    _10578 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10578:
                        mem[v + t + 32] = mem[_10412 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10578) > _10578:
                        mem[t + _10578 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10578) + t + 32
                    u = u + 32
                    continue 
                mem[_7361 + 64] = t - _7361
                _10411 = mem[_5250]
                mem[t] = mem[_5250]
                mem[t + 32 len 32 * _10411] = mem[_5250 + 32 len 32 * _10411]
                var56001 = _10411
                return memory
                  from mem[64]
                   len t + (32 * _10411) + -mem[64] + 32
            mem[0] = sha3(arg1, 3)
            mem[ceil32(return_data.size) + 448] = uint256(stor3[arg1].field_0)
            idx = ceil32(return_data.size) + 448
            s = 0
            while ceil32(return_data.size) + uint255(stor3[arg1].field_1) + 416 > idx:
                mem[idx + 32] = uint256(stor3[arg1][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _4060 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_4060] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_4060 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_4060 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _4060 + 32
                                u = sha3(mem[0])
                                while _4060 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _4060
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _4060
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_4060 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _4060
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_4060 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _4060 + 32
                    u = sha3(mem[0])
                    while _4060 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _4060
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _4086 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_4086] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _4086
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_4086 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _4086
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_4086 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _4086 + 32
                    u = sha3(mem[0])
                    while _4086 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _4086
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_4086 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_4086 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _4086 + 32
                        u = sha3(mem[0])
                        while _4086 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _4086
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _3615 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_3615] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _3615
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _3889 = mem[ceil32(return_data.size) + 96]
                _3890 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                if mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] > test266151307():
                    revert with 0, 65
                _4005 = mem[64]
                mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[64] = mem[64] + (32 * _3890) + 32
                if not _3890:
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_3615]:
                            revert with 0, 50
                        _5242 = sha3(mem[(32 * idx) + _3615 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_3615]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _3615 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_4005]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4005 + 32] > !uint256(stor1[_5242]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4005 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4005 + 32] + uint256(stor1[_5242])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _5240 = mem[64]
                    mem[mem[64]] = 96
                    _5430 = mem[_3889]
                    mem[mem[64] + 96] = mem[_3889]
                    mem[mem[64] + 128 len ceil32(_5430)] = mem[_3889 + 32 len ceil32(_5430)]
                    s = ceil32(_5430)
                    if ceil32(_5430) <= _5430:
                        mem[_5240 + 32] = ceil32(_5430) + 128
                        _7567 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        mem[ceil32(_5430) + _5240 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                        t = ceil32(_5430) + _5240 + (32 * _7567) + 160
                        u = ceil32(_5430) + _5240 + 160
                        while idx < _7567:
                            mem[u] = t + -ceil32(_5430) + -_5240 - 160
                            _9114 = mem[s]
                            _9343 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _9343:
                                mem[v + t + 32] = mem[_9114 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_9343) > _9343:
                                mem[t + _9343 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_9343) + t + 32
                            u = u + 32
                            continue 
                        mem[_5240 + 64] = t - _5240
                        _9113 = mem[_4005]
                        mem[t] = mem[_4005]
                        mem[t + 32 len 32 * _9113] = mem[_4005 + 32 len 32 * _9113]
                        var53002 = _4005 + (32 * _9113) + 32
                        return memory
                          from mem[64]
                           len t + (32 * _9113) + -mem[64] + 32
                    mem[_5240 + _5430 + 128] = 0
                    mem[_5240 + 32] = ceil32(_5430) + 128
                    _7761 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[ceil32(_5430) + _5240 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                    t = ceil32(_5430) + _5240 + (32 * _7761) + 160
                    u = ceil32(_5430) + _5240 + 160
                    while idx < _7761:
                        mem[u] = t + -ceil32(_5430) + -_5240 - 160
                        _9116 = mem[s]
                        _9344 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _9344:
                            mem[v + t + 32] = mem[_9116 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_9344) > _9344:
                            mem[t + _9344 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_9344) + t + 32
                        u = u + 32
                        continue 
                    mem[_5240 + 64] = t - _5240
                    _9115 = mem[_4005]
                    mem[t] = mem[_4005]
                    mem[t + 32 len 32 * _9115] = mem[_4005 + 32 len 32 * _9115]
                    var54001 = _9115
                    return memory
                      from mem[64]
                       len t + (32 * _9115) + -mem[64] + 32
                mem[_4005 + 32 len 32 * _3890] = call.data[calldata.size len 32 * _3890]
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3615]:
                        revert with 0, 50
                    _5247 = sha3(mem[(32 * idx) + _3615 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3615]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _3615 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_4005]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4005 + 32] > !uint256(stor1[_5247]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4005 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4005 + 32] + uint256(stor1[_5247])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _5245 = mem[64]
                mem[mem[64]] = 96
                _5432 = mem[_3889]
                mem[mem[64] + 96] = mem[_3889]
                mem[mem[64] + 128 len ceil32(_5432)] = mem[_3889 + 32 len ceil32(_5432)]
                var46001 = ceil32(_5432)
                if ceil32(_5432) <= _5432:
                    mem[mem[64] + 32] = ceil32(_5432) + 128
                    _7568 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[ceil32(_5432) + _5245 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                    t = ceil32(_5432) + _5245 + (32 * _7568) + 160
                    u = ceil32(_5432) + _5245 + 160
                    while idx < _7568:
                        mem[u] = t + -ceil32(_5432) + -_5245 - 160
                        _9118 = mem[s]
                        _9345 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _9345:
                            mem[v + t + 32] = mem[_9118 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_9345) > _9345:
                            mem[t + _9345 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_9345) + t + 32
                        u = u + 32
                        continue 
                    mem[_5245 + 64] = t - _5245
                    _9117 = mem[_4005]
                    mem[t] = mem[_4005]
                    mem[t + 32 len 32 * _9117] = mem[_4005 + 32 len 32 * _9117]
                    var54001 = _9117
                    return memory
                      from mem[64]
                       len t + (32 * _9117) + -mem[64] + 32
                mem[mem[64] + _5432 + 128] = 0
                mem[mem[64] + 32] = ceil32(_5432) + 128
                _7762 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[ceil32(_5432) + _5245 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                t = ceil32(_5432) + _5245 + (32 * _7762) + 160
                u = ceil32(_5432) + _5245 + 160
                while idx < _7762:
                    mem[u] = t + -ceil32(_5432) + -_5245 - 160
                    _9120 = mem[s]
                    _9346 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _9346:
                        mem[v + t + 32] = mem[_9120 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_9346) > _9346:
                        mem[t + _9346 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_9346) + t + 32
                    u = u + 32
                    continue 
                mem[_5245 + 64] = t - _5245
                _9119 = mem[_4005]
                mem[t] = mem[_4005]
                mem[t + 32 len 32 * _9119] = mem[_4005 + 32 len 32 * _9119]
                var55001 = _9119
                return memory
                  from mem[64]
                   len t + (32 * _9119) + -mem[64] + 32
            mem[0] = sha3(arg1, 3) + 7
            mem[_3615 + 32] = address(stor3[arg1][7].field_0)
            idx = _3615 + 32
            s = 0
            while _3615 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _3615
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _7108 = mem[ceil32(return_data.size) + 192]
            _7109 = mem[ceil32(return_data.size) + 96]
            _7110 = mem[mem[ceil32(return_data.size) + 192]]
            if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                revert with 0, 65
            _7351 = mem[64]
            mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
            mem[64] = mem[64] + (32 * _7110) + 32
            if not _7110:
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3615]:
                        revert with 0, 50
                    _9349 = sha3(mem[(32 * idx) + _3615 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3615]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _3615 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_7351]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7351 + 32] > !uint256(stor1[_9349]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7351 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7351 + 32] + uint256(stor1[_9349])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _9347 = mem[64]
                mem[mem[64]] = 96
                _9625 = mem[_7109]
                mem[mem[64] + 96] = mem[_7109]
                mem[mem[64] + 128 len ceil32(_9625)] = mem[_7109 + 32 len ceil32(_9625)]
                if ceil32(_9625) <= _9625:
                    mem[mem[64] + 32] = ceil32(_9625) + 128
                    _10663 = mem[_7108]
                    mem[ceil32(_9625) + _9347 + 128] = mem[_7108]
                    idx = 0
                    s = _7108 + 32
                    t = ceil32(_9625) + _9347 + (32 * _10663) + 160
                    u = ceil32(_9625) + _9347 + 160
                    while idx < _10663:
                        mem[u] = t + -ceil32(_9625) + -_9347 - 160
                        _11112 = mem[s]
                        _11275 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _11275:
                            mem[v + t + 32] = mem[_11112 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_11275) > _11275:
                            mem[t + _11275 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_11275) + t + 32
                        u = u + 32
                        continue 
                    mem[_9347 + 64] = t - _9347
                    _11111 = mem[_7351]
                    mem[t] = mem[_7351]
                    mem[t + 32 len 32 * _11111] = mem[_7351 + 32 len 32 * _11111]
                    var57001 = _11111
                    var57002 = _7351 + (32 * _11111) + 32
                    var57005 = t + (32 * _11111) + 32
                    return memory
                      from mem[64]
                       len t + (32 * _11111) + -mem[64] + 32
                mem[mem[64] + _9625 + 128] = 0
                mem[mem[64] + 32] = ceil32(_9625) + 128
                _10763 = mem[_7108]
                mem[ceil32(_9625) + _9347 + 128] = mem[_7108]
                idx = 0
                s = _7108 + 32
                t = ceil32(_9625) + _9347 + (32 * _10763) + 160
                u = ceil32(_9625) + _9347 + 160
                while idx < _10763:
                    mem[u] = t + -ceil32(_9625) + -_9347 - 160
                    _11114 = mem[s]
                    _11276 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _11276:
                        mem[v + t + 32] = mem[_11114 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_11276) > _11276:
                        mem[t + _11276 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_11276) + t + 32
                    u = u + 32
                    continue 
                mem[_9347 + 64] = t - _9347
                _11113 = mem[_7351]
                mem[t] = mem[_7351]
                mem[t + 32 len 32 * _11113] = mem[_7351 + 32 len 32 * _11113]
                var58001 = _11113
                var58002 = _7351 + (32 * _11113) + 32
                var58005 = t + (32 * _11113) + 32
                return memory
                  from mem[64]
                   len t + (32 * _11113) + -mem[64] + 32
            mem[_7351 + 32 len 32 * _7110] = call.data[calldata.size len 32 * _7110]
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3615]:
                    revert with 0, 50
                _9354 = sha3(mem[(32 * idx) + _3615 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3615]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _3615 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_7351]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7351 + 32] > !uint256(stor1[_9354]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7351 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7351 + 32] + uint256(stor1[_9354])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _9352 = mem[64]
            mem[mem[64]] = 96
            _9627 = mem[_7109]
            mem[mem[64] + 96] = mem[_7109]
            mem[mem[64] + 128 len ceil32(_9627)] = mem[_7109 + 32 len ceil32(_9627)]
            if ceil32(_9627) > _9627:
                mem[mem[64] + _9627 + 128] = 0
                mem[mem[64] + 32] = ceil32(_9627) + 128
                _10764 = mem[_7108]
                mem[ceil32(_9627) + _9352 + 128] = mem[_7108]
                idx = 0
                s = _7108 + 32
                t = ceil32(_9627) + _9352 + (32 * _10764) + 160
                u = ceil32(_9627) + _9352 + 160
                while idx < _10764:
                    mem[u] = t + -ceil32(_9627) + -_9352 - 160
                    _11118 = mem[s]
                    _11278 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _11278:
                        mem[v + t + 32] = mem[_11118 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_11278) > _11278:
                        mem[t + _11278 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_11278) + t + 32
                    u = u + 32
                    continue 
                mem[_9352 + 64] = t - _9352
                _11117 = mem[_7351]
                mem[t] = mem[_7351]
                mem[t + 32 len 32 * _11117] = mem[_7351 + 32 len 32 * _11117]
                var59001 = _11117
                return memory
                  from mem[64]
                   len t + (32 * _11117) + -mem[64] + 32
            mem[mem[64] + 32] = ceil32(_9627) + 128
            _10664 = mem[_7108]
            mem[ceil32(_9627) + _9352 + 128] = mem[_7108]
            idx = 0
            s = _7108 + 32
            t = ceil32(_9627) + _9352 + (32 * _10664) + 160
            u = ceil32(_9627) + _9352 + 160
            while idx < _10664:
                mem[u] = t + -ceil32(_9627) + -_9352 - 160
                _11116 = mem[s]
                _11277 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _11277:
                    mem[v + t + 32] = mem[_11116 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_11277) > _11277:
                    mem[t + _11277 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_11277) + t + 32
                u = u + 32
                continue 
            mem[_9352 + 64] = t - _9352
            _11115 = mem[_7351]
            mem[t] = mem[_7351]
            mem[t + 32 len 32 * _11115] = mem[_7351 + 32 len 32 * _11115]
            var58001 = _11115
            var58002 = _7351 + (32 * _11115) + 32
            var58005 = t + (32 * _11115) + 32
            return memory
              from mem[64]
               len t + (32 * _11115) + -mem[64] + 32
        if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if not stor3[arg1].field_1 % 128:
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _2002 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_2002] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_2002 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_2002 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _2002 + 32
                                u = sha3(mem[0])
                                while _2002 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _2002
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _2002
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_2002 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _2002
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_2002 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _2002 + 32
                    u = sha3(mem[0])
                    while _2002 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _2002
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _2059 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_2059] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _2059
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_2059 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _2059
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_2059 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _2059 + 32
                    u = sha3(mem[0])
                    while _2059 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _2059
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_2059 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_2059 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _2059 + 32
                        u = sha3(mem[0])
                        while _2059 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _2059
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _1811 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_1811] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _1811
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _1903 = mem[ceil32(return_data.size) + 96]
                _1904 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                if mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] > test266151307():
                    revert with 0, 65
                _1963 = mem[64]
                mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[64] = mem[64] + (32 * _1904) + 32
                if not _1904:
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1811]:
                            revert with 0, 50
                        _3739 = sha3(mem[(32 * idx) + _1811 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1811]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1811 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1963]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1963 + 32] > !uint256(stor1[_3739]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1963 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1963 + 32] + uint256(stor1[_3739])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3737 = mem[64]
                    mem[mem[64]] = 96
                    _4010 = mem[_1903]
                    mem[mem[64] + 96] = mem[_1903]
                    mem[mem[64] + 128 len ceil32(_4010)] = mem[_1903 + 32 len ceil32(_4010)]
                    if ceil32(_4010) <= _4010:
                        mem[mem[64] + 32] = ceil32(_4010) + 128
                        _5347 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        mem[ceil32(_4010) + _3737 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                        t = ceil32(_4010) + _3737 + (32 * _5347) + 160
                        u = ceil32(_4010) + _3737 + 160
                        while idx < _5347:
                            mem[u] = t + -ceil32(_4010) + -_3737 - 160
                            _7125 = mem[s]
                            _7366 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7366:
                                mem[v + t + 32] = mem[_7125 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7366) > _7366:
                                mem[t + _7366 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7366) + t + 32
                            u = u + 32
                            continue 
                        mem[_3737 + 64] = t - _3737
                        _7124 = mem[_1963]
                        mem[t] = mem[_1963]
                        mem[t + 32 len 32 * _7124] = mem[_1963 + 32 len 32 * _7124]
                        return memory
                          from mem[64]
                           len t + (32 * _7124) + -mem[64] + 32
                    mem[mem[64] + _4010 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_4010) + 128
                    _5437 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[ceil32(_4010) + _3737 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                    t = ceil32(_4010) + _3737 + (32 * _5437) + 160
                    u = ceil32(_4010) + _3737 + 160
                    while idx < _5437:
                        mem[u] = t + -ceil32(_4010) + -_3737 - 160
                        _7127 = mem[s]
                        _7367 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7367:
                            mem[v + t + 32] = mem[_7127 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7367) > _7367:
                            mem[t + _7367 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7367) + t + 32
                        u = u + 32
                        continue 
                    mem[_3737 + 64] = t - _3737
                    _7126 = mem[_1963]
                    mem[t] = mem[_1963]
                    mem[t + 32 len 32 * _7126] = mem[_1963 + 32 len 32 * _7126]
                    var50001 = _7126
                    return memory
                      from mem[64]
                       len t + (32 * _7126) + -mem[64] + 32
                mem[_1963 + 32 len 32 * _1904] = call.data[calldata.size len 32 * _1904]
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1811]:
                        revert with 0, 50
                    _3744 = sha3(mem[(32 * idx) + _1811 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1811]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1811 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1963]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1963 + 32] > !uint256(stor1[_3744]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1963 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1963 + 32] + uint256(stor1[_3744])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3742 = mem[64]
                mem[mem[64]] = 96
                _4012 = mem[_1903]
                mem[mem[64] + 96] = mem[_1903]
                mem[mem[64] + 128 len ceil32(_4012)] = mem[_1903 + 32 len ceil32(_4012)]
                if ceil32(_4012) <= _4012:
                    mem[mem[64] + 32] = ceil32(_4012) + 128
                    _5348 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[ceil32(_4012) + _3742 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                    t = ceil32(_4012) + _3742 + (32 * _5348) + 160
                    u = ceil32(_4012) + _3742 + 160
                    while idx < _5348:
                        mem[u] = t + -ceil32(_4012) + -_3742 - 160
                        _7129 = mem[s]
                        _7368 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7368:
                            mem[v + t + 32] = mem[_7129 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7368) > _7368:
                            mem[t + _7368 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7368) + t + 32
                        u = u + 32
                        continue 
                    mem[_3742 + 64] = t - _3742
                    _7128 = mem[_1963]
                    mem[t] = mem[_1963]
                    mem[t + 32 len 32 * _7128] = mem[_1963 + 32 len 32 * _7128]
                    return memory
                      from mem[64]
                       len t + (32 * _7128) + -mem[64] + 32
                mem[mem[64] + _4012 + 128] = 0
                mem[mem[64] + 32] = ceil32(_4012) + 128
                _5438 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[ceil32(_4012) + _3742 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                t = ceil32(_4012) + _3742 + (32 * _5438) + 160
                u = ceil32(_4012) + _3742 + 160
                while idx < _5438:
                    mem[u] = t + -ceil32(_4012) + -_3742 - 160
                    _7131 = mem[s]
                    _7369 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _7369:
                        mem[v + t + 32] = mem[_7131 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7369) > _7369:
                        mem[t + _7369 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_7369) + t + 32
                    u = u + 32
                    continue 
                mem[_3742 + 64] = t - _3742
                _7130 = mem[_1963]
                mem[t] = mem[_1963]
                mem[t + 32 len 32 * _7130] = mem[_1963 + 32 len 32 * _7130]
                var51001 = _7130
                return memory
                  from mem[64]
                   len t + (32 * _7130) + -mem[64] + 32
            mem[0] = sha3(arg1, 3) + 7
            mem[_1811 + 32] = address(stor3[arg1][7].field_0)
            idx = _1811 + 32
            s = 0
            while _1811 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _1811
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _5128 = mem[ceil32(return_data.size) + 192]
            _5129 = mem[ceil32(return_data.size) + 96]
            _5130 = mem[mem[ceil32(return_data.size) + 192]]
            if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                revert with 0, 65
            _5251 = mem[64]
            mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
            mem[64] = mem[64] + (32 * _5130) + 32
            if not _5130:
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1811]:
                        revert with 0, 50
                    _7372 = sha3(mem[(32 * idx) + _1811 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1811]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1811 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5251]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5251 + 32] > !uint256(stor1[_7372]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5251 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5251 + 32] + uint256(stor1[_7372])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _7370 = mem[64]
                mem[mem[64]] = 96
                _7784 = mem[_5129]
                mem[mem[64] + 96] = mem[_5129]
                mem[mem[64] + 128 len ceil32(_7784)] = mem[_5129 + 32 len ceil32(_7784)]
                if ceil32(_7784) <= _7784:
                    mem[mem[64] + 32] = ceil32(_7784) + 128
                    _9513 = mem[_5128]
                    mem[ceil32(_7784) + _7370 + 128] = mem[_5128]
                    idx = 0
                    s = _5128 + 32
                    t = ceil32(_7784) + _7370 + (32 * _9513) + 160
                    u = ceil32(_7784) + _7370 + 160
                    while idx < _9513:
                        mem[u] = t + -ceil32(_7784) + -_7370 - 160
                        _10414 = mem[s]
                        _10579 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10579:
                            mem[v + t + 32] = mem[_10414 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10579) > _10579:
                            mem[t + _10579 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10579) + t + 32
                        u = u + 32
                        continue 
                    mem[_7370 + 64] = t - _7370
                    _10413 = mem[_5251]
                    mem[t] = mem[_5251]
                    mem[t + 32 len 32 * _10413] = mem[_5251 + 32 len 32 * _10413]
                    return memory
                      from mem[64]
                       len t + (32 * _10413) + -mem[64] + 32
                mem[mem[64] + _7784 + 128] = 0
                mem[mem[64] + 32] = ceil32(_7784) + 128
                _9631 = mem[_5128]
                mem[ceil32(_7784) + _7370 + 128] = mem[_5128]
                idx = 0
                s = _5128 + 32
                t = ceil32(_7784) + _7370 + (32 * _9631) + 160
                u = ceil32(_7784) + _7370 + 160
                while idx < _9631:
                    mem[u] = t + -ceil32(_7784) + -_7370 - 160
                    _10416 = mem[s]
                    _10580 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10580:
                        mem[v + t + 32] = mem[_10416 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10580) > _10580:
                        mem[t + _10580 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10580) + t + 32
                    u = u + 32
                    continue 
                mem[_7370 + 64] = t - _7370
                _10415 = mem[_5251]
                mem[t] = mem[_5251]
                mem[t + 32 len 32 * _10415] = mem[_5251 + 32 len 32 * _10415]
                var54001 = _10415
                return memory
                  from mem[64]
                   len t + (32 * _10415) + -mem[64] + 32
            mem[_5251 + 32 len 32 * _5130] = call.data[calldata.size len 32 * _5130]
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1811]:
                    revert with 0, 50
                _7377 = sha3(mem[(32 * idx) + _1811 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1811]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _1811 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5251]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5251 + 32] > !uint256(stor1[_7377]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5251 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5251 + 32] + uint256(stor1[_7377])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _7375 = mem[64]
            mem[mem[64]] = 96
            _7786 = mem[_5129]
            mem[mem[64] + 96] = mem[_5129]
            mem[mem[64] + 128 len ceil32(_7786)] = mem[_5129 + 32 len ceil32(_7786)]
            if ceil32(_7786) <= _7786:
                mem[mem[64] + 32] = ceil32(_7786) + 128
                _9514 = mem[_5128]
                mem[ceil32(_7786) + _7375 + 128] = mem[_5128]
                idx = 0
                s = _5128 + 32
                t = ceil32(_7786) + _7375 + (32 * _9514) + 160
                u = ceil32(_7786) + _7375 + 160
                while idx < _9514:
                    mem[u] = t + -ceil32(_7786) + -_7375 - 160
                    _10418 = mem[s]
                    _10581 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10581:
                        mem[v + t + 32] = mem[_10418 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10581) > _10581:
                        mem[t + _10581 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10581) + t + 32
                    u = u + 32
                    continue 
                mem[_7375 + 64] = t - _7375
                _10417 = mem[_5251]
                mem[t] = mem[_5251]
                mem[t + 32 len 32 * _10417] = mem[_5251 + 32 len 32 * _10417]
                var54001 = _10417
                return memory
                  from mem[64]
                   len t + (32 * _10417) + -mem[64] + 32
            mem[mem[64] + _7786 + 128] = 0
            mem[mem[64] + 32] = ceil32(_7786) + 128
            _9632 = mem[_5128]
            mem[ceil32(_7786) + _7375 + 128] = mem[_5128]
            idx = 0
            s = _5128 + 32
            t = ceil32(_7786) + _7375 + (32 * _9632) + 160
            u = ceil32(_7786) + _7375 + 160
            while idx < _9632:
                mem[u] = t + -ceil32(_7786) + -_7375 - 160
                _10420 = mem[s]
                _10582 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _10582:
                    mem[v + t + 32] = mem[_10420 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_10582) > _10582:
                    mem[t + _10582 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_10582) + t + 32
                u = u + 32
                continue 
            mem[_7375 + 64] = t - _7375
            _10419 = mem[_5251]
            mem[t] = mem[_5251]
            mem[t + 32 len 32 * _10419] = mem[_5251 + 32 len 32 * _10419]
            var55001 = _10419
            return memory
              from mem[64]
               len t + (32 * _10419) + -mem[64] + 32
        if 31 >= stor3[arg1].field_1 % 128:
            mem[ceil32(return_data.size) + 448] = 256 * Mask(248, 0, stor3[arg1].field_8)
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _2006 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_2006] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_2006 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_2006 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _2006 + 32
                                u = sha3(mem[0])
                                while _2006 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _2006
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _2006
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_2006 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _2006
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_2006 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _2006 + 32
                    u = sha3(mem[0])
                    while _2006 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _2006
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _2066 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_2066] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _2066
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_2066 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _2066
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_2066 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _2066 + 32
                    u = sha3(mem[0])
                    while _2066 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _2066
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_2066 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_2066 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _2066 + 32
                        u = sha3(mem[0])
                        while _2066 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _2066
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _1813 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_1813] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _1813
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _1908 = mem[ceil32(return_data.size) + 96]
                _1909 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                if mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] > test266151307():
                    revert with 0, 65
                _1966 = mem[64]
                mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[64] = mem[64] + (32 * _1909) + 32
                if not _1909:
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1813]:
                            revert with 0, 50
                        _3751 = sha3(mem[(32 * idx) + _1813 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1813]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1813 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1966]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1966 + 32] > !uint256(stor1[_3751]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1966 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1966 + 32] + uint256(stor1[_3751])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3749 = mem[64]
                    mem[mem[64]] = 96
                    _4015 = mem[_1908]
                    mem[mem[64] + 96] = mem[_1908]
                    mem[mem[64] + 128 len ceil32(_4015)] = mem[_1908 + 32 len ceil32(_4015)]
                    if ceil32(_4015) <= _4015:
                        mem[mem[64] + 32] = ceil32(_4015) + 128
                        _5356 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        mem[ceil32(_4015) + _3749 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                        t = ceil32(_4015) + _3749 + (32 * _5356) + 160
                        u = ceil32(_4015) + _3749 + 160
                        while idx < _5356:
                            mem[u] = t + -ceil32(_4015) + -_3749 - 160
                            _7144 = mem[s]
                            _7381 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7381:
                                mem[v + t + 32] = mem[_7144 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7381) > _7381:
                                mem[t + _7381 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7381) + t + 32
                            u = u + 32
                            continue 
                        mem[_3749 + 64] = t - _3749
                        _7143 = mem[_1966]
                        mem[t] = mem[_1966]
                        mem[t + 32 len 32 * _7143] = mem[_1966 + 32 len 32 * _7143]
                        return memory
                          from mem[64]
                           len t + (32 * _7143) + -mem[64] + 32
                    mem[mem[64] + _4015 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_4015) + 128
                    _5444 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[ceil32(_4015) + _3749 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                    t = ceil32(_4015) + _3749 + (32 * _5444) + 160
                    u = ceil32(_4015) + _3749 + 160
                    while idx < _5444:
                        mem[u] = t + -ceil32(_4015) + -_3749 - 160
                        _7146 = mem[s]
                        _7382 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7382:
                            mem[v + t + 32] = mem[_7146 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7382) > _7382:
                            mem[t + _7382 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7382) + t + 32
                        u = u + 32
                        continue 
                    mem[_3749 + 64] = t - _3749
                    _7145 = mem[_1966]
                    mem[t] = mem[_1966]
                    mem[t + 32 len 32 * _7145] = mem[_1966 + 32 len 32 * _7145]
                    var52001 = _7145
                    return memory
                      from mem[64]
                       len t + (32 * _7145) + -mem[64] + 32
                mem[_1966 + 32 len 32 * _1909] = call.data[calldata.size len 32 * _1909]
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1813]:
                        revert with 0, 50
                    _3756 = sha3(mem[(32 * idx) + _1813 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1813]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1813 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1966]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1966 + 32] > !uint256(stor1[_3756]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1966 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1966 + 32] + uint256(stor1[_3756])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3754 = mem[64]
                mem[mem[64]] = 96
                _4017 = mem[_1908]
                mem[mem[64] + 96] = mem[_1908]
                mem[mem[64] + 128 len ceil32(_4017)] = mem[_1908 + 32 len ceil32(_4017)]
                if ceil32(_4017) <= _4017:
                    mem[mem[64] + 32] = ceil32(_4017) + 128
                    _5357 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[ceil32(_4017) + _3754 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                    t = ceil32(_4017) + _3754 + (32 * _5357) + 160
                    u = ceil32(_4017) + _3754 + 160
                    while idx < _5357:
                        mem[u] = t + -ceil32(_4017) + -_3754 - 160
                        _7148 = mem[s]
                        _7383 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7383:
                            mem[v + t + 32] = mem[_7148 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7383) > _7383:
                            mem[t + _7383 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7383) + t + 32
                        u = u + 32
                        continue 
                    mem[_3754 + 64] = t - _3754
                    _7147 = mem[_1966]
                    mem[t] = mem[_1966]
                    mem[t + 32 len 32 * _7147] = mem[_1966 + 32 len 32 * _7147]
                    return memory
                      from mem[64]
                       len t + (32 * _7147) + -mem[64] + 32
                mem[mem[64] + _4017 + 128] = 0
                mem[mem[64] + 32] = ceil32(_4017) + 128
                _5445 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[ceil32(_4017) + _3754 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                t = ceil32(_4017) + _3754 + (32 * _5445) + 160
                u = ceil32(_4017) + _3754 + 160
                while idx < _5445:
                    mem[u] = t + -ceil32(_4017) + -_3754 - 160
                    _7150 = mem[s]
                    _7384 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _7384:
                        mem[v + t + 32] = mem[_7150 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7384) > _7384:
                        mem[t + _7384 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_7384) + t + 32
                    u = u + 32
                    continue 
                mem[_3754 + 64] = t - _3754
                _7149 = mem[_1966]
                mem[t] = mem[_1966]
                mem[t + 32 len 32 * _7149] = mem[_1966 + 32 len 32 * _7149]
                var53001 = _7149
                return memory
                  from mem[64]
                   len t + (32 * _7149) + -mem[64] + 32
            mem[0] = sha3(arg1, 3) + 7
            mem[_1813 + 32] = address(stor3[arg1][7].field_0)
            idx = _1813 + 32
            s = 0
            while _1813 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _1813
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _5139 = mem[ceil32(return_data.size) + 192]
            _5140 = mem[ceil32(return_data.size) + 96]
            _5141 = mem[mem[ceil32(return_data.size) + 192]]
            if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                revert with 0, 65
            _5262 = mem[64]
            mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
            mem[64] = mem[64] + (32 * _5141) + 32
            if not _5141:
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1813]:
                        revert with 0, 50
                    _7387 = sha3(mem[(32 * idx) + _1813 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1813]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1813 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5262]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5262 + 32] > !uint256(stor1[_7387]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5262 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5262 + 32] + uint256(stor1[_7387])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _7385 = mem[64]
                mem[mem[64]] = 96
                _7799 = mem[_5140]
                mem[mem[64] + 96] = mem[_5140]
                mem[mem[64] + 128 len ceil32(_7799)] = mem[_5140 + 32 len ceil32(_7799)]
                if ceil32(_7799) <= _7799:
                    mem[mem[64] + 32] = ceil32(_7799) + 128
                    _9525 = mem[_5139]
                    mem[ceil32(_7799) + _7385 + 128] = mem[_5139]
                    idx = 0
                    s = _5139 + 32
                    t = ceil32(_7799) + _7385 + (32 * _9525) + 160
                    u = ceil32(_7799) + _7385 + 160
                    while idx < _9525:
                        mem[u] = t + -ceil32(_7799) + -_7385 - 160
                        _10432 = mem[s]
                        _10587 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10587:
                            mem[v + t + 32] = mem[_10432 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10587) > _10587:
                            mem[t + _10587 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10587) + t + 32
                        u = u + 32
                        continue 
                    mem[_7385 + 64] = t - _7385
                    _10431 = mem[_5262]
                    mem[t] = mem[_5262]
                    mem[t + 32 len 32 * _10431] = mem[_5262 + 32 len 32 * _10431]
                    return memory
                      from mem[64]
                       len t + (32 * _10431) + -mem[64] + 32
                mem[mem[64] + _7799 + 128] = 0
                mem[mem[64] + 32] = ceil32(_7799) + 128
                _9645 = mem[_5139]
                mem[ceil32(_7799) + _7385 + 128] = mem[_5139]
                idx = 0
                s = _5139 + 32
                t = ceil32(_7799) + _7385 + (32 * _9645) + 160
                u = ceil32(_7799) + _7385 + 160
                while idx < _9645:
                    mem[u] = t + -ceil32(_7799) + -_7385 - 160
                    _10434 = mem[s]
                    _10588 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10588:
                        mem[v + t + 32] = mem[_10434 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10588) > _10588:
                        mem[t + _10588 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10588) + t + 32
                    u = u + 32
                    continue 
                mem[_7385 + 64] = t - _7385
                _10433 = mem[_5262]
                mem[t] = mem[_5262]
                mem[t + 32 len 32 * _10433] = mem[_5262 + 32 len 32 * _10433]
                var56001 = _10433
                return memory
                  from mem[64]
                   len t + (32 * _10433) + -mem[64] + 32
            mem[_5262 + 32 len 32 * _5141] = call.data[calldata.size len 32 * _5141]
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1813]:
                    revert with 0, 50
                _7392 = sha3(mem[(32 * idx) + _1813 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1813]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _1813 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5262]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5262 + 32] > !uint256(stor1[_7392]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5262 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5262 + 32] + uint256(stor1[_7392])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _7390 = mem[64]
            mem[mem[64]] = 96
            _7801 = mem[_5140]
            mem[mem[64] + 96] = mem[_5140]
            mem[mem[64] + 128 len ceil32(_7801)] = mem[_5140 + 32 len ceil32(_7801)]
            if ceil32(_7801) <= _7801:
                mem[mem[64] + 32] = ceil32(_7801) + 128
                _9526 = mem[_5139]
                mem[ceil32(_7801) + _7390 + 128] = mem[_5139]
                idx = 0
                s = _5139 + 32
                t = ceil32(_7801) + _7390 + (32 * _9526) + 160
                u = ceil32(_7801) + _7390 + 160
                while idx < _9526:
                    mem[u] = t + -ceil32(_7801) + -_7390 - 160
                    _10436 = mem[s]
                    _10589 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10589:
                        mem[v + t + 32] = mem[_10436 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10589) > _10589:
                        mem[t + _10589 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10589) + t + 32
                    u = u + 32
                    continue 
                mem[_7390 + 64] = t - _7390
                _10435 = mem[_5262]
                mem[t] = mem[_5262]
                mem[t + 32 len 32 * _10435] = mem[_5262 + 32 len 32 * _10435]
                var56001 = _10435
                return memory
                  from mem[64]
                   len t + (32 * _10435) + -mem[64] + 32
            mem[mem[64] + _7801 + 128] = 0
            mem[mem[64] + 32] = ceil32(_7801) + 128
            _9646 = mem[_5139]
            mem[ceil32(_7801) + _7390 + 128] = mem[_5139]
            idx = 0
            s = _5139 + 32
            t = ceil32(_7801) + _7390 + (32 * _9646) + 160
            u = ceil32(_7801) + _7390 + 160
            while idx < _9646:
                mem[u] = t + -ceil32(_7801) + -_7390 - 160
                _10438 = mem[s]
                _10590 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _10590:
                    mem[v + t + 32] = mem[_10438 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_10590) > _10590:
                    mem[t + _10590 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_10590) + t + 32
                u = u + 32
                continue 
            mem[_7390 + 64] = t - _7390
            _10437 = mem[_5262]
            mem[t] = mem[_5262]
            mem[t + 32 len 32 * _10437] = mem[_5262 + 32 len 32 * _10437]
            var57001 = _10437
            return memory
              from mem[64]
               len t + (32 * _10437) + -mem[64] + 32
        mem[0] = sha3(arg1, 3)
        mem[ceil32(return_data.size) + 448] = uint256(stor3[arg1].field_0)
        idx = ceil32(return_data.size) + 448
        s = 0
        while ceil32(return_data.size) + stor3[arg1].field_1 % 128 + 416 > idx:
            mem[idx + 32] = uint256(stor3[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
        mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
        mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
        mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
        mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
        idx = 0
        while idx < uint256(stor3[arg1].field_768):
            mem[0] = sha3(arg1, 3) + 3
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                _4062 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                mem[_4062] = uint255(stor3[arg1][idx + 3].field_1)
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor3[arg1][idx + 3].field_1):
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_4062 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_4062 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _4062 + 32
                            u = sha3(mem[0])
                            while _4062 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _4062
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor3[arg1][idx + 3].field_1 % 128:
                    mem[s] = _4062
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_4062 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _4062
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_4062 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _4062 + 32
                u = sha3(mem[0])
                while _4062 + stor3[arg1][u + 3].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _4062
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            _4092 = mem[64]
            mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
            mem[_4092] = stor3[arg1][idx + 3].field_1 % 128
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                if not uint255(stor3[arg1][idx + 3].field_1):
                    mem[s] = _4092
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                    mem[_4092 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _4092
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_4092 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _4092 + 32
                u = sha3(mem[0])
                while _4092 + uint255(stor3[arg1][u + 3].field_1) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _4092
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            if stor3[arg1][idx + 3].field_1 % 128:
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_4092 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_4092 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _4092 + 32
                    u = sha3(mem[0])
                    while _4092 + stor3[arg1][idx + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _4092
            s = s + 32
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
        mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
        mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
        mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
        mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
        _3625 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
        mem[_3625] = uint256(stor3[arg1].field_1792)
        if not uint256(stor3[arg1].field_1792):
            mem[ceil32(return_data.size) + 352] = _3625
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(uint8(stor3[arg1].field_1536)) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _3906 = mem[ceil32(return_data.size) + 96]
            _3907 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            if mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] > test266151307():
                revert with 0, 65
            _4014 = mem[64]
            mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            mem[64] = mem[64] + (32 * _3907) + 32
            if not _3907:
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3625]:
                        revert with 0, 50
                    _5254 = sha3(mem[(32 * idx) + _3625 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3625]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _3625 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_4014]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4014 + 32] > !uint256(stor1[_5254]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4014 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4014 + 32] + uint256(stor1[_5254])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _5252 = mem[64]
                mem[mem[64]] = 96
                _5440 = mem[_3906]
                mem[mem[64] + 96] = mem[_3906]
                mem[mem[64] + 128 len ceil32(_5440)] = mem[_3906 + 32 len ceil32(_5440)]
                s = ceil32(_5440)
                if ceil32(_5440) <= _5440:
                    mem[mem[64] + 32] = ceil32(_5440) + 128
                    _7590 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[ceil32(_5440) + _5252 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                    t = ceil32(_5440) + _5252 + (32 * _7590) + 160
                    u = ceil32(_5440) + _5252 + 160
                    while idx < _7590:
                        mem[u] = t + -ceil32(_5440) + -_5252 - 160
                        _9146 = mem[s]
                        _9365 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _9365:
                            mem[v + t + 32] = mem[_9146 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_9365) > _9365:
                            mem[t + _9365 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_9365) + t + 32
                        u = u + 32
                        continue 
                    mem[_5252 + 64] = t - _5252
                    _9145 = mem[_4014]
                    mem[t] = mem[_4014]
                    mem[t + 32 len 32 * _9145] = mem[_4014 + 32 len 32 * _9145]
                    var54002 = _4014 + (32 * _9145) + 32
                    return memory
                      from mem[64]
                       len t + (32 * _9145) + -mem[64] + 32
                mem[mem[64] + _5440 + 128] = 0
                mem[mem[64] + 32] = ceil32(_5440) + 128
                _7788 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[ceil32(_5440) + _5252 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                t = ceil32(_5440) + _5252 + (32 * _7788) + 160
                u = ceil32(_5440) + _5252 + 160
                while idx < _7788:
                    mem[u] = t + -ceil32(_5440) + -_5252 - 160
                    _9148 = mem[s]
                    _9366 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _9366:
                        mem[v + t + 32] = mem[_9148 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_9366) > _9366:
                        mem[t + _9366 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_9366) + t + 32
                    u = u + 32
                    continue 
                mem[_5252 + 64] = t - _5252
                _9147 = mem[_4014]
                mem[t] = mem[_4014]
                mem[t + 32 len 32 * _9147] = mem[_4014 + 32 len 32 * _9147]
                var55001 = _9147
                return memory
                  from mem[64]
                   len t + (32 * _9147) + -mem[64] + 32
            mem[_4014 + 32 len 32 * _3907] = call.data[calldata.size len 32 * _3907]
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3625]:
                    revert with 0, 50
                _5259 = sha3(mem[(32 * idx) + _3625 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3625]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _3625 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_4014]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4014 + 32] > !uint256(stor1[_5259]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4014 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4014 + 32] + uint256(stor1[_5259])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _5257 = mem[64]
            mem[mem[64]] = 96
            _5442 = mem[_3906]
            mem[mem[64] + 96] = mem[_3906]
            mem[mem[64] + 128 len ceil32(_5442)] = mem[_3906 + 32 len ceil32(_5442)]
            var47001 = ceil32(_5442)
            if ceil32(_5442) <= _5442:
                mem[mem[64] + 32] = ceil32(_5442) + 128
                _7591 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[ceil32(_5442) + _5257 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                t = ceil32(_5442) + _5257 + (32 * _7591) + 160
                u = ceil32(_5442) + _5257 + 160
                while idx < _7591:
                    mem[u] = t + -ceil32(_5442) + -_5257 - 160
                    _9150 = mem[s]
                    _9367 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _9367:
                        mem[v + t + 32] = mem[_9150 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_9367) > _9367:
                        mem[t + _9367 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_9367) + t + 32
                    u = u + 32
                    continue 
                mem[_5257 + 64] = t - _5257
                _9149 = mem[_4014]
                mem[t] = mem[_4014]
                mem[t + 32 len 32 * _9149] = mem[_4014 + 32 len 32 * _9149]
                var55001 = _9149
                return memory
                  from mem[64]
                   len t + (32 * _9149) + -mem[64] + 32
            mem[mem[64] + _5442 + 128] = 0
            mem[mem[64] + 32] = ceil32(_5442) + 128
            _7789 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            mem[ceil32(_5442) + _5257 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            idx = 0
            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
            t = ceil32(_5442) + _5257 + (32 * _7789) + 160
            u = ceil32(_5442) + _5257 + 160
            while idx < _7789:
                mem[u] = t + -ceil32(_5442) + -_5257 - 160
                _9152 = mem[s]
                _9368 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _9368:
                    mem[v + t + 32] = mem[_9152 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_9368) > _9368:
                    mem[t + _9368 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_9368) + t + 32
                u = u + 32
                continue 
            mem[_5257 + 64] = t - _5257
            _9151 = mem[_4014]
            mem[t] = mem[_4014]
            mem[t + 32 len 32 * _9151] = mem[_4014 + 32 len 32 * _9151]
            var56001 = _9151
            return memory
              from mem[64]
               len t + (32 * _9151) + -mem[64] + 32
        mem[0] = sha3(arg1, 3) + 7
        mem[_3625 + 32] = address(stor3[arg1][7].field_0)
        idx = _3625 + 32
        s = 0
        while _3625 + (32 * uint256(stor3[arg1].field_1792)) > idx:
            mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + 352] = _3625
        mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
        if bool(mem[ceil32(return_data.size) + 288]) != 1:
            revert with 0, 'No Vote exists against this ID or the vote has been suspended'
        _7139 = mem[ceil32(return_data.size) + 192]
        _7140 = mem[ceil32(return_data.size) + 96]
        _7141 = mem[mem[ceil32(return_data.size) + 192]]
        if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
            revert with 0, 65
        _7380 = mem[64]
        mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
        mem[64] = mem[64] + (32 * _7141) + 32
        if not _7141:
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3625]:
                    revert with 0, 50
                _9371 = sha3(mem[(32 * idx) + _3625 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3625]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _3625 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_7380]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7380 + 32] > !uint256(stor1[_9371]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7380 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7380 + 32] + uint256(stor1[_9371])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _9369 = mem[64]
            mem[mem[64]] = 96
            _9641 = mem[_7140]
            mem[mem[64] + 96] = mem[_7140]
            mem[mem[64] + 128 len ceil32(_9641)] = mem[_7140 + 32 len ceil32(_9641)]
            if ceil32(_9641) <= _9641:
                mem[_9369 + 32] = ceil32(_9641) + 128
                _10673 = mem[_7139]
                mem[ceil32(_9641) + _9369 + 128] = mem[_7139]
                idx = 0
                s = _7139 + 32
                t = ceil32(_9641) + _9369 + (32 * _10673) + 160
                u = ceil32(_9641) + _9369 + 160
                while idx < _10673:
                    mem[u] = t + -ceil32(_9641) + -_9369 - 160
                    _11136 = mem[s]
                    _11287 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _11287:
                        mem[v + t + 32] = mem[_11136 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_11287) > _11287:
                        mem[t + _11287 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_11287) + t + 32
                    u = u + 32
                    continue 
                mem[_9369 + 64] = t - _9369
                _11135 = mem[_7380]
                mem[t] = mem[_7380]
                mem[t + 32 len 32 * _11135] = mem[_7380 + 32 len 32 * _11135]
                var58001 = _11135
                var58002 = _7380 + (32 * _11135) + 32
                var58005 = t + (32 * _11135) + 32
                return memory
                  from mem[64]
                   len t + (32 * _11135) + -mem[64] + 32
            mem[_9369 + _9641 + 128] = 0
            mem[_9369 + 32] = ceil32(_9641) + 128
            _10781 = mem[_7139]
            mem[ceil32(_9641) + _9369 + 128] = mem[_7139]
            idx = 0
            s = _7139 + 32
            t = ceil32(_9641) + _9369 + (32 * _10781) + 160
            u = ceil32(_9641) + _9369 + 160
            while idx < _10781:
                mem[u] = t + -ceil32(_9641) + -_9369 - 160
                _11138 = mem[s]
                _11288 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _11288:
                    mem[v + t + 32] = mem[_11138 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_11288) > _11288:
                    mem[t + _11288 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_11288) + t + 32
                u = u + 32
                continue 
            mem[_9369 + 64] = t - _9369
            _11137 = mem[_7380]
            mem[t] = mem[_7380]
            mem[t + 32 len 32 * _11137] = mem[_7380 + 32 len 32 * _11137]
            var59001 = _11137
            var59002 = _7380 + (32 * _11137) + 32
            var59005 = t + (32 * _11137) + 32
            return memory
              from mem[64]
               len t + (32 * _11137) + -mem[64] + 32
        mem[_7380 + 32 len 32 * _7141] = call.data[calldata.size len 32 * _7141]
        idx = 0
        while idx < uint256(stor3[arg1].field_1792):
            mem[0] = arg1
            mem[32] = 4
            if idx >= mem[_3625]:
                revert with 0, 50
            _9376 = sha3(mem[(32 * idx) + _3625 + 44 len 20], sha3(arg1, 4))
            mem[0] = arg1
            mem[32] = 4
            if idx >= mem[_3625]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + _3625 + 44 len 20]
            mem[32] = sha3(arg1, 4)
            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_7380]:
                revert with 0, 50
            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7380 + 32] > !uint256(stor1[_9376]):
                revert with 0, 17
            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7380 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7380 + 32] + uint256(stor1[_9376])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _9374 = mem[64]
        mem[mem[64]] = 96
        _9643 = mem[_7140]
        mem[mem[64] + 96] = mem[_7140]
        mem[mem[64] + 128 len ceil32(_9643)] = mem[_7140 + 32 len ceil32(_9643)]
        if ceil32(_9643) > _9643:
            mem[mem[64] + _9643 + 128] = 0
            mem[mem[64] + 32] = ceil32(_9643) + 128
            _10782 = mem[_7139]
            mem[ceil32(_9643) + _9374 + 128] = mem[_7139]
            idx = 0
            s = _7139 + 32
            t = ceil32(_9643) + _9374 + (32 * _10782) + 160
            u = ceil32(_9643) + _9374 + 160
            while idx < _10782:
                mem[u] = t + -ceil32(_9643) + -_9374 - 160
                _11142 = mem[s]
                _11290 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _11290:
                    mem[v + t + 32] = mem[_11142 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_11290) > _11290:
                    mem[t + _11290 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_11290) + t + 32
                u = u + 32
                continue 
            mem[_9374 + 64] = t - _9374
            _11141 = mem[_7380]
            mem[t] = mem[_7380]
            mem[t + 32 len 32 * _11141] = mem[_7380 + 32 len 32 * _11141]
            var60001 = _11141
            return memory
              from mem[64]
               len t + (32 * _11141) + -mem[64] + 32
        mem[mem[64] + 32] = ceil32(_9643) + 128
        _10674 = mem[_7139]
        mem[ceil32(_9643) + _9374 + 128] = mem[_7139]
        idx = 0
        s = _7139 + 32
        t = ceil32(_9643) + _9374 + (32 * _10674) + 160
        u = ceil32(_9643) + _9374 + 160
        while idx < _10674:
            mem[u] = t + -ceil32(_9643) + -_9374 - 160
            _11140 = mem[s]
            _11289 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _11289:
                mem[v + t + 32] = mem[_11140 + v + 32]
                v = v + 32
                continue 
            if ceil32(_11289) > _11289:
                mem[t + _11289 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_11289) + t + 32
            u = u + 32
            continue 
        mem[_9374 + 64] = t - _9374
        _11139 = mem[_7380]
        mem[t] = mem[_7380]
        mem[t + 32 len 32 * _11139] = mem[_7380 + 32 len 32 * _11139]
        var59001 = _11139
        var59002 = _7380 + (32 * _11139) + 32
        var59005 = t + (32 * _11139) + 32
        return memory
          from mem[64]
           len t + (32 * _11139) + -mem[64] + 32
    if sub_e0a59189Address != msg.sender:
        revert with 0, 'You must be the Propertys Owner or an Admin to access this function'
    mem[0] = arg1
    mem[32] = 3
    if bool(stor3[arg1].field_0):
        if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
            revert with 0, 34
        mem[ceil32(return_data.size) + 416] = uint255(stor3[arg1].field_1)
        if bool(stor3[arg1].field_0):
            if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
                revert with 0, 34
            if not uint255(stor3[arg1].field_1):
                mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
                mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                idx = 0
                while idx < uint256(stor3[arg1].field_768):
                    mem[0] = sha3(arg1, 3) + 3
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        _2008 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                        mem[_2008] = uint255(stor3[arg1][idx + 3].field_1)
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor3[arg1][idx + 3].field_1):
                                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                    mem[_2008 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                    mem[_2008 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                    t = _2008 + 32
                                    u = sha3(mem[0])
                                    while _2008 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _2008
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor3[arg1][idx + 3].field_1 % 128:
                            mem[s] = _2008
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_2008 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _2008
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_2008 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _2008 + 32
                        u = sha3(mem[0])
                        while _2008 + stor3[arg1][u + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _2008
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    _2068 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                    mem[_2068] = stor3[arg1][idx + 3].field_1 % 128
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor3[arg1][idx + 3].field_1):
                            mem[s] = _2068
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_2068 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _2068
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_2068 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _2068 + 32
                        u = sha3(mem[0])
                        while _2068 + uint255(stor3[arg1][u + 3].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _2068
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor3[arg1][idx + 3].field_1 % 128:
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_2068 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_2068 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _2068 + 32
                            u = sha3(mem[0])
                            while _2068 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _2068
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
                mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                _1815 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                mem[_1815] = uint256(stor3[arg1].field_1792)
                if not uint256(stor3[arg1].field_1792):
                    mem[ceil32(return_data.size) + 352] = _1815
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(uint8(stor3[arg1].field_1536)) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _1913 = mem[ceil32(return_data.size) + 96]
                    _1914 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    if mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] > test266151307():
                        revert with 0, 65
                    _1967 = mem[64]
                    mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[64] = mem[64] + (32 * _1914) + 32
                    if not _1914:
                        idx = 0
                        while idx < uint256(stor3[arg1].field_1792):
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1815]:
                                revert with 0, 50
                            _3761 = sha3(mem[(32 * idx) + _1815 + 44 len 20], sha3(arg1, 4))
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1815]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + _1815 + 44 len 20]
                            mem[32] = sha3(arg1, 4)
                            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1967]:
                                revert with 0, 50
                            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1967 + 32] > !uint256(stor1[_3761]):
                                revert with 0, 17
                            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1967 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1967 + 32] + uint256(stor1[_3761])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _3759 = mem[64]
                        mem[mem[64]] = 96
                        _4019 = mem[_1913]
                        mem[mem[64] + 96] = mem[_1913]
                        mem[mem[64] + 128 len ceil32(_4019)] = mem[_1913 + 32 len ceil32(_4019)]
                        if ceil32(_4019) <= _4019:
                            mem[mem[64] + 32] = ceil32(_4019) + 128
                            _5359 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            mem[ceil32(_4019) + _3759 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            idx = 0
                            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                            t = ceil32(_4019) + _3759 + (32 * _5359) + 160
                            u = ceil32(_4019) + _3759 + 160
                            while idx < _5359:
                                mem[u] = t + -ceil32(_4019) + -_3759 - 160
                                _7156 = mem[s]
                                _7395 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7395:
                                    mem[v + t + 32] = mem[_7156 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7395) > _7395:
                                    mem[t + _7395 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_7395) + t + 32
                                u = u + 32
                                continue 
                            mem[_3759 + 64] = t - _3759
                            _7155 = mem[_1967]
                            mem[t] = mem[_1967]
                            mem[t + 32 len 32 * _7155] = mem[_1967 + 32 len 32 * _7155]
                            return memory
                              from mem[64]
                               len t + (32 * _7155) + -mem[64] + 32
                        mem[mem[64] + _4019 + 128] = 0
                        mem[mem[64] + 32] = ceil32(_4019) + 128
                        _5447 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[ceil32(_4019) + _3759 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                        t = ceil32(_4019) + _3759 + (32 * _5447) + 160
                        u = ceil32(_4019) + _3759 + 160
                        while idx < _5447:
                            mem[u] = t + -ceil32(_4019) + -_3759 - 160
                            _7158 = mem[s]
                            _7396 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7396:
                                mem[v + t + 32] = mem[_7158 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7396) > _7396:
                                mem[t + _7396 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7396) + t + 32
                            u = u + 32
                            continue 
                        mem[_3759 + 64] = t - _3759
                        _7157 = mem[_1967]
                        mem[t] = mem[_1967]
                        mem[t + 32 len 32 * _7157] = mem[_1967 + 32 len 32 * _7157]
                        var49001 = _7157
                        return memory
                          from mem[64]
                           len t + (32 * _7157) + -mem[64] + 32
                    mem[_1967 + 32 len 32 * _1914] = call.data[calldata.size len 32 * _1914]
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1815]:
                            revert with 0, 50
                        _3766 = sha3(mem[(32 * idx) + _1815 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1815]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1815 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1967]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1967 + 32] > !uint256(stor1[_3766]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1967 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1967 + 32] + uint256(stor1[_3766])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3764 = mem[64]
                    mem[mem[64]] = 96
                    _4021 = mem[_1913]
                    mem[mem[64] + 96] = mem[_1913]
                    mem[mem[64] + 128 len ceil32(_4021)] = mem[_1913 + 32 len ceil32(_4021)]
                    if ceil32(_4021) <= _4021:
                        mem[mem[64] + 32] = ceil32(_4021) + 128
                        _5360 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[ceil32(_4021) + _3764 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                        t = ceil32(_4021) + _3764 + (32 * _5360) + 160
                        u = ceil32(_4021) + _3764 + 160
                        while idx < _5360:
                            mem[u] = t + -ceil32(_4021) + -_3764 - 160
                            _7160 = mem[s]
                            _7397 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7397:
                                mem[v + t + 32] = mem[_7160 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7397) > _7397:
                                mem[t + _7397 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7397) + t + 32
                            u = u + 32
                            continue 
                        mem[_3764 + 64] = t - _3764
                        _7159 = mem[_1967]
                        mem[t] = mem[_1967]
                        mem[t + 32 len 32 * _7159] = mem[_1967 + 32 len 32 * _7159]
                        return memory
                          from mem[64]
                           len t + (32 * _7159) + -mem[64] + 32
                    mem[mem[64] + _4021 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_4021) + 128
                    _5448 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[ceil32(_4021) + _3764 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    t = ceil32(_4021) + _3764 + (32 * _5448) + 160
                    u = ceil32(_4021) + _3764 + 160
                    while idx < _5448:
                        mem[u] = t + -ceil32(_4021) + -_3764 - 160
                        _7162 = mem[s]
                        _7398 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7398:
                            mem[v + t + 32] = mem[_7162 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7398) > _7398:
                            mem[t + _7398 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7398) + t + 32
                        u = u + 32
                        continue 
                    mem[_3764 + 64] = t - _3764
                    _7161 = mem[_1967]
                    mem[t] = mem[_1967]
                    mem[t + 32 len 32 * _7161] = mem[_1967 + 32 len 32 * _7161]
                    var50001 = _7161
                    return memory
                      from mem[64]
                       len t + (32 * _7161) + -mem[64] + 32
                mem[0] = sha3(arg1, 3) + 7
                mem[_1815 + 32] = address(stor3[arg1][7].field_0)
                idx = _1815 + 32
                s = 0
                while _1815 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                    mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + 352] = _1815
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(mem[ceil32(return_data.size) + 288]) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _5146 = mem[ceil32(return_data.size) + 192]
                _5147 = mem[ceil32(return_data.size) + 96]
                _5148 = mem[mem[ceil32(return_data.size) + 192]]
                if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                    revert with 0, 65
                _5263 = mem[64]
                mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
                mem[64] = mem[64] + (32 * _5148) + 32
                if not _5148:
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1815]:
                            revert with 0, 50
                        _7401 = sha3(mem[(32 * idx) + _1815 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1815]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1815 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5263]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5263 + 32] > !uint256(stor1[_7401]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5263 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5263 + 32] + uint256(stor1[_7401])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _7399 = mem[64]
                    mem[mem[64]] = 96
                    _7811 = mem[_5147]
                    mem[mem[64] + 96] = mem[_5147]
                    mem[mem[64] + 128 len ceil32(_7811)] = mem[_5147 + 32 len ceil32(_7811)]
                    if ceil32(_7811) <= _7811:
                        mem[_7399 + 32] = ceil32(_7811) + 128
                        _9527 = mem[_5146]
                        mem[ceil32(_7811) + _7399 + 128] = mem[_5146]
                        idx = 0
                        s = _5146 + 32
                        t = ceil32(_7811) + _7399 + (32 * _9527) + 160
                        u = ceil32(_7811) + _7399 + 160
                        while idx < _9527:
                            mem[u] = t + -ceil32(_7811) + -_7399 - 160
                            _10440 = mem[s]
                            _10591 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _10591:
                                mem[v + t + 32] = mem[_10440 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_10591) > _10591:
                                mem[t + _10591 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_10591) + t + 32
                            u = u + 32
                            continue 
                        mem[_7399 + 64] = t - _7399
                        _10439 = mem[_5263]
                        mem[t] = mem[_5263]
                        mem[t + 32 len 32 * _10439] = mem[_5263 + 32 len 32 * _10439]
                        return memory
                          from mem[64]
                           len t + (32 * _10439) + -mem[64] + 32
                    mem[_7399 + _7811 + 128] = 0
                    mem[_7399 + 32] = ceil32(_7811) + 128
                    _9647 = mem[_5146]
                    mem[ceil32(_7811) + _7399 + 128] = mem[_5146]
                    idx = 0
                    s = _5146 + 32
                    t = ceil32(_7811) + _7399 + (32 * _9647) + 160
                    u = ceil32(_7811) + _7399 + 160
                    while idx < _9647:
                        mem[u] = t + -ceil32(_7811) + -_7399 - 160
                        _10442 = mem[s]
                        _10592 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10592:
                            mem[v + t + 32] = mem[_10442 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10592) > _10592:
                            mem[t + _10592 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10592) + t + 32
                        u = u + 32
                        continue 
                    mem[_7399 + 64] = t - _7399
                    _10441 = mem[_5263]
                    mem[t] = mem[_5263]
                    mem[t + 32 len 32 * _10441] = mem[_5263 + 32 len 32 * _10441]
                    var53001 = _10441
                    return memory
                      from mem[64]
                       len t + (32 * _10441) + -mem[64] + 32
                mem[_5263 + 32 len 32 * _5148] = call.data[calldata.size len 32 * _5148]
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1815]:
                        revert with 0, 50
                    _7406 = sha3(mem[(32 * idx) + _1815 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1815]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1815 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5263]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5263 + 32] > !uint256(stor1[_7406]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5263 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5263 + 32] + uint256(stor1[_7406])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _7404 = mem[64]
                mem[mem[64]] = 96
                _7813 = mem[_5147]
                mem[mem[64] + 96] = mem[_5147]
                mem[mem[64] + 128 len ceil32(_7813)] = mem[_5147 + 32 len ceil32(_7813)]
                if ceil32(_7813) <= _7813:
                    mem[mem[64] + 32] = ceil32(_7813) + 128
                    _9528 = mem[_5146]
                    mem[ceil32(_7813) + _7404 + 128] = mem[_5146]
                    idx = 0
                    s = _5146 + 32
                    t = ceil32(_7813) + _7404 + (32 * _9528) + 160
                    u = ceil32(_7813) + _7404 + 160
                    while idx < _9528:
                        mem[u] = t + -ceil32(_7813) + -_7404 - 160
                        _10444 = mem[s]
                        _10593 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10593:
                            mem[v + t + 32] = mem[_10444 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10593) > _10593:
                            mem[t + _10593 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10593) + t + 32
                        u = u + 32
                        continue 
                    mem[_7404 + 64] = t - _7404
                    _10443 = mem[_5263]
                    mem[t] = mem[_5263]
                    mem[t + 32 len 32 * _10443] = mem[_5263 + 32 len 32 * _10443]
                    var53001 = _10443
                    return memory
                      from mem[64]
                       len t + (32 * _10443) + -mem[64] + 32
                mem[mem[64] + _7813 + 128] = 0
                mem[mem[64] + 32] = ceil32(_7813) + 128
                _9648 = mem[_5146]
                mem[ceil32(_7813) + _7404 + 128] = mem[_5146]
                idx = 0
                s = _5146 + 32
                t = ceil32(_7813) + _7404 + (32 * _9648) + 160
                u = ceil32(_7813) + _7404 + 160
                while idx < _9648:
                    mem[u] = t + -ceil32(_7813) + -_7404 - 160
                    _10446 = mem[s]
                    _10594 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10594:
                        mem[v + t + 32] = mem[_10446 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10594) > _10594:
                        mem[t + _10594 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10594) + t + 32
                    u = u + 32
                    continue 
                mem[_7404 + 64] = t - _7404
                _10445 = mem[_5263]
                mem[t] = mem[_5263]
                mem[t + 32 len 32 * _10445] = mem[_5263 + 32 len 32 * _10445]
                var54001 = _10445
                return memory
                  from mem[64]
                   len t + (32 * _10445) + -mem[64] + 32
            if 31 >= uint255(stor3[arg1].field_1):
                mem[ceil32(return_data.size) + 448] = 256 * Mask(248, 0, stor3[arg1].field_8)
                mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
                mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
                mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
                mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
                mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                idx = 0
                while idx < uint256(stor3[arg1].field_768):
                    mem[0] = sha3(arg1, 3) + 3
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        _2012 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                        mem[_2012] = uint255(stor3[arg1][idx + 3].field_1)
                        if bool(stor3[arg1][idx + 3].field_0):
                            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor3[arg1][idx + 3].field_1):
                                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                    mem[_2012 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                    mem[_2012 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                    t = _2012 + 32
                                    u = sha3(mem[0])
                                    while _2012 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _2012
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor3[arg1][idx + 3].field_1 % 128:
                            mem[s] = _2012
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_2012 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _2012
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_2012 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _2012 + 32
                        u = sha3(mem[0])
                        while _2012 + stor3[arg1][u + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _2012
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    _2075 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                    mem[_2075] = stor3[arg1][idx + 3].field_1 % 128
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor3[arg1][idx + 3].field_1):
                            mem[s] = _2075
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_2075 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            mem[s] = _2075
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_2075 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _2075 + 32
                        u = sha3(mem[0])
                        while _2075 + uint255(stor3[arg1][u + 3].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _2075
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor3[arg1][idx + 3].field_1 % 128:
                        if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                            mem[_2075 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_2075 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _2075 + 32
                            u = sha3(mem[0])
                            while _2075 + stor3[arg1][idx + 3].field_1 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _2075
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
                mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
                mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
                mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
                mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
                _1817 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
                mem[_1817] = uint256(stor3[arg1].field_1792)
                if not uint256(stor3[arg1].field_1792):
                    mem[ceil32(return_data.size) + 352] = _1817
                    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                    if bool(uint8(stor3[arg1].field_1536)) != 1:
                        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                    _1918 = mem[ceil32(return_data.size) + 96]
                    _1919 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    if mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] > test266151307():
                        revert with 0, 65
                    _1970 = mem[64]
                    mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[64] = mem[64] + (32 * _1919) + 32
                    if not _1919:
                        idx = 0
                        while idx < uint256(stor3[arg1].field_1792):
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1817]:
                                revert with 0, 50
                            _3773 = sha3(mem[(32 * idx) + _1817 + 44 len 20], sha3(arg1, 4))
                            mem[0] = arg1
                            mem[32] = 4
                            if idx >= mem[_1817]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + _1817 + 44 len 20]
                            mem[32] = sha3(arg1, 4)
                            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1970]:
                                revert with 0, 50
                            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1970 + 32] > !uint256(stor1[_3773]):
                                revert with 0, 17
                            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1970 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1970 + 32] + uint256(stor1[_3773])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _3771 = mem[64]
                        mem[mem[64]] = 96
                        _4024 = mem[_1918]
                        mem[mem[64] + 96] = mem[_1918]
                        mem[mem[64] + 128 len ceil32(_4024)] = mem[_1918 + 32 len ceil32(_4024)]
                        if ceil32(_4024) <= _4024:
                            mem[mem[64] + 32] = ceil32(_4024) + 128
                            _5368 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            mem[ceil32(_4024) + _3771 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                            idx = 0
                            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                            t = ceil32(_4024) + _3771 + (32 * _5368) + 160
                            u = ceil32(_4024) + _3771 + 160
                            while idx < _5368:
                                mem[u] = t + -ceil32(_4024) + -_3771 - 160
                                _7175 = mem[s]
                                _7410 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _7410:
                                    mem[v + t + 32] = mem[_7175 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_7410) > _7410:
                                    mem[t + _7410 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_7410) + t + 32
                                u = u + 32
                                continue 
                            mem[_3771 + 64] = t - _3771
                            _7174 = mem[_1970]
                            mem[t] = mem[_1970]
                            mem[t + 32 len 32 * _7174] = mem[_1970 + 32 len 32 * _7174]
                            return memory
                              from mem[64]
                               len t + (32 * _7174) + -mem[64] + 32
                        mem[mem[64] + _4024 + 128] = 0
                        mem[mem[64] + 32] = ceil32(_4024) + 128
                        _5454 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[ceil32(_4024) + _3771 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                        t = ceil32(_4024) + _3771 + (32 * _5454) + 160
                        u = ceil32(_4024) + _3771 + 160
                        while idx < _5454:
                            mem[u] = t + -ceil32(_4024) + -_3771 - 160
                            _7177 = mem[s]
                            _7411 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7411:
                                mem[v + t + 32] = mem[_7177 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7411) > _7411:
                                mem[t + _7411 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7411) + t + 32
                            u = u + 32
                            continue 
                        mem[_3771 + 64] = t - _3771
                        _7176 = mem[_1970]
                        mem[t] = mem[_1970]
                        mem[t + 32 len 32 * _7176] = mem[_1970 + 32 len 32 * _7176]
                        var51001 = _7176
                        return memory
                          from mem[64]
                           len t + (32 * _7176) + -mem[64] + 32
                    mem[_1970 + 32 len 32 * _1919] = call.data[calldata.size len 32 * _1919]
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1817]:
                            revert with 0, 50
                        _3778 = sha3(mem[(32 * idx) + _1817 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1817]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1817 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1970]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1970 + 32] > !uint256(stor1[_3778]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1970 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1970 + 32] + uint256(stor1[_3778])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3776 = mem[64]
                    mem[mem[64]] = 96
                    _4026 = mem[_1918]
                    mem[mem[64] + 96] = mem[_1918]
                    mem[mem[64] + 128 len ceil32(_4026)] = mem[_1918 + 32 len ceil32(_4026)]
                    if ceil32(_4026) <= _4026:
                        mem[_3776 + 32] = ceil32(_4026) + 128
                        _5369 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[ceil32(_4026) + _3776 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                        t = ceil32(_4026) + _3776 + (32 * _5369) + 160
                        u = ceil32(_4026) + _3776 + 160
                        while idx < _5369:
                            mem[u] = t + -ceil32(_4026) + -_3776 - 160
                            _7179 = mem[s]
                            _7412 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7412:
                                mem[v + t + 32] = mem[_7179 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7412) > _7412:
                                mem[t + _7412 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7412) + t + 32
                            u = u + 32
                            continue 
                        mem[_3776 + 64] = t - _3776
                        _7178 = mem[_1970]
                        mem[t] = mem[_1970]
                        mem[t + 32 len 32 * _7178] = mem[_1970 + 32 len 32 * _7178]
                        return memory
                          from mem[64]
                           len t + (32 * _7178) + -mem[64] + 32
                    mem[_3776 + _4026 + 128] = 0
                    mem[_3776 + 32] = ceil32(_4026) + 128
                    _5455 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[ceil32(_4026) + _3776 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    t = ceil32(_4026) + _3776 + (32 * _5455) + 160
                    u = ceil32(_4026) + _3776 + 160
                    while idx < _5455:
                        mem[u] = t + -ceil32(_4026) + -_3776 - 160
                        _7181 = mem[s]
                        _7413 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7413:
                            mem[v + t + 32] = mem[_7181 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7413) > _7413:
                            mem[t + _7413 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7413) + t + 32
                        u = u + 32
                        continue 
                    mem[_3776 + 64] = t - _3776
                    _7180 = mem[_1970]
                    mem[t] = mem[_1970]
                    mem[t + 32 len 32 * _7180] = mem[_1970 + 32 len 32 * _7180]
                    var52001 = _7180
                    return memory
                      from mem[64]
                       len t + (32 * _7180) + -mem[64] + 32
                mem[0] = sha3(arg1, 3) + 7
                mem[_1817 + 32] = address(stor3[arg1][7].field_0)
                idx = _1817 + 32
                s = 0
                while _1817 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                    mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + 352] = _1817
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(mem[ceil32(return_data.size) + 288]) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _5157 = mem[ceil32(return_data.size) + 192]
                _5158 = mem[ceil32(return_data.size) + 96]
                _5159 = mem[mem[ceil32(return_data.size) + 192]]
                if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                    revert with 0, 65
                _5274 = mem[64]
                mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
                mem[64] = mem[64] + (32 * _5159) + 32
                if not _5159:
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1817]:
                            revert with 0, 50
                        _7416 = sha3(mem[(32 * idx) + _1817 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1817]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1817 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5274]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5274 + 32] > !uint256(stor1[_7416]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5274 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5274 + 32] + uint256(stor1[_7416])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _7414 = mem[64]
                    mem[mem[64]] = 96
                    _7826 = mem[_5158]
                    mem[mem[64] + 96] = mem[_5158]
                    mem[mem[64] + 128 len ceil32(_7826)] = mem[_5158 + 32 len ceil32(_7826)]
                    if ceil32(_7826) <= _7826:
                        mem[mem[64] + 32] = ceil32(_7826) + 128
                        _9539 = mem[_5157]
                        mem[ceil32(_7826) + _7414 + 128] = mem[_5157]
                        idx = 0
                        s = _5157 + 32
                        t = ceil32(_7826) + _7414 + (32 * _9539) + 160
                        u = ceil32(_7826) + _7414 + 160
                        while idx < _9539:
                            mem[u] = t + -ceil32(_7826) + -_7414 - 160
                            _10458 = mem[s]
                            _10599 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _10599:
                                mem[v + t + 32] = mem[_10458 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_10599) > _10599:
                                mem[t + _10599 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_10599) + t + 32
                            u = u + 32
                            continue 
                        mem[_7414 + 64] = t - _7414
                        _10457 = mem[_5274]
                        mem[t] = mem[_5274]
                        mem[t + 32 len 32 * _10457] = mem[_5274 + 32 len 32 * _10457]
                        return memory
                          from mem[64]
                           len t + (32 * _10457) + -mem[64] + 32
                    mem[mem[64] + _7826 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_7826) + 128
                    _9661 = mem[_5157]
                    mem[ceil32(_7826) + _7414 + 128] = mem[_5157]
                    idx = 0
                    s = _5157 + 32
                    t = ceil32(_7826) + _7414 + (32 * _9661) + 160
                    u = ceil32(_7826) + _7414 + 160
                    while idx < _9661:
                        mem[u] = t + -ceil32(_7826) + -_7414 - 160
                        _10460 = mem[s]
                        _10600 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10600:
                            mem[v + t + 32] = mem[_10460 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10600) > _10600:
                            mem[t + _10600 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10600) + t + 32
                        u = u + 32
                        continue 
                    mem[_7414 + 64] = t - _7414
                    _10459 = mem[_5274]
                    mem[t] = mem[_5274]
                    mem[t + 32 len 32 * _10459] = mem[_5274 + 32 len 32 * _10459]
                    var55001 = _10459
                    return memory
                      from mem[64]
                       len t + (32 * _10459) + -mem[64] + 32
                mem[_5274 + 32 len 32 * _5159] = call.data[calldata.size len 32 * _5159]
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1817]:
                        revert with 0, 50
                    _7421 = sha3(mem[(32 * idx) + _1817 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1817]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1817 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5274]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5274 + 32] > !uint256(stor1[_7421]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5274 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5274 + 32] + uint256(stor1[_7421])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _7419 = mem[64]
                mem[mem[64]] = 96
                _7828 = mem[_5158]
                mem[mem[64] + 96] = mem[_5158]
                mem[mem[64] + 128 len ceil32(_7828)] = mem[_5158 + 32 len ceil32(_7828)]
                if ceil32(_7828) <= _7828:
                    mem[mem[64] + 32] = ceil32(_7828) + 128
                    _9540 = mem[_5157]
                    mem[ceil32(_7828) + _7419 + 128] = mem[_5157]
                    idx = 0
                    s = _5157 + 32
                    t = ceil32(_7828) + _7419 + (32 * _9540) + 160
                    u = ceil32(_7828) + _7419 + 160
                    while idx < _9540:
                        mem[u] = t + -ceil32(_7828) + -_7419 - 160
                        _10462 = mem[s]
                        _10601 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10601:
                            mem[v + t + 32] = mem[_10462 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10601) > _10601:
                            mem[t + _10601 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10601) + t + 32
                        u = u + 32
                        continue 
                    mem[_7419 + 64] = t - _7419
                    _10461 = mem[_5274]
                    mem[t] = mem[_5274]
                    mem[t + 32 len 32 * _10461] = mem[_5274 + 32 len 32 * _10461]
                    var55001 = _10461
                    return memory
                      from mem[64]
                       len t + (32 * _10461) + -mem[64] + 32
                mem[mem[64] + _7828 + 128] = 0
                mem[mem[64] + 32] = ceil32(_7828) + 128
                _9662 = mem[_5157]
                mem[ceil32(_7828) + _7419 + 128] = mem[_5157]
                idx = 0
                s = _5157 + 32
                t = ceil32(_7828) + _7419 + (32 * _9662) + 160
                u = ceil32(_7828) + _7419 + 160
                while idx < _9662:
                    mem[u] = t + -ceil32(_7828) + -_7419 - 160
                    _10464 = mem[s]
                    _10602 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10602:
                        mem[v + t + 32] = mem[_10464 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10602) > _10602:
                        mem[t + _10602 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10602) + t + 32
                    u = u + 32
                    continue 
                mem[_7419 + 64] = t - _7419
                _10463 = mem[_5274]
                mem[t] = mem[_5274]
                mem[t + 32 len 32 * _10463] = mem[_5274 + 32 len 32 * _10463]
                var56001 = _10463
                return memory
                  from mem[64]
                   len t + (32 * _10463) + -mem[64] + 32
            mem[0] = sha3(arg1, 3)
            mem[ceil32(return_data.size) + 448] = uint256(stor3[arg1].field_0)
            idx = ceil32(return_data.size) + 448
            s = 0
            while ceil32(return_data.size) + uint255(stor3[arg1].field_1) + 416 > idx:
                mem[idx + 32] = uint256(stor3[arg1][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _4064 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_4064] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_4064 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_4064 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _4064 + 32
                                u = sha3(mem[0])
                                while _4064 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _4064
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _4064
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_4064 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _4064
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_4064 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _4064 + 32
                    u = sha3(mem[0])
                    while _4064 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _4064
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _4098 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_4098] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _4098
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_4098 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _4098
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_4098 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _4098 + 32
                    u = sha3(mem[0])
                    while _4098 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _4098
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_4098 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_4098 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _4098 + 32
                        u = sha3(mem[0])
                        while _4098 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _4098
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _3635 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_3635] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _3635
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _3923 = mem[ceil32(return_data.size) + 96]
                _3924 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                if mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] > test266151307():
                    revert with 0, 65
                _4023 = mem[64]
                mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                mem[64] = mem[64] + (32 * _3924) + 32
                if not _3924:
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_3635]:
                            revert with 0, 50
                        _5266 = sha3(mem[(32 * idx) + _3635 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_3635]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _3635 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_4023]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4023 + 32] > !uint256(stor1[_5266]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4023 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4023 + 32] + uint256(stor1[_5266])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _5264 = mem[64]
                    mem[mem[64]] = 96
                    _5450 = mem[_3923]
                    mem[mem[64] + 96] = mem[_3923]
                    mem[mem[64] + 128 len ceil32(_5450)] = mem[_3923 + 32 len ceil32(_5450)]
                    s = ceil32(_5450)
                    if ceil32(_5450) <= _5450:
                        mem[mem[64] + 32] = ceil32(_5450) + 128
                        _7613 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[ceil32(_5450) + _5264 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                        t = ceil32(_5450) + _5264 + (32 * _7613) + 160
                        u = ceil32(_5450) + _5264 + 160
                        while idx < _7613:
                            mem[u] = t + -ceil32(_5450) + -_5264 - 160
                            _9178 = mem[s]
                            _9387 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _9387:
                                mem[v + t + 32] = mem[_9178 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_9387) > _9387:
                                mem[t + _9387 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_9387) + t + 32
                            u = u + 32
                            continue 
                        mem[_5264 + 64] = t - _5264
                        _9177 = mem[_4023]
                        mem[t] = mem[_4023]
                        mem[t + 32 len 32 * _9177] = mem[_4023 + 32 len 32 * _9177]
                        var53002 = _4023 + (32 * _9177) + 32
                        return memory
                          from mem[64]
                           len t + (32 * _9177) + -mem[64] + 32
                    mem[mem[64] + _5450 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_5450) + 128
                    _7815 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[ceil32(_5450) + _5264 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    t = ceil32(_5450) + _5264 + (32 * _7815) + 160
                    u = ceil32(_5450) + _5264 + 160
                    while idx < _7815:
                        mem[u] = t + -ceil32(_5450) + -_5264 - 160
                        _9180 = mem[s]
                        _9388 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _9388:
                            mem[v + t + 32] = mem[_9180 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_9388) > _9388:
                            mem[t + _9388 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_9388) + t + 32
                        u = u + 32
                        continue 
                    mem[_5264 + 64] = t - _5264
                    _9179 = mem[_4023]
                    mem[t] = mem[_4023]
                    mem[t + 32 len 32 * _9179] = mem[_4023 + 32 len 32 * _9179]
                    var54001 = _9179
                    return memory
                      from mem[64]
                       len t + (32 * _9179) + -mem[64] + 32
                mem[_4023 + 32 len 32 * _3924] = call.data[calldata.size len 32 * _3924]
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3635]:
                        revert with 0, 50
                    _5271 = sha3(mem[(32 * idx) + _3635 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3635]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _3635 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_4023]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4023 + 32] > !uint256(stor1[_5271]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4023 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4023 + 32] + uint256(stor1[_5271])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _5269 = mem[64]
                mem[mem[64]] = 96
                _5452 = mem[_3923]
                mem[mem[64] + 96] = mem[_3923]
                mem[mem[64] + 128 len ceil32(_5452)] = mem[_3923 + 32 len ceil32(_5452)]
                var46001 = ceil32(_5452)
                if ceil32(_5452) <= _5452:
                    mem[mem[64] + 32] = ceil32(_5452) + 128
                    _7614 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[ceil32(_5452) + _5269 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    t = ceil32(_5452) + _5269 + (32 * _7614) + 160
                    u = ceil32(_5452) + _5269 + 160
                    while idx < _7614:
                        mem[u] = t + -ceil32(_5452) + -_5269 - 160
                        _9182 = mem[s]
                        _9389 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _9389:
                            mem[v + t + 32] = mem[_9182 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_9389) > _9389:
                            mem[t + _9389 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_9389) + t + 32
                        u = u + 32
                        continue 
                    mem[_5269 + 64] = t - _5269
                    _9181 = mem[_4023]
                    mem[t] = mem[_4023]
                    mem[t + 32 len 32 * _9181] = mem[_4023 + 32 len 32 * _9181]
                    var54001 = _9181
                    return memory
                      from mem[64]
                       len t + (32 * _9181) + -mem[64] + 32
                mem[mem[64] + _5452 + 128] = 0
                mem[mem[64] + 32] = ceil32(_5452) + 128
                _7816 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                mem[ceil32(_5452) + _5269 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                t = ceil32(_5452) + _5269 + (32 * _7816) + 160
                u = ceil32(_5452) + _5269 + 160
                while idx < _7816:
                    mem[u] = t + -ceil32(_5452) + -_5269 - 160
                    _9184 = mem[s]
                    _9390 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _9390:
                        mem[v + t + 32] = mem[_9184 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_9390) > _9390:
                        mem[t + _9390 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_9390) + t + 32
                    u = u + 32
                    continue 
                mem[_5269 + 64] = t - _5269
                _9183 = mem[_4023]
                mem[t] = mem[_4023]
                mem[t + 32 len 32 * _9183] = mem[_4023 + 32 len 32 * _9183]
                var55001 = _9183
                return memory
                  from mem[64]
                   len t + (32 * _9183) + -mem[64] + 32
            mem[0] = sha3(arg1, 3) + 7
            mem[_3635 + 32] = address(stor3[arg1][7].field_0)
            idx = _3635 + 32
            s = 0
            while _3635 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _3635
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _7170 = mem[ceil32(return_data.size) + 192]
            _7171 = mem[ceil32(return_data.size) + 96]
            _7172 = mem[mem[ceil32(return_data.size) + 192]]
            if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                revert with 0, 65
            _7409 = mem[64]
            mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
            mem[64] = mem[64] + (32 * _7172) + 32
            if not _7172:
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3635]:
                        revert with 0, 50
                    _9393 = sha3(mem[(32 * idx) + _3635 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3635]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _3635 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_7409]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7409 + 32] > !uint256(stor1[_9393]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7409 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7409 + 32] + uint256(stor1[_9393])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _9391 = mem[64]
                mem[mem[64]] = 96
                _9657 = mem[_7171]
                mem[mem[64] + 96] = mem[_7171]
                mem[mem[64] + 128 len ceil32(_9657)] = mem[_7171 + 32 len ceil32(_9657)]
                if ceil32(_9657) <= _9657:
                    mem[mem[64] + 32] = ceil32(_9657) + 128
                    _10683 = mem[_7170]
                    mem[ceil32(_9657) + _9391 + 128] = mem[_7170]
                    idx = 0
                    s = _7170 + 32
                    t = ceil32(_9657) + _9391 + (32 * _10683) + 160
                    u = ceil32(_9657) + _9391 + 160
                    while idx < _10683:
                        mem[u] = t + -ceil32(_9657) + -_9391 - 160
                        _11160 = mem[s]
                        _11299 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _11299:
                            mem[v + t + 32] = mem[_11160 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_11299) > _11299:
                            mem[t + _11299 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_11299) + t + 32
                        u = u + 32
                        continue 
                    mem[_9391 + 64] = t - _9391
                    _11159 = mem[_7409]
                    mem[t] = mem[_7409]
                    mem[t + 32 len 32 * _11159] = mem[_7409 + 32 len 32 * _11159]
                    var57001 = _11159
                    var57002 = _7409 + (32 * _11159) + 32
                    var57005 = t + (32 * _11159) + 32
                    return memory
                      from mem[64]
                       len t + (32 * _11159) + -mem[64] + 32
                mem[mem[64] + _9657 + 128] = 0
                mem[mem[64] + 32] = ceil32(_9657) + 128
                _10799 = mem[_7170]
                mem[ceil32(_9657) + _9391 + 128] = mem[_7170]
                idx = 0
                s = _7170 + 32
                t = ceil32(_9657) + _9391 + (32 * _10799) + 160
                u = ceil32(_9657) + _9391 + 160
                while idx < _10799:
                    mem[u] = t + -ceil32(_9657) + -_9391 - 160
                    _11162 = mem[s]
                    _11300 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _11300:
                        mem[v + t + 32] = mem[_11162 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_11300) > _11300:
                        mem[t + _11300 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_11300) + t + 32
                    u = u + 32
                    continue 
                mem[_9391 + 64] = t - _9391
                _11161 = mem[_7409]
                mem[t] = mem[_7409]
                mem[t + 32 len 32 * _11161] = mem[_7409 + 32 len 32 * _11161]
                var58001 = _11161
                var58002 = _7409 + (32 * _11161) + 32
                var58005 = t + (32 * _11161) + 32
                return memory
                  from mem[64]
                   len t + (32 * _11161) + -mem[64] + 32
            mem[_7409 + 32 len 32 * _7172] = call.data[calldata.size len 32 * _7172]
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3635]:
                    revert with 0, 50
                _9398 = sha3(mem[(32 * idx) + _3635 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3635]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _3635 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_7409]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7409 + 32] > !uint256(stor1[_9398]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7409 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7409 + 32] + uint256(stor1[_9398])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _9396 = mem[64]
            mem[mem[64]] = 96
            _9659 = mem[_7171]
            mem[mem[64] + 96] = mem[_7171]
            mem[mem[64] + 128 len ceil32(_9659)] = mem[_7171 + 32 len ceil32(_9659)]
            if ceil32(_9659) > _9659:
                mem[mem[64] + _9659 + 128] = 0
                mem[mem[64] + 32] = ceil32(_9659) + 128
                _10800 = mem[_7170]
                mem[ceil32(_9659) + _9396 + 128] = mem[_7170]
                idx = 0
                s = _7170 + 32
                t = ceil32(_9659) + _9396 + (32 * _10800) + 160
                u = ceil32(_9659) + _9396 + 160
                while idx < _10800:
                    mem[u] = t + -ceil32(_9659) + -_9396 - 160
                    _11166 = mem[s]
                    _11302 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _11302:
                        mem[v + t + 32] = mem[_11166 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_11302) > _11302:
                        mem[t + _11302 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_11302) + t + 32
                    u = u + 32
                    continue 
                mem[_9396 + 64] = t - _9396
                _11165 = mem[_7409]
                mem[t] = mem[_7409]
                mem[t + 32 len 32 * _11165] = mem[_7409 + 32 len 32 * _11165]
                var59001 = _11165
                return memory
                  from mem[64]
                   len t + (32 * _11165) + -mem[64] + 32
            mem[mem[64] + 32] = ceil32(_9659) + 128
            _10684 = mem[_7170]
            mem[ceil32(_9659) + _9396 + 128] = mem[_7170]
            idx = 0
            s = _7170 + 32
            t = ceil32(_9659) + _9396 + (32 * _10684) + 160
            u = ceil32(_9659) + _9396 + 160
            while idx < _10684:
                mem[u] = t + -ceil32(_9659) + -_9396 - 160
                _11164 = mem[s]
                _11301 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _11301:
                    mem[v + t + 32] = mem[_11164 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_11301) > _11301:
                    mem[t + _11301 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_11301) + t + 32
                u = u + 32
                continue 
            mem[_9396 + 64] = t - _9396
            _11163 = mem[_7409]
            mem[t] = mem[_7409]
            mem[t + 32 len 32 * _11163] = mem[_7409 + 32 len 32 * _11163]
            var58001 = _11163
            var58002 = _7409 + (32 * _11163) + 32
            var58005 = t + (32 * _11163) + 32
            return memory
              from mem[64]
               len t + (32 * _11163) + -mem[64] + 32
        if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if not stor3[arg1].field_1 % 128:
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _2014 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_2014] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_2014 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_2014 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _2014 + 32
                                u = sha3(mem[0])
                                while _2014 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _2014
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _2014
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_2014 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _2014
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_2014 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _2014 + 32
                    u = sha3(mem[0])
                    while _2014 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _2014
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _2077 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_2077] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _2077
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_2077 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _2077
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_2077 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _2077 + 32
                    u = sha3(mem[0])
                    while _2077 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _2077
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_2077 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_2077 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _2077 + 32
                        u = sha3(mem[0])
                        while _2077 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _2077
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _1819 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_1819] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _1819
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _1923 = mem[ceil32(return_data.size) + 96]
                _1924 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                if mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] > test266151307():
                    revert with 0, 65
                _1971 = mem[64]
                mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                mem[64] = mem[64] + (32 * _1924) + 32
                if not _1924:
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1819]:
                            revert with 0, 50
                        _3783 = sha3(mem[(32 * idx) + _1819 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1819]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1819 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1971]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1971 + 32] > !uint256(stor1[_3783]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1971 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1971 + 32] + uint256(stor1[_3783])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3781 = mem[64]
                    mem[mem[64]] = 96
                    _4028 = mem[_1923]
                    mem[mem[64] + 96] = mem[_1923]
                    mem[mem[64] + 128 len ceil32(_4028)] = mem[_1923 + 32 len ceil32(_4028)]
                    if ceil32(_4028) <= _4028:
                        mem[mem[64] + 32] = ceil32(_4028) + 128
                        _5371 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[ceil32(_4028) + _3781 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                        t = ceil32(_4028) + _3781 + (32 * _5371) + 160
                        u = ceil32(_4028) + _3781 + 160
                        while idx < _5371:
                            mem[u] = t + -ceil32(_4028) + -_3781 - 160
                            _7187 = mem[s]
                            _7424 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7424:
                                mem[v + t + 32] = mem[_7187 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7424) > _7424:
                                mem[t + _7424 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7424) + t + 32
                            u = u + 32
                            continue 
                        mem[_3781 + 64] = t - _3781
                        _7186 = mem[_1971]
                        mem[t] = mem[_1971]
                        mem[t + 32 len 32 * _7186] = mem[_1971 + 32 len 32 * _7186]
                        return memory
                          from mem[64]
                           len t + (32 * _7186) + -mem[64] + 32
                    mem[mem[64] + _4028 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_4028) + 128
                    _5457 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[ceil32(_4028) + _3781 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    t = ceil32(_4028) + _3781 + (32 * _5457) + 160
                    u = ceil32(_4028) + _3781 + 160
                    while idx < _5457:
                        mem[u] = t + -ceil32(_4028) + -_3781 - 160
                        _7189 = mem[s]
                        _7425 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7425:
                            mem[v + t + 32] = mem[_7189 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7425) > _7425:
                            mem[t + _7425 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7425) + t + 32
                        u = u + 32
                        continue 
                    mem[_3781 + 64] = t - _3781
                    _7188 = mem[_1971]
                    mem[t] = mem[_1971]
                    mem[t + 32 len 32 * _7188] = mem[_1971 + 32 len 32 * _7188]
                    var50001 = _7188
                    return memory
                      from mem[64]
                       len t + (32 * _7188) + -mem[64] + 32
                mem[_1971 + 32 len 32 * _1924] = call.data[calldata.size len 32 * _1924]
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1819]:
                        revert with 0, 50
                    _3788 = sha3(mem[(32 * idx) + _1819 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1819]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1819 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1971]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1971 + 32] > !uint256(stor1[_3788]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1971 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1971 + 32] + uint256(stor1[_3788])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3786 = mem[64]
                mem[mem[64]] = 96
                _4030 = mem[_1923]
                mem[mem[64] + 96] = mem[_1923]
                mem[mem[64] + 128 len ceil32(_4030)] = mem[_1923 + 32 len ceil32(_4030)]
                if ceil32(_4030) <= _4030:
                    mem[mem[64] + 32] = ceil32(_4030) + 128
                    _5372 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[ceil32(_4030) + _3786 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    t = ceil32(_4030) + _3786 + (32 * _5372) + 160
                    u = ceil32(_4030) + _3786 + 160
                    while idx < _5372:
                        mem[u] = t + -ceil32(_4030) + -_3786 - 160
                        _7191 = mem[s]
                        _7426 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7426:
                            mem[v + t + 32] = mem[_7191 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7426) > _7426:
                            mem[t + _7426 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7426) + t + 32
                        u = u + 32
                        continue 
                    mem[_3786 + 64] = t - _3786
                    _7190 = mem[_1971]
                    mem[t] = mem[_1971]
                    mem[t + 32 len 32 * _7190] = mem[_1971 + 32 len 32 * _7190]
                    return memory
                      from mem[64]
                       len t + (32 * _7190) + -mem[64] + 32
                mem[mem[64] + _4030 + 128] = 0
                mem[mem[64] + 32] = ceil32(_4030) + 128
                _5458 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                mem[ceil32(_4030) + _3786 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                t = ceil32(_4030) + _3786 + (32 * _5458) + 160
                u = ceil32(_4030) + _3786 + 160
                while idx < _5458:
                    mem[u] = t + -ceil32(_4030) + -_3786 - 160
                    _7193 = mem[s]
                    _7427 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _7427:
                        mem[v + t + 32] = mem[_7193 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7427) > _7427:
                        mem[t + _7427 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_7427) + t + 32
                    u = u + 32
                    continue 
                mem[_3786 + 64] = t - _3786
                _7192 = mem[_1971]
                mem[t] = mem[_1971]
                mem[t + 32 len 32 * _7192] = mem[_1971 + 32 len 32 * _7192]
                var51001 = _7192
                return memory
                  from mem[64]
                   len t + (32 * _7192) + -mem[64] + 32
            mem[0] = sha3(arg1, 3) + 7
            mem[_1819 + 32] = address(stor3[arg1][7].field_0)
            idx = _1819 + 32
            s = 0
            while _1819 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _1819
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _5164 = mem[ceil32(return_data.size) + 192]
            _5165 = mem[ceil32(return_data.size) + 96]
            _5166 = mem[mem[ceil32(return_data.size) + 192]]
            if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                revert with 0, 65
            _5275 = mem[64]
            mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
            mem[64] = mem[64] + (32 * _5166) + 32
            if not _5166:
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1819]:
                        revert with 0, 50
                    _7430 = sha3(mem[(32 * idx) + _1819 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1819]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1819 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5275]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5275 + 32] > !uint256(stor1[_7430]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5275 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5275 + 32] + uint256(stor1[_7430])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _7428 = mem[64]
                mem[mem[64]] = 96
                _7838 = mem[_5165]
                mem[mem[64] + 96] = mem[_5165]
                mem[mem[64] + 128 len ceil32(_7838)] = mem[_5165 + 32 len ceil32(_7838)]
                if ceil32(_7838) <= _7838:
                    mem[mem[64] + 32] = ceil32(_7838) + 128
                    _9541 = mem[_5164]
                    mem[ceil32(_7838) + _7428 + 128] = mem[_5164]
                    idx = 0
                    s = _5164 + 32
                    t = ceil32(_7838) + _7428 + (32 * _9541) + 160
                    u = ceil32(_7838) + _7428 + 160
                    while idx < _9541:
                        mem[u] = t + -ceil32(_7838) + -_7428 - 160
                        _10466 = mem[s]
                        _10603 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10603:
                            mem[v + t + 32] = mem[_10466 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10603) > _10603:
                            mem[t + _10603 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10603) + t + 32
                        u = u + 32
                        continue 
                    mem[_7428 + 64] = t - _7428
                    _10465 = mem[_5275]
                    mem[t] = mem[_5275]
                    mem[t + 32 len 32 * _10465] = mem[_5275 + 32 len 32 * _10465]
                    return memory
                      from mem[64]
                       len t + (32 * _10465) + -mem[64] + 32
                mem[mem[64] + _7838 + 128] = 0
                mem[mem[64] + 32] = ceil32(_7838) + 128
                _9663 = mem[_5164]
                mem[ceil32(_7838) + _7428 + 128] = mem[_5164]
                idx = 0
                s = _5164 + 32
                t = ceil32(_7838) + _7428 + (32 * _9663) + 160
                u = ceil32(_7838) + _7428 + 160
                while idx < _9663:
                    mem[u] = t + -ceil32(_7838) + -_7428 - 160
                    _10468 = mem[s]
                    _10604 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10604:
                        mem[v + t + 32] = mem[_10468 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10604) > _10604:
                        mem[t + _10604 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10604) + t + 32
                    u = u + 32
                    continue 
                mem[_7428 + 64] = t - _7428
                _10467 = mem[_5275]
                mem[t] = mem[_5275]
                mem[t + 32 len 32 * _10467] = mem[_5275 + 32 len 32 * _10467]
                var54001 = _10467
                return memory
                  from mem[64]
                   len t + (32 * _10467) + -mem[64] + 32
            mem[_5275 + 32 len 32 * _5166] = call.data[calldata.size len 32 * _5166]
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1819]:
                    revert with 0, 50
                _7435 = sha3(mem[(32 * idx) + _1819 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1819]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _1819 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5275]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5275 + 32] > !uint256(stor1[_7435]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5275 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5275 + 32] + uint256(stor1[_7435])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _7433 = mem[64]
            mem[mem[64]] = 96
            _7840 = mem[_5165]
            mem[mem[64] + 96] = mem[_5165]
            mem[mem[64] + 128 len ceil32(_7840)] = mem[_5165 + 32 len ceil32(_7840)]
            if ceil32(_7840) <= _7840:
                mem[mem[64] + 32] = ceil32(_7840) + 128
                _9542 = mem[_5164]
                mem[ceil32(_7840) + _7433 + 128] = mem[_5164]
                idx = 0
                s = _5164 + 32
                t = ceil32(_7840) + _7433 + (32 * _9542) + 160
                u = ceil32(_7840) + _7433 + 160
                while idx < _9542:
                    mem[u] = t + -ceil32(_7840) + -_7433 - 160
                    _10470 = mem[s]
                    _10605 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10605:
                        mem[v + t + 32] = mem[_10470 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10605) > _10605:
                        mem[t + _10605 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10605) + t + 32
                    u = u + 32
                    continue 
                mem[_7433 + 64] = t - _7433
                _10469 = mem[_5275]
                mem[t] = mem[_5275]
                mem[t + 32 len 32 * _10469] = mem[_5275 + 32 len 32 * _10469]
                var54001 = _10469
                return memory
                  from mem[64]
                   len t + (32 * _10469) + -mem[64] + 32
            mem[mem[64] + _7840 + 128] = 0
            mem[mem[64] + 32] = ceil32(_7840) + 128
            _9664 = mem[_5164]
            mem[ceil32(_7840) + _7433 + 128] = mem[_5164]
            idx = 0
            s = _5164 + 32
            t = ceil32(_7840) + _7433 + (32 * _9664) + 160
            u = ceil32(_7840) + _7433 + 160
            while idx < _9664:
                mem[u] = t + -ceil32(_7840) + -_7433 - 160
                _10472 = mem[s]
                _10606 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _10606:
                    mem[v + t + 32] = mem[_10472 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_10606) > _10606:
                    mem[t + _10606 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_10606) + t + 32
                u = u + 32
                continue 
            mem[_7433 + 64] = t - _7433
            _10471 = mem[_5275]
            mem[t] = mem[_5275]
            mem[t + 32 len 32 * _10471] = mem[_5275 + 32 len 32 * _10471]
            var55001 = _10471
            return memory
              from mem[64]
               len t + (32 * _10471) + -mem[64] + 32
        if 31 >= stor3[arg1].field_1 % 128:
            mem[ceil32(return_data.size) + 448] = 256 * Mask(248, 0, stor3[arg1].field_8)
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _2018 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_2018] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_2018 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_2018 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _2018 + 32
                                u = sha3(mem[0])
                                while _2018 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _2018
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _2018
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_2018 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _2018
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_2018 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _2018 + 32
                    u = sha3(mem[0])
                    while _2018 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _2018
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _2084 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_2084] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _2084
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_2084 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _2084
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_2084 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _2084 + 32
                    u = sha3(mem[0])
                    while _2084 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _2084
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_2084 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_2084 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _2084 + 32
                        u = sha3(mem[0])
                        while _2084 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _2084
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _1821 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_1821] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _1821
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _1928 = mem[ceil32(return_data.size) + 96]
                _1929 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                if mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] > test266151307():
                    revert with 0, 65
                _1974 = mem[64]
                mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                mem[64] = mem[64] + (32 * _1929) + 32
                if not _1929:
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1821]:
                            revert with 0, 50
                        _3795 = sha3(mem[(32 * idx) + _1821 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1821]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1821 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1974]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1974 + 32] > !uint256(stor1[_3795]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1974 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1974 + 32] + uint256(stor1[_3795])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3793 = mem[64]
                    mem[mem[64]] = 96
                    _4033 = mem[_1928]
                    mem[mem[64] + 96] = mem[_1928]
                    mem[mem[64] + 128 len ceil32(_4033)] = mem[_1928 + 32 len ceil32(_4033)]
                    if ceil32(_4033) <= _4033:
                        mem[mem[64] + 32] = ceil32(_4033) + 128
                        _5380 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        mem[ceil32(_4033) + _3793 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                        t = ceil32(_4033) + _3793 + (32 * _5380) + 160
                        u = ceil32(_4033) + _3793 + 160
                        while idx < _5380:
                            mem[u] = t + -ceil32(_4033) + -_3793 - 160
                            _7206 = mem[s]
                            _7439 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7439:
                                mem[v + t + 32] = mem[_7206 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7439) > _7439:
                                mem[t + _7439 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7439) + t + 32
                            u = u + 32
                            continue 
                        mem[_3793 + 64] = t - _3793
                        _7205 = mem[_1974]
                        mem[t] = mem[_1974]
                        mem[t + 32 len 32 * _7205] = mem[_1974 + 32 len 32 * _7205]
                        return memory
                          from mem[64]
                           len t + (32 * _7205) + -mem[64] + 32
                    mem[mem[64] + _4033 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_4033) + 128
                    _5464 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[ceil32(_4033) + _3793 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    t = ceil32(_4033) + _3793 + (32 * _5464) + 160
                    u = ceil32(_4033) + _3793 + 160
                    while idx < _5464:
                        mem[u] = t + -ceil32(_4033) + -_3793 - 160
                        _7208 = mem[s]
                        _7440 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7440:
                            mem[v + t + 32] = mem[_7208 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7440) > _7440:
                            mem[t + _7440 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7440) + t + 32
                        u = u + 32
                        continue 
                    mem[_3793 + 64] = t - _3793
                    _7207 = mem[_1974]
                    mem[t] = mem[_1974]
                    mem[t + 32 len 32 * _7207] = mem[_1974 + 32 len 32 * _7207]
                    var52001 = _7207
                    return memory
                      from mem[64]
                       len t + (32 * _7207) + -mem[64] + 32
                mem[_1974 + 32 len 32 * _1929] = call.data[calldata.size len 32 * _1929]
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1821]:
                        revert with 0, 50
                    _3800 = sha3(mem[(32 * idx) + _1821 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1821]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1821 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1974]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1974 + 32] > !uint256(stor1[_3800]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1974 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1974 + 32] + uint256(stor1[_3800])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3798 = mem[64]
                mem[mem[64]] = 96
                _4035 = mem[_1928]
                mem[mem[64] + 96] = mem[_1928]
                mem[mem[64] + 128 len ceil32(_4035)] = mem[_1928 + 32 len ceil32(_4035)]
                if ceil32(_4035) <= _4035:
                    mem[mem[64] + 32] = ceil32(_4035) + 128
                    _5381 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[ceil32(_4035) + _3798 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    t = ceil32(_4035) + _3798 + (32 * _5381) + 160
                    u = ceil32(_4035) + _3798 + 160
                    while idx < _5381:
                        mem[u] = t + -ceil32(_4035) + -_3798 - 160
                        _7210 = mem[s]
                        _7441 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7441:
                            mem[v + t + 32] = mem[_7210 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7441) > _7441:
                            mem[t + _7441 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7441) + t + 32
                        u = u + 32
                        continue 
                    mem[_3798 + 64] = t - _3798
                    _7209 = mem[_1974]
                    mem[t] = mem[_1974]
                    mem[t + 32 len 32 * _7209] = mem[_1974 + 32 len 32 * _7209]
                    return memory
                      from mem[64]
                       len t + (32 * _7209) + -mem[64] + 32
                mem[mem[64] + _4035 + 128] = 0
                mem[mem[64] + 32] = ceil32(_4035) + 128
                _5465 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                mem[ceil32(_4035) + _3798 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                t = ceil32(_4035) + _3798 + (32 * _5465) + 160
                u = ceil32(_4035) + _3798 + 160
                while idx < _5465:
                    mem[u] = t + -ceil32(_4035) + -_3798 - 160
                    _7212 = mem[s]
                    _7442 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _7442:
                        mem[v + t + 32] = mem[_7212 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7442) > _7442:
                        mem[t + _7442 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_7442) + t + 32
                    u = u + 32
                    continue 
                mem[_3798 + 64] = t - _3798
                _7211 = mem[_1974]
                mem[t] = mem[_1974]
                mem[t + 32 len 32 * _7211] = mem[_1974 + 32 len 32 * _7211]
                var53001 = _7211
                return memory
                  from mem[64]
                   len t + (32 * _7211) + -mem[64] + 32
            mem[0] = sha3(arg1, 3) + 7
            mem[_1821 + 32] = address(stor3[arg1][7].field_0)
            idx = _1821 + 32
            s = 0
            while _1821 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _1821
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _5175 = mem[ceil32(return_data.size) + 192]
            _5176 = mem[ceil32(return_data.size) + 96]
            _5177 = mem[mem[ceil32(return_data.size) + 192]]
            if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                revert with 0, 65
            _5286 = mem[64]
            mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
            mem[64] = mem[64] + (32 * _5177) + 32
            if not _5177:
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1821]:
                        revert with 0, 50
                    _7445 = sha3(mem[(32 * idx) + _1821 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1821]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1821 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5286]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5286 + 32] > !uint256(stor1[_7445]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5286 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5286 + 32] + uint256(stor1[_7445])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _7443 = mem[64]
                mem[mem[64]] = 96
                _7853 = mem[_5176]
                mem[mem[64] + 96] = mem[_5176]
                mem[mem[64] + 128 len ceil32(_7853)] = mem[_5176 + 32 len ceil32(_7853)]
                if ceil32(_7853) <= _7853:
                    mem[mem[64] + 32] = ceil32(_7853) + 128
                    _9553 = mem[_5175]
                    mem[ceil32(_7853) + _7443 + 128] = mem[_5175]
                    idx = 0
                    s = _5175 + 32
                    t = ceil32(_7853) + _7443 + (32 * _9553) + 160
                    u = ceil32(_7853) + _7443 + 160
                    while idx < _9553:
                        mem[u] = t + -ceil32(_7853) + -_7443 - 160
                        _10484 = mem[s]
                        _10611 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10611:
                            mem[v + t + 32] = mem[_10484 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10611) > _10611:
                            mem[t + _10611 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10611) + t + 32
                        u = u + 32
                        continue 
                    mem[_7443 + 64] = t - _7443
                    _10483 = mem[_5286]
                    mem[t] = mem[_5286]
                    mem[t + 32 len 32 * _10483] = mem[_5286 + 32 len 32 * _10483]
                    return memory
                      from mem[64]
                       len t + (32 * _10483) + -mem[64] + 32
                mem[mem[64] + _7853 + 128] = 0
                mem[mem[64] + 32] = ceil32(_7853) + 128
                _9677 = mem[_5175]
                mem[ceil32(_7853) + _7443 + 128] = mem[_5175]
                idx = 0
                s = _5175 + 32
                t = ceil32(_7853) + _7443 + (32 * _9677) + 160
                u = ceil32(_7853) + _7443 + 160
                while idx < _9677:
                    mem[u] = t + -ceil32(_7853) + -_7443 - 160
                    _10486 = mem[s]
                    _10612 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10612:
                        mem[v + t + 32] = mem[_10486 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10612) > _10612:
                        mem[t + _10612 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10612) + t + 32
                    u = u + 32
                    continue 
                mem[_7443 + 64] = t - _7443
                _10485 = mem[_5286]
                mem[t] = mem[_5286]
                mem[t + 32 len 32 * _10485] = mem[_5286 + 32 len 32 * _10485]
                var56001 = _10485
                return memory
                  from mem[64]
                   len t + (32 * _10485) + -mem[64] + 32
            mem[_5286 + 32 len 32 * _5177] = call.data[calldata.size len 32 * _5177]
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1821]:
                    revert with 0, 50
                _7450 = sha3(mem[(32 * idx) + _1821 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1821]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _1821 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5286]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5286 + 32] > !uint256(stor1[_7450]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5286 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5286 + 32] + uint256(stor1[_7450])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _7448 = mem[64]
            mem[mem[64]] = 96
            _7855 = mem[_5176]
            mem[mem[64] + 96] = mem[_5176]
            mem[mem[64] + 128 len ceil32(_7855)] = mem[_5176 + 32 len ceil32(_7855)]
            if ceil32(_7855) <= _7855:
                mem[mem[64] + 32] = ceil32(_7855) + 128
                _9554 = mem[_5175]
                mem[ceil32(_7855) + _7448 + 128] = mem[_5175]
                idx = 0
                s = _5175 + 32
                t = ceil32(_7855) + _7448 + (32 * _9554) + 160
                u = ceil32(_7855) + _7448 + 160
                while idx < _9554:
                    mem[u] = t + -ceil32(_7855) + -_7448 - 160
                    _10488 = mem[s]
                    _10613 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10613:
                        mem[v + t + 32] = mem[_10488 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10613) > _10613:
                        mem[t + _10613 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10613) + t + 32
                    u = u + 32
                    continue 
                mem[_7448 + 64] = t - _7448
                _10487 = mem[_5286]
                mem[t] = mem[_5286]
                mem[t + 32 len 32 * _10487] = mem[_5286 + 32 len 32 * _10487]
                var56001 = _10487
                return memory
                  from mem[64]
                   len t + (32 * _10487) + -mem[64] + 32
            mem[mem[64] + _7855 + 128] = 0
            mem[mem[64] + 32] = ceil32(_7855) + 128
            _9678 = mem[_5175]
            mem[ceil32(_7855) + _7448 + 128] = mem[_5175]
            idx = 0
            s = _5175 + 32
            t = ceil32(_7855) + _7448 + (32 * _9678) + 160
            u = ceil32(_7855) + _7448 + 160
            while idx < _9678:
                mem[u] = t + -ceil32(_7855) + -_7448 - 160
                _10490 = mem[s]
                _10614 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _10614:
                    mem[v + t + 32] = mem[_10490 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_10614) > _10614:
                    mem[t + _10614 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_10614) + t + 32
                u = u + 32
                continue 
            mem[_7448 + 64] = t - _7448
            _10489 = mem[_5286]
            mem[t] = mem[_5286]
            mem[t + 32 len 32 * _10489] = mem[_5286 + 32 len 32 * _10489]
            var57001 = _10489
            return memory
              from mem[64]
               len t + (32 * _10489) + -mem[64] + 32
        mem[0] = sha3(arg1, 3)
        mem[ceil32(return_data.size) + 448] = uint256(stor3[arg1].field_0)
        idx = ceil32(return_data.size) + 448
        s = 0
        while ceil32(return_data.size) + stor3[arg1].field_1 % 128 + 416 > idx:
            mem[idx + 32] = uint256(stor3[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
        mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
        mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
        mem[64] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + (32 * uint256(stor3[arg1].field_768)) + 480
        mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] = uint256(stor3[arg1].field_768)
        s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
        idx = 0
        while idx < uint256(stor3[arg1].field_768):
            mem[0] = sha3(arg1, 3) + 3
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                _4066 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                mem[_4066] = uint255(stor3[arg1][idx + 3].field_1)
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor3[arg1][idx + 3].field_1):
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_4066 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_4066 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _4066 + 32
                            u = sha3(mem[0])
                            while _4066 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _4066
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor3[arg1][idx + 3].field_1 % 128:
                    mem[s] = _4066
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_4066 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _4066
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_4066 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _4066 + 32
                u = sha3(mem[0])
                while _4066 + stor3[arg1][u + 3].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _4066
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            _4104 = mem[64]
            mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
            mem[_4104] = stor3[arg1][idx + 3].field_1 % 128
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                if not uint255(stor3[arg1][idx + 3].field_1):
                    mem[s] = _4104
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                    mem[_4104 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _4104
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_4104 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _4104 + 32
                u = sha3(mem[0])
                while _4104 + uint255(stor3[arg1][u + 3].field_1) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _4104
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            if stor3[arg1][idx + 3].field_1 % 128:
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_4104 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_4104 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _4104 + 32
                    u = sha3(mem[0])
                    while _4104 + stor3[arg1][idx + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _4104
            s = s + 32
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448
        mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
        mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
        mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
        mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
        _3645 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
        mem[_3645] = uint256(stor3[arg1].field_1792)
        if not uint256(stor3[arg1].field_1792):
            mem[ceil32(return_data.size) + 352] = _3645
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(uint8(stor3[arg1].field_1536)) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _3940 = mem[ceil32(return_data.size) + 96]
            _3941 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
            if mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448] > test266151307():
                revert with 0, 65
            _4032 = mem[64]
            mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
            mem[64] = mem[64] + (32 * _3941) + 32
            if not _3941:
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3645]:
                        revert with 0, 50
                    _5278 = sha3(mem[(32 * idx) + _3645 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3645]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _3645 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_4032]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4032 + 32] > !uint256(stor1[_5278]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4032 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4032 + 32] + uint256(stor1[_5278])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _5276 = mem[64]
                mem[mem[64]] = 96
                _5460 = mem[_3940]
                mem[mem[64] + 96] = mem[_3940]
                mem[mem[64] + 128 len ceil32(_5460)] = mem[_3940 + 32 len ceil32(_5460)]
                s = ceil32(_5460)
                if ceil32(_5460) <= _5460:
                    mem[mem[64] + 32] = ceil32(_5460) + 128
                    _7636 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    mem[ceil32(_5460) + _5276 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                    t = ceil32(_5460) + _5276 + (32 * _7636) + 160
                    u = ceil32(_5460) + _5276 + 160
                    while idx < _7636:
                        mem[u] = t + -ceil32(_5460) + -_5276 - 160
                        _9210 = mem[s]
                        _9409 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _9409:
                            mem[v + t + 32] = mem[_9210 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_9409) > _9409:
                            mem[t + _9409 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_9409) + t + 32
                        u = u + 32
                        continue 
                    mem[_5276 + 64] = t - _5276
                    _9209 = mem[_4032]
                    mem[t] = mem[_4032]
                    mem[t + 32 len 32 * _9209] = mem[_4032 + 32 len 32 * _9209]
                    var54002 = _4032 + (32 * _9209) + 32
                    return memory
                      from mem[64]
                       len t + (32 * _9209) + -mem[64] + 32
                mem[mem[64] + _5460 + 128] = 0
                mem[mem[64] + 32] = ceil32(_5460) + 128
                _7842 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                mem[ceil32(_5460) + _5276 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                t = ceil32(_5460) + _5276 + (32 * _7842) + 160
                u = ceil32(_5460) + _5276 + 160
                while idx < _7842:
                    mem[u] = t + -ceil32(_5460) + -_5276 - 160
                    _9212 = mem[s]
                    _9410 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _9410:
                        mem[v + t + 32] = mem[_9212 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_9410) > _9410:
                        mem[t + _9410 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_9410) + t + 32
                    u = u + 32
                    continue 
                mem[_5276 + 64] = t - _5276
                _9211 = mem[_4032]
                mem[t] = mem[_4032]
                mem[t + 32 len 32 * _9211] = mem[_4032 + 32 len 32 * _9211]
                var55001 = _9211
                return memory
                  from mem[64]
                   len t + (32 * _9211) + -mem[64] + 32
            mem[_4032 + 32 len 32 * _3941] = call.data[calldata.size len 32 * _3941]
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3645]:
                    revert with 0, 50
                _5283 = sha3(mem[(32 * idx) + _3645 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3645]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _3645 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_4032]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4032 + 32] > !uint256(stor1[_5283]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4032 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4032 + 32] + uint256(stor1[_5283])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _5281 = mem[64]
            mem[mem[64]] = 96
            _5462 = mem[_3940]
            mem[mem[64] + 96] = mem[_3940]
            mem[mem[64] + 128 len ceil32(_5462)] = mem[_3940 + 32 len ceil32(_5462)]
            var47001 = ceil32(_5462)
            if ceil32(_5462) <= _5462:
                mem[mem[64] + 32] = ceil32(_5462) + 128
                _7637 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                mem[ceil32(_5462) + _5281 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
                t = ceil32(_5462) + _5281 + (32 * _7637) + 160
                u = ceil32(_5462) + _5281 + 160
                while idx < _7637:
                    mem[u] = t + -ceil32(_5462) + -_5281 - 160
                    _9214 = mem[s]
                    _9411 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _9411:
                        mem[v + t + 32] = mem[_9214 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_9411) > _9411:
                        mem[t + _9411 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_9411) + t + 32
                    u = u + 32
                    continue 
                mem[_5281 + 64] = t - _5281
                _9213 = mem[_4032]
                mem[t] = mem[_4032]
                mem[t + 32 len 32 * _9213] = mem[_4032 + 32 len 32 * _9213]
                var55001 = _9213
                return memory
                  from mem[64]
                   len t + (32 * _9213) + -mem[64] + 32
            mem[mem[64] + _5462 + 128] = 0
            mem[mem[64] + 32] = ceil32(_5462) + 128
            _7843 = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
            mem[ceil32(_5462) + _5281 + 128] = mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 448]
            idx = 0
            s = ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 480
            t = ceil32(_5462) + _5281 + (32 * _7843) + 160
            u = ceil32(_5462) + _5281 + 160
            while idx < _7843:
                mem[u] = t + -ceil32(_5462) + -_5281 - 160
                _9216 = mem[s]
                _9412 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _9412:
                    mem[v + t + 32] = mem[_9216 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_9412) > _9412:
                    mem[t + _9412 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_9412) + t + 32
                u = u + 32
                continue 
            mem[_5281 + 64] = t - _5281
            _9215 = mem[_4032]
            mem[t] = mem[_4032]
            mem[t + 32 len 32 * _9215] = mem[_4032 + 32 len 32 * _9215]
            var56001 = _9215
            return memory
              from mem[64]
               len t + (32 * _9215) + -mem[64] + 32
        mem[0] = sha3(arg1, 3) + 7
        mem[_3645 + 32] = address(stor3[arg1][7].field_0)
        idx = _3645 + 32
        s = 0
        while _3645 + (32 * uint256(stor3[arg1].field_1792)) > idx:
            mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + 352] = _3645
        mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
        if bool(mem[ceil32(return_data.size) + 288]) != 1:
            revert with 0, 'No Vote exists against this ID or the vote has been suspended'
        _7201 = mem[ceil32(return_data.size) + 192]
        _7202 = mem[ceil32(return_data.size) + 96]
        _7203 = mem[mem[ceil32(return_data.size) + 192]]
        if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
            revert with 0, 65
        _7438 = mem[64]
        mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
        mem[64] = mem[64] + (32 * _7203) + 32
        if not _7203:
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3645]:
                    revert with 0, 50
                _9415 = sha3(mem[(32 * idx) + _3645 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3645]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _3645 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_7438]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7438 + 32] > !uint256(stor1[_9415]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7438 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7438 + 32] + uint256(stor1[_9415])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _9413 = mem[64]
            mem[mem[64]] = 96
            _9673 = mem[_7202]
            mem[mem[64] + 96] = mem[_7202]
            mem[mem[64] + 128 len ceil32(_9673)] = mem[_7202 + 32 len ceil32(_9673)]
            if ceil32(_9673) <= _9673:
                mem[mem[64] + 32] = ceil32(_9673) + 128
                _10693 = mem[_7201]
                mem[ceil32(_9673) + _9413 + 128] = mem[_7201]
                idx = 0
                s = _7201 + 32
                t = ceil32(_9673) + _9413 + (32 * _10693) + 160
                u = ceil32(_9673) + _9413 + 160
                while idx < _10693:
                    mem[u] = t + -ceil32(_9673) + -_9413 - 160
                    _11184 = mem[s]
                    _11311 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _11311:
                        mem[v + t + 32] = mem[_11184 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_11311) > _11311:
                        mem[t + _11311 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_11311) + t + 32
                    u = u + 32
                    continue 
                mem[_9413 + 64] = t - _9413
                _11183 = mem[_7438]
                mem[t] = mem[_7438]
                mem[t + 32 len 32 * _11183] = mem[_7438 + 32 len 32 * _11183]
                var58001 = _11183
                var58002 = _7438 + (32 * _11183) + 32
                var58005 = t + (32 * _11183) + 32
                return memory
                  from mem[64]
                   len t + (32 * _11183) + -mem[64] + 32
            mem[mem[64] + _9673 + 128] = 0
            mem[mem[64] + 32] = ceil32(_9673) + 128
            _10817 = mem[_7201]
            mem[ceil32(_9673) + _9413 + 128] = mem[_7201]
            idx = 0
            s = _7201 + 32
            t = ceil32(_9673) + _9413 + (32 * _10817) + 160
            u = ceil32(_9673) + _9413 + 160
            while idx < _10817:
                mem[u] = t + -ceil32(_9673) + -_9413 - 160
                _11186 = mem[s]
                _11312 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _11312:
                    mem[v + t + 32] = mem[_11186 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_11312) > _11312:
                    mem[t + _11312 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_11312) + t + 32
                u = u + 32
                continue 
            mem[_9413 + 64] = t - _9413
            _11185 = mem[_7438]
            mem[t] = mem[_7438]
            mem[t + 32 len 32 * _11185] = mem[_7438 + 32 len 32 * _11185]
            var59001 = _11185
            var59002 = _7438 + (32 * _11185) + 32
            var59005 = t + (32 * _11185) + 32
            return memory
              from mem[64]
               len t + (32 * _11185) + -mem[64] + 32
        mem[_7438 + 32 len 32 * _7203] = call.data[calldata.size len 32 * _7203]
        idx = 0
        while idx < uint256(stor3[arg1].field_1792):
            mem[0] = arg1
            mem[32] = 4
            if idx >= mem[_3645]:
                revert with 0, 50
            _9420 = sha3(mem[(32 * idx) + _3645 + 44 len 20], sha3(arg1, 4))
            mem[0] = arg1
            mem[32] = 4
            if idx >= mem[_3645]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + _3645 + 44 len 20]
            mem[32] = sha3(arg1, 4)
            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_7438]:
                revert with 0, 50
            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7438 + 32] > !uint256(stor1[_9420]):
                revert with 0, 17
            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7438 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7438 + 32] + uint256(stor1[_9420])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _9418 = mem[64]
        mem[mem[64]] = 96
        _9675 = mem[_7202]
        mem[mem[64] + 96] = mem[_7202]
        mem[mem[64] + 128 len ceil32(_9675)] = mem[_7202 + 32 len ceil32(_9675)]
        if ceil32(_9675) > _9675:
            mem[mem[64] + _9675 + 128] = 0
            mem[mem[64] + 32] = ceil32(_9675) + 128
            _10818 = mem[_7201]
            mem[ceil32(_9675) + _9418 + 128] = mem[_7201]
            idx = 0
            s = _7201 + 32
            t = ceil32(_9675) + _9418 + (32 * _10818) + 160
            u = ceil32(_9675) + _9418 + 160
            while idx < _10818:
                mem[u] = t + -ceil32(_9675) + -_9418 - 160
                _11190 = mem[s]
                _11314 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _11314:
                    mem[v + t + 32] = mem[_11190 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_11314) > _11314:
                    mem[t + _11314 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_11314) + t + 32
                u = u + 32
                continue 
            mem[_9418 + 64] = t - _9418
            _11189 = mem[_7438]
            mem[t] = mem[_7438]
            mem[t + 32 len 32 * _11189] = mem[_7438 + 32 len 32 * _11189]
            var60001 = _11189
            return memory
              from mem[64]
               len t + (32 * _11189) + -mem[64] + 32
        mem[mem[64] + 32] = ceil32(_9675) + 128
        _10694 = mem[_7201]
        mem[ceil32(_9675) + _9418 + 128] = mem[_7201]
        idx = 0
        s = _7201 + 32
        t = ceil32(_9675) + _9418 + (32 * _10694) + 160
        u = ceil32(_9675) + _9418 + 160
        while idx < _10694:
            mem[u] = t + -ceil32(_9675) + -_9418 - 160
            _11188 = mem[s]
            _11313 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _11313:
                mem[v + t + 32] = mem[_11188 + v + 32]
                v = v + 32
                continue 
            if ceil32(_11313) > _11313:
                mem[t + _11313 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_11313) + t + 32
            u = u + 32
            continue 
        mem[_9418 + 64] = t - _9418
        _11187 = mem[_7438]
        mem[t] = mem[_7438]
        mem[t + 32 len 32 * _11187] = mem[_7438 + 32 len 32 * _11187]
        var59001 = _11187
        var59002 = _7438 + (32 * _11187) + 32
        var59005 = t + (32 * _11187) + 32
        return memory
          from mem[64]
           len t + (32 * _11187) + -mem[64] + 32
    if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
        revert with 0, 34
    mem[ceil32(return_data.size) + 416] = stor3[arg1].field_1 % 128
    if bool(stor3[arg1].field_0):
        if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
            revert with 0, 34
        if not uint255(stor3[arg1].field_1):
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _2020 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_2020] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_2020 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_2020 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _2020 + 32
                                u = sha3(mem[0])
                                while _2020 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _2020
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _2020
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_2020 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _2020
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_2020 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _2020 + 32
                    u = sha3(mem[0])
                    while _2020 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _2020
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _2086 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_2086] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _2086
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_2086 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _2086
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_2086 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _2086 + 32
                    u = sha3(mem[0])
                    while _2086 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _2086
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_2086 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_2086 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _2086 + 32
                        u = sha3(mem[0])
                        while _2086 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _2086
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _1823 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_1823] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _1823
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _1933 = mem[ceil32(return_data.size) + 96]
                _1934 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                if mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] > test266151307():
                    revert with 0, 65
                _1975 = mem[64]
                mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[64] = mem[64] + (32 * _1934) + 32
                if not _1934:
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1823]:
                            revert with 0, 50
                        _3805 = sha3(mem[(32 * idx) + _1823 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1823]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1823 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1975]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1975 + 32] > !uint256(stor1[_3805]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1975 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1975 + 32] + uint256(stor1[_3805])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3803 = mem[64]
                    mem[mem[64]] = 96
                    _4037 = mem[_1933]
                    mem[mem[64] + 96] = mem[_1933]
                    mem[mem[64] + 128 len ceil32(_4037)] = mem[_1933 + 32 len ceil32(_4037)]
                    if ceil32(_4037) <= _4037:
                        mem[_3803 + 32] = ceil32(_4037) + 128
                        _5383 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        mem[ceil32(_4037) + _3803 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                        t = ceil32(_4037) + _3803 + (32 * _5383) + 160
                        u = ceil32(_4037) + _3803 + 160
                        while idx < _5383:
                            mem[u] = t + -ceil32(_4037) + -_3803 - 160
                            _7218 = mem[s]
                            _7453 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7453:
                                mem[v + t + 32] = mem[_7218 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7453) > _7453:
                                mem[t + _7453 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7453) + t + 32
                            u = u + 32
                            continue 
                        mem[_3803 + 64] = t - _3803
                        _7217 = mem[_1975]
                        mem[t] = mem[_1975]
                        mem[t + 32 len 32 * _7217] = mem[_1975 + 32 len 32 * _7217]
                        return memory
                          from mem[64]
                           len t + (32 * _7217) + -mem[64] + 32
                    mem[_3803 + _4037 + 128] = 0
                    mem[_3803 + 32] = ceil32(_4037) + 128
                    _5467 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[ceil32(_4037) + _3803 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                    t = ceil32(_4037) + _3803 + (32 * _5467) + 160
                    u = ceil32(_4037) + _3803 + 160
                    while idx < _5467:
                        mem[u] = t + -ceil32(_4037) + -_3803 - 160
                        _7220 = mem[s]
                        _7454 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7454:
                            mem[v + t + 32] = mem[_7220 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7454) > _7454:
                            mem[t + _7454 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7454) + t + 32
                        u = u + 32
                        continue 
                    mem[_3803 + 64] = t - _3803
                    _7219 = mem[_1975]
                    mem[t] = mem[_1975]
                    mem[t + 32 len 32 * _7219] = mem[_1975 + 32 len 32 * _7219]
                    var50001 = _7219
                    return memory
                      from mem[64]
                       len t + (32 * _7219) + -mem[64] + 32
                mem[_1975 + 32 len 32 * _1934] = call.data[calldata.size len 32 * _1934]
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1823]:
                        revert with 0, 50
                    _3810 = sha3(mem[(32 * idx) + _1823 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1823]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1823 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1975]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1975 + 32] > !uint256(stor1[_3810]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1975 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1975 + 32] + uint256(stor1[_3810])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3808 = mem[64]
                mem[mem[64]] = 96
                _4039 = mem[_1933]
                mem[mem[64] + 96] = mem[_1933]
                mem[mem[64] + 128 len ceil32(_4039)] = mem[_1933 + 32 len ceil32(_4039)]
                if ceil32(_4039) <= _4039:
                    mem[mem[64] + 32] = ceil32(_4039) + 128
                    _5384 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[ceil32(_4039) + _3808 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                    t = ceil32(_4039) + _3808 + (32 * _5384) + 160
                    u = ceil32(_4039) + _3808 + 160
                    while idx < _5384:
                        mem[u] = t + -ceil32(_4039) + -_3808 - 160
                        _7222 = mem[s]
                        _7455 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7455:
                            mem[v + t + 32] = mem[_7222 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7455) > _7455:
                            mem[t + _7455 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7455) + t + 32
                        u = u + 32
                        continue 
                    mem[_3808 + 64] = t - _3808
                    _7221 = mem[_1975]
                    mem[t] = mem[_1975]
                    mem[t + 32 len 32 * _7221] = mem[_1975 + 32 len 32 * _7221]
                    return memory
                      from mem[64]
                       len t + (32 * _7221) + -mem[64] + 32
                mem[mem[64] + _4039 + 128] = 0
                mem[mem[64] + 32] = ceil32(_4039) + 128
                _5468 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[ceil32(_4039) + _3808 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                t = ceil32(_4039) + _3808 + (32 * _5468) + 160
                u = ceil32(_4039) + _3808 + 160
                while idx < _5468:
                    mem[u] = t + -ceil32(_4039) + -_3808 - 160
                    _7224 = mem[s]
                    _7456 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _7456:
                        mem[v + t + 32] = mem[_7224 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7456) > _7456:
                        mem[t + _7456 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_7456) + t + 32
                    u = u + 32
                    continue 
                mem[_3808 + 64] = t - _3808
                _7223 = mem[_1975]
                mem[t] = mem[_1975]
                mem[t + 32 len 32 * _7223] = mem[_1975 + 32 len 32 * _7223]
                var51001 = _7223
                return memory
                  from mem[64]
                   len t + (32 * _7223) + -mem[64] + 32
            mem[0] = sha3(arg1, 3) + 7
            mem[_1823 + 32] = address(stor3[arg1][7].field_0)
            idx = _1823 + 32
            s = 0
            while _1823 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _1823
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _5182 = mem[ceil32(return_data.size) + 192]
            _5183 = mem[ceil32(return_data.size) + 96]
            _5184 = mem[mem[ceil32(return_data.size) + 192]]
            if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                revert with 0, 65
            _5287 = mem[64]
            mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
            mem[64] = mem[64] + (32 * _5184) + 32
            if not _5184:
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1823]:
                        revert with 0, 50
                    _7459 = sha3(mem[(32 * idx) + _1823 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1823]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1823 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5287]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5287 + 32] > !uint256(stor1[_7459]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5287 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5287 + 32] + uint256(stor1[_7459])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _7457 = mem[64]
                mem[mem[64]] = 96
                _7865 = mem[_5183]
                mem[mem[64] + 96] = mem[_5183]
                mem[mem[64] + 128 len ceil32(_7865)] = mem[_5183 + 32 len ceil32(_7865)]
                if ceil32(_7865) <= _7865:
                    mem[mem[64] + 32] = ceil32(_7865) + 128
                    _9555 = mem[_5182]
                    mem[ceil32(_7865) + _7457 + 128] = mem[_5182]
                    idx = 0
                    s = _5182 + 32
                    t = ceil32(_7865) + _7457 + (32 * _9555) + 160
                    u = ceil32(_7865) + _7457 + 160
                    while idx < _9555:
                        mem[u] = t + -ceil32(_7865) + -_7457 - 160
                        _10492 = mem[s]
                        _10615 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10615:
                            mem[v + t + 32] = mem[_10492 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10615) > _10615:
                            mem[t + _10615 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10615) + t + 32
                        u = u + 32
                        continue 
                    mem[_7457 + 64] = t - _7457
                    _10491 = mem[_5287]
                    mem[t] = mem[_5287]
                    mem[t + 32 len 32 * _10491] = mem[_5287 + 32 len 32 * _10491]
                    return memory
                      from mem[64]
                       len t + (32 * _10491) + -mem[64] + 32
                mem[mem[64] + _7865 + 128] = 0
                mem[mem[64] + 32] = ceil32(_7865) + 128
                _9679 = mem[_5182]
                mem[ceil32(_7865) + _7457 + 128] = mem[_5182]
                idx = 0
                s = _5182 + 32
                t = ceil32(_7865) + _7457 + (32 * _9679) + 160
                u = ceil32(_7865) + _7457 + 160
                while idx < _9679:
                    mem[u] = t + -ceil32(_7865) + -_7457 - 160
                    _10494 = mem[s]
                    _10616 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10616:
                        mem[v + t + 32] = mem[_10494 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10616) > _10616:
                        mem[t + _10616 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10616) + t + 32
                    u = u + 32
                    continue 
                mem[_7457 + 64] = t - _7457
                _10493 = mem[_5287]
                mem[t] = mem[_5287]
                mem[t + 32 len 32 * _10493] = mem[_5287 + 32 len 32 * _10493]
                var54001 = _10493
                return memory
                  from mem[64]
                   len t + (32 * _10493) + -mem[64] + 32
            mem[_5287 + 32 len 32 * _5184] = call.data[calldata.size len 32 * _5184]
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1823]:
                    revert with 0, 50
                _7464 = sha3(mem[(32 * idx) + _1823 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1823]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _1823 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5287]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5287 + 32] > !uint256(stor1[_7464]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5287 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5287 + 32] + uint256(stor1[_7464])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _7462 = mem[64]
            mem[mem[64]] = 96
            _7867 = mem[_5183]
            mem[mem[64] + 96] = mem[_5183]
            mem[mem[64] + 128 len ceil32(_7867)] = mem[_5183 + 32 len ceil32(_7867)]
            if ceil32(_7867) <= _7867:
                mem[mem[64] + 32] = ceil32(_7867) + 128
                _9556 = mem[_5182]
                mem[ceil32(_7867) + _7462 + 128] = mem[_5182]
                idx = 0
                s = _5182 + 32
                t = ceil32(_7867) + _7462 + (32 * _9556) + 160
                u = ceil32(_7867) + _7462 + 160
                while idx < _9556:
                    mem[u] = t + -ceil32(_7867) + -_7462 - 160
                    _10496 = mem[s]
                    _10617 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10617:
                        mem[v + t + 32] = mem[_10496 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10617) > _10617:
                        mem[t + _10617 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10617) + t + 32
                    u = u + 32
                    continue 
                mem[_7462 + 64] = t - _7462
                _10495 = mem[_5287]
                mem[t] = mem[_5287]
                mem[t + 32 len 32 * _10495] = mem[_5287 + 32 len 32 * _10495]
                var54001 = _10495
                return memory
                  from mem[64]
                   len t + (32 * _10495) + -mem[64] + 32
            mem[mem[64] + _7867 + 128] = 0
            mem[mem[64] + 32] = ceil32(_7867) + 128
            _9680 = mem[_5182]
            mem[ceil32(_7867) + _7462 + 128] = mem[_5182]
            idx = 0
            s = _5182 + 32
            t = ceil32(_7867) + _7462 + (32 * _9680) + 160
            u = ceil32(_7867) + _7462 + 160
            while idx < _9680:
                mem[u] = t + -ceil32(_7867) + -_7462 - 160
                _10498 = mem[s]
                _10618 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _10618:
                    mem[v + t + 32] = mem[_10498 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_10618) > _10618:
                    mem[t + _10618 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_10618) + t + 32
                u = u + 32
                continue 
            mem[_7462 + 64] = t - _7462
            _10497 = mem[_5287]
            mem[t] = mem[_5287]
            mem[t + 32 len 32 * _10497] = mem[_5287 + 32 len 32 * _10497]
            var55001 = _10497
            return memory
              from mem[64]
               len t + (32 * _10497) + -mem[64] + 32
        if 31 >= uint255(stor3[arg1].field_1):
            mem[ceil32(return_data.size) + 448] = 256 * Mask(248, 0, stor3[arg1].field_8)
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
            mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
            mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
            mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
            mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
            idx = 0
            while idx < uint256(stor3[arg1].field_768):
                mem[0] = sha3(arg1, 3) + 3
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    _2024 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                    mem[_2024] = uint255(stor3[arg1][idx + 3].field_1)
                    if bool(stor3[arg1][idx + 3].field_0):
                        if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor3[arg1][idx + 3].field_1):
                            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                                mem[_2024 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                                mem[_2024 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                                t = _2024 + 32
                                u = sha3(mem[0])
                                while _2024 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _2024
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor3[arg1][idx + 3].field_1 % 128:
                        mem[s] = _2024
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_2024 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _2024
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_2024 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _2024 + 32
                    u = sha3(mem[0])
                    while _2024 + stor3[arg1][u + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _2024
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                _2093 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
                mem[_2093] = stor3[arg1][idx + 3].field_1 % 128
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if not uint255(stor3[arg1][idx + 3].field_1):
                        mem[s] = _2093
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_2093 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        mem[s] = _2093
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_2093 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _2093 + 32
                    u = sha3(mem[0])
                    while _2093 + uint255(stor3[arg1][u + 3].field_1) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _2093
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if stor3[arg1][idx + 3].field_1 % 128:
                    if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                        mem[_2093 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_2093 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _2093 + 32
                        u = sha3(mem[0])
                        while _2093 + stor3[arg1][idx + 3].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _2093
                s = s + 32
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
            mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
            mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
            mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
            mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
            _1825 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
            mem[_1825] = uint256(stor3[arg1].field_1792)
            if not uint256(stor3[arg1].field_1792):
                mem[ceil32(return_data.size) + 352] = _1825
                mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
                if bool(uint8(stor3[arg1].field_1536)) != 1:
                    revert with 0, 'No Vote exists against this ID or the vote has been suspended'
                _1938 = mem[ceil32(return_data.size) + 96]
                _1939 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                if mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] > test266151307():
                    revert with 0, 65
                _1978 = mem[64]
                mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[64] = mem[64] + (32 * _1939) + 32
                if not _1939:
                    idx = 0
                    while idx < uint256(stor3[arg1].field_1792):
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1825]:
                            revert with 0, 50
                        _3817 = sha3(mem[(32 * idx) + _1825 + 44 len 20], sha3(arg1, 4))
                        mem[0] = arg1
                        mem[32] = 4
                        if idx >= mem[_1825]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + _1825 + 44 len 20]
                        mem[32] = sha3(arg1, 4)
                        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1978]:
                            revert with 0, 50
                        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1978 + 32] > !uint256(stor1[_3817]):
                            revert with 0, 17
                        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1978 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1978 + 32] + uint256(stor1[_3817])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3815 = mem[64]
                    mem[mem[64]] = 96
                    _4042 = mem[_1938]
                    mem[mem[64] + 96] = mem[_1938]
                    mem[mem[64] + 128 len ceil32(_4042)] = mem[_1938 + 32 len ceil32(_4042)]
                    if ceil32(_4042) <= _4042:
                        mem[mem[64] + 32] = ceil32(_4042) + 128
                        _5392 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        mem[ceil32(_4042) + _3815 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                        t = ceil32(_4042) + _3815 + (32 * _5392) + 160
                        u = ceil32(_4042) + _3815 + 160
                        while idx < _5392:
                            mem[u] = t + -ceil32(_4042) + -_3815 - 160
                            _7237 = mem[s]
                            _7468 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _7468:
                                mem[v + t + 32] = mem[_7237 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_7468) > _7468:
                                mem[t + _7468 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_7468) + t + 32
                            u = u + 32
                            continue 
                        mem[_3815 + 64] = t - _3815
                        _7236 = mem[_1978]
                        mem[t] = mem[_1978]
                        mem[t + 32 len 32 * _7236] = mem[_1978 + 32 len 32 * _7236]
                        return memory
                          from mem[64]
                           len t + (32 * _7236) + -mem[64] + 32
                    mem[mem[64] + _4042 + 128] = 0
                    mem[mem[64] + 32] = ceil32(_4042) + 128
                    _5474 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[ceil32(_4042) + _3815 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                    t = ceil32(_4042) + _3815 + (32 * _5474) + 160
                    u = ceil32(_4042) + _3815 + 160
                    while idx < _5474:
                        mem[u] = t + -ceil32(_4042) + -_3815 - 160
                        _7239 = mem[s]
                        _7469 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7469:
                            mem[v + t + 32] = mem[_7239 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7469) > _7469:
                            mem[t + _7469 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7469) + t + 32
                        u = u + 32
                        continue 
                    mem[_3815 + 64] = t - _3815
                    _7238 = mem[_1978]
                    mem[t] = mem[_1978]
                    mem[t + 32 len 32 * _7238] = mem[_1978 + 32 len 32 * _7238]
                    var52001 = _7238
                    return memory
                      from mem[64]
                       len t + (32 * _7238) + -mem[64] + 32
                mem[_1978 + 32 len 32 * _1939] = call.data[calldata.size len 32 * _1939]
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1825]:
                        revert with 0, 50
                    _3822 = sha3(mem[(32 * idx) + _1825 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1825]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1825 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1978]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1978 + 32] > !uint256(stor1[_3822]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1978 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1978 + 32] + uint256(stor1[_3822])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3820 = mem[64]
                mem[mem[64]] = 96
                _4044 = mem[_1938]
                mem[mem[64] + 96] = mem[_1938]
                mem[mem[64] + 128 len ceil32(_4044)] = mem[_1938 + 32 len ceil32(_4044)]
                if ceil32(_4044) <= _4044:
                    mem[mem[64] + 32] = ceil32(_4044) + 128
                    _5393 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[ceil32(_4044) + _3820 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                    t = ceil32(_4044) + _3820 + (32 * _5393) + 160
                    u = ceil32(_4044) + _3820 + 160
                    while idx < _5393:
                        mem[u] = t + -ceil32(_4044) + -_3820 - 160
                        _7241 = mem[s]
                        _7470 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7470:
                            mem[v + t + 32] = mem[_7241 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7470) > _7470:
                            mem[t + _7470 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7470) + t + 32
                        u = u + 32
                        continue 
                    mem[_3820 + 64] = t - _3820
                    _7240 = mem[_1978]
                    mem[t] = mem[_1978]
                    mem[t + 32 len 32 * _7240] = mem[_1978 + 32 len 32 * _7240]
                    return memory
                      from mem[64]
                       len t + (32 * _7240) + -mem[64] + 32
                mem[mem[64] + _4044 + 128] = 0
                mem[mem[64] + 32] = ceil32(_4044) + 128
                _5475 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[ceil32(_4044) + _3820 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                t = ceil32(_4044) + _3820 + (32 * _5475) + 160
                u = ceil32(_4044) + _3820 + 160
                while idx < _5475:
                    mem[u] = t + -ceil32(_4044) + -_3820 - 160
                    _7243 = mem[s]
                    _7471 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _7471:
                        mem[v + t + 32] = mem[_7243 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7471) > _7471:
                        mem[t + _7471 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_7471) + t + 32
                    u = u + 32
                    continue 
                mem[_3820 + 64] = t - _3820
                _7242 = mem[_1978]
                mem[t] = mem[_1978]
                mem[t + 32 len 32 * _7242] = mem[_1978 + 32 len 32 * _7242]
                var53001 = _7242
                return memory
                  from mem[64]
                   len t + (32 * _7242) + -mem[64] + 32
            mem[0] = sha3(arg1, 3) + 7
            mem[_1825 + 32] = address(stor3[arg1][7].field_0)
            idx = _1825 + 32
            s = 0
            while _1825 + (32 * uint256(stor3[arg1].field_1792)) > idx:
                mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + 352] = _1825
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(mem[ceil32(return_data.size) + 288]) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _5193 = mem[ceil32(return_data.size) + 192]
            _5194 = mem[ceil32(return_data.size) + 96]
            _5195 = mem[mem[ceil32(return_data.size) + 192]]
            if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
                revert with 0, 65
            _5298 = mem[64]
            mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
            mem[64] = mem[64] + (32 * _5195) + 32
            if not _5195:
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1825]:
                        revert with 0, 50
                    _7474 = sha3(mem[(32 * idx) + _1825 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1825]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1825 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5298]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5298 + 32] > !uint256(stor1[_7474]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5298 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5298 + 32] + uint256(stor1[_7474])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _7472 = mem[64]
                mem[mem[64]] = 96
                _7880 = mem[_5194]
                mem[mem[64] + 96] = mem[_5194]
                mem[mem[64] + 128 len ceil32(_7880)] = mem[_5194 + 32 len ceil32(_7880)]
                if ceil32(_7880) <= _7880:
                    mem[mem[64] + 32] = ceil32(_7880) + 128
                    _9567 = mem[_5193]
                    mem[ceil32(_7880) + _7472 + 128] = mem[_5193]
                    idx = 0
                    s = _5193 + 32
                    t = ceil32(_7880) + _7472 + (32 * _9567) + 160
                    u = ceil32(_7880) + _7472 + 160
                    while idx < _9567:
                        mem[u] = t + -ceil32(_7880) + -_7472 - 160
                        _10510 = mem[s]
                        _10623 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _10623:
                            mem[v + t + 32] = mem[_10510 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10623) > _10623:
                            mem[t + _10623 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10623) + t + 32
                        u = u + 32
                        continue 
                    mem[_7472 + 64] = t - _7472
                    _10509 = mem[_5298]
                    mem[t] = mem[_5298]
                    mem[t + 32 len 32 * _10509] = mem[_5298 + 32 len 32 * _10509]
                    return memory
                      from mem[64]
                       len t + (32 * _10509) + -mem[64] + 32
                mem[mem[64] + _7880 + 128] = 0
                mem[mem[64] + 32] = ceil32(_7880) + 128
                _9693 = mem[_5193]
                mem[ceil32(_7880) + _7472 + 128] = mem[_5193]
                idx = 0
                s = _5193 + 32
                t = ceil32(_7880) + _7472 + (32 * _9693) + 160
                u = ceil32(_7880) + _7472 + 160
                while idx < _9693:
                    mem[u] = t + -ceil32(_7880) + -_7472 - 160
                    _10512 = mem[s]
                    _10624 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10624:
                        mem[v + t + 32] = mem[_10512 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10624) > _10624:
                        mem[t + _10624 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10624) + t + 32
                    u = u + 32
                    continue 
                mem[_7472 + 64] = t - _7472
                _10511 = mem[_5298]
                mem[t] = mem[_5298]
                mem[t + 32 len 32 * _10511] = mem[_5298 + 32 len 32 * _10511]
                var56001 = _10511
                return memory
                  from mem[64]
                   len t + (32 * _10511) + -mem[64] + 32
            mem[_5298 + 32 len 32 * _5195] = call.data[calldata.size len 32 * _5195]
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1825]:
                    revert with 0, 50
                _7479 = sha3(mem[(32 * idx) + _1825 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1825]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _1825 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5298]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5298 + 32] > !uint256(stor1[_7479]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5298 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5298 + 32] + uint256(stor1[_7479])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _7477 = mem[64]
            mem[mem[64]] = 96
            _7882 = mem[_5194]
            mem[mem[64] + 96] = mem[_5194]
            mem[mem[64] + 128 len ceil32(_7882)] = mem[_5194 + 32 len ceil32(_7882)]
            if ceil32(_7882) <= _7882:
                mem[mem[64] + 32] = ceil32(_7882) + 128
                _9568 = mem[_5193]
                mem[ceil32(_7882) + _7477 + 128] = mem[_5193]
                idx = 0
                s = _5193 + 32
                t = ceil32(_7882) + _7477 + (32 * _9568) + 160
                u = ceil32(_7882) + _7477 + 160
                while idx < _9568:
                    mem[u] = t + -ceil32(_7882) + -_7477 - 160
                    _10514 = mem[s]
                    _10625 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10625:
                        mem[v + t + 32] = mem[_10514 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10625) > _10625:
                        mem[t + _10625 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10625) + t + 32
                    u = u + 32
                    continue 
                mem[_7477 + 64] = t - _7477
                _10513 = mem[_5298]
                mem[t] = mem[_5298]
                mem[t + 32 len 32 * _10513] = mem[_5298 + 32 len 32 * _10513]
                var56001 = _10513
                return memory
                  from mem[64]
                   len t + (32 * _10513) + -mem[64] + 32
            mem[mem[64] + _7882 + 128] = 0
            mem[mem[64] + 32] = ceil32(_7882) + 128
            _9694 = mem[_5193]
            mem[ceil32(_7882) + _7477 + 128] = mem[_5193]
            idx = 0
            s = _5193 + 32
            t = ceil32(_7882) + _7477 + (32 * _9694) + 160
            u = ceil32(_7882) + _7477 + 160
            while idx < _9694:
                mem[u] = t + -ceil32(_7882) + -_7477 - 160
                _10516 = mem[s]
                _10626 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _10626:
                    mem[v + t + 32] = mem[_10516 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_10626) > _10626:
                    mem[t + _10626 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_10626) + t + 32
                u = u + 32
                continue 
            mem[_7477 + 64] = t - _7477
            _10515 = mem[_5298]
            mem[t] = mem[_5298]
            mem[t + 32 len 32 * _10515] = mem[_5298 + 32 len 32 * _10515]
            var57001 = _10515
            return memory
              from mem[64]
               len t + (32 * _10515) + -mem[64] + 32
        mem[0] = sha3(arg1, 3)
        mem[ceil32(return_data.size) + 448] = uint256(stor3[arg1].field_0)
        idx = ceil32(return_data.size) + 448
        s = 0
        while ceil32(return_data.size) + uint255(stor3[arg1].field_1) + 416 > idx:
            mem[idx + 32] = uint256(stor3[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
        mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
        mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
        mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
        mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
        idx = 0
        while idx < uint256(stor3[arg1].field_768):
            mem[0] = sha3(arg1, 3) + 3
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                _4068 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                mem[_4068] = uint255(stor3[arg1][idx + 3].field_1)
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor3[arg1][idx + 3].field_1):
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_4068 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_4068 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _4068 + 32
                            u = sha3(mem[0])
                            while _4068 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _4068
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor3[arg1][idx + 3].field_1 % 128:
                    mem[s] = _4068
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_4068 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _4068
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_4068 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _4068 + 32
                u = sha3(mem[0])
                while _4068 + stor3[arg1][u + 3].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _4068
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            _4110 = mem[64]
            mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
            mem[_4110] = stor3[arg1][idx + 3].field_1 % 128
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                if not uint255(stor3[arg1][idx + 3].field_1):
                    mem[s] = _4110
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                    mem[_4110 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _4110
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_4110 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _4110 + 32
                u = sha3(mem[0])
                while _4110 + uint255(stor3[arg1][u + 3].field_1) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _4110
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            if stor3[arg1][idx + 3].field_1 % 128:
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_4110 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_4110 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _4110 + 32
                    u = sha3(mem[0])
                    while _4110 + stor3[arg1][idx + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _4110
            s = s + 32
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
        mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
        mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
        mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
        mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
        _3655 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
        mem[_3655] = uint256(stor3[arg1].field_1792)
        if not uint256(stor3[arg1].field_1792):
            mem[ceil32(return_data.size) + 352] = _3655
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(uint8(stor3[arg1].field_1536)) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _3957 = mem[ceil32(return_data.size) + 96]
            _3958 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            if mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] > test266151307():
                revert with 0, 65
            _4041 = mem[64]
            mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            mem[64] = mem[64] + (32 * _3958) + 32
            if not _3958:
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3655]:
                        revert with 0, 50
                    _5290 = sha3(mem[(32 * idx) + _3655 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_3655]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _3655 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_4041]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4041 + 32] > !uint256(stor1[_5290]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4041 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4041 + 32] + uint256(stor1[_5290])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _5288 = mem[64]
                mem[mem[64]] = 96
                _5470 = mem[_3957]
                mem[mem[64] + 96] = mem[_3957]
                mem[mem[64] + 128 len ceil32(_5470)] = mem[_3957 + 32 len ceil32(_5470)]
                s = ceil32(_5470)
                if ceil32(_5470) <= _5470:
                    mem[mem[64] + 32] = ceil32(_5470) + 128
                    _7659 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[ceil32(_5470) + _5288 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                    t = ceil32(_5470) + _5288 + (32 * _7659) + 160
                    u = ceil32(_5470) + _5288 + 160
                    while idx < _7659:
                        mem[u] = t + -ceil32(_5470) + -_5288 - 160
                        _9242 = mem[s]
                        _9431 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _9431:
                            mem[v + t + 32] = mem[_9242 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_9431) > _9431:
                            mem[t + _9431 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_9431) + t + 32
                        u = u + 32
                        continue 
                    mem[_5288 + 64] = t - _5288
                    _9241 = mem[_4041]
                    mem[t] = mem[_4041]
                    mem[t + 32 len 32 * _9241] = mem[_4041 + 32 len 32 * _9241]
                    var54002 = _4041 + (32 * _9241) + 32
                    return memory
                      from mem[64]
                       len t + (32 * _9241) + -mem[64] + 32
                mem[mem[64] + _5470 + 128] = 0
                mem[mem[64] + 32] = ceil32(_5470) + 128
                _7869 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[ceil32(_5470) + _5288 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                t = ceil32(_5470) + _5288 + (32 * _7869) + 160
                u = ceil32(_5470) + _5288 + 160
                while idx < _7869:
                    mem[u] = t + -ceil32(_5470) + -_5288 - 160
                    _9244 = mem[s]
                    _9432 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _9432:
                        mem[v + t + 32] = mem[_9244 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_9432) > _9432:
                        mem[t + _9432 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_9432) + t + 32
                    u = u + 32
                    continue 
                mem[_5288 + 64] = t - _5288
                _9243 = mem[_4041]
                mem[t] = mem[_4041]
                mem[t + 32 len 32 * _9243] = mem[_4041 + 32 len 32 * _9243]
                var55001 = _9243
                return memory
                  from mem[64]
                   len t + (32 * _9243) + -mem[64] + 32
            mem[_4041 + 32 len 32 * _3958] = call.data[calldata.size len 32 * _3958]
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3655]:
                    revert with 0, 50
                _5295 = sha3(mem[(32 * idx) + _3655 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3655]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _3655 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_4041]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4041 + 32] > !uint256(stor1[_5295]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4041 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4041 + 32] + uint256(stor1[_5295])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _5293 = mem[64]
            mem[mem[64]] = 96
            _5472 = mem[_3957]
            mem[mem[64] + 96] = mem[_3957]
            mem[mem[64] + 128 len ceil32(_5472)] = mem[_3957 + 32 len ceil32(_5472)]
            var47001 = ceil32(_5472)
            if ceil32(_5472) <= _5472:
                mem[_5293 + 32] = ceil32(_5472) + 128
                _7660 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[ceil32(_5472) + _5293 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                t = ceil32(_5472) + _5293 + (32 * _7660) + 160
                u = ceil32(_5472) + _5293 + 160
                while idx < _7660:
                    mem[u] = t + -ceil32(_5472) + -_5293 - 160
                    _9246 = mem[s]
                    _9433 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _9433:
                        mem[v + t + 32] = mem[_9246 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_9433) > _9433:
                        mem[t + _9433 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_9433) + t + 32
                    u = u + 32
                    continue 
                mem[_5293 + 64] = t - _5293
                _9245 = mem[_4041]
                mem[t] = mem[_4041]
                mem[t + 32 len 32 * _9245] = mem[_4041 + 32 len 32 * _9245]
                var55001 = _9245
                return memory
                  from mem[64]
                   len t + (32 * _9245) + -mem[64] + 32
            mem[_5293 + _5472 + 128] = 0
            mem[_5293 + 32] = ceil32(_5472) + 128
            _7870 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            mem[ceil32(_5472) + _5293 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            idx = 0
            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
            t = ceil32(_5472) + _5293 + (32 * _7870) + 160
            u = ceil32(_5472) + _5293 + 160
            while idx < _7870:
                mem[u] = t + -ceil32(_5472) + -_5293 - 160
                _9248 = mem[s]
                _9434 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _9434:
                    mem[v + t + 32] = mem[_9248 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_9434) > _9434:
                    mem[t + _9434 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_9434) + t + 32
                u = u + 32
                continue 
            mem[_5293 + 64] = t - _5293
            _9247 = mem[_4041]
            mem[t] = mem[_4041]
            mem[t + 32 len 32 * _9247] = mem[_4041 + 32 len 32 * _9247]
            var56001 = _9247
            return memory
              from mem[64]
               len t + (32 * _9247) + -mem[64] + 32
        mem[0] = sha3(arg1, 3) + 7
        mem[_3655 + 32] = address(stor3[arg1][7].field_0)
        idx = _3655 + 32
        s = 0
        while _3655 + (32 * uint256(stor3[arg1].field_1792)) > idx:
            mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + 352] = _3655
        mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
        if bool(mem[ceil32(return_data.size) + 288]) != 1:
            revert with 0, 'No Vote exists against this ID or the vote has been suspended'
        _7232 = mem[ceil32(return_data.size) + 192]
        _7233 = mem[ceil32(return_data.size) + 96]
        _7234 = mem[mem[ceil32(return_data.size) + 192]]
        if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
            revert with 0, 65
        _7467 = mem[64]
        mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
        mem[64] = mem[64] + (32 * _7234) + 32
        if not _7234:
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3655]:
                    revert with 0, 50
                _9437 = sha3(mem[(32 * idx) + _3655 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3655]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _3655 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_7467]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7467 + 32] > !uint256(stor1[_9437]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7467 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7467 + 32] + uint256(stor1[_9437])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _9435 = mem[64]
            mem[mem[64]] = 96
            _9689 = mem[_7233]
            mem[mem[64] + 96] = mem[_7233]
            mem[mem[64] + 128 len ceil32(_9689)] = mem[_7233 + 32 len ceil32(_9689)]
            if ceil32(_9689) <= _9689:
                mem[mem[64] + 32] = ceil32(_9689) + 128
                _10703 = mem[_7232]
                mem[ceil32(_9689) + _9435 + 128] = mem[_7232]
                idx = 0
                s = _7232 + 32
                t = ceil32(_9689) + _9435 + (32 * _10703) + 160
                u = ceil32(_9689) + _9435 + 160
                while idx < _10703:
                    mem[u] = t + -ceil32(_9689) + -_9435 - 160
                    _11208 = mem[s]
                    _11323 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _11323:
                        mem[v + t + 32] = mem[_11208 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_11323) > _11323:
                        mem[t + _11323 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_11323) + t + 32
                    u = u + 32
                    continue 
                mem[_9435 + 64] = t - _9435
                _11207 = mem[_7467]
                mem[t] = mem[_7467]
                mem[t + 32 len 32 * _11207] = mem[_7467 + 32 len 32 * _11207]
                var58001 = _11207
                var58002 = _7467 + (32 * _11207) + 32
                var58005 = t + (32 * _11207) + 32
                return memory
                  from mem[64]
                   len t + (32 * _11207) + -mem[64] + 32
            mem[mem[64] + _9689 + 128] = 0
            mem[mem[64] + 32] = ceil32(_9689) + 128
            _10835 = mem[_7232]
            mem[ceil32(_9689) + _9435 + 128] = mem[_7232]
            idx = 0
            s = _7232 + 32
            t = ceil32(_9689) + _9435 + (32 * _10835) + 160
            u = ceil32(_9689) + _9435 + 160
            while idx < _10835:
                mem[u] = t + -ceil32(_9689) + -_9435 - 160
                _11210 = mem[s]
                _11324 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _11324:
                    mem[v + t + 32] = mem[_11210 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_11324) > _11324:
                    mem[t + _11324 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_11324) + t + 32
                u = u + 32
                continue 
            mem[_9435 + 64] = t - _9435
            _11209 = mem[_7467]
            mem[t] = mem[_7467]
            mem[t + 32 len 32 * _11209] = mem[_7467 + 32 len 32 * _11209]
            var59001 = _11209
            var59002 = _7467 + (32 * _11209) + 32
            var59005 = t + (32 * _11209) + 32
            return memory
              from mem[64]
               len t + (32 * _11209) + -mem[64] + 32
        mem[_7467 + 32 len 32 * _7234] = call.data[calldata.size len 32 * _7234]
        idx = 0
        while idx < uint256(stor3[arg1].field_1792):
            mem[0] = arg1
            mem[32] = 4
            if idx >= mem[_3655]:
                revert with 0, 50
            _9442 = sha3(mem[(32 * idx) + _3655 + 44 len 20], sha3(arg1, 4))
            mem[0] = arg1
            mem[32] = 4
            if idx >= mem[_3655]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + _3655 + 44 len 20]
            mem[32] = sha3(arg1, 4)
            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_7467]:
                revert with 0, 50
            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7467 + 32] > !uint256(stor1[_9442]):
                revert with 0, 17
            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7467 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7467 + 32] + uint256(stor1[_9442])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _9440 = mem[64]
        mem[mem[64]] = 96
        _9691 = mem[_7233]
        mem[mem[64] + 96] = mem[_7233]
        mem[mem[64] + 128 len ceil32(_9691)] = mem[_7233 + 32 len ceil32(_9691)]
        if ceil32(_9691) > _9691:
            mem[mem[64] + _9691 + 128] = 0
            mem[mem[64] + 32] = ceil32(_9691) + 128
            _10836 = mem[_7232]
            mem[ceil32(_9691) + _9440 + 128] = mem[_7232]
            idx = 0
            s = _7232 + 32
            t = ceil32(_9691) + _9440 + (32 * _10836) + 160
            u = ceil32(_9691) + _9440 + 160
            while idx < _10836:
                mem[u] = t + -ceil32(_9691) + -_9440 - 160
                _11214 = mem[s]
                _11326 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _11326:
                    mem[v + t + 32] = mem[_11214 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_11326) > _11326:
                    mem[t + _11326 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_11326) + t + 32
                u = u + 32
                continue 
            mem[_9440 + 64] = t - _9440
            _11213 = mem[_7467]
            mem[t] = mem[_7467]
            mem[t + 32 len 32 * _11213] = mem[_7467 + 32 len 32 * _11213]
            var60001 = _11213
            return memory
              from mem[64]
               len t + (32 * _11213) + -mem[64] + 32
        mem[mem[64] + 32] = ceil32(_9691) + 128
        _10704 = mem[_7232]
        mem[ceil32(_9691) + _9440 + 128] = mem[_7232]
        idx = 0
        s = _7232 + 32
        t = ceil32(_9691) + _9440 + (32 * _10704) + 160
        u = ceil32(_9691) + _9440 + 160
        while idx < _10704:
            mem[u] = t + -ceil32(_9691) + -_9440 - 160
            _11212 = mem[s]
            _11325 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _11325:
                mem[v + t + 32] = mem[_11212 + v + 32]
                v = v + 32
                continue 
            if ceil32(_11325) > _11325:
                mem[t + _11325 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_11325) + t + 32
            u = u + 32
            continue 
        mem[_9440 + 64] = t - _9440
        _11211 = mem[_7467]
        mem[t] = mem[_7467]
        mem[t + 32 len 32 * _11211] = mem[_7467 + 32 len 32 * _11211]
        var59001 = _11211
        var59002 = _7467 + (32 * _11211) + 32
        var59005 = t + (32 * _11211) + 32
        return memory
          from mem[64]
           len t + (32 * _11211) + -mem[64] + 32
    if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if not stor3[arg1].field_1 % 128:
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
        mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
        mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
        mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
        mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
        idx = 0
        while idx < uint256(stor3[arg1].field_768):
            mem[0] = sha3(arg1, 3) + 3
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                _2026 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                mem[_2026] = uint255(stor3[arg1][idx + 3].field_1)
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor3[arg1][idx + 3].field_1):
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_2026 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_2026 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _2026 + 32
                            u = sha3(mem[0])
                            while _2026 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _2026
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor3[arg1][idx + 3].field_1 % 128:
                    mem[s] = _2026
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_2026 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _2026
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_2026 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _2026 + 32
                u = sha3(mem[0])
                while _2026 + stor3[arg1][u + 3].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _2026
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            _2095 = mem[64]
            mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
            mem[_2095] = stor3[arg1][idx + 3].field_1 % 128
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                if not uint255(stor3[arg1][idx + 3].field_1):
                    mem[s] = _2095
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                    mem[_2095 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _2095
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_2095 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _2095 + 32
                u = sha3(mem[0])
                while _2095 + uint255(stor3[arg1][u + 3].field_1) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _2095
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            if stor3[arg1][idx + 3].field_1 % 128:
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_2095 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_2095 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _2095 + 32
                    u = sha3(mem[0])
                    while _2095 + stor3[arg1][idx + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _2095
            s = s + 32
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
        mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
        mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
        mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
        mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
        _1827 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
        mem[_1827] = uint256(stor3[arg1].field_1792)
        if not uint256(stor3[arg1].field_1792):
            mem[ceil32(return_data.size) + 352] = _1827
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(uint8(stor3[arg1].field_1536)) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _1943 = mem[ceil32(return_data.size) + 96]
            _1944 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            if mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] > test266151307():
                revert with 0, 65
            _1979 = mem[64]
            mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            mem[64] = mem[64] + (32 * _1944) + 32
            if not _1944:
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1827]:
                        revert with 0, 50
                    _3827 = sha3(mem[(32 * idx) + _1827 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1827]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1827 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1979]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1979 + 32] > !uint256(stor1[_3827]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1979 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1979 + 32] + uint256(stor1[_3827])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3825 = mem[64]
                mem[mem[64]] = 96
                _4046 = mem[_1943]
                mem[mem[64] + 96] = mem[_1943]
                mem[mem[64] + 128 len ceil32(_4046)] = mem[_1943 + 32 len ceil32(_4046)]
                if ceil32(_4046) <= _4046:
                    mem[mem[64] + 32] = ceil32(_4046) + 128
                    _5395 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[ceil32(_4046) + _3825 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                    t = ceil32(_4046) + _3825 + (32 * _5395) + 160
                    u = ceil32(_4046) + _3825 + 160
                    while idx < _5395:
                        mem[u] = t + -ceil32(_4046) + -_3825 - 160
                        _7249 = mem[s]
                        _7482 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7482:
                            mem[v + t + 32] = mem[_7249 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7482) > _7482:
                            mem[t + _7482 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7482) + t + 32
                        u = u + 32
                        continue 
                    mem[_3825 + 64] = t - _3825
                    _7248 = mem[_1979]
                    mem[t] = mem[_1979]
                    mem[t + 32 len 32 * _7248] = mem[_1979 + 32 len 32 * _7248]
                    return memory
                      from mem[64]
                       len t + (32 * _7248) + -mem[64] + 32
                mem[mem[64] + _4046 + 128] = 0
                mem[mem[64] + 32] = ceil32(_4046) + 128
                _5477 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[ceil32(_4046) + _3825 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                t = ceil32(_4046) + _3825 + (32 * _5477) + 160
                u = ceil32(_4046) + _3825 + 160
                while idx < _5477:
                    mem[u] = t + -ceil32(_4046) + -_3825 - 160
                    _7251 = mem[s]
                    _7483 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _7483:
                        mem[v + t + 32] = mem[_7251 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7483) > _7483:
                        mem[t + _7483 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_7483) + t + 32
                    u = u + 32
                    continue 
                mem[_3825 + 64] = t - _3825
                _7250 = mem[_1979]
                mem[t] = mem[_1979]
                mem[t + 32 len 32 * _7250] = mem[_1979 + 32 len 32 * _7250]
                var51001 = _7250
                return memory
                  from mem[64]
                   len t + (32 * _7250) + -mem[64] + 32
            mem[_1979 + 32 len 32 * _1944] = call.data[calldata.size len 32 * _1944]
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1827]:
                    revert with 0, 50
                _3832 = sha3(mem[(32 * idx) + _1827 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1827]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _1827 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1979]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1979 + 32] > !uint256(stor1[_3832]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1979 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1979 + 32] + uint256(stor1[_3832])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3830 = mem[64]
            mem[mem[64]] = 96
            _4048 = mem[_1943]
            mem[mem[64] + 96] = mem[_1943]
            mem[mem[64] + 128 len ceil32(_4048)] = mem[_1943 + 32 len ceil32(_4048)]
            if ceil32(_4048) <= _4048:
                mem[mem[64] + 32] = ceil32(_4048) + 128
                _5396 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[ceil32(_4048) + _3830 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                t = ceil32(_4048) + _3830 + (32 * _5396) + 160
                u = ceil32(_4048) + _3830 + 160
                while idx < _5396:
                    mem[u] = t + -ceil32(_4048) + -_3830 - 160
                    _7253 = mem[s]
                    _7484 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _7484:
                        mem[v + t + 32] = mem[_7253 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7484) > _7484:
                        mem[t + _7484 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_7484) + t + 32
                    u = u + 32
                    continue 
                mem[_3830 + 64] = t - _3830
                _7252 = mem[_1979]
                mem[t] = mem[_1979]
                mem[t + 32 len 32 * _7252] = mem[_1979 + 32 len 32 * _7252]
                return memory
                  from mem[64]
                   len t + (32 * _7252) + -mem[64] + 32
            mem[mem[64] + _4048 + 128] = 0
            mem[mem[64] + 32] = ceil32(_4048) + 128
            _5478 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            mem[ceil32(_4048) + _3830 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            idx = 0
            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
            t = ceil32(_4048) + _3830 + (32 * _5478) + 160
            u = ceil32(_4048) + _3830 + 160
            while idx < _5478:
                mem[u] = t + -ceil32(_4048) + -_3830 - 160
                _7255 = mem[s]
                _7485 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _7485:
                    mem[v + t + 32] = mem[_7255 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_7485) > _7485:
                    mem[t + _7485 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_7485) + t + 32
                u = u + 32
                continue 
            mem[_3830 + 64] = t - _3830
            _7254 = mem[_1979]
            mem[t] = mem[_1979]
            mem[t + 32 len 32 * _7254] = mem[_1979 + 32 len 32 * _7254]
            var52001 = _7254
            return memory
              from mem[64]
               len t + (32 * _7254) + -mem[64] + 32
        mem[0] = sha3(arg1, 3) + 7
        mem[_1827 + 32] = address(stor3[arg1][7].field_0)
        idx = _1827 + 32
        s = 0
        while _1827 + (32 * uint256(stor3[arg1].field_1792)) > idx:
            mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + 352] = _1827
        mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
        if bool(mem[ceil32(return_data.size) + 288]) != 1:
            revert with 0, 'No Vote exists against this ID or the vote has been suspended'
        _5200 = mem[ceil32(return_data.size) + 192]
        _5201 = mem[ceil32(return_data.size) + 96]
        _5202 = mem[mem[ceil32(return_data.size) + 192]]
        if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
            revert with 0, 65
        _5299 = mem[64]
        mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
        mem[64] = mem[64] + (32 * _5202) + 32
        if not _5202:
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1827]:
                    revert with 0, 50
                _7488 = sha3(mem[(32 * idx) + _1827 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1827]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _1827 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5299]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5299 + 32] > !uint256(stor1[_7488]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5299 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5299 + 32] + uint256(stor1[_7488])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _7486 = mem[64]
            mem[mem[64]] = 96
            _7892 = mem[_5201]
            mem[mem[64] + 96] = mem[_5201]
            mem[mem[64] + 128 len ceil32(_7892)] = mem[_5201 + 32 len ceil32(_7892)]
            if ceil32(_7892) <= _7892:
                mem[_7486 + 32] = ceil32(_7892) + 128
                _9569 = mem[_5200]
                mem[ceil32(_7892) + _7486 + 128] = mem[_5200]
                idx = 0
                s = _5200 + 32
                t = ceil32(_7892) + _7486 + (32 * _9569) + 160
                u = ceil32(_7892) + _7486 + 160
                while idx < _9569:
                    mem[u] = t + -ceil32(_7892) + -_7486 - 160
                    _10518 = mem[s]
                    _10627 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10627:
                        mem[v + t + 32] = mem[_10518 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10627) > _10627:
                        mem[t + _10627 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10627) + t + 32
                    u = u + 32
                    continue 
                mem[_7486 + 64] = t - _7486
                _10517 = mem[_5299]
                mem[t] = mem[_5299]
                mem[t + 32 len 32 * _10517] = mem[_5299 + 32 len 32 * _10517]
                return memory
                  from mem[64]
                   len t + (32 * _10517) + -mem[64] + 32
            mem[_7486 + _7892 + 128] = 0
            mem[_7486 + 32] = ceil32(_7892) + 128
            _9695 = mem[_5200]
            mem[ceil32(_7892) + _7486 + 128] = mem[_5200]
            idx = 0
            s = _5200 + 32
            t = ceil32(_7892) + _7486 + (32 * _9695) + 160
            u = ceil32(_7892) + _7486 + 160
            while idx < _9695:
                mem[u] = t + -ceil32(_7892) + -_7486 - 160
                _10520 = mem[s]
                _10628 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _10628:
                    mem[v + t + 32] = mem[_10520 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_10628) > _10628:
                    mem[t + _10628 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_10628) + t + 32
                u = u + 32
                continue 
            mem[_7486 + 64] = t - _7486
            _10519 = mem[_5299]
            mem[t] = mem[_5299]
            mem[t + 32 len 32 * _10519] = mem[_5299 + 32 len 32 * _10519]
            var55001 = _10519
            return memory
              from mem[64]
               len t + (32 * _10519) + -mem[64] + 32
        mem[_5299 + 32 len 32 * _5202] = call.data[calldata.size len 32 * _5202]
        idx = 0
        while idx < uint256(stor3[arg1].field_1792):
            mem[0] = arg1
            mem[32] = 4
            if idx >= mem[_1827]:
                revert with 0, 50
            _7493 = sha3(mem[(32 * idx) + _1827 + 44 len 20], sha3(arg1, 4))
            mem[0] = arg1
            mem[32] = 4
            if idx >= mem[_1827]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + _1827 + 44 len 20]
            mem[32] = sha3(arg1, 4)
            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5299]:
                revert with 0, 50
            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5299 + 32] > !uint256(stor1[_7493]):
                revert with 0, 17
            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5299 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5299 + 32] + uint256(stor1[_7493])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _7491 = mem[64]
        mem[mem[64]] = 96
        _7894 = mem[_5201]
        mem[mem[64] + 96] = mem[_5201]
        mem[mem[64] + 128 len ceil32(_7894)] = mem[_5201 + 32 len ceil32(_7894)]
        if ceil32(_7894) <= _7894:
            mem[mem[64] + 32] = ceil32(_7894) + 128
            _9570 = mem[_5200]
            mem[ceil32(_7894) + _7491 + 128] = mem[_5200]
            idx = 0
            s = _5200 + 32
            t = ceil32(_7894) + _7491 + (32 * _9570) + 160
            u = ceil32(_7894) + _7491 + 160
            while idx < _9570:
                mem[u] = t + -ceil32(_7894) + -_7491 - 160
                _10522 = mem[s]
                _10629 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _10629:
                    mem[v + t + 32] = mem[_10522 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_10629) > _10629:
                    mem[t + _10629 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_10629) + t + 32
                u = u + 32
                continue 
            mem[_7491 + 64] = t - _7491
            _10521 = mem[_5299]
            mem[t] = mem[_5299]
            mem[t + 32 len 32 * _10521] = mem[_5299 + 32 len 32 * _10521]
            var55001 = _10521
            return memory
              from mem[64]
               len t + (32 * _10521) + -mem[64] + 32
        mem[mem[64] + _7894 + 128] = 0
        mem[mem[64] + 32] = ceil32(_7894) + 128
        _9696 = mem[_5200]
        mem[ceil32(_7894) + _7491 + 128] = mem[_5200]
        idx = 0
        s = _5200 + 32
        t = ceil32(_7894) + _7491 + (32 * _9696) + 160
        u = ceil32(_7894) + _7491 + 160
        while idx < _9696:
            mem[u] = t + -ceil32(_7894) + -_7491 - 160
            _10524 = mem[s]
            _10630 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _10630:
                mem[v + t + 32] = mem[_10524 + v + 32]
                v = v + 32
                continue 
            if ceil32(_10630) > _10630:
                mem[t + _10630 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_10630) + t + 32
            u = u + 32
            continue 
        mem[_7491 + 64] = t - _7491
        _10523 = mem[_5299]
        mem[t] = mem[_5299]
        mem[t + 32 len 32 * _10523] = mem[_5299 + 32 len 32 * _10523]
        var56001 = _10523
        return memory
          from mem[64]
           len t + (32 * _10523) + -mem[64] + 32
    if 31 >= stor3[arg1].field_1 % 128:
        mem[ceil32(return_data.size) + 448] = 256 * Mask(248, 0, stor3[arg1].field_8)
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
        mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
        mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
        mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
        mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
        idx = 0
        while idx < uint256(stor3[arg1].field_768):
            mem[0] = sha3(arg1, 3) + 3
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                _2030 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
                mem[_2030] = uint255(stor3[arg1][idx + 3].field_1)
                if bool(stor3[arg1][idx + 3].field_0):
                    if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor3[arg1][idx + 3].field_1):
                        if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                            mem[_2030 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                            mem[_2030 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                            t = _2030 + 32
                            u = sha3(mem[0])
                            while _2030 + uint255(stor3[arg1][idx + 3].field_1) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _2030
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor3[arg1][idx + 3].field_1 % 128:
                    mem[s] = _2030
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_2030 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _2030
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_2030 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _2030 + 32
                u = sha3(mem[0])
                while _2030 + stor3[arg1][u + 3].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _2030
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            _2102 = mem[64]
            mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
            mem[_2102] = stor3[arg1][idx + 3].field_1 % 128
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                if not uint255(stor3[arg1][idx + 3].field_1):
                    mem[s] = _2102
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                    mem[_2102 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    mem[s] = _2102
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_2102 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _2102 + 32
                u = sha3(mem[0])
                while _2102 + uint255(stor3[arg1][u + 3].field_1) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _2102
                t = t + 32
                u = u + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            if stor3[arg1][idx + 3].field_1 % 128:
                if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                    mem[_2102 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                    mem[_2102 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                    t = _2102 + 32
                    u = sha3(mem[0])
                    while _2102 + stor3[arg1][idx + 3].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _2102
            s = s + 32
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
        mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
        mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
        mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
        mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
        _1829 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
        mem[_1829] = uint256(stor3[arg1].field_1792)
        if not uint256(stor3[arg1].field_1792):
            mem[ceil32(return_data.size) + 352] = _1829
            mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
            if bool(uint8(stor3[arg1].field_1536)) != 1:
                revert with 0, 'No Vote exists against this ID or the vote has been suspended'
            _1948 = mem[ceil32(return_data.size) + 96]
            _1949 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            if mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] > test266151307():
                revert with 0, 65
            _1982 = mem[64]
            mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            mem[64] = mem[64] + (32 * _1949) + 32
            if not _1949:
                idx = 0
                while idx < uint256(stor3[arg1].field_1792):
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1829]:
                        revert with 0, 50
                    _3839 = sha3(mem[(32 * idx) + _1829 + 44 len 20], sha3(arg1, 4))
                    mem[0] = arg1
                    mem[32] = 4
                    if idx >= mem[_1829]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _1829 + 44 len 20]
                    mem[32] = sha3(arg1, 4)
                    if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1982]:
                        revert with 0, 50
                    if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1982 + 32] > !uint256(stor1[_3839]):
                        revert with 0, 17
                    mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1982 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1982 + 32] + uint256(stor1[_3839])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3837 = mem[64]
                mem[mem[64]] = 96
                _4051 = mem[_1948]
                mem[mem[64] + 96] = mem[_1948]
                mem[mem[64] + 128 len ceil32(_4051)] = mem[_1948 + 32 len ceil32(_4051)]
                if ceil32(_4051) <= _4051:
                    mem[_3837 + 32] = ceil32(_4051) + 128
                    _5404 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    mem[ceil32(_4051) + _3837 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                    t = ceil32(_4051) + _3837 + (32 * _5404) + 160
                    u = ceil32(_4051) + _3837 + 160
                    while idx < _5404:
                        mem[u] = t + -ceil32(_4051) + -_3837 - 160
                        _7268 = mem[s]
                        _7497 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _7497:
                            mem[v + t + 32] = mem[_7268 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_7497) > _7497:
                            mem[t + _7497 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_7497) + t + 32
                        u = u + 32
                        continue 
                    mem[_3837 + 64] = t - _3837
                    _7267 = mem[_1982]
                    mem[t] = mem[_1982]
                    mem[t + 32 len 32 * _7267] = mem[_1982 + 32 len 32 * _7267]
                    return memory
                      from mem[64]
                       len t + (32 * _7267) + -mem[64] + 32
                mem[_3837 + _4051 + 128] = 0
                mem[_3837 + 32] = ceil32(_4051) + 128
                _5484 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[ceil32(_4051) + _3837 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                t = ceil32(_4051) + _3837 + (32 * _5484) + 160
                u = ceil32(_4051) + _3837 + 160
                while idx < _5484:
                    mem[u] = t + -ceil32(_4051) + -_3837 - 160
                    _7270 = mem[s]
                    _7498 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _7498:
                        mem[v + t + 32] = mem[_7270 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7498) > _7498:
                        mem[t + _7498 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_7498) + t + 32
                    u = u + 32
                    continue 
                mem[_3837 + 64] = t - _3837
                _7269 = mem[_1982]
                mem[t] = mem[_1982]
                mem[t + 32 len 32 * _7269] = mem[_1982 + 32 len 32 * _7269]
                var53001 = _7269
                return memory
                  from mem[64]
                   len t + (32 * _7269) + -mem[64] + 32
            mem[_1982 + 32 len 32 * _1949] = call.data[calldata.size len 32 * _1949]
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1829]:
                    revert with 0, 50
                _3844 = sha3(mem[(32 * idx) + _1829 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1829]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _1829 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_1982]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1982 + 32] > !uint256(stor1[_3844]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1982 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _1982 + 32] + uint256(stor1[_3844])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3842 = mem[64]
            mem[mem[64]] = 96
            _4053 = mem[_1948]
            mem[mem[64] + 96] = mem[_1948]
            mem[mem[64] + 128 len ceil32(_4053)] = mem[_1948 + 32 len ceil32(_4053)]
            if ceil32(_4053) <= _4053:
                mem[mem[64] + 32] = ceil32(_4053) + 128
                _5405 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[ceil32(_4053) + _3842 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                t = ceil32(_4053) + _3842 + (32 * _5405) + 160
                u = ceil32(_4053) + _3842 + 160
                while idx < _5405:
                    mem[u] = t + -ceil32(_4053) + -_3842 - 160
                    _7272 = mem[s]
                    _7499 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _7499:
                        mem[v + t + 32] = mem[_7272 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7499) > _7499:
                        mem[t + _7499 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_7499) + t + 32
                    u = u + 32
                    continue 
                mem[_3842 + 64] = t - _3842
                _7271 = mem[_1982]
                mem[t] = mem[_1982]
                mem[t + 32 len 32 * _7271] = mem[_1982 + 32 len 32 * _7271]
                return memory
                  from mem[64]
                   len t + (32 * _7271) + -mem[64] + 32
            mem[mem[64] + _4053 + 128] = 0
            mem[mem[64] + 32] = ceil32(_4053) + 128
            _5485 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            mem[ceil32(_4053) + _3842 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            idx = 0
            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
            t = ceil32(_4053) + _3842 + (32 * _5485) + 160
            u = ceil32(_4053) + _3842 + 160
            while idx < _5485:
                mem[u] = t + -ceil32(_4053) + -_3842 - 160
                _7274 = mem[s]
                _7500 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _7500:
                    mem[v + t + 32] = mem[_7274 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_7500) > _7500:
                    mem[t + _7500 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_7500) + t + 32
                u = u + 32
                continue 
            mem[_3842 + 64] = t - _3842
            _7273 = mem[_1982]
            mem[t] = mem[_1982]
            mem[t + 32 len 32 * _7273] = mem[_1982 + 32 len 32 * _7273]
            var54001 = _7273
            return memory
              from mem[64]
               len t + (32 * _7273) + -mem[64] + 32
        mem[0] = sha3(arg1, 3) + 7
        mem[_1829 + 32] = address(stor3[arg1][7].field_0)
        idx = _1829 + 32
        s = 0
        while _1829 + (32 * uint256(stor3[arg1].field_1792)) > idx:
            mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + 352] = _1829
        mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
        if bool(mem[ceil32(return_data.size) + 288]) != 1:
            revert with 0, 'No Vote exists against this ID or the vote has been suspended'
        _5211 = mem[ceil32(return_data.size) + 192]
        _5212 = mem[ceil32(return_data.size) + 96]
        _5213 = mem[mem[ceil32(return_data.size) + 192]]
        if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
            revert with 0, 65
        _5310 = mem[64]
        mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
        mem[64] = mem[64] + (32 * _5213) + 32
        if not _5213:
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1829]:
                    revert with 0, 50
                _7503 = sha3(mem[(32 * idx) + _1829 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_1829]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _1829 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5310]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5310 + 32] > !uint256(stor1[_7503]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5310 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5310 + 32] + uint256(stor1[_7503])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _7501 = mem[64]
            mem[mem[64]] = 96
            _7907 = mem[_5212]
            mem[mem[64] + 96] = mem[_5212]
            mem[mem[64] + 128 len ceil32(_7907)] = mem[_5212 + 32 len ceil32(_7907)]
            if ceil32(_7907) <= _7907:
                mem[mem[64] + 32] = ceil32(_7907) + 128
                _9581 = mem[_5211]
                mem[ceil32(_7907) + _7501 + 128] = mem[_5211]
                idx = 0
                s = _5211 + 32
                t = ceil32(_7907) + _7501 + (32 * _9581) + 160
                u = ceil32(_7907) + _7501 + 160
                while idx < _9581:
                    mem[u] = t + -ceil32(_7907) + -_7501 - 160
                    _10536 = mem[s]
                    _10635 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _10635:
                        mem[v + t + 32] = mem[_10536 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10635) > _10635:
                        mem[t + _10635 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10635) + t + 32
                    u = u + 32
                    continue 
                mem[_7501 + 64] = t - _7501
                _10535 = mem[_5310]
                mem[t] = mem[_5310]
                mem[t + 32 len 32 * _10535] = mem[_5310 + 32 len 32 * _10535]
                return memory
                  from mem[64]
                   len t + (32 * _10535) + -mem[64] + 32
            mem[mem[64] + _7907 + 128] = 0
            mem[mem[64] + 32] = ceil32(_7907) + 128
            _9709 = mem[_5211]
            mem[ceil32(_7907) + _7501 + 128] = mem[_5211]
            idx = 0
            s = _5211 + 32
            t = ceil32(_7907) + _7501 + (32 * _9709) + 160
            u = ceil32(_7907) + _7501 + 160
            while idx < _9709:
                mem[u] = t + -ceil32(_7907) + -_7501 - 160
                _10538 = mem[s]
                _10636 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _10636:
                    mem[v + t + 32] = mem[_10538 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_10636) > _10636:
                    mem[t + _10636 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_10636) + t + 32
                u = u + 32
                continue 
            mem[_7501 + 64] = t - _7501
            _10537 = mem[_5310]
            mem[t] = mem[_5310]
            mem[t + 32 len 32 * _10537] = mem[_5310 + 32 len 32 * _10537]
            var57001 = _10537
            return memory
              from mem[64]
               len t + (32 * _10537) + -mem[64] + 32
        mem[_5310 + 32 len 32 * _5213] = call.data[calldata.size len 32 * _5213]
        idx = 0
        while idx < uint256(stor3[arg1].field_1792):
            mem[0] = arg1
            mem[32] = 4
            if idx >= mem[_1829]:
                revert with 0, 50
            _7508 = sha3(mem[(32 * idx) + _1829 + 44 len 20], sha3(arg1, 4))
            mem[0] = arg1
            mem[32] = 4
            if idx >= mem[_1829]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + _1829 + 44 len 20]
            mem[32] = sha3(arg1, 4)
            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_5310]:
                revert with 0, 50
            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5310 + 32] > !uint256(stor1[_7508]):
                revert with 0, 17
            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5310 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _5310 + 32] + uint256(stor1[_7508])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _7506 = mem[64]
        mem[mem[64]] = 96
        _7909 = mem[_5212]
        mem[mem[64] + 96] = mem[_5212]
        mem[mem[64] + 128 len ceil32(_7909)] = mem[_5212 + 32 len ceil32(_7909)]
        if ceil32(_7909) <= _7909:
            mem[mem[64] + 32] = ceil32(_7909) + 128
            _9582 = mem[_5211]
            mem[ceil32(_7909) + _7506 + 128] = mem[_5211]
            idx = 0
            s = _5211 + 32
            t = ceil32(_7909) + _7506 + (32 * _9582) + 160
            u = ceil32(_7909) + _7506 + 160
            while idx < _9582:
                mem[u] = t + -ceil32(_7909) + -_7506 - 160
                _10540 = mem[s]
                _10637 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _10637:
                    mem[v + t + 32] = mem[_10540 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_10637) > _10637:
                    mem[t + _10637 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_10637) + t + 32
                u = u + 32
                continue 
            mem[_7506 + 64] = t - _7506
            _10539 = mem[_5310]
            mem[t] = mem[_5310]
            mem[t + 32 len 32 * _10539] = mem[_5310 + 32 len 32 * _10539]
            var57001 = _10539
            return memory
              from mem[64]
               len t + (32 * _10539) + -mem[64] + 32
        mem[mem[64] + _7909 + 128] = 0
        mem[mem[64] + 32] = ceil32(_7909) + 128
        _9710 = mem[_5211]
        mem[ceil32(_7909) + _7506 + 128] = mem[_5211]
        idx = 0
        s = _5211 + 32
        t = ceil32(_7909) + _7506 + (32 * _9710) + 160
        u = ceil32(_7909) + _7506 + 160
        while idx < _9710:
            mem[u] = t + -ceil32(_7909) + -_7506 - 160
            _10542 = mem[s]
            _10638 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _10638:
                mem[v + t + 32] = mem[_10542 + v + 32]
                v = v + 32
                continue 
            if ceil32(_10638) > _10638:
                mem[t + _10638 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_10638) + t + 32
            u = u + 32
            continue 
        mem[_7506 + 64] = t - _7506
        _10541 = mem[_5310]
        mem[t] = mem[_5310]
        mem[t + 32 len 32 * _10541] = mem[_5310 + 32 len 32 * _10541]
        var58001 = _10541
        return memory
          from mem[64]
           len t + (32 * _10541) + -mem[64] + 32
    mem[0] = sha3(arg1, 3)
    mem[ceil32(return_data.size) + 448] = uint256(stor3[arg1].field_0)
    idx = ceil32(return_data.size) + 448
    s = 0
    while ceil32(return_data.size) + stor3[arg1].field_1 % 128 + 416 > idx:
        mem[idx + 32] = uint256(stor3[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 416
    mem[ceil32(return_data.size) + 128] = uint256(stor3[arg1].field_256)
    mem[ceil32(return_data.size) + 160] = uint256(stor3[arg1].field_512)
    mem[64] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + (32 * uint256(stor3[arg1].field_768)) + 480
    mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] = uint256(stor3[arg1].field_768)
    s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
    idx = 0
    while idx < uint256(stor3[arg1].field_768):
        mem[0] = sha3(arg1, 3) + 3
        if bool(stor3[arg1][idx + 3].field_0):
            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                revert with 0, 34
            _4070 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor3[arg1][idx + 3].field_1)) + 32
            mem[_4070] = uint255(stor3[arg1][idx + 3].field_1)
            if bool(stor3[arg1][idx + 3].field_0):
                if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                    revert with 0, 34
                if uint255(stor3[arg1][idx + 3].field_1):
                    if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                        mem[_4070 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                        mem[_4070 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                        t = _4070 + 32
                        u = sha3(mem[0])
                        while _4070 + uint255(stor3[arg1][idx + 3].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _4070
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
                revert with 0, 34
            if not stor3[arg1][idx + 3].field_1 % 128:
                mem[s] = _4070
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                mem[_4070 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                mem[s] = _4070
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
            mem[_4070 + 32] = uint256(stor3[arg1][idx + 3].field_0)
            t = _4070 + 32
            u = sha3(mem[0])
            while _4070 + stor3[arg1][u + 3].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _4070
            t = t + 32
            u = u + 1
            continue 
        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
            revert with 0, 34
        _4116 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[arg1][idx + 3].field_1 % 128) + 32
        mem[_4116] = stor3[arg1][idx + 3].field_1 % 128
        if bool(stor3[arg1][idx + 3].field_0):
            if bool(stor3[arg1][idx + 3].field_0) == uint255(stor3[arg1][idx + 3].field_1) < 32:
                revert with 0, 34
            if not uint255(stor3[arg1][idx + 3].field_1):
                mem[s] = _4116
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor3[arg1][idx + 3].field_1):
                mem[_4116 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
                mem[s] = _4116
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(arg1, 3) + 3) + idx
            mem[_4116 + 32] = uint256(stor3[arg1][idx + 3].field_0)
            t = _4116 + 32
            u = sha3(mem[0])
            while _4116 + uint255(stor3[arg1][u + 3].field_1) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _4116
            t = t + 32
            u = u + 1
            continue 
        if bool(stor3[arg1][idx + 3].field_0) == stor3[arg1][idx + 3].field_1 % 128 < 32:
            revert with 0, 34
        if stor3[arg1][idx + 3].field_1 % 128:
            if 31 >= stor3[arg1][idx + 3].field_1 % 128:
                mem[_4116 + 32] = 256 * Mask(248, 0, stor3[arg1][idx + 3].field_8)
            else:
                mem[0] = sha3(sha3(arg1, 3) + 3) + idx
                mem[_4116 + 32] = uint256(stor3[arg1][idx + 3].field_0)
                t = _4116 + 32
                u = sha3(mem[0])
                while _4116 + stor3[arg1][idx + 3].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _4116
        s = s + 32
        idx = idx + 1
        continue 
    mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448
    mem[ceil32(return_data.size) + 224] = uint256(stor3[arg1].field_1024)
    mem[ceil32(return_data.size) + 256] = uint256(stor3[arg1].field_1280)
    mem[ceil32(return_data.size) + 288] = bool(uint8(stor3[arg1].field_1536))
    mem[ceil32(return_data.size) + 320] = bool(uint8(stor3[arg1].field_1544))
    _3665 = mem[64]
    mem[64] = mem[64] + (32 * uint256(stor3[arg1].field_1792)) + 32
    mem[_3665] = uint256(stor3[arg1].field_1792)
    if not uint256(stor3[arg1].field_1792):
        mem[ceil32(return_data.size) + 352] = _3665
        mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
        if bool(uint8(stor3[arg1].field_1536)) != 1:
            revert with 0, 'No Vote exists against this ID or the vote has been suspended'
        _3974 = mem[ceil32(return_data.size) + 96]
        _3975 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
        if mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448] > test266151307():
            revert with 0, 65
        _4050 = mem[64]
        mem[mem[64]] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
        mem[64] = mem[64] + (32 * _3975) + 32
        if not _3975:
            idx = 0
            while idx < uint256(stor3[arg1].field_1792):
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3665]:
                    revert with 0, 50
                _5302 = sha3(mem[(32 * idx) + _3665 + 44 len 20], sha3(arg1, 4))
                mem[0] = arg1
                mem[32] = 4
                if idx >= mem[_3665]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + _3665 + 44 len 20]
                mem[32] = sha3(arg1, 4)
                if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_4050]:
                    revert with 0, 50
                if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4050 + 32] > !uint256(stor1[_5302]):
                    revert with 0, 17
                mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4050 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4050 + 32] + uint256(stor1[_5302])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _5300 = mem[64]
            mem[mem[64]] = 96
            _5480 = mem[_3974]
            mem[mem[64] + 96] = mem[_3974]
            mem[mem[64] + 128 len ceil32(_5480)] = mem[_3974 + 32 len ceil32(_5480)]
            s = ceil32(_5480)
            if ceil32(_5480) <= _5480:
                mem[mem[64] + 32] = ceil32(_5480) + 128
                _7682 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                mem[ceil32(_5480) + _5300 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
                idx = 0
                s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
                t = ceil32(_5480) + _5300 + (32 * _7682) + 160
                u = ceil32(_5480) + _5300 + 160
                while idx < _7682:
                    mem[u] = t + -ceil32(_5480) + -_5300 - 160
                    _9274 = mem[s]
                    _9453 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _9453:
                        mem[v + t + 32] = mem[_9274 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_9453) > _9453:
                        mem[t + _9453 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_9453) + t + 32
                    u = u + 32
                    continue 
                mem[_5300 + 64] = t - _5300
                _9273 = mem[_4050]
                mem[t] = mem[_4050]
                mem[t + 32 len 32 * _9273] = mem[_4050 + 32 len 32 * _9273]
                var55002 = _4050 + (32 * _9273) + 32
                return memory
                  from mem[64]
                   len t + (32 * _9273) + -mem[64] + 32
            mem[mem[64] + _5480 + 128] = 0
            mem[mem[64] + 32] = ceil32(_5480) + 128
            _7896 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            mem[ceil32(_5480) + _5300 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            idx = 0
            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
            t = ceil32(_5480) + _5300 + (32 * _7896) + 160
            u = ceil32(_5480) + _5300 + 160
            while idx < _7896:
                mem[u] = t + -ceil32(_5480) + -_5300 - 160
                _9276 = mem[s]
                _9454 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _9454:
                    mem[v + t + 32] = mem[_9276 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_9454) > _9454:
                    mem[t + _9454 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_9454) + t + 32
                u = u + 32
                continue 
            mem[_5300 + 64] = t - _5300
            _9275 = mem[_4050]
            mem[t] = mem[_4050]
            mem[t + 32 len 32 * _9275] = mem[_4050 + 32 len 32 * _9275]
            var56001 = _9275
            return memory
              from mem[64]
               len t + (32 * _9275) + -mem[64] + 32
        mem[_4050 + 32 len 32 * _3975] = call.data[calldata.size len 32 * _3975]
        idx = 0
        while idx < uint256(stor3[arg1].field_1792):
            mem[0] = arg1
            mem[32] = 4
            if idx >= mem[_3665]:
                revert with 0, 50
            _5307 = sha3(mem[(32 * idx) + _3665 + 44 len 20], sha3(arg1, 4))
            mem[0] = arg1
            mem[32] = 4
            if idx >= mem[_3665]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + _3665 + 44 len 20]
            mem[32] = sha3(arg1, 4)
            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_4050]:
                revert with 0, 50
            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4050 + 32] > !uint256(stor1[_5307]):
                revert with 0, 17
            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4050 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _4050 + 32] + uint256(stor1[_5307])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _5305 = mem[64]
        mem[mem[64]] = 96
        _5482 = mem[_3974]
        mem[mem[64] + 96] = mem[_3974]
        mem[mem[64] + 128 len ceil32(_5482)] = mem[_3974 + 32 len ceil32(_5482)]
        var48001 = ceil32(_5482)
        if ceil32(_5482) <= _5482:
            mem[_5305 + 32] = ceil32(_5482) + 128
            _7683 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            mem[ceil32(_5482) + _5305 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
            idx = 0
            s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
            t = ceil32(_5482) + _5305 + (32 * _7683) + 160
            u = ceil32(_5482) + _5305 + 160
            while idx < _7683:
                mem[u] = t + -ceil32(_5482) + -_5305 - 160
                _9278 = mem[s]
                _9455 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _9455:
                    mem[v + t + 32] = mem[_9278 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_9455) > _9455:
                    mem[t + _9455 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_9455) + t + 32
                u = u + 32
                continue 
            mem[_5305 + 64] = t - _5305
            _9277 = mem[_4050]
            mem[t] = mem[_4050]
            mem[t + 32 len 32 * _9277] = mem[_4050 + 32 len 32 * _9277]
            var56001 = _9277
            return memory
              from mem[64]
               len t + (32 * _9277) + -mem[64] + 32
        mem[_5305 + _5482 + 128] = 0
        mem[_5305 + 32] = ceil32(_5482) + 128
        _7897 = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
        mem[ceil32(_5482) + _5305 + 128] = mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 448]
        idx = 0
        s = ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 480
        t = ceil32(_5482) + _5305 + (32 * _7897) + 160
        u = ceil32(_5482) + _5305 + 160
        while idx < _7897:
            mem[u] = t + -ceil32(_5482) + -_5305 - 160
            _9280 = mem[s]
            _9456 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _9456:
                mem[v + t + 32] = mem[_9280 + v + 32]
                v = v + 32
                continue 
            if ceil32(_9456) > _9456:
                mem[t + _9456 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_9456) + t + 32
            u = u + 32
            continue 
        mem[_5305 + 64] = t - _5305
        _9279 = mem[_4050]
        mem[t] = mem[_4050]
        mem[t + 32 len 32 * _9279] = mem[_4050 + 32 len 32 * _9279]
        var57001 = _9279
        return memory
          from mem[64]
           len t + (32 * _9279) + -mem[64] + 32
    mem[0] = sha3(arg1, 3) + 7
    mem[_3665 + 32] = address(stor3[arg1][7].field_0)
    idx = _3665 + 32
    s = 0
    while _3665 + (32 * uint256(stor3[arg1].field_1792)) > idx:
        mem[idx + 32] = address(stor3[arg1][s + 7].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(return_data.size) + 352] = _3665
    mem[ceil32(return_data.size) + 384] = uint256(stor3[arg1].field_2048)
    if bool(mem[ceil32(return_data.size) + 288]) != 1:
        revert with 0, 'No Vote exists against this ID or the vote has been suspended'
    _7263 = mem[ceil32(return_data.size) + 192]
    _7264 = mem[ceil32(return_data.size) + 96]
    _7265 = mem[mem[ceil32(return_data.size) + 192]]
    if mem[mem[ceil32(return_data.size) + 192]] > test266151307():
        revert with 0, 65
    _7496 = mem[64]
    mem[mem[64]] = mem[mem[ceil32(return_data.size) + 192]]
    mem[64] = mem[64] + (32 * _7265) + 32
    if not _7265:
        idx = 0
        while idx < uint256(stor3[arg1].field_1792):
            mem[0] = arg1
            mem[32] = 4
            if idx >= mem[_3665]:
                revert with 0, 50
            _9459 = sha3(mem[(32 * idx) + _3665 + 44 len 20], sha3(arg1, 4))
            mem[0] = arg1
            mem[32] = 4
            if idx >= mem[_3665]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + _3665 + 44 len 20]
            mem[32] = sha3(arg1, 4)
            if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_7496]:
                revert with 0, 50
            if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7496 + 32] > !uint256(stor1[_9459]):
                revert with 0, 17
            mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7496 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7496 + 32] + uint256(stor1[_9459])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _9457 = mem[64]
        mem[mem[64]] = 96
        _9705 = mem[_7264]
        mem[mem[64] + 96] = mem[_7264]
        mem[mem[64] + 128 len ceil32(_9705)] = mem[_7264 + 32 len ceil32(_9705)]
        if ceil32(_9705) <= _9705:
            mem[mem[64] + 32] = ceil32(_9705) + 128
            _10713 = mem[_7263]
            mem[ceil32(_9705) + _9457 + 128] = mem[_7263]
            idx = 0
            s = _7263 + 32
            t = ceil32(_9705) + _9457 + (32 * _10713) + 160
            u = ceil32(_9705) + _9457 + 160
            while idx < _10713:
                mem[u] = t + -ceil32(_9705) + -_9457 - 160
                _11232 = mem[s]
                _11335 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _11335:
                    mem[v + t + 32] = mem[_11232 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_11335) > _11335:
                    mem[t + _11335 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_11335) + t + 32
                u = u + 32
                continue 
            mem[_9457 + 64] = t - _9457
            _11231 = mem[_7496]
            mem[t] = mem[_7496]
            mem[t + 32 len 32 * _11231] = mem[_7496 + 32 len 32 * _11231]
            var59001 = _11231
            var59002 = _7496 + (32 * _11231) + 32
            var59005 = t + (32 * _11231) + 32
            return memory
              from mem[64]
               len t + (32 * _11231) + -mem[64] + 32
        mem[mem[64] + _9705 + 128] = 0
        mem[mem[64] + 32] = ceil32(_9705) + 128
        _10853 = mem[_7263]
        mem[ceil32(_9705) + _9457 + 128] = mem[_7263]
        idx = 0
        s = _7263 + 32
        t = ceil32(_9705) + _9457 + (32 * _10853) + 160
        u = ceil32(_9705) + _9457 + 160
        while idx < _10853:
            mem[u] = t + -ceil32(_9705) + -_9457 - 160
            _11234 = mem[s]
            _11336 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _11336:
                mem[v + t + 32] = mem[_11234 + v + 32]
                v = v + 32
                continue 
            if ceil32(_11336) > _11336:
                mem[t + _11336 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_11336) + t + 32
            u = u + 32
            continue 
        mem[_9457 + 64] = t - _9457
        _11233 = mem[_7496]
        mem[t] = mem[_7496]
        mem[t + 32 len 32 * _11233] = mem[_7496 + 32 len 32 * _11233]
        var60001 = _11233
        var60002 = _7496 + (32 * _11233) + 32
        var60005 = t + (32 * _11233) + 32
        return memory
          from mem[64]
           len t + (32 * _11233) + -mem[64] + 32
    mem[_7496 + 32 len 32 * _7265] = call.data[calldata.size len 32 * _7265]
    idx = 0
    while idx < uint256(stor3[arg1].field_1792):
        mem[0] = arg1
        mem[32] = 4
        if idx >= mem[_3665]:
            revert with 0, 50
        _9464 = sha3(mem[(32 * idx) + _3665 + 44 len 20], sha3(arg1, 4))
        mem[0] = arg1
        mem[32] = 4
        if idx >= mem[_3665]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + _3665 + 44 len 20]
        mem[32] = sha3(arg1, 4)
        if uint256(sub_61ea2027[arg1][mem[0]].field_0) >= mem[_7496]:
            revert with 0, 50
        if mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7496 + 32] > !uint256(stor1[_9464]):
            revert with 0, 17
        mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7496 + 32] = mem[(32 * uint256(sub_61ea2027[arg1][mem[0]].field_0)) + _7496 + 32] + uint256(stor1[_9464])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _9462 = mem[64]
    mem[mem[64]] = 96
    _9707 = mem[_7264]
    mem[mem[64] + 96] = mem[_7264]
    mem[mem[64] + 128 len ceil32(_9707)] = mem[_7264 + 32 len ceil32(_9707)]
    if ceil32(_9707) > _9707:
        mem[_9462 + _9707 + 128] = 0
        mem[_9462 + 32] = ceil32(_9707) + 128
        _10854 = mem[_7263]
        mem[ceil32(_9707) + _9462 + 128] = mem[_7263]
        idx = 0
        s = _7263 + 32
        t = ceil32(_9707) + _9462 + (32 * _10854) + 160
        u = ceil32(_9707) + _9462 + 160
        while idx < _10854:
            mem[u] = t + -ceil32(_9707) + -_9462 - 160
            _11238 = mem[s]
            _11338 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _11338:
                mem[v + t + 32] = mem[_11238 + v + 32]
                v = v + 32
                continue 
            if ceil32(_11338) > _11338:
                mem[t + _11338 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_11338) + t + 32
            u = u + 32
            continue 
        mem[_9462 + 64] = t - _9462
        _11237 = mem[_7496]
        mem[t] = mem[_7496]
        mem[t + 32 len 32 * _11237] = mem[_7496 + 32 len 32 * _11237]
        var61001 = _11237
        return memory
          from mem[64]
           len t + (32 * _11237) + -mem[64] + 32
    mem[_9462 + 32] = ceil32(_9707) + 128
    _10714 = mem[_7263]
    mem[ceil32(_9707) + _9462 + 128] = mem[_7263]
    idx = 0
    s = _7263 + 32
    t = ceil32(_9707) + _9462 + (32 * _10714) + 160
    u = ceil32(_9707) + _9462 + 160
    while idx < _10714:
        mem[u] = t + -ceil32(_9707) + -_9462 - 160
        _11236 = mem[s]
        _11337 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _11337:
            mem[v + t + 32] = mem[_11236 + v + 32]
            v = v + 32
            continue 
        if ceil32(_11337) > _11337:
            mem[t + _11337 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_11337) + t + 32
        u = u + 32
        continue 
    mem[_9462 + 64] = t - _9462
    _11235 = mem[_7496]
    mem[t] = mem[_7496]
    mem[t + 32 len 32 * _11235] = mem[_7496 + 32 len 32 * _11235]
    var60001 = _11235
    var60002 = _7496 + (32 * _11235) + 32
    var60005 = t + (32 * _11235) + 32
    return memory
      from mem[64]
       len t + (32 * _11235) + -mem[64] + 32
}



}
