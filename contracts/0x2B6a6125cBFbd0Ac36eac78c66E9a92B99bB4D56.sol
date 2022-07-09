contract main {




// =====================  Runtime code  =====================


#
#  - sub_79cc9351(?)
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
    staticcall stor0.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > uint256(stor3[arg1].field_2048):
        require ext_code.size(stor0)
        staticcall stor0.totalSupply() with:
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
    staticcall stor0.balanceOf(address arg1) with:
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

function sub_8494ff35(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor3[arg1].field_0):
        if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
            revert with 0, 34
        if bool(stor3[arg1].field_0):
            if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
                revert with 0, 34
            if uint255(stor3[arg1].field_1):
                if 31 >= uint255(stor3[arg1].field_1):
                    mem[128] = 256 * Mask(248, 0, stor3[arg1].field_8)
                else:
                    mem[128] = uint256(stor3[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor3[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor3[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor3[arg1].field_1 % 128:
                if 31 >= stor3[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor3[arg1].field_8)
                else:
                    mem[128] = uint256(stor3[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor3[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor3[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, uint255(stor3[arg1].field_1)), data=mem[128 len ceil32(uint255(stor3[arg1].field_1))]), 
               uint256(stor3[arg1].field_256),
               uint256(stor3[arg1].field_512),
               uint256(stor3[arg1].field_1024),
               uint256(stor3[arg1].field_1280),
               bool(uint8(stor3[arg1].field_1536)),
               bool(uint8(stor3[arg1].field_1544)),
               uint256(stor3[arg1].field_2048)
    if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor3[arg1].field_0):
        if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
            revert with 0, 34
        if uint255(stor3[arg1].field_1):
            if 31 >= uint255(stor3[arg1].field_1):
                mem[128] = 256 * Mask(248, 0, stor3[arg1].field_8)
            else:
                mem[128] = uint256(stor3[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor3[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor3[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor3[arg1].field_1 % 128:
            if 31 >= stor3[arg1].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor3[arg1].field_8)
            else:
                mem[128] = uint256(stor3[arg1].field_0)
                idx = 128
                s = 0
                while stor3[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor3[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor3[arg1].field_0 % 128, data=mem[128 len ceil32(stor3[arg1].field_1 % 128)]), 
           uint256(stor3[arg1].field_256),
           uint256(stor3[arg1].field_512),
           uint256(stor3[arg1].field_1024),
           uint256(stor3[arg1].field_1280),
           bool(uint8(stor3[arg1].field_1536)),
           bool(uint8(stor3[arg1].field_1544)),
           uint256(stor3[arg1].field_2048)
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



}
