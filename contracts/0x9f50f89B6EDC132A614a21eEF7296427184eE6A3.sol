contract main {




// =====================  Runtime code  =====================


#
#  - getTicketInUseByIndex(uint256 arg1)
#
address tokenContractAddress;
array of address stor1;
array of struct stor2;
uint256 minVotingTokens;
array of struct stor4;
uint256 stor5;
array of address votersArray;
mapping of uint8 stor7;
array of struct stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856477;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856478;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856479;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856480;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856481;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856482;

function MinVotingTokens() payable {
    return minVotingTokens
}

function votersArray(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < votersArray.length
    return votersArray[arg1]
}

function tokenContract() payable {
    return tokenContractAddress
}

function owner() payable {
    return address(stor1.length)
}

function _fallback() payable {
    revert
}

function endVoting(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor1.length) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this function can only be invoke by owner'
    if arg1 >= stor4.length:
        revert with 0, 50
    uint256(stor4[arg1].field_512) = block.timestamp
}

function retrieveVoteResult(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor4.length:
        revert with 0, 50
    if uint256(stor4[arg1].field_768) >= block.timestamp:
        revert with 0, 'voting has not yet started'
    if arg1 >= stor4.length:
        revert with 0, 50
    if uint256(stor4[arg1].field_512) >= block.timestamp:
        revert with 0, 'voting has not yet ended'
    if arg1 >= stor4.length:
        revert with 0, 50
    if uint256(stor4[arg1].field_1280) <= uint256(stor4[arg1].field_1792):
        return uint256(stor4[arg1].field_1280), uint256(stor4[arg1].field_1792), 96, 8, 0, 0
    return uint256(stor4[arg1].field_1280), uint256(stor4[arg1].field_1792), 96, 5, 0, 0
}

function addTicket(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if address(stor1.length) != msg.sender:
        revert with 0, 'This function can only be set by owner'
    stor2.length++
    if bool(stor2[stor2.length].field_0):
        if bool(stor2[stor2.length].field_0) == uint255(uint256(stor2[stor2.length].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor2[stor2.length][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor2[stor2.length].field_0) = 0
            idx = 0
            while (uint255(uint256(stor2[stor2.length].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor2[stor2.length + idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2[stor2.length].field_0) == stor2[stor2.length].field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor2[stor2.length][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor2[stor2.length].field_0) = 0
            idx = 0
            while stor2[stor2.length].field_1 % 128 + 31 / 32 > idx:
                uint256(stor2[stor2.length + idx].field_0) = 0
                idx = idx + 1
                continue 
}

function vote(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= stor4.length:
        revert with 0, 50
    if uint256(stor4[arg1].field_512) <= block.timestamp:
        revert with 0, 'Voting time has ended'
    if stor7[arg1][msg.sender]:
        revert with 0, 'you have already voted'
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= stor4.length:
        revert with 0, 50
    if not arg2:
        if uint256(stor4[arg1].field_1792) > !ext_call.return_data[0]:
            revert with 0, 17
        uint256(stor4[arg1].field_1792) += ext_call.return_data[0]
        if arg1 >= stor4.length:
            revert with 0, 50
        uint256(stor4[arg1].field_1536)++
        uint256(stor[sha3((8 * arg1) + ('name', 'stor4', 4) + 6) + uint256(stor4[arg1].field_1536)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((8 * arg1) + ('name', 'stor4', 4) + 6) + uint256(stor4[arg1].field_1536)].field_0))
    else:
        if uint256(stor4[arg1].field_1280) > !ext_call.return_data[0]:
            revert with 0, 17
        uint256(stor4[arg1].field_1280) += ext_call.return_data[0]
        if arg1 >= stor4.length:
            revert with 0, 50
        uint256(stor4[arg1].field_1024)++
        uint256(stor[sha3((8 * arg1) + ('name', 'stor4', 4) + 4) + uint256(stor4[arg1].field_1024)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((8 * arg1) + ('name', 'stor4', 4) + 4) + uint256(stor4[arg1].field_1024)].field_0))
    stor7[arg1][msg.sender] = 1
}

function TicketInUseArray(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor4.length
    if bool(stor4[arg1].field_256):
        if bool(stor4[arg1].field_256) == uint255(uint256(stor4[arg1].field_256)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4[arg1].field_256):
            if bool(stor4[arg1].field_256) == uint255(uint256(stor4[arg1].field_256)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor4[arg1].field_256)):
                if 31 >= uint255(uint256(stor4[arg1].field_256)) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor4[arg1].field_264)
                else:
                    mem[128] = uint256(stor[sha3((8 * arg1) + ('name', 'stor4', 4) + 1)].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor4[arg1].field_256)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 1)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor4[arg1].field_256) == stor4[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if stor4[arg1].field_257 % 128:
                if 31 >= stor4[arg1].field_257 % 128:
                    mem[128] = 256 * Mask(248, 0, stor4[arg1].field_264)
                else:
                    mem[128] = uint256(stor[sha3((8 * arg1) + ('name', 'stor4', 4) + 1)].field_0)
                    idx = 128
                    s = 0
                    while stor4[arg1].field_257 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 1)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return uint256(stor4[arg1].field_0), 
               Array(len=2 * Mask(256, -1, uint256(stor4[arg1].field_256)), data=mem[128 len ceil32(uint255(uint256(stor4[arg1].field_256)) * 0.5)]),
               uint256(stor4[arg1].field_512),
               uint256(stor4[arg1].field_768),
               uint256(stor4[arg1].field_1280),
               uint256(stor4[arg1].field_1792)
    if bool(stor4[arg1].field_256) == stor4[arg1].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor4[arg1].field_256):
        if bool(stor4[arg1].field_256) == uint255(uint256(stor4[arg1].field_256)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor4[arg1].field_256)):
            if 31 >= uint255(uint256(stor4[arg1].field_256)) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor4[arg1].field_264)
            else:
                mem[128] = uint256(stor[sha3((8 * arg1) + ('name', 'stor4', 4) + 1)].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor4[arg1].field_256)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 1)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor4[arg1].field_256) == stor4[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if stor4[arg1].field_257 % 128:
            if 31 >= stor4[arg1].field_257 % 128:
                mem[128] = 256 * Mask(248, 0, stor4[arg1].field_264)
            else:
                mem[128] = uint256(stor[sha3((8 * arg1) + ('name', 'stor4', 4) + 1)].field_0)
                idx = 128
                s = 0
                while stor4[arg1].field_257 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 1)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return uint256(stor4[arg1].field_0), 
           Array(len=stor4[arg1].field_256 % 128, data=mem[128 len ceil32(stor4[arg1].field_257 % 128)]),
           uint256(stor4[arg1].field_512),
           uint256(stor4[arg1].field_768),
           uint256(stor4[arg1].field_1280),
           uint256(stor4[arg1].field_1792)
}

function TicketArray(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor2.length
    if bool(stor2[arg1].field_0):
        if bool(stor2[arg1].field_0) == uint255(uint256(stor2[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2[arg1].field_0):
            if bool(stor2[arg1].field_0) == uint255(uint256(stor2[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor2[arg1].field_0)):
                if 31 < uint255(uint256(stor2[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor2[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor2[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor2[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor2[arg1].field_8)
        else:
            if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor2[arg1].field_1 % 128:
                if 31 < stor2[arg1].field_1 % 128:
                    mem[128] = uint256(stor2[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor2[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor2[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor2[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor2[arg1].field_8)
        mem[ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5) > uint255(uint256(stor2[arg1].field_0)) * 0.5:
            mem[ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5) + (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor2[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5)]), 
    if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor2[arg1].field_0):
        if bool(stor2[arg1].field_0) == uint255(uint256(stor2[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor2[arg1].field_0)):
            if 31 < uint255(uint256(stor2[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor2[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor2[arg1 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[arg1].field_0 % 128, data=mem[128 len ceil32(stor2[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2[arg1].field_8)
    else:
        if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor2[arg1].field_1 % 128:
            if 31 < stor2[arg1].field_1 % 128:
                mem[128] = uint256(stor2[arg1].field_0)
                idx = 128
                s = 0
                while stor2[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor2[arg1 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[arg1].field_0 % 128, data=mem[128 len ceil32(stor2[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2[arg1].field_8)
    mem[ceil32(stor2[arg1].field_1 % 128) + 192 len ceil32(stor2[arg1].field_1 % 128)] = mem[128 len ceil32(stor2[arg1].field_1 % 128)]
    if ceil32(stor2[arg1].field_1 % 128) > stor2[arg1].field_1 % 128:
        mem[ceil32(stor2[arg1].field_1 % 128) + stor2[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor2[arg1].field_0 % 128, data=mem[128 len ceil32(stor2[arg1].field_1 % 128)], mem[(2 * ceil32(stor2[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor2[arg1].field_1 % 128)]), 
}

function getTicketByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor2.length:
        revert with 0, 50
    if bool(stor2[arg1].field_0):
        if bool(stor2[arg1].field_0) == uint255(uint256(stor2[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2[arg1].field_0):
            if bool(stor2[arg1].field_0) == uint255(uint256(stor2[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor2[arg1].field_0)):
                if 31 < uint255(uint256(stor2[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor2[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor2[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor2[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor2[arg1].field_8)
        else:
            if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor2[arg1].field_1 % 128:
                if 31 < stor2[arg1].field_1 % 128:
                    mem[128] = uint256(stor2[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor2[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor2[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor2[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor2[arg1].field_8)
        mem[ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5) > uint255(uint256(stor2[arg1].field_0)) * 0.5:
            mem[ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5) + (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor2[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor2[arg1].field_0)) * 0.5)]), 
    if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor2[arg1].field_0):
        if bool(stor2[arg1].field_0) == uint255(uint256(stor2[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor2[arg1].field_0)):
            if 31 < uint255(uint256(stor2[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor2[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor2[arg1 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[arg1].field_0 % 128, data=mem[128 len ceil32(stor2[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2[arg1].field_8)
    else:
        if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor2[arg1].field_1 % 128:
            if 31 < stor2[arg1].field_1 % 128:
                mem[128] = uint256(stor2[arg1].field_0)
                idx = 128
                s = 0
                while stor2[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor2[arg1 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[arg1].field_0 % 128, data=mem[128 len ceil32(stor2[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2[arg1].field_8)
    mem[ceil32(stor2[arg1].field_1 % 128) + 192 len ceil32(stor2[arg1].field_1 % 128)] = mem[128 len ceil32(stor2[arg1].field_1 % 128)]
    if ceil32(stor2[arg1].field_1 % 128) > stor2[arg1].field_1 % 128:
        mem[ceil32(stor2[arg1].field_1 % 128) + stor2[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor2[arg1].field_0 % 128, data=mem[128 len ceil32(stor2[arg1].field_1 % 128)], mem[(2 * ceil32(stor2[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor2[arg1].field_1 % 128)]), 
}

function getTicketArray() payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    s = 128
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        if bool(stor2[idx].field_0):
            if bool(stor2[idx].field_0) == uint255(uint256(stor2[idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            _19 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(stor2[idx].field_0)) * 0.5) + 32
            mem[_19] = uint255(uint256(stor2[idx].field_0)) * 0.5
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(uint256(stor2[idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor2[idx].field_0)):
                    if 31 >= uint255(uint256(stor2[idx].field_0)) * 0.5:
                        mem[_19 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                    else:
                        mem[0] = sha3(2) + idx
                        mem[_19 + 32] = uint256(stor2[idx].field_0)
                        t = _19 + 32
                        u = sha3(mem[0])
                        while _19 + (uint255(uint256(stor2[idx].field_0)) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor2[idx].field_1 % 128:
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor2[idx].field_1 % 128:
                mem[_19 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(2) + idx
            mem[_19 + 32] = uint256(stor2[idx].field_0)
            t = _19 + 32
            u = sha3(mem[0])
            while _19 + stor2[u].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _19
            t = t + 32
            u = u + 1
            continue 
        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
            revert with 0, 34
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[idx].field_1 % 128) + 32
        mem[_22] = stor2[idx].field_1 % 128
        if bool(stor2[idx].field_0):
            if bool(stor2[idx].field_0) == uint255(uint256(stor2[idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor2[idx].field_0)):
                mem[s] = _22
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(uint256(stor2[idx].field_0)) * 0.5:
                mem[_22 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                mem[s] = _22
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(2) + idx
            mem[_22 + 32] = uint256(stor2[idx].field_0)
            t = _22 + 32
            u = sha3(mem[0])
            while _22 + (uint255(uint256(stor2[u].field_0)) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _22
            t = t + 32
            u = u + 1
            continue 
        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
            revert with 0, 34
        if stor2[idx].field_1 % 128:
            if 31 >= stor2[idx].field_1 % 128:
                mem[_22 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
            else:
                mem[0] = sha3(2) + idx
                mem[_22 + 32] = uint256(stor2[idx].field_0)
                t = _22 + 32
                u = sha3(mem[0])
                while _22 + stor2[idx].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _22
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _17:
        mem[t] = u + -_16 - 64
        _28 = mem[s]
        _30 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        while v < _30:
            mem[v + u + 32] = mem[_28 + v + 32]
            v = v + 32
            continue 
        if ceil32(_30) > _30:
            mem[u + _30 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_30) + u + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function getTicketInUseArray() payable {
    mem[64] = (32 * stor4.length) + 128
    mem[96] = stor4.length
    s = 128
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        _87 = mem[64]
        mem[64] = mem[64] + 256
        mem[_87] = uint256(stor4[idx].field_0)
        if bool(stor4[idx].field_256):
            if bool(stor4[idx].field_256) == uint255(uint256(stor4[idx].field_256)) * 0.5 < 32:
                revert with 0, 34
            _91 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[idx].field_256)) * 0.5) + 32
            mem[_91] = uint255(uint256(stor4[idx].field_256)) * 0.5
            if bool(stor4[idx].field_256):
                if bool(stor4[idx].field_256) == uint255(uint256(stor4[idx].field_256)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[idx].field_256)):
                    mem[_87 + 32] = _91
                    mem[_87 + 64] = uint256(stor4[idx].field_512)
                    mem[_87 + 96] = uint256(stor4[idx].field_768)
                    _98 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1024)) + 32
                    mem[_98] = uint256(stor4[idx].field_1024)
                    if not uint256(stor4[idx].field_1024):
                        mem[_87 + 128] = _98
                        mem[_87 + 160] = uint256(stor4[idx].field_1280)
                        _102 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                        mem[_102] = uint256(stor4[idx].field_1536)
                        if uint256(stor4[idx].field_1536):
                            mem[0] = (8 * idx) + sha3(4) + 6
                            mem[_102 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                            t = _102 + 32
                            u = sha3(mem[0])
                            while _102 + (32 * uint256(stor4[idx].field_1536)) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_87 + 192] = _102
                    else:
                        mem[0] = (8 * idx) + sha3(4) + 4
                        mem[_98 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 4)].field_0)
                        t = _98 + 32
                        u = sha3(mem[0])
                        while _98 + (32 * uint256(stor4[idx].field_1024)) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_87 + 128] = _98
                        mem[_87 + 160] = uint256(stor4[idx].field_1280)
                        _212 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                        mem[_212] = uint256(stor4[idx].field_1536)
                        if uint256(stor4[idx].field_1536):
                            mem[0] = (8 * idx) + sha3(4) + 6
                            mem[_212 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                            t = _212 + 32
                            u = sha3(mem[0])
                            while _212 + (32 * uint256(stor4[idx].field_1536)) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_87 + 192] = _212
                else:
                    if 31 >= uint255(uint256(stor4[idx].field_256)) * 0.5:
                        mem[_91 + 32] = 256 * Mask(248, 0, stor4[idx].field_264)
                        mem[_87 + 32] = _91
                        mem[_87 + 64] = uint256(stor4[idx].field_512)
                        mem[_87 + 96] = uint256(stor4[idx].field_768)
                        _112 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1024)) + 32
                        mem[_112] = uint256(stor4[idx].field_1024)
                        if not uint256(stor4[idx].field_1024):
                            mem[_87 + 128] = _112
                            mem[_87 + 160] = uint256(stor4[idx].field_1280)
                            _121 = mem[64]
                            mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                            mem[_121] = uint256(stor4[idx].field_1536)
                            if not uint256(stor4[idx].field_1536):
                                mem[_87 + 192] = _121
                                mem[_87 + 224] = uint256(stor4[idx].field_1792)
                                mem[s] = _87
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = (8 * idx) + sha3(4) + 6
                            mem[_121 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                            t = _121 + 32
                            u = sha3(mem[0])
                            while _121 + (32 * uint256(stor4[u].field_1536)) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_87 + 192] = _121
                            mem[_87 + 224] = uint256(stor4[u].field_1792)
                            mem[t] = _87
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[0] = (8 * idx) + sha3(4) + 4
                        mem[_112 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 4)].field_0)
                        t = _112 + 32
                        u = sha3(mem[0])
                        while _112 + (32 * uint256(stor4[idx].field_1024)) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_87 + 128] = _112
                        mem[_87 + 160] = uint256(stor4[idx].field_1280)
                        _213 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                        mem[_213] = uint256(stor4[idx].field_1536)
                        if uint256(stor4[idx].field_1536):
                            mem[0] = (8 * idx) + sha3(4) + 6
                            mem[_213 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                            t = _213 + 32
                            u = sha3(mem[0])
                            while _213 + (32 * uint256(stor4[idx].field_1536)) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_87 + 192] = _213
                    else:
                        mem[0] = (8 * idx) + sha3(4) + 1
                        mem[_91 + 32] = uint256(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 1)].field_0)
                        t = _91 + 32
                        u = sha3(mem[0])
                        while _91 + (uint255(uint256(stor4[idx].field_256)) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_87 + 32] = _91
                        mem[_87 + 64] = uint256(stor4[idx].field_512)
                        mem[_87 + 96] = uint256(stor4[idx].field_768)
                        _174 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1024)) + 32
                        mem[_174] = uint256(stor4[idx].field_1024)
                        if not uint256(stor4[idx].field_1024):
                            mem[_87 + 128] = _174
                            mem[_87 + 160] = uint256(stor4[idx].field_1280)
                            _179 = mem[64]
                            mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                            mem[_179] = uint256(stor4[idx].field_1536)
                            if uint256(stor4[idx].field_1536):
                                mem[0] = (8 * idx) + sha3(4) + 6
                                mem[_179 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                                t = _179 + 32
                                u = sha3(mem[0])
                                while _179 + (32 * uint256(stor4[idx].field_1536)) > t:
                                    mem[t + 32] = address(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                            mem[_87 + 192] = _179
                        else:
                            mem[0] = (8 * idx) + sha3(4) + 4
                            mem[_174 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 4)].field_0)
                            t = _174 + 32
                            u = sha3(mem[0])
                            while _174 + (32 * uint256(stor4[idx].field_1024)) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_87 + 128] = _174
                            mem[_87 + 160] = uint256(stor4[idx].field_1280)
                            _249 = mem[64]
                            mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                            mem[_249] = uint256(stor4[idx].field_1536)
                            if uint256(stor4[idx].field_1536):
                                mem[0] = (8 * idx) + sha3(4) + 6
                                mem[_249 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                                t = _249 + 32
                                u = sha3(mem[0])
                                while _249 + (32 * uint256(stor4[idx].field_1536)) > t:
                                    mem[t + 32] = address(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                            mem[_87 + 192] = _249
            else:
                if bool(stor4[idx].field_256) == stor4[idx].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor4[idx].field_257 % 128:
                    mem[_87 + 32] = _91
                    mem[_87 + 64] = uint256(stor4[idx].field_512)
                    mem[_87 + 96] = uint256(stor4[idx].field_768)
                    _105 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1024)) + 32
                    mem[_105] = uint256(stor4[idx].field_1024)
                    if not uint256(stor4[idx].field_1024):
                        mem[_87 + 128] = _105
                        mem[_87 + 160] = uint256(stor4[idx].field_1280)
                        _113 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                        mem[_113] = uint256(stor4[idx].field_1536)
                        if uint256(stor4[idx].field_1536):
                            mem[0] = (8 * idx) + sha3(4) + 6
                            mem[_113 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                            t = _113 + 32
                            u = sha3(mem[0])
                            while _113 + (32 * uint256(stor4[idx].field_1536)) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_87 + 192] = _113
                    else:
                        mem[0] = (8 * idx) + sha3(4) + 4
                        mem[_105 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 4)].field_0)
                        t = _105 + 32
                        u = sha3(mem[0])
                        while _105 + (32 * uint256(stor4[idx].field_1024)) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_87 + 128] = _105
                        mem[_87 + 160] = uint256(stor4[idx].field_1280)
                        _214 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                        mem[_214] = uint256(stor4[idx].field_1536)
                        if uint256(stor4[idx].field_1536):
                            mem[0] = (8 * idx) + sha3(4) + 6
                            mem[_214 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                            t = _214 + 32
                            u = sha3(mem[0])
                            while _214 + (32 * uint256(stor4[idx].field_1536)) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_87 + 192] = _214
                else:
                    if 31 >= stor4[idx].field_257 % 128:
                        mem[_91 + 32] = 256 * Mask(248, 0, stor4[idx].field_264)
                        mem[_87 + 32] = _91
                        mem[_87 + 64] = uint256(stor4[idx].field_512)
                        mem[_87 + 96] = uint256(stor4[idx].field_768)
                        _124 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1024)) + 32
                        mem[_124] = uint256(stor4[idx].field_1024)
                        if not uint256(stor4[idx].field_1024):
                            mem[_87 + 128] = _124
                            mem[_87 + 160] = uint256(stor4[idx].field_1280)
                            _133 = mem[64]
                            mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                            mem[_133] = uint256(stor4[idx].field_1536)
                            if uint256(stor4[idx].field_1536):
                                mem[0] = (8 * idx) + sha3(4) + 6
                                mem[_133 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                                t = _133 + 32
                                u = sha3(mem[0])
                                while _133 + (32 * uint256(stor4[idx].field_1536)) > t:
                                    mem[t + 32] = address(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                            mem[_87 + 192] = _133
                            mem[_87 + 224] = uint256(stor4[idx].field_1792)
                            mem[s] = _87
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (8 * idx) + sha3(4) + 4
                        mem[_124 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 4)].field_0)
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + (32 * uint256(stor4[u].field_1024)) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_87 + 128] = _124
                        mem[_87 + 160] = uint256(stor4[u].field_1280)
                        _215 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[u].field_1536)) + 32
                        mem[_215] = uint256(stor4[u].field_1536)
                        if uint256(stor4[u].field_1536):
                            mem[0] = (8 * u) + sha3(4) + 6
                            mem[_215 + 32] = address(stor[sha3((8 * u) + ('name', 'stor4', 4) + 6)].field_0)
                            s = _215 + 32
                            v = sha3(mem[0])
                            while _215 + (32 * uint256(stor4[u].field_1536)) > s:
                                mem[s + 32] = address(stor1[v])
                                s = s + 32
                                v = v + 1
                                continue 
                        mem[_87 + 192] = _215
                        mem[_87 + 224] = uint256(stor4[u].field_1792)
                        mem[t] = _87
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[0] = (8 * idx) + sha3(4) + 1
                    mem[_91 + 32] = uint256(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 1)].field_0)
                    t = _91 + 32
                    u = sha3(mem[0])
                    while _91 + stor4[idx].field_257 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_87 + 32] = _91
                    mem[_87 + 64] = uint256(stor4[idx].field_512)
                    mem[_87 + 96] = uint256(stor4[idx].field_768)
                    _175 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1024)) + 32
                    mem[_175] = uint256(stor4[idx].field_1024)
                    if not uint256(stor4[idx].field_1024):
                        mem[_87 + 128] = _175
                        mem[_87 + 160] = uint256(stor4[idx].field_1280)
                        _181 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                        mem[_181] = uint256(stor4[idx].field_1536)
                        if uint256(stor4[idx].field_1536):
                            mem[0] = (8 * idx) + sha3(4) + 6
                            mem[_181 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                            t = _181 + 32
                            u = sha3(mem[0])
                            while _181 + (32 * uint256(stor4[idx].field_1536)) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_87 + 192] = _181
                    else:
                        mem[0] = (8 * idx) + sha3(4) + 4
                        mem[_175 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 4)].field_0)
                        t = _175 + 32
                        u = sha3(mem[0])
                        while _175 + (32 * uint256(stor4[idx].field_1024)) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_87 + 128] = _175
                        mem[_87 + 160] = uint256(stor4[idx].field_1280)
                        _250 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                        mem[_250] = uint256(stor4[idx].field_1536)
                        if uint256(stor4[idx].field_1536):
                            mem[0] = (8 * idx) + sha3(4) + 6
                            mem[_250 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                            t = _250 + 32
                            u = sha3(mem[0])
                            while _250 + (32 * uint256(stor4[idx].field_1536)) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_87 + 192] = _250
        else:
            if bool(stor4[idx].field_256) == stor4[idx].field_257 % 128 < 32:
                revert with 0, 34
            _95 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[idx].field_257 % 128) + 32
            mem[_95] = stor4[idx].field_257 % 128
            if bool(stor4[idx].field_256):
                if bool(stor4[idx].field_256) == uint255(uint256(stor4[idx].field_256)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[idx].field_256)):
                    mem[_87 + 32] = _95
                    mem[_87 + 64] = uint256(stor4[idx].field_512)
                    mem[_87 + 96] = uint256(stor4[idx].field_768)
                    _106 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1024)) + 32
                    mem[_106] = uint256(stor4[idx].field_1024)
                    if not uint256(stor4[idx].field_1024):
                        mem[_87 + 128] = _106
                        mem[_87 + 160] = uint256(stor4[idx].field_1280)
                        _116 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                        mem[_116] = uint256(stor4[idx].field_1536)
                        if uint256(stor4[idx].field_1536):
                            mem[0] = (8 * idx) + sha3(4) + 6
                            mem[_116 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                            t = _116 + 32
                            u = sha3(mem[0])
                            while _116 + (32 * uint256(stor4[idx].field_1536)) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_87 + 192] = _116
                    else:
                        mem[0] = (8 * idx) + sha3(4) + 4
                        mem[_106 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 4)].field_0)
                        t = _106 + 32
                        u = sha3(mem[0])
                        while _106 + (32 * uint256(stor4[idx].field_1024)) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_87 + 128] = _106
                        mem[_87 + 160] = uint256(stor4[idx].field_1280)
                        _216 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                        mem[_216] = uint256(stor4[idx].field_1536)
                        if uint256(stor4[idx].field_1536):
                            mem[0] = (8 * idx) + sha3(4) + 6
                            mem[_216 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                            t = _216 + 32
                            u = sha3(mem[0])
                            while _216 + (32 * uint256(stor4[idx].field_1536)) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_87 + 192] = _216
                else:
                    if 31 >= uint255(uint256(stor4[idx].field_256)) * 0.5:
                        mem[_95 + 32] = 256 * Mask(248, 0, stor4[idx].field_264)
                        mem[_87 + 32] = _95
                        mem[_87 + 64] = uint256(stor4[idx].field_512)
                        mem[_87 + 96] = uint256(stor4[idx].field_768)
                        _126 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1024)) + 32
                        mem[_126] = uint256(stor4[idx].field_1024)
                        if not uint256(stor4[idx].field_1024):
                            mem[_87 + 128] = _126
                            mem[_87 + 160] = uint256(stor4[idx].field_1280)
                            _135 = mem[64]
                            mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                            mem[_135] = uint256(stor4[idx].field_1536)
                            if uint256(stor4[idx].field_1536):
                                mem[0] = (8 * idx) + sha3(4) + 6
                                mem[_135 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                                t = _135 + 32
                                u = sha3(mem[0])
                                while _135 + (32 * uint256(stor4[idx].field_1536)) > t:
                                    mem[t + 32] = address(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                            mem[_87 + 192] = _135
                            mem[_87 + 224] = uint256(stor4[idx].field_1792)
                            mem[s] = _87
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (8 * idx) + sha3(4) + 4
                        mem[_126 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 4)].field_0)
                        t = _126 + 32
                        u = sha3(mem[0])
                        while _126 + (32 * uint256(stor4[u].field_1024)) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_87 + 128] = _126
                        mem[_87 + 160] = uint256(stor4[u].field_1280)
                        _217 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[u].field_1536)) + 32
                        mem[_217] = uint256(stor4[u].field_1536)
                        if uint256(stor4[u].field_1536):
                            mem[0] = (8 * u) + sha3(4) + 6
                            mem[_217 + 32] = address(stor[sha3((8 * u) + ('name', 'stor4', 4) + 6)].field_0)
                            s = _217 + 32
                            v = sha3(mem[0])
                            while _217 + (32 * uint256(stor4[u].field_1536)) > s:
                                mem[s + 32] = address(stor1[v])
                                s = s + 32
                                v = v + 1
                                continue 
                        mem[_87 + 192] = _217
                        mem[_87 + 224] = uint256(stor4[u].field_1792)
                        mem[t] = _87
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[0] = (8 * idx) + sha3(4) + 1
                    mem[_95 + 32] = uint256(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 1)].field_0)
                    t = _95 + 32
                    u = sha3(mem[0])
                    while _95 + (uint255(uint256(stor4[idx].field_256)) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_87 + 32] = _95
                    mem[_87 + 64] = uint256(stor4[idx].field_512)
                    mem[_87 + 96] = uint256(stor4[idx].field_768)
                    _176 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1024)) + 32
                    mem[_176] = uint256(stor4[idx].field_1024)
                    if not uint256(stor4[idx].field_1024):
                        mem[_87 + 128] = _176
                        mem[_87 + 160] = uint256(stor4[idx].field_1280)
                        _183 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                        mem[_183] = uint256(stor4[idx].field_1536)
                        if uint256(stor4[idx].field_1536):
                            mem[0] = (8 * idx) + sha3(4) + 6
                            mem[_183 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                            t = _183 + 32
                            u = sha3(mem[0])
                            while _183 + (32 * uint256(stor4[idx].field_1536)) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_87 + 192] = _183
                    else:
                        mem[0] = (8 * idx) + sha3(4) + 4
                        mem[_176 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 4)].field_0)
                        t = _176 + 32
                        u = sha3(mem[0])
                        while _176 + (32 * uint256(stor4[idx].field_1024)) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_87 + 128] = _176
                        mem[_87 + 160] = uint256(stor4[idx].field_1280)
                        _251 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                        mem[_251] = uint256(stor4[idx].field_1536)
                        if uint256(stor4[idx].field_1536):
                            mem[0] = (8 * idx) + sha3(4) + 6
                            mem[_251 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                            t = _251 + 32
                            u = sha3(mem[0])
                            while _251 + (32 * uint256(stor4[idx].field_1536)) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_87 + 192] = _251
            else:
                if bool(stor4[idx].field_256) == stor4[idx].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor4[idx].field_257 % 128:
                    mem[_87 + 32] = _95
                    mem[_87 + 64] = uint256(stor4[idx].field_512)
                    mem[_87 + 96] = uint256(stor4[idx].field_768)
                    _119 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1024)) + 32
                    mem[_119] = uint256(stor4[idx].field_1024)
                    if not uint256(stor4[idx].field_1024):
                        mem[_87 + 128] = _119
                        mem[_87 + 160] = uint256(stor4[idx].field_1280)
                        _127 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                        mem[_127] = uint256(stor4[idx].field_1536)
                        if not uint256(stor4[idx].field_1536):
                            mem[_87 + 192] = _127
                            mem[_87 + 224] = uint256(stor4[idx].field_1792)
                            mem[s] = _87
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (8 * idx) + sha3(4) + 6
                        mem[_127 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                        t = _127 + 32
                        u = sha3(mem[0])
                        while _127 + (32 * uint256(stor4[u].field_1536)) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_87 + 192] = _127
                        mem[_87 + 224] = uint256(stor4[u].field_1792)
                        mem[t] = _87
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[0] = (8 * idx) + sha3(4) + 4
                    mem[_119 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 4)].field_0)
                    t = _119 + 32
                    u = sha3(mem[0])
                    while _119 + (32 * uint256(stor4[idx].field_1024)) > t:
                        mem[t + 32] = address(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_87 + 128] = _119
                    mem[_87 + 160] = uint256(stor4[idx].field_1280)
                    _218 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                    mem[_218] = uint256(stor4[idx].field_1536)
                    if uint256(stor4[idx].field_1536):
                        mem[0] = (8 * idx) + sha3(4) + 6
                        mem[_218 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                        t = _218 + 32
                        u = sha3(mem[0])
                        while _218 + (32 * uint256(stor4[idx].field_1536)) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_87 + 192] = _218
                else:
                    if 31 >= stor4[idx].field_257 % 128:
                        mem[_95 + 32] = 256 * Mask(248, 0, stor4[idx].field_264)
                        mem[_87 + 32] = _95
                        mem[_87 + 64] = uint256(stor4[idx].field_512)
                        mem[_87 + 96] = uint256(stor4[idx].field_768)
                        _138 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1024)) + 32
                        mem[_138] = uint256(stor4[idx].field_1024)
                        if not uint256(stor4[idx].field_1024):
                            mem[_87 + 128] = _138
                            mem[_87 + 160] = uint256(stor4[idx].field_1280)
                            _148 = mem[64]
                            mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                            mem[_148] = uint256(stor4[idx].field_1536)
                            if uint256(stor4[idx].field_1536):
                                mem[0] = (8 * idx) + sha3(4) + 6
                                mem[_148 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                                t = _148 + 32
                                u = sha3(mem[0])
                                while _148 + (32 * uint256(stor4[idx].field_1536)) > t:
                                    mem[t + 32] = address(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                            mem[_87 + 192] = _148
                        else:
                            mem[0] = (8 * idx) + sha3(4) + 4
                            mem[_138 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 4)].field_0)
                            t = _138 + 32
                            u = sha3(mem[0])
                            while _138 + (32 * uint256(stor4[idx].field_1024)) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_87 + 128] = _138
                            mem[_87 + 160] = uint256(stor4[idx].field_1280)
                            _219 = mem[64]
                            mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                            mem[_219] = uint256(stor4[idx].field_1536)
                            if uint256(stor4[idx].field_1536):
                                mem[0] = (8 * idx) + sha3(4) + 6
                                mem[_219 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                                t = _219 + 32
                                u = sha3(mem[0])
                                while _219 + (32 * uint256(stor4[idx].field_1536)) > t:
                                    mem[t + 32] = address(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                            mem[_87 + 192] = _219
                    else:
                        mem[0] = (8 * idx) + sha3(4) + 1
                        mem[_95 + 32] = uint256(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 1)].field_0)
                        t = _95 + 32
                        u = sha3(mem[0])
                        while _95 + stor4[idx].field_257 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_87 + 32] = _95
                        mem[_87 + 64] = uint256(stor4[idx].field_512)
                        mem[_87 + 96] = uint256(stor4[idx].field_768)
                        _177 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1024)) + 32
                        mem[_177] = uint256(stor4[idx].field_1024)
                        if not uint256(stor4[idx].field_1024):
                            mem[_87 + 128] = _177
                            mem[_87 + 160] = uint256(stor4[idx].field_1280)
                            _185 = mem[64]
                            mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                            mem[_185] = uint256(stor4[idx].field_1536)
                            if uint256(stor4[idx].field_1536):
                                mem[0] = (8 * idx) + sha3(4) + 6
                                mem[_185 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                                t = _185 + 32
                                u = sha3(mem[0])
                                while _185 + (32 * uint256(stor4[idx].field_1536)) > t:
                                    mem[t + 32] = address(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                            mem[_87 + 192] = _185
                        else:
                            mem[0] = (8 * idx) + sha3(4) + 4
                            mem[_177 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 4)].field_0)
                            t = _177 + 32
                            u = sha3(mem[0])
                            while _177 + (32 * uint256(stor4[idx].field_1024)) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_87 + 128] = _177
                            mem[_87 + 160] = uint256(stor4[idx].field_1280)
                            _252 = mem[64]
                            mem[64] = mem[64] + (32 * uint256(stor4[idx].field_1536)) + 32
                            mem[_252] = uint256(stor4[idx].field_1536)
                            if uint256(stor4[idx].field_1536):
                                mem[0] = (8 * idx) + sha3(4) + 6
                                mem[_252 + 32] = address(stor[sha3((8 * idx) + ('name', 'stor4', 4) + 6)].field_0)
                                t = _252 + 32
                                u = sha3(mem[0])
                                while _252 + (32 * uint256(stor4[idx].field_1536)) > t:
                                    mem[t + 32] = address(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                            mem[_87 + 192] = _252
        mem[_87 + 224] = uint256(stor4[idx].field_1792)
        mem[s] = _87
        s = s + 32
        idx = idx + 1
        continue 
    _88 = mem[64]
    mem[mem[64]] = 32
    _89 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _89:
        mem[t] = u + -_88 - 64
        _170 = mem[s]
        mem[u] = mem[mem[s]]
        _173 = mem[_170 + 32]
        mem[u + 32] = 256
        _178 = mem[_173]
        mem[u + 256] = mem[_173]
        v = 0
        while v < _178:
            mem[v + u + 288] = mem[_173 + v + 32]
            v = v + 32
            continue 
        if ceil32(_178) <= _178:
            mem[u + 64] = mem[_170 + 64]
            mem[u + 96] = mem[_170 + 96]
            _231 = mem[_170 + 128]
            mem[u + 128] = ceil32(_178) + 288
            _232 = mem[_231]
            mem[ceil32(_178) + u + 288] = mem[_231]
            v = 0
            w = _231 + 32
            x = ceil32(_178) + u + 320
            while v < _232:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[u + 160] = mem[_170 + 160]
            _260 = mem[_170 + 192]
            mem[u + 192] = ceil32(_178) + (32 * _232) + 320
            _263 = mem[_260]
            mem[ceil32(_178) + u + (32 * _232) + 320] = mem[_260]
            v = 0
            w = _260 + 32
            x = ceil32(_178) + u + (32 * _232) + 352
            while v < _263:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[u + 224] = mem[_170 + 224]
            v = _263 + 1
            w = _260 + (32 * _263) + 64
            t = t + 32
            u = ceil32(_178) + u + (32 * _232) + (32 * _263) + 352
            continue 
        mem[u + _178 + 288] = 0
        mem[u + 64] = mem[_170 + 64]
        mem[u + 96] = mem[_170 + 96]
        _235 = mem[_170 + 128]
        mem[u + 128] = ceil32(_178) + 288
        _236 = mem[_235]
        mem[ceil32(_178) + u + 288] = mem[_235]
        v = 0
        w = _235 + 32
        x = ceil32(_178) + u + 320
        while v < _236:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        mem[u + 160] = mem[_170 + 160]
        _262 = mem[_170 + 192]
        mem[u + 192] = ceil32(_178) + (32 * _236) + 320
        _264 = mem[_262]
        mem[ceil32(_178) + u + (32 * _236) + 320] = mem[_262]
        v = 0
        w = _262 + 32
        x = ceil32(_178) + u + (32 * _236) + 352
        while v < _264:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        mem[u + 224] = mem[_170 + 224]
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_178) + u + (32 * _236) + (32 * _264) + 352
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function InitiateTicket(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(stor1.length) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner can initialize the tickets'
    if arg1 >= stor2.length:
        revert with 0, 50
    if not bool(stor2[arg1].field_0):
        if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
            revert with 0, 34
        mem[352] = stor2[arg1].field_1 % 128
        if bool(stor2[arg1].field_0):
            if bool(stor2[arg1].field_0) == uint255(uint256(stor2[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor2[arg1].field_0)):
                if 31 >= uint255(uint256(stor2[arg1].field_0)) * 0.5:
                    mem[384] = 256 * Mask(248, 0, stor2[arg1].field_8)
                else:
                    mem[384] = uint256(stor2[arg1].field_0)
                    idx = 384
                    s = 0
                    while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 352 > idx:
                        mem[idx + 32] = uint256(stor2[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor2[arg1].field_1 % 128:
                if 31 >= stor2[arg1].field_1 % 128:
                    mem[384] = 256 * Mask(248, 0, stor2[arg1].field_8)
                else:
                    mem[384] = uint256(stor2[arg1].field_0)
                    idx = 384
                    s = 0
                    while stor2[arg1].field_1 % 128 + 352 > idx:
                        mem[idx + 32] = uint256(stor2[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[128] = 352
        if block.timestamp > !arg2:
            revert with 0, 17
        mem[160] = block.timestamp + arg2
        mem[192] = block.timestamp
        mem[224] = 96
        mem[256] = 0
        mem[288] = 96
        mem[320] = 0
        stor4.length++
        uint256(stor4[stor4.length].field_0) = stor5
        if bool(stor8A35[stor4.length].field_0):
            if bool(stor8A35[stor4.length].field_0) == uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5 < 32:
                revert with 0, 34
            if stor2[arg1].field_1 % 128:
                uint256(stor[sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)][]) = Array(len=stor2[arg1].field_1 % 128, data=mem[384 len stor2[arg1].field_1 % 128])
            else:
                uint256(stor8A35[stor4.length].field_0) = 0
                idx = 0
                while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor8A35[stor4.length].field_0) == stor8A35[stor4.length].field_1 % 128 < 32:
                revert with 0, 34
            if stor2[arg1].field_1 % 128:
                uint256(stor[sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)][]) = Array(len=stor2[arg1].field_1 % 128, data=mem[384 len stor2[arg1].field_1 % 128])
            else:
                uint256(stor8A35[stor4.length].field_0) = 0
                idx = 0
                while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                    idx = idx + 1
                    continue 
    else:
        if bool(stor2[arg1].field_0) == uint255(uint256(stor2[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        mem[352] = uint255(uint256(stor2[arg1].field_0)) * 0.5
        if bool(stor2[arg1].field_0):
            if bool(stor2[arg1].field_0) == uint255(uint256(stor2[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor2[arg1].field_0)):
                mem[128] = 352
                if block.timestamp > !arg2:
                    revert with 0, 17
                mem[160] = block.timestamp + arg2
                mem[192] = block.timestamp
                mem[224] = 96
                mem[256] = 0
                mem[288] = 96
                mem[320] = 0
                stor4.length++
                uint256(stor4[stor4.length].field_0) = stor5
                if bool(stor8A35[stor4.length].field_0):
                    if bool(stor8A35[stor4.length].field_0) == uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not uint255(uint256(stor2[arg1].field_0)) * 0.5:
                        uint256(stor8A35[stor4.length].field_0) = 0
                        idx = 0
                        while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                            uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        if 31 < uint255(uint256(stor2[arg1].field_0)) * 0.5:
                            uint256(stor8A35[stor4.length].field_0) = Mask(254, 1, uint256(stor2[arg1].field_0)) + 1
                            if not Mask(256, -1, uint256(stor2[arg1].field_0)):
                                idx = 0
                                while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 384
                                while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 384 > idx:
                                    uint256(stor[s + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 31) >> 5
                                while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            bool(stor8A35[stor4.length].field_0) = 0
                            uint255(stor8A35[stor4.length].field_1) = Mask(254, 0, stor2[arg1].field_1)
                            Mask(248, 0, stor8A35[stor4.length].field_8) = mem[384 len 31]
                            idx = 0
                            while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                idx = idx + 1
                                continue 
                else:
                    if bool(stor8A35[stor4.length].field_0) == stor8A35[stor4.length].field_1 % 128 < 32:
                        revert with 0, 34
                    if not uint255(uint256(stor2[arg1].field_0)) * 0.5:
                        uint256(stor8A35[stor4.length].field_0) = 0
                        idx = 0
                        while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        if 31 < uint255(uint256(stor2[arg1].field_0)) * 0.5:
                            uint256(stor8A35[stor4.length].field_0) = Mask(254, 1, uint256(stor2[arg1].field_0)) + 1
                            if not Mask(256, -1, uint256(stor2[arg1].field_0)):
                                idx = 0
                                while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 384
                                while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 384 > idx:
                                    uint256(stor[s + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 31) >> 5
                                while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            bool(stor8A35[stor4.length].field_0) = 0
                            uint255(stor8A35[stor4.length].field_1) = Mask(254, 0, stor2[arg1].field_1)
                            Mask(248, 0, stor8A35[stor4.length].field_8) = mem[384 len 31]
                            idx = 0
                            while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                idx = idx + 1
                                continue 
            else:
                if 31 >= uint255(uint256(stor2[arg1].field_0)) * 0.5:
                    mem[384] = 256 * Mask(248, 0, stor2[arg1].field_8)
                    mem[128] = 352
                    if block.timestamp > !arg2:
                        revert with 0, 17
                    mem[160] = block.timestamp + arg2
                    mem[192] = block.timestamp
                    mem[224] = 96
                    mem[256] = 0
                    mem[288] = 96
                    mem[320] = 0
                    stor4.length++
                    uint256(stor4[stor4.length].field_0) = stor5
                    if bool(stor8A35[stor4.length].field_0):
                        if bool(stor8A35[stor4.length].field_0) == uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(uint256(stor2[arg1].field_0)) * 0.5:
                            uint256(stor8A35[stor4.length].field_0) = 0
                            idx = 0
                            while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(uint256(stor2[arg1].field_0)) * 0.5:
                                uint256(stor8A35[stor4.length].field_0) = Mask(254, 1, uint256(stor2[arg1].field_0)) + 1
                                if not Mask(256, -1, uint256(stor2[arg1].field_0)):
                                    idx = 0
                                    while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 384
                                    while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 384 > idx:
                                        uint256(stor[s + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 31) >> 5
                                    while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                bool(stor8A35[stor4.length].field_0) = 0
                                uint255(stor8A35[stor4.length].field_1) = Mask(254, 0, stor2[arg1].field_1)
                                Mask(248, 0, stor8A35[stor4.length].field_8) = Mask(248, 0, stor2[arg1].field_8)
                                idx = 0
                                while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if bool(stor8A35[stor4.length].field_0) == stor8A35[stor4.length].field_1 % 128 < 32:
                            revert with 0, 34
                        if not uint255(uint256(stor2[arg1].field_0)) * 0.5:
                            uint256(stor8A35[stor4.length].field_0) = 0
                            idx = 0
                            while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(uint256(stor2[arg1].field_0)) * 0.5:
                                uint256(stor8A35[stor4.length].field_0) = Mask(254, 1, uint256(stor2[arg1].field_0)) + 1
                                if not Mask(256, -1, uint256(stor2[arg1].field_0)):
                                    idx = 0
                                    while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 384
                                    while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 384 > idx:
                                        uint256(stor[s + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 31) >> 5
                                    while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                bool(stor8A35[stor4.length].field_0) = 0
                                uint255(stor8A35[stor4.length].field_1) = Mask(254, 0, stor2[arg1].field_1)
                                Mask(248, 0, stor8A35[stor4.length].field_8) = Mask(248, 0, stor2[arg1].field_8)
                                idx = 0
                                while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                    idx = idx + 1
                                    continue 
                else:
                    mem[384] = uint256(stor2[arg1].field_0)
                    idx = 384
                    s = 0
                    while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 352 > idx:
                        mem[idx + 32] = uint256(stor2[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[128] = 352
                    if block.timestamp > !arg2:
                        revert with 0, 17
                    mem[160] = block.timestamp + arg2
                    mem[192] = block.timestamp
                    mem[224] = 96
                    mem[256] = 0
                    mem[288] = 96
                    mem[320] = 0
                    stor4.length++
                    uint256(stor4[stor4.length].field_0) = stor5
                    if bool(stor8A35[stor4.length].field_0):
                        if bool(stor8A35[stor4.length].field_0) == uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(uint256(stor2[arg1].field_0)) * 0.5:
                            uint256(stor8A35[stor4.length].field_0) = 0
                            idx = 0
                            while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(uint256(stor2[arg1].field_0)) * 0.5:
                                uint256(stor8A35[stor4.length].field_0) = Mask(254, 1, uint256(stor2[arg1].field_0)) + 1
                                if not Mask(256, -1, uint256(stor2[arg1].field_0)):
                                    idx = 0
                                    while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 384
                                    while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 384 > idx:
                                        uint256(stor[s + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 31) >> 5
                                    while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                bool(stor8A35[stor4.length].field_0) = 0
                                uint255(stor8A35[stor4.length].field_1) = Mask(254, 0, stor2[arg1].field_1)
                                Mask(248, 0, stor8A35[stor4.length].field_8) = mem[384 len 31]
                                idx = 0
                                while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if bool(stor8A35[stor4.length].field_0) == stor8A35[stor4.length].field_1 % 128 < 32:
                            revert with 0, 34
                        if not uint255(uint256(stor2[arg1].field_0)) * 0.5:
                            uint256(stor8A35[stor4.length].field_0) = 0
                            idx = 0
                            while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(uint256(stor2[arg1].field_0)) * 0.5:
                                uint256(stor8A35[stor4.length].field_0) = Mask(254, 1, uint256(stor2[arg1].field_0)) + 1
                                if not Mask(256, -1, uint256(stor2[arg1].field_0)):
                                    idx = 0
                                    while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 384
                                    while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 384 > idx:
                                        uint256(stor[s + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 31) >> 5
                                    while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                bool(stor8A35[stor4.length].field_0) = 0
                                uint255(stor8A35[stor4.length].field_1) = Mask(254, 0, stor2[arg1].field_1)
                                Mask(248, 0, stor8A35[stor4.length].field_8) = mem[384 len 31]
                                idx = 0
                                while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                    idx = idx + 1
                                    continue 
        else:
            if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if not stor2[arg1].field_1 % 128:
                mem[128] = 352
                if block.timestamp > !arg2:
                    revert with 0, 17
                mem[160] = block.timestamp + arg2
                mem[192] = block.timestamp
                mem[224] = 96
                mem[256] = 0
                mem[288] = 96
                mem[320] = 0
                stor4.length++
                uint256(stor4[stor4.length].field_0) = stor5
                if bool(stor8A35[stor4.length].field_0):
                    if bool(stor8A35[stor4.length].field_0) == uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not uint255(uint256(stor2[arg1].field_0)) * 0.5:
                        uint256(stor8A35[stor4.length].field_0) = 0
                        idx = 0
                        while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                            uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        if 31 < uint255(uint256(stor2[arg1].field_0)) * 0.5:
                            uint256(stor8A35[stor4.length].field_0) = Mask(254, 1, uint256(stor2[arg1].field_0)) + 1
                            if not Mask(256, -1, uint256(stor2[arg1].field_0)):
                                idx = 0
                                while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 384
                                while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 384 > idx:
                                    uint256(stor[s + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 31) >> 5
                                while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            bool(stor8A35[stor4.length].field_0) = 0
                            uint255(stor8A35[stor4.length].field_1) = Mask(254, 0, stor2[arg1].field_1)
                            Mask(248, 0, stor8A35[stor4.length].field_8) = mem[384 len 31]
                            idx = 0
                            while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                idx = idx + 1
                                continue 
                else:
                    if bool(stor8A35[stor4.length].field_0) == stor8A35[stor4.length].field_1 % 128 < 32:
                        revert with 0, 34
                    if not uint255(uint256(stor2[arg1].field_0)) * 0.5:
                        uint256(stor8A35[stor4.length].field_0) = 0
                        idx = 0
                        while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        if 31 < uint255(uint256(stor2[arg1].field_0)) * 0.5:
                            uint256(stor8A35[stor4.length].field_0) = Mask(254, 1, uint256(stor2[arg1].field_0)) + 1
                            if not Mask(256, -1, uint256(stor2[arg1].field_0)):
                                idx = 0
                                while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 384
                                while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 384 > idx:
                                    uint256(stor[s + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 31) >> 5
                                while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            bool(stor8A35[stor4.length].field_0) = 0
                            uint255(stor8A35[stor4.length].field_1) = Mask(254, 0, stor2[arg1].field_1)
                            Mask(248, 0, stor8A35[stor4.length].field_8) = mem[384 len 31]
                            idx = 0
                            while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                idx = idx + 1
                                continue 
            else:
                if 31 >= stor2[arg1].field_1 % 128:
                    mem[384] = 256 * Mask(248, 0, stor2[arg1].field_8)
                    mem[128] = 352
                    if block.timestamp > !arg2:
                        revert with 0, 17
                    mem[160] = block.timestamp + arg2
                    mem[192] = block.timestamp
                    mem[224] = 96
                    mem[256] = 0
                    mem[288] = 96
                    mem[320] = 0
                    stor4.length++
                    uint256(stor4[stor4.length].field_0) = stor5
                    if bool(stor8A35[stor4.length].field_0):
                        if bool(stor8A35[stor4.length].field_0) == uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(uint256(stor2[arg1].field_0)) * 0.5:
                            uint256(stor8A35[stor4.length].field_0) = 0
                            idx = 0
                            while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(uint256(stor2[arg1].field_0)) * 0.5:
                                uint256(stor8A35[stor4.length].field_0) = Mask(254, 1, uint256(stor2[arg1].field_0)) + 1
                                if not Mask(256, -1, uint256(stor2[arg1].field_0)):
                                    idx = 0
                                    while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 384
                                    while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 384 > idx:
                                        uint256(stor[s + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 31) >> 5
                                    while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                bool(stor8A35[stor4.length].field_0) = 0
                                uint255(stor8A35[stor4.length].field_1) = Mask(254, 0, stor2[arg1].field_1)
                                Mask(248, 0, stor8A35[stor4.length].field_8) = Mask(248, 0, stor2[arg1].field_8)
                                idx = 0
                                while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if bool(stor8A35[stor4.length].field_0) == stor8A35[stor4.length].field_1 % 128 < 32:
                            revert with 0, 34
                        if not uint255(uint256(stor2[arg1].field_0)) * 0.5:
                            uint256(stor8A35[stor4.length].field_0) = 0
                            idx = 0
                            while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(uint256(stor2[arg1].field_0)) * 0.5:
                                uint256(stor8A35[stor4.length].field_0) = Mask(254, 1, uint256(stor2[arg1].field_0)) + 1
                                if not Mask(256, -1, uint256(stor2[arg1].field_0)):
                                    idx = 0
                                    while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 384
                                    while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 384 > idx:
                                        uint256(stor[s + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 31) >> 5
                                    while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                bool(stor8A35[stor4.length].field_0) = 0
                                uint255(stor8A35[stor4.length].field_1) = Mask(254, 0, stor2[arg1].field_1)
                                Mask(248, 0, stor8A35[stor4.length].field_8) = Mask(248, 0, stor2[arg1].field_8)
                                idx = 0
                                while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                    idx = idx + 1
                                    continue 
                else:
                    mem[384] = uint256(stor2[arg1].field_0)
                    idx = 384
                    s = 0
                    while stor2[arg1].field_1 % 128 + 352 > idx:
                        mem[idx + 32] = uint256(stor2[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[128] = 352
                    if block.timestamp > !arg2:
                        revert with 0, 17
                    mem[160] = block.timestamp + arg2
                    mem[192] = block.timestamp
                    mem[224] = 96
                    mem[256] = 0
                    mem[288] = 96
                    mem[320] = 0
                    stor4.length++
                    uint256(stor4[stor4.length].field_0) = stor5
                    if bool(stor8A35[stor4.length].field_0):
                        if bool(stor8A35[stor4.length].field_0) == uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(uint256(stor2[arg1].field_0)) * 0.5:
                            uint256(stor8A35[stor4.length].field_0) = 0
                            idx = 0
                            while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(uint256(stor2[arg1].field_0)) * 0.5:
                                uint256(stor8A35[stor4.length].field_0) = Mask(254, 1, uint256(stor2[arg1].field_0)) + 1
                                if not Mask(256, -1, uint256(stor2[arg1].field_0)):
                                    idx = 0
                                    while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 384
                                    while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 384 > idx:
                                        uint256(stor[s + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 31) >> 5
                                    while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                bool(stor8A35[stor4.length].field_0) = 0
                                uint255(stor8A35[stor4.length].field_1) = Mask(254, 0, stor2[arg1].field_1)
                                Mask(248, 0, stor8A35[stor4.length].field_8) = mem[384 len 31]
                                idx = 0
                                while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if bool(stor8A35[stor4.length].field_0) == stor8A35[stor4.length].field_1 % 128 < 32:
                            revert with 0, 34
                        if not uint255(uint256(stor2[arg1].field_0)) * 0.5:
                            uint256(stor8A35[stor4.length].field_0) = 0
                            idx = 0
                            while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(uint256(stor2[arg1].field_0)) * 0.5:
                                uint256(stor8A35[stor4.length].field_0) = Mask(254, 1, uint256(stor2[arg1].field_0)) + 1
                                if not Mask(256, -1, uint256(stor2[arg1].field_0)):
                                    idx = 0
                                    while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 384
                                    while (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 384 > idx:
                                        uint256(stor[s + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(uint256(stor2[arg1].field_0)) * 0.5) + 31) >> 5
                                    while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                bool(stor8A35[stor4.length].field_0) = 0
                                uint255(stor8A35[stor4.length].field_1) = Mask(254, 0, stor2[arg1].field_1)
                                Mask(248, 0, stor8A35[stor4.length].field_8) = mem[384 len 31]
                                idx = 0
                                while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                                    idx = idx + 1
                                    continue 
    stor8A35[stor4.length] = block.timestamp + arg2
    stor8A35[stor4.length] = block.timestamp
    stor8A35[stor4.length] = stor5
    if not stor5:
        idx = 0
        while stor8A35[stor4.length] > idx:
            uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e61)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * stor5) + 128 > idx:
            address(stor[s + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e61)]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * stor5) + 31) >> 5
        while stor8A35[stor4.length] > idx:
            uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e61)]) = 0
            idx = idx + 1
            continue 
    stor8A35[stor4.length] = 0
    stor8A35[stor4.length] = stor5
    if not stor5:
        idx = 0
        while stor8A35[stor4.length] > idx:
            uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e5f)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * stor5) + 128 > idx:
            address(stor[s + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e5f)]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * stor5) + 31) >> 5
        while stor8A35[stor4.length] > idx:
            uint256(stor[idx + sha3((8 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e5f)]) = 0
            idx = idx + 1
            continue 
    stor8A35[stor4.length] = 0
    if stor5 > -2:
        revert with 0, 17
    stor5++
}



}
